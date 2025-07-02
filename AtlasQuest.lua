--[[

	AtlasQuest, a World of Warcraft addon.
	Email me at m4r3lk4@gmail.com

	This file is part of AtlasQuest.

	AtlasQuest is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; either version 2 of the License, or
	(at your option) any later version.

	AtlasQuest is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with AtlasQuest; if not, write to the Free Software
	Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA

--]]

-----------------------------------------------------------------------------
-- Colours
-----------------------------------------------------------------------------
local GREY = "|cff999999";
local RED = "|cffff0000";
local REDA = "|cffcc6666";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local PINK = "|cffff6090";
local YELLOW = "|cffffff00";
local BLACK = "|c0000000f";
local DARKGREEN = "|cff008000";
local BLUB = "|cffd45e19";
-- Quest Color
local Grau = "|cff9d9d9d"
local Gruen = "|cff1eff00"
local Orange = "|cffFF8000"
local Rot = "|cffFF0000"
local Gelb = "|cffFFd200"
local Blau = "|cff0070dd"
-----------------------------------------------------------------------------
-- Variables
-----------------------------------------------------------------------------
local Initialized = nil;                 -- the variables are not loaded yet
local MAX_INSTANCES = 68                 -- Sets the max number of instances and quests to check for.
local MAX_QUESTS = 23
local AtlasQuest_Faction = 1;            -- variable that configures whether horde or allianz is shown
local CurrentDungeon = 1;                -- currently shown instance index
local AQINSTATM;                         -- variable to check whether AQINSTANZ has changed
local AQ_ShownSide = "Left"              -- configures at which side the AQ panel is shown
local AQAtlasAuto = true;                -- option to show the AQpanel automatically at atlas-startup

local playerName = UnitName("player")
local _, race = UnitRace("player")
if (race == "Orc" or race == "Troll" or race == "Scourge" or race == "Tauren" or race == "Goblin") then
	AtlasQuest_Faction = 2;
end

local AtlasQuest_Defaults = {
	[playerName] = {
		["ShownSide"] = "Left",
		["AtlasAutoShow"] = true,
	},
};
AQ = {};
-----------------------------------------------------------------------------
-- Functions
-----------------------------------------------------------------------------
--******************************************
-- Events: OnEvent
--******************************************
-----------------------------------------------------------------------------
-- Called when the player starts the game loads the variables
-----------------------------------------------------------------------------
function AtlasQuest_OnEvent()
	if (event == "VARIABLES_LOADED") then
		VariablesLoaded = 1; -- data is loaded completely
		tinsert(UISpecialFrames, "AtlasQuestOptionFrame")
	else
		AtlasQuest_Initialize(); -- player enters world / initialize the data
	end
end

-----------------------------------------------------------------------------
-- Detects whether the variables have to be loaded
-- or reestablishes them
-----------------------------------------------------------------------------
function AtlasQuest_Initialize()
	if (Initialized or (not VariablesLoaded)) then
		return;
	end
	if (not AtlasQuest_Options) then
		AtlasQuest_Options = AtlasQuest_Defaults;
		DEFAULT_CHAT_FRAME:AddMessage("AtlasQuest Options database not found. Generating...");
	elseif (not AtlasQuest_Options[playerName]) then
		DEFAULT_CHAT_FRAME:AddMessage("Generate default database for this character");
		AtlasQuest_Options[playerName] = AtlasQuest_Defaults[playerName]
	end
	if (type(AtlasQuest_Options[playerName]) == "table") then
		AtlasQuest_LoadData();
	end
	Initialized = 1;
end

-----------------------------------------------------------------------------
-- Loads the saved variables
-----------------------------------------------------------------------------
function AtlasQuest_LoadData()
	-- Which side
	if (AtlasQuest_Options[playerName]["ShownSide"] ~= nil) then
		AQ_ShownSide = AtlasQuest_Options[playerName]["ShownSide"];
	end
	-- atlas autoshow
	if (AtlasQuest_Options[playerName]["AtlasAutoShow"] ~= nil) then
		AQAtlasAuto = AtlasQuest_Options[playerName]["AtlasAutoShow"];
	end
	-- Finished?
	for i = 1, MAX_INSTANCES do
		for b = 1, MAX_QUESTS do
			AQ["AQFinishedQuest_Inst" .. i .. "Quest" .. b] = AtlasQuest_Options[playerName]["AQFinishedQuest_Inst" .. i .. "Quest" .. b]
			AQ["AQFinishedQuest_Inst" .. i .. "Quest" .. b .. "_HORDE"] = AtlasQuest_Options[playerName]["AQFinishedQuest_Inst" .. i .. "Quest" .. b .. "_HORDE"]
		end
	end
end

-----------------------------------------------------------------------------
-- Saves the variables
-----------------------------------------------------------------------------
function AtlasQuest_SaveData()
	AtlasQuest_Options[playerName]["ShownSide"] = AQ_ShownSide;
	AtlasQuest_Options[playerName]["AtlasAutoShow"] = AQAtlasAuto;
end

--******************************************
-- Events: OnLoad
--******************************************

-----------------------------------------------------------------------------
-- Call OnLoad set Variables and hides the panel
-----------------------------------------------------------------------------
function AQ_OnLoad()
	this:RegisterEvent("PLAYER_ENTERING_WORLD");
	this:RegisterEvent("VARIABLES_LOADED");
	AtlasQuestFrameStoryButton:SetText(AQStoryB);
	AtlasQuestFrameOptionsButton:SetText(AQOptionB);
	AtlasQuestInsideFrameFinishedText:SetText(AQFinishedTEXT);
	AQUpdateNOW = true;
	AtlasQuestFrame_Title:SetText("AtlasQuest");
	this:SetFrameLevel(this:GetParent():GetFrameLevel() - 1)
end
--******************************************
-- Events: OnUpdate
--******************************************
-----------------------------------------------------------------------------
-- Check which program is used (Atlas or AlphaMap)
-- hide panel if instance is 99 (nothing)
-----------------------------------------------------------------------------
function AQ_OnUpdate(arg1)
	local previousValue = CurrentDungeon;
	-- Show whether atlas or am is shown atm
	if ((AtlasFrame ~= nil) and (AtlasFrame:IsVisible())) then
		AtlasORAlphaMap = "Atlas";
	elseif (AlphaMapFrame:IsVisible()) then
		AtlasORAlphaMap = "AlphaMap";
	end

	if (AtlasORAlphaMap == "Atlas") then
		AtlasQuest_Instanzenchecken();
	elseif (AtlasORAlphaMap == "AlphaMap") then
		AtlasQuest_InstanzencheckAM();
	end

	-- Hides the panel if the map which is shown no quests have (map = 99)
	if (CurrentDungeon == 99) then
		AtlasQuestFrame:Hide();
		AtlasQuestInsideFrame:Hide();
	elseif ((CurrentDungeon ~= previousValue) or AQUpdateNOW) then
		AtlasQuest_UpdateButtons();
		AQUpdateNOW = false
		AtlasQuestFrameZoneName:SetText();
		if (getglobal("Inst" .. CurrentDungeon .. "Caption") ~= nil) then
			AtlasQuestFrameZoneName:SetText(getglobal("Inst" .. CurrentDungeon .. "Caption"))
		end
	elseif ((AtlasORAlphaMap == "AlphaMap") and (AlphaMapAlphaMapFrame:IsVisible() == nil)) then
		AtlasQuestFrame:Hide();
		AtlasQuestInsideFrame:Hide();
	end
end

-----------------------------------------------------------------------------
--  AlphaMap parent change
-----------------------------------------------------------------------------
function AQ_AtlasOrAlphamap()
	if ((AtlasFrame ~= nil) and (AtlasFrame:IsVisible())) then
		AtlasORAlphaMap = "Atlas";
		AtlasQuestFrame:SetParent(AtlasFrame);
		if (AQ_ShownSide == "Right") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("LEFT", AtlasFrame, "RIGHT", -5, -10);
		elseif (AQ_ShownSide == "Left") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("RIGHT", AtlasFrame, "LEFT", 16, -10);
		end
		AtlasQuestInsideFrame:SetParent(AtlasFrame);
		AtlasQuestInsideFrame:ClearAllPoints();
		AtlasQuestInsideFrame:SetPoint("TOPLEFT", AtlasFrame, 18, -84);
	elseif ((AlphaMapFrame ~= nil) and (AlphaMapFrame:IsVisible())) then
		AtlasORAlphaMap = "AlphaMap";
		AtlasQuestFrame:SetParent(AlphaMapFrame);
		if (AQ_ShownSide == "Right") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("TOP", AlphaMapFrame, 400, -107);
		elseif (AQ_ShownSide == "Left") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("TOPLEFT", AlphaMapFrame, -195, -107);
		end
		AtlasQuestInsideFrame:SetParent(AlphaMapFrame);
		AtlasQuestInsideFrame:ClearAllPoints();
		AtlasQuestInsideFrame:SetPoint("TOPLEFT", AlphaMapFrame, 1, -108);
	end
end

function AtlasQuest_UpdateButtons()
	if (AQINSTATM ~= CurrentDungeon) then
		AtlasQuestInsideFrame:Hide();
	end
	AQINSTATM = CurrentDungeon;
	if (AtlasQuest_Faction == 1) then
		AtlasQuestFrameNumQuests:SetText(getglobal("Inst" .. CurrentDungeon .. "QAA") or "");
	elseif (AtlasQuest_Faction == 2) then
		AtlasQuestFrameNumQuests:SetText(getglobal("Inst" .. CurrentDungeon .. "QAH") or "");
	end
	for i = 1, MAX_QUESTS do
		local button = getglobal("AQQuestButton" .. i)
		local icon = getglobal("AQQuestButton" .. i .. "Icon")
		local text = getglobal("Inst" .. CurrentDungeon .. "Quest" .. i)
		local isFinished = AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. i] == 1
		local questLevel = tonumber(getglobal("Inst" .. CurrentDungeon .. "Quest" .. i .. "_Level"));
		if (AtlasQuest_Faction == 2) then
			text = getglobal("Inst" .. CurrentDungeon .. "Quest" .. i .. "_HORDE")
			isFinished = AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. i .. "_HORDE"] == 1
			questLevel = tonumber(getglobal("Inst" .. CurrentDungeon .. "Quest" .. i .. "_HORDE_Level"));
		end
		local hasQuest = AtlasQuest_HasQuest(text)
		if (text) then
			if (hasQuest) then
				icon:SetTexture("Interface\\QuestFrame\\UI-Quest-BulletPoint")
				icon:Show();
				button:SetAlpha(1)
			else
				icon:Hide();
				button:SetAlpha(1)
			end
			if (isFinished) then
				icon:SetTexture("Interface\\Buttons\\UI-CheckBox-Check")
				icon:Show();
				button:SetAlpha(0.6)
			end
			if questLevel then
				local color = GetDifficultyColor(questLevel, true)
				button:SetTextColor(color.r, color.g, color.b)
			end
			button:SetText(text);
			button:Show()
		else
			button:Hide()
		end
	end
end

function AtlasQuest_HasQuest(questName)
	if not questName then
		return false
	end
	local questLogTitle, level, questTag, isHeader, isCollapsed, isComplete
	questName = gsub(questName, "^[%(%)T*W*%d%.]+ ", "")
	for i = 1, GetNumQuestLogEntries() do
		questLogTitle, level, questTag, isHeader, isCollapsed, isComplete = GetQuestLogTitle(i)
		if not isHeader and strfind(questLogTitle or "", questName) then
			return true
		end
	end
	return false
end

--******************************************
-- Events: Atlas_OnShow (Hook Atlas function)
--******************************************

-----------------------------------------------------------------------------
-- Shows the AQ panel with atlas
-- function hooked now! thx dan for his help
-----------------------------------------------------------------------------
local original_Atlas_OnShow = Atlas_OnShow;
function Atlas_OnShow()
	if (AQAtlasAuto) then
		AtlasQuestFrame:Show();
	else
		AtlasQuestFrame:Hide();
	end
	AtlasQuestInsideFrame:Hide();
	if (AQ_ShownSide == "Right") then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("LEFT", AtlasFrame, "RIGHT", -5, 10);
	end
	original_Atlas_OnShow();
end

--******************************************
-- Events: OnEnter/OnLeave SHOW ITEM
--******************************************
-----------------------------------------------------------------------------
-- Show Tooltip and automatically query server if option is enabled
-----------------------------------------------------------------------------
function AtlasQuestItem_OnEnter()
	local itemID

	if (AtlasQuest_Faction == 1) then
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. this:GetID());
	else
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. this:GetID() .. "_HORDE");
	end

	if (itemID) then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
		GameTooltip:SetHyperlink("item:" .. itemID .. ":0:0:0");
		GameTooltip:Show();
	end
end

-----------------------------------------------------------------------------
-- Ask Server right-click
-- + shift click to send link
-- + ctrl click for dressroom
-- BIG THANKS TO Daviesh and ATLASLOOT for the CODE
-----------------------------------------------------------------------------
function AtlasQuestItem_OnClick(arg1)
	local itemID

	if (AtlasQuest_Faction == 1) then
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. this:GetID());
	else
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. this:GetID() .. "_HORDE");
	end

	if itemID then
		if (arg1 == "RightButton") then
			GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
			GameTooltip:SetHyperlink("item:" .. itemID .. ":0:0:0");
			GameTooltip:Show();
		elseif (IsShiftKeyDown()) then
			if (GetItemInfo(itemID)) then
				local itemName, _, itemQuality = GetItemInfo(itemID);
				local r, g, b, hex = GetItemQualityColor(itemQuality);
				ChatFrameEditBox:Insert(hex .. "|Hitem:" .. itemID .. ":0:0:0|h[" .. itemName .. "]|h|r");
			end
		elseif (IsControlKeyDown() and GetItemInfo(itemID)) then
			DressUpItemLink(itemID);
		end
	end
end

-----------------------------------------------------------------------------
-- Automatically show Horde or Alliance quests
-- based on player's faction when AtlasQuest is opened.
-----------------------------------------------------------------------------
function AQ_OnShow()
	if AtlasQuest_Faction == 2 then
		AtlasQuestFrameHordeButton:SetChecked(true);
		AtlasQuestFrameAllianceButton:SetChecked(false);
	elseif AtlasQuest_Faction == 1 then
		AtlasQuestFrameHordeButton:SetChecked(false);
		AtlasQuestFrameAllianceButton:SetChecked(true);
	end
	AtlasQuest_UpdateButtons()
end

-----------------------------------------------------------------------------
-- This functions returns AQINSTANZ with a number
-- that tells which instance is shown atm for Atlas or AlphaMap
-----------------------------------------------------------------------------
local pathAtlas = "Interface\\AddOns\\Atlas\\Images\\Maps\\"

function AtlasQuest_Instanzenchecken()
	local map = AtlasMap:GetTexture()
	-- Original Instances
	if (map == pathAtlas.."TheDeadmines") or (map == pathAtlas.."TheDeadminesEnt") then
		CurrentDungeon = 1;
	elseif (map == pathAtlas.."WailingCaverns") or (map == pathAtlas.."WailingCavernsEnt") then
		CurrentDungeon = 2;
	elseif (map == pathAtlas.."RagefireChasm") then
		CurrentDungeon = 3;
	elseif (map == pathAtlas.."Uldaman") or (map == pathAtlas.."UldamanEnt") then
		CurrentDungeon = 4;
	elseif (map == pathAtlas.."BlackrockDepths") then
		CurrentDungeon = 5;
	elseif (map == pathAtlas.."BlackwingLair") then
		CurrentDungeon = 6;
	elseif (map == pathAtlas.."BlackfathomDeeps") or (map == pathAtlas.."BlackfathomDeepsEnt") then
		CurrentDungeon = 7;
	elseif (map == pathAtlas.."BlackrockSpireLower") then
		CurrentDungeon = 8;
	elseif (map == pathAtlas.."BlackrockSpireUpper") then
		CurrentDungeon = 9;
	elseif (map == pathAtlas.."DireMaulEast") then
		CurrentDungeon = 10;
	elseif (map == pathAtlas.."DireMaulNorth") then
		CurrentDungeon = 11;
	elseif (map == pathAtlas.."DireMaulWest") then
		CurrentDungeon = 12;
	elseif (map == pathAtlas.."Maraudon") or (map == pathAtlas.."MaraudonEnt") then
		CurrentDungeon = 13;
	elseif (map == pathAtlas.."MoltenCore") then
		CurrentDungeon = 14;
	elseif (map == pathAtlas.."Naxxramas") then
		CurrentDungeon = 15;
	elseif (map == pathAtlas.."OnyxiasLair") then
		CurrentDungeon = 16;
	elseif (map == pathAtlas.."RazorfenDowns") then
		CurrentDungeon = 17;
	elseif (map == pathAtlas.."RazorfenKraul") then
		CurrentDungeon = 18;
	elseif (map == pathAtlas.."SMLibrary") then
		CurrentDungeon = 19;
	elseif (map == pathAtlas.."SMArmory") then
		CurrentDungeon = 20;
	elseif (map == pathAtlas.."SMCathedral") then
		CurrentDungeon = 21;
	elseif (map == pathAtlas.."SMGraveyard") then
		CurrentDungeon = 22;
	elseif (map == pathAtlas.."Scholomance") then
		CurrentDungeon = 23;
	elseif (map == pathAtlas.."ShadowfangKeep") then
		CurrentDungeon = 24;
	elseif (map == pathAtlas.."Stratholme") then
		CurrentDungeon = 25;
	elseif (map == pathAtlas.."TheRuinsofAhnQiraj") then
		CurrentDungeon = 26;
	elseif (map == pathAtlas.."TheStockade") then
		CurrentDungeon = 27;
	elseif (map == pathAtlas.."TheSunkenTemple") or (map == pathAtlas.."TheSunkenTempleEnt") then
		CurrentDungeon = 28;
	elseif (map == pathAtlas.."TheTempleofAhnQiraj") then
		CurrentDungeon = 29;
	elseif (map == pathAtlas.."ZulFarrak") then
		CurrentDungeon = 30;
	elseif (map == pathAtlas.."ZulGurub") then
		CurrentDungeon = 31;
	elseif (map == pathAtlas.."Gnomeregan") or (map == pathAtlas.."GnomereganEnt") then
		CurrentDungeon = 32;
	-- Outdoor Raids
	elseif (map == pathAtlas.."FourDragons") then
		CurrentDungeon = 33;
	elseif (map == pathAtlas.."Azuregos") then
		CurrentDungeon = 34;
	elseif (map == pathAtlas.."LordKazzak") then
		CurrentDungeon = 35;
	-- Battlegrounds
	elseif (map == pathAtlas.."AlteracValleyNorth") then
		CurrentDungeon = 36;
	elseif (map == pathAtlas.."AlteracValleySouth") then
		CurrentDungeon = 36;
	elseif (map == pathAtlas.."ArathiBasin") then
		CurrentDungeon = 37;
	elseif (map == pathAtlas.."WarsongGulch") then
		CurrentDungeon = 38;
	-- TurtleWOW Dungeons
	elseif (map == pathAtlas.."TheCrescentGrove") then
		CurrentDungeon = 39;
	elseif (map == pathAtlas.."HateforgeQuarry") then
		CurrentDungeon = 40;
	elseif (map == pathAtlas.."KarazhanCrypt") then
		CurrentDungeon = 41;
	elseif (map == pathAtlas.."CavernsOfTimeBlackMorass") then
		CurrentDungeon = 42;
	elseif (map == pathAtlas.."StormwindVault") then
		CurrentDungeon = 43;
	elseif (map == pathAtlas.."GilneasCity") then
		CurrentDungeon = 44;
	elseif (map == pathAtlas.."LowerKara") then
		CurrentDungeon = 45;
	elseif (map == pathAtlas.."EmeraldSanctum") then
		CurrentDungeon = 46;
	elseif (map == pathAtlas.."Ostarius") then
		CurrentDungeon = 47;
		-- Default
	else --added for newer atlas version until i update atlasquest and for the flight pass maps
		CurrentDungeon = 99;
	end
end

-----------------------------------------------------------------------------
-- Alpha Map Support
-----------------------------------------------------------------------------
local pathAlphaMapInst = "Interface\\AddOns\\AlphaMap_Instances\\Maps\\"
local pathAlphaMapExt = "Interface\\AddOns\\AlphaMap_Exteriors\\Maps\\"
local pathAlphaMapBG = "Interface\\AddOns\\AlphaMap_Battlegrounds\\Maps\\"

function AtlasQuest_InstanzencheckAM()
	local map = AlphaMapAlphaMapTexture:GetTexture();
	-- Original Instances
	if (map == pathAlphaMapInst.."TheDeadmines") or (map == pathAlphaMapExt.."TheDeadminesExt") then
		CurrentDungeon = 1;
	elseif (map == pathAlphaMapInst.."WailingCaverns") or (map == pathAlphaMapExt.."WailingCavernsExt") then
		CurrentDungeon = 2;
	elseif (map == pathAlphaMapInst.."RagefireChasm") then
		CurrentDungeon = 3;
	elseif (map == pathAlphaMapInst.."Uldaman") or (map == pathAlphaMapExt.."UldamanExt") then
		CurrentDungeon = 4;
	elseif (map == pathAlphaMapInst.."BlackrockDepths") then
		CurrentDungeon = 5;
	elseif (map == pathAlphaMapInst.."BlackwingLair") then
		CurrentDungeon = 6;
	elseif (map == pathAlphaMapInst.."BlackfathomDeeps") or (map == pathAlphaMapExt.."BlackfathomDeepsExt") then
		CurrentDungeon = 7;
	elseif (map == pathAlphaMapInst.."LBRS") then
		CurrentDungeon = 8;
	elseif (map == pathAlphaMapInst.."UBRS") then
		CurrentDungeon = 9;
	elseif (map == pathAlphaMapInst.."DMEast") then
		CurrentDungeon = 10;
	elseif (map == pathAlphaMapInst.."DMNorth") then
		CurrentDungeon = 11;
	elseif (map == pathAlphaMapInst.."DMWest") then
		CurrentDungeon = 12;
	elseif (map == pathAlphaMapInst.."Maraudon") or (map == pathAlphaMapExt.."MaraudonExt") then
		CurrentDungeon = 13;
	elseif (map == pathAlphaMapInst.."MoltenCore") then
		CurrentDungeon = 14;
	elseif (map == pathAlphaMapInst.."Naxxramas") then
		CurrentDungeon = 15;
	elseif (map == pathAlphaMapInst.."OnyxiasLair") then
		CurrentDungeon = 16;
	elseif (map == pathAlphaMapInst.."RazorfenDowns") then
		CurrentDungeon = 17;
	elseif (map == pathAlphaMapInst.."RazorfenKraul") then
		CurrentDungeon = 18;
	elseif (map == pathAlphaMapInst.."ScarletMonastery") then
		CurrentDungeon = 19;
	elseif (map == pathAlphaMapInst.."Scholomance") then
		CurrentDungeon = 23;
	elseif (map == pathAlphaMapInst.."ShadowfangKeep") then
		CurrentDungeon = 24;
	elseif (map == pathAlphaMapInst.."Stratholme") then
		CurrentDungeon = 25;
	elseif (map == pathAlphaMapInst.."RuinsofAhnQiraj") then
		CurrentDungeon = 26;
	elseif (map == pathAlphaMapInst.."TheStockade") then
		CurrentDungeon = 27;
	elseif (map == pathAlphaMapInst.."TheSunkenTemple") or (map == pathAlphaMapExt.."SunkenTempleExt") then
		CurrentDungeon = 28;
	elseif (map == pathAlphaMapInst.."TempleofAhnQiraj") then
		CurrentDungeon = 29;
	elseif (map == pathAlphaMapInst.."ZulFarrak") then
		CurrentDungeon = 30;
	elseif (map == pathAlphaMapInst.."ZulGurub") then
		CurrentDungeon = 31;
	elseif (map == pathAlphaMapInst.."Gnomeregan") or (map == pathAlphaMapExt.."GnomereganExt") then
		CurrentDungeon = 32;
	-- Battlegrounds
	elseif (map == pathAlphaMapBG.."AlteracValley") then
		CurrentDungeon = 36;
	elseif (map == pathAlphaMapBG.."ArathiBasin") then
		CurrentDungeon = 37;
	elseif (map == pathAlphaMapBG.."WarsongGulch") then
		CurrentDungeon = 38;
	-- Default
	else
		CurrentDungeon = 99;
	end
	-----------------------------------------------------------------------------
	-- function to work with outdoor boss @ alphamap
	-----------------------------------------------------------------------------
	if (AlphaMapAlphaMapFrame:IsVisible()) then
		if (GamAlphaMapMap ~= nil) then -- check to prevent errors (post  ui.worldofwar dunno why error ocour)
			if (GamAlphaMapMap.type == AM_TYP_WORLDBOSSES) then
				if (GamAlphaMapMap.filename == "AM_Kazzak_Map") then
					CurrentDungeon = 35;
				elseif (GamAlphaMapMap.filename == "AM_Azuregos_Map") then
					CurrentDungeon = 34;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Duskwood_Map") then
					CurrentDungeon = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Hinterlands_Map") then
					CurrentDungeon = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Feralas_Map") then
					CurrentDungeon = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Ashenvale_Map") then
					CurrentDungeon = 33;
				else
					CurrentDungeon = 99;
				end
			end
		end
	end
end

---------------------------
--- AQ Instance Numbers ---
---------------------------
-- 1  = Deadmines (VC)
-- 2  = Wailing Caverns (WC)
-- 3  = Ragefire Chasm (RFC)
-- 4  = Uldaman (ULD)
-- 5  = Blackrock Depths (BRD)
-- 6  = Blackwing Lair (BWL)
-- 7  = Blackfathom Deeps (BFD)
-- 8  = Lower Blackrock Spire (LBRS)
-- 9  = Upper Blackrock Spire (UBRS)
-- 10 = Dire Maul East (DM)
-- 11 = Dire Maul North (DM)
-- 12 = Dire Maul West (DM)
-- 13 = Maraudon (Mara)
-- 14 = Molten Core (MC)
-- 15 = Naxxramas (Naxx)
-- 16 = Onyxia's Lair (Ony)
-- 17 = Razorfen Downs (RFD)
-- 18 = Razorfen Kraul (RFK)
-- 19 = SM: Library (SM Lib)
-- 20 = SM: Armory (SM Arm)
-- 21 = SM: Cathedral (SM Cath)
-- 22 = SM: Graveyard (SM GY)
-- 23 = Scholomance (Scholo)
-- 24 = Shadowfang Keep (SFK)
-- 25 = Stratholme (Strat)
-- 26 = The Ruins of Ahn'Qiraj (AQ20)
-- 27 = The Stockade (Stocks)
-- 28 = Sunken Temple (ST)
-- 29 = The Temple of Ahn'Qiraj (AQ40)
-- 30 = Zul'Farrak (ZF)
-- 31 = Zul'Gurub (ZG)
-- 32 = Gnomeregan (Gnomer)
-- 33 = Four Dragons
-- 34 = Azuregos
-- 35 = Lord Kazzak
-- 36 = Alterac Valley (AV)
-- 37 = Arathi Basin (AB)
-- 38 = Warsong Gulch (WSG)

-- TurtleWOW
-- 39 = The Crescent Grove (CG) 
-- 40 = Hateforge Quarry (HQ)
-- 41 = Karazhan Crypt (KC)
-- 42 = Black Morass (BM)
-- 43 = Stormwind Vault (SWV)
-- 44 - Gilneas City (GC)
-- 45 - Lower Karazhan Halls (LKH)
-- 46 - Emerald Sanctum (ES)

-- 99 =  default "rest"

-----------------------------------------------------------------------------
-- initialises the options panel
-- and sets checks after the variables
-----------------------------------------------------------------------------
function AtlasQuestOptionFrame_OnShow()
	AQAutoshowOption:SetChecked(AQAtlasAuto);
	if (AQ_ShownSide == "Left") then
		AQRIGHTOption:SetChecked(false);
		AQLEFTOption:SetChecked(true);
	else
		AQRIGHTOption:SetChecked(true);
		AQLEFTOption:SetChecked(false);
	end
end

-----------------------------------------------------------------------------
-- Autoshow option
-----------------------------------------------------------------------------
function AQAutoshowOption_OnClick()
	AQAtlasAuto = not AQAtlasAuto;
	AQAutoshowOption:SetChecked(AQAtlasAuto);
	AtlasQuest_SaveData();
end

-----------------------------------------------------------------------------
-- Right option
-----------------------------------------------------------------------------
function AQRIGHTOption_OnClick()
	if ((AtlasFrame ~= nil) and (AtlasORAlphaMap == "Atlas")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("LEFT", AtlasFrame, "RIGHT", -5, -10); --AtlasQuest right frame position when you change position regarding Atlas Addon by clicking the button
	elseif (AtlasORAlphaMap == "AlphaMap") then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("TOP", "AlphaMapFrame", 400, -107);
	end
	AQRIGHTOption:SetChecked(true);
	AQLEFTOption:SetChecked(false);
	AQ_ShownSide = "Right";
	AtlasQuest_SaveData();
end

-----------------------------------------------------------------------------
-- Left option
-----------------------------------------------------------------------------
function AQLEFTOption_OnClick()
	if ((AtlasFrame ~= nil) and (AtlasORAlphaMap == "Atlas") and (AQ_ShownSide == "Right")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("RIGHT", AtlasFrame, "LEFT", 16, -10); --AtlasQuest left frame position when you change position regarding Atlas Addon by clicking the button
	elseif ((AtlasORAlphaMap == "AlphaMap") and (AQ_ShownSide == "Right")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("TOPLEFT", "AlphaMapFrame", -195, -107);
	end
	AQRIGHTOption:SetChecked(false);
	AQLEFTOption:SetChecked(true);
	AQ_ShownSide = "Left";
	AtlasQuest_SaveData();
end

function AQClearALL()
	AtlasQuestInsideFramePagesText:SetText();
	AtlasQuestInsideFrameNextPage:Hide();
	AtlasQuestInsideFramePrevPage:Hide();
	AtlasQuestInsideFrameQuestName:SetText("");
	AtlasQuestInsideFrameQuestLevel:SetText("");
	AtlasQuestInsideFramePrequest:SetText("");
	AtlasQuestInsideFrameAttainLevel:SetText("");
	AtlasQuestInsideFrameRewardText:SetText();
	AtlasQuestInsideFrameStoryText:SetText();
	AtlasQuestInsideFrameFinishedText:SetText();
	AtlasQuestInsideFrameFinishedButton:Hide();
	for b = 1, 6 do
		getglobal("AtlasQuestItemframe" .. b .. "_Icon"):SetTexture();
		getglobal("AtlasQuestItemframe" .. b .. "_Name"):SetText();
		getglobal("AtlasQuestItemframe" .. b .. "_Extra"):SetText();
		getglobal("AtlasQuestItemframe" .. b):Disable();
	end
end

-----------------------------------------------------------------------------
-- Option button, shows option frame or hides if shown
-----------------------------------------------------------------------------
function AQOPTION1_OnClick()
	if (AtlasQuestOptionFrame:IsVisible()) then
		AtlasQuestOptionFrame:Hide();
	else
		AtlasQuestOptionFrame:Show();
	end
end

-----------------------------------------------------------------------------
-- upper right button / to show/close panel
-----------------------------------------------------------------------------
function AQCLOSE_OnClick()
	AQ_AtlasOrAlphamap();
	if (AtlasQuestFrame:IsVisible()) then
		AtlasQuestFrame:Hide();
		AtlasQuestInsideFrame:Hide();
	else
		AtlasQuestFrame:Show();
	end
	AQUpdateNOW = true;
end

-----------------------------------------------------------------------------
-- Checkbox for Alliance
-----------------------------------------------------------------------------
function AtlasQuestFrameAllianceButton_OnClick()
	AtlasQuest_Faction = 1
	AtlasQuestFrameHordeButton:SetChecked(false);
	AtlasQuestFrameAllianceButton:SetChecked(true);
	AtlasQuestInsideFrame:Hide();
	AQUpdateNOW = true;
	for i = 1, MAX_QUESTS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
	end
end

-----------------------------------------------------------------------------
-- Checkbox for Horde
-----------------------------------------------------------------------------
function AtlasQuestFrameHordeButton_OnClick()
	AtlasQuest_Faction = 2
	AtlasQuestFrameHordeButton:SetChecked(true);
	AtlasQuestFrameAllianceButton:SetChecked(false);
	AtlasQuestInsideFrame:Hide();
	AQUpdateNOW = true;
	for i = 1, MAX_QUESTS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
	end
end

-----------------------------------------------------------------------------
-- Story Button
-----------------------------------------------------------------------------
function AQSTORY1_OnClick()
	AQHideAL();
	if (AtlasQuestInsideFrame:IsVisible() == nil) then
		AtlasQuestInsideFrame:Show();
		WHICHBUTTON = STORY;
		AQButtonSTORY_SetText();
	elseif (WHICHBUTTON == STORY) then
		AtlasQuestInsideFrame:Hide();
	else
		WHICHBUTTON = STORY;
		AQButtonSTORY_SetText();
	end
	for i = 1, MAX_QUESTS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
	end
end


function AtlasQuestButton_OnClick()
	CurrentQuest = this:GetID();

	if (ChatFrameEditBox:IsVisible() and IsShiftKeyDown()) then
		AQInsertQuestInformation();
	else
		for i = 1, MAX_QUESTS do
			getglobal("AQQuestButton"..i.."Highlight"):Hide()
		end
		AQHideAL();
		AtlasQuestInsideFrameStoryText:SetText("");
		if (not AtlasQuestInsideFrame:IsVisible()) then
			AtlasQuestInsideFrame:Show();
			WHICHBUTTON = CurrentQuest;
			getglobal(this:GetName().."Highlight"):SetVertexColor(this:GetTextColor())
			getglobal(this:GetName().."Highlight"):Show()
			AQButton_SetText();
		elseif (WHICHBUTTON == CurrentQuest) then
			AtlasQuestInsideFrame:Hide();
			WHICHBUTTON = 0;
		else
			WHICHBUTTON = CurrentQuest;
			getglobal(this:GetName().."Highlight"):SetVertexColor(this:GetTextColor())
			getglobal(this:GetName().."Highlight"):Show()
			AQButton_SetText();
		end
	end
end

-----------------------------------------------------------------------------
-- Hide the AtlasLoot Frame if available
-----------------------------------------------------------------------------
function AQHideAL()
	if (AtlasLootItemsFrame) then
		AtlasLootItemsFrame:Hide(); -- hide atlasloot
	end
end

-----------------------------------------------------------------------------
-- Insert Quest Information into the chat box
-----------------------------------------------------------------------------
function AQInsertQuestInformation()
	local OnlyAtlasQuestInsideFrameQuestNameRemovedNumber
	local Quest = CurrentQuest;
	if (Quest <= 9) then
		if (AtlasQuest_Faction == 1) then
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber = strsub(getglobal("Inst" .. CurrentDungeon .. "Quest" .. Quest),
				4)
		elseif (AtlasQuest_Faction == 2) then
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber = strsub(
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. Quest .. "_HORDE"), 4)
		end
	elseif (Quest > 9) then
		if (AtlasQuest_Faction == 1) then
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber = strsub(getglobal("Inst" .. CurrentDungeon .. "Quest" .. Quest),
				5)
		elseif (AtlasQuest_Faction == 2) then
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber = strsub(
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. Quest .. "_HORDE"), 5)
		end
	end
	if (AtlasQuest_Faction == 1) then
		ChatFrameEditBox:Insert("[" ..
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber ..
			"] [" .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Level") .. "]");
	else
		ChatFrameEditBox:Insert("[" ..
			OnlyAtlasQuestInsideFrameQuestNameRemovedNumber ..
			"] [" .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Level") ..
			"]");
	end
end

-----------------------------------------------------------------------------
-- set the Quest text
-- executed when you push a button
-----------------------------------------------------------------------------
function AQButton_SetText()
	local itemID, nameDATA, colour

	AQClearALL();
	AtlasQuestInsideFrameFinishedButton:Show();
	AtlasQuestInsideFrameFinishedText:SetText(BLUE .. AQFinishedTEXT);
	if (AtlasQuest_Faction == 1) then
		AtlasQuestInsideFrameQuestName:SetText(getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest));
		AtlasQuestInsideFrameQuestLevel:SetText(BLUE ..
			AQDiscription_LEVEL .. WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Level"));
		AtlasQuestInsideFrameAttainLevel:SetText(BLUE ..
			AQDiscription_ATTAIN .. WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Attain"));
		AtlasQuestInsideFramePrequest:SetText(BLUE ..
			AQDiscription_PREQUEST ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Prequest") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_FOLGEQUEST ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Folgequest") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_START ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Location") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_AIM ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Aim") ..
			"\n \n" ..
			BLUE .. AQDiscription_NOTE .. WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Note"));
		-----------------------------------------------------------------------------
		-- FOR ALPHAMAP SUPPORT
		-- If there are other descriptions for alphamap and alphamap is shown then show them
		-----------------------------------------------------------------------------
		if ((AtlasORAlphaMap == "AlphaMap") and (getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Note_AlphaMap") ~= nil)) then
			AtlasQuestInsideFramePrequest:SetText(BLUE ..
				AQDiscription_PREQUEST ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Prequest") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_FOLGEQUEST ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Folgequest") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_START ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Location_AlphaMap") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_AIM ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Aim") ..
				"\n \n" .. BLUE .. AQDiscription_NOTE ..
				WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Note_AlphaMap"));
		end

		for b = 1, 6 do
			AtlasQuestInsideFrameRewardText:SetText(getglobal("Inst" ..
			CurrentDungeon .. "Quest" .. CurrentQuest .. "Rewardtext"))
			if (getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. b) ~= nil) then
				-----------------------------------------------------------------------------
				-- Yay for AutoQuery. Boo for odd variable names.
				-----------------------------------------------------------------------------
				itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. b);

				if (AQAutoQuery ~= nil) then
					colour = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ITC" .. b);
					nameDATA = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "name" .. b);

					if (GetItemInfo(itemID) == nil) then
						GameTooltip:SetHyperlink("item:" .. itemID);
						if (AQNoQuerySpam == nil) then
							DEFAULT_CHAT_FRAME:AddMessage(AQSERVERASK ..
							"[" .. colour .. nameDATA .. WHITE .. "]" .. AQSERVERASKAuto);
						end
					end
				end
				local name, extra, itemTexture = AQgetItemInformation(b)
				getglobal("AtlasQuestItemframe" .. b .. "_Icon"):SetTexture(itemTexture);
				getglobal("AtlasQuestItemframe" .. b .. "_Name"):SetText(name);
				getglobal("AtlasQuestItemframe" .. b .. "_Extra"):SetText(extra);
				getglobal("AtlasQuestItemframe" .. b):Enable();
			else
				getglobal("AtlasQuestItemframe" .. b .. "_Icon"):SetTexture();
				getglobal("AtlasQuestItemframe" .. b .. "_Name"):SetText();
				getglobal("AtlasQuestItemframe" .. b .. "_Extra"):SetText();
				getglobal("AtlasQuestItemframe" .. b):Disable();
			end
		end
	end

	if (AtlasQuest_Faction == 2) then
		AtlasQuestInsideFrameQuestName:SetText(getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"));
		AtlasQuestInsideFrameQuestLevel:SetText(BLUE ..
			AQDiscription_LEVEL .. WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Level"));
		AtlasQuestInsideFrameAttainLevel:SetText(BLUE ..
			AQDiscription_ATTAIN .. WHITE .. getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Attain"));
		AtlasQuestInsideFramePrequest:SetText(BLUE ..
			AQDiscription_PREQUEST ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Prequest") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_FOLGEQUEST ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Folgequest") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_START ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Location") ..
			"\n \n" ..
			BLUE ..
			AQDiscription_AIM ..
			WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Aim") ..
			"\n \n" .. BLUE .. AQDiscription_NOTE .. WHITE .. getglobal("Inst" .. CurrentDungeon ..
				"Quest" .. CurrentQuest .. "_HORDE_Note"));
		-----------------------------------------------------------------------------
		-- FOR ALPHAMAP SUPPORT
		-- If there are other descriptions for alphamap and alphamap is shown then show them
		-----------------------------------------------------------------------------
		if ((AtlasORAlphaMap == "AlphaMap") and (getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Note_AlphaMap") ~= nil)) then
			AtlasQuestInsideFramePrequest:SetText(BLUE ..
				AQDiscription_PREQUEST ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Prequest") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_FOLGEQUEST ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Folgequest") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_START ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Location_AlphaMap") ..
				"\n \n" ..
				BLUE ..
				AQDiscription_AIM ..
				WHITE ..
				getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Aim") ..
				"\n \n" ..
				BLUE .. AQDiscription_NOTE .. WHITE .. getglobal("Inst" .. CurrentDungeon ..
					"Quest" .. CurrentQuest .. "_HORDE_Note_AlphaMap"));
		end

		for b = 1, 6 do
			AtlasQuestInsideFrameRewardText:SetText(getglobal("Inst" ..
			CurrentDungeon .. "Quest" .. CurrentQuest .. "Rewardtext_HORDE"))
			if (getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. b .. "_HORDE") ~= nil) then
				-----------------------------------------------------------------------------
				-- Yay for AutoQuery. Boo for odd variable names.
				-----------------------------------------------------------------------------
				itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. b .. "_HORDE");

				if (AQAutoQuery ~= nil) then
					colour = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ITC" .. b .. "_HORDE");
					nameDATA = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "name" .. b .. "_HORDE");

					if (GetItemInfo(itemID) == nil) then
						GameTooltip:SetHyperlink("item:" .. itemID .. ":0:0:0");
						if (AQNoQuerySpam == nil) then
							DEFAULT_CHAT_FRAME:AddMessage(AQSERVERASK ..
							"[" .. colour .. nameDATA .. WHITE .. "]" .. AQSERVERASKAuto);
						end
					end
				end
				local name, extra, itemTexture = AQgetItemInformation(b)
				getglobal("AtlasQuestItemframe" .. b .. "_Icon"):SetTexture(itemTexture);
				getglobal("AtlasQuestItemframe" .. b .. "_Name"):SetText(name);
				getglobal("AtlasQuestItemframe" .. b .. "_Extra"):SetText(extra);
				getglobal("AtlasQuestItemframe" .. b):Enable();
			else
				getglobal("AtlasQuestItemframe" .. b .. "_Icon"):SetTexture();
				getglobal("AtlasQuestItemframe" .. b .. "_Name"):SetText();
				getglobal("AtlasQuestItemframe" .. b .. "_Extra"):SetText();
				getglobal("AtlasQuestItemframe" .. b):Disable();
			end
		end
	end

	local pages

	if (AtlasQuest_Faction == 1) then
		pages = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Page")
		if (AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest] == 1) then
			AtlasQuestInsideFrameFinishedButton:SetChecked(true);
		else
			AtlasQuestInsideFrameFinishedButton:SetChecked(false);
		end
	else
		pages = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Page")
		if (AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"] == 1) then
			AtlasQuestInsideFrameFinishedButton:SetChecked(true);
		else
			AtlasQuestInsideFrameFinishedButton:SetChecked(false);
		end
	end

	if (type(pages) == "table") then
		if (type(pages[1]) == "number") then
			AtlasQuestInsideFrameNextPage:Show();
			AQ_NextPageType = "Quest";
			AQ_CurrentPage = 1;
			AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage .. "/" .. pages[1]);
		end
	end
end

-----------------------------------------------------------------------------
-- improve the localisation through giving back the right and translated questname
-- sets the description text too
-- adds a error messeage to the description if item not available
-----------------------------------------------------------------------------
function AQgetItemInformation(id)
	local itemID
	local extra;
	local itemName, itemQuality
	local itemTexture = "Interface\\Icons\\INV_Misc_QuestionMark"

	if (AtlasQuest_Faction == 2) then
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. id .. "_HORDE")
		extra = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "description" .. id .. "_HORDE")
		itemName = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ITC" .. id .. "_HORDE") ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "name" .. id .. "_HORDE");
	else
		itemID = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ID" .. id)
		extra = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "description" .. id)
		itemName = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "ITC" .. id) ..
			getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "name" .. id);
	end

	if (GetItemInfo(itemID)) then
		itemName, _, itemQuality, _, _, _, _, _, itemTexture = GetItemInfo(itemID);
		local r, g, b, hex = GetItemQualityColor(itemQuality);
		itemName = hex .. itemName;
	end
	return itemName, extra, itemTexture;
end

-----------------------------------------------------------------------------
-- Set Story Text
-----------------------------------------------------------------------------
function AQButtonSTORY_SetText()
	-- first clear display
	AQClearALL();

	-- show right story text
	if (getglobal("Inst" .. CurrentDungeon .. "Story") ~= nil) then
		AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "Caption"));
		if (type(getglobal("Inst" .. CurrentDungeon .. "Story")) == "table") then
			AtlasQuestInsideFrameStoryText:SetText(WHITE .. getglobal("Inst" .. CurrentDungeon .. "Story")["Page1"]);
			-- Show Next side button if next site is avaiable
			if (getglobal("Inst" .. CurrentDungeon .. "Story")["Page2"] ~= nil) then
				AtlasQuestInsideFrameNextPage:Show();
				AQ_CurrentPage = 1;
				-- shows total amount of pages
				AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage ..
				"/" .. getglobal("Inst" .. CurrentDungeon .. "Story")["MaxPages"])
				-- count to make a diffrent between story and normal text
				AQ_NextPageType = "Story";
			end
		elseif (type(getglobal("Inst" .. CurrentDungeon .. "Story")) == "string") then
			AtlasQuestInsideFrameStoryText:SetText(WHITE .. getglobal("Inst" .. CurrentDungeon .. "Story"));
		end
		-- added to work with future versions of atlas (before i update e.g. before you dl the update)
	elseif (getglobal("Inst" .. CurrentDungeon .. "Story") == nil) then
		AtlasQuestInsideFrameQuestName:SetText("not available");
		AtlasQuestInsideFrameStoryText:SetText("not available");
	end
end

-----------------------------------------------------------------------------
-- shows the next side
-----------------------------------------------------------------------------
function AQNextPage_OnClick()
	local SideAfterThis = 0;
	local page
	SideAfterThis = AQ_CurrentPage + 2;
	AQ_CurrentPage = AQ_CurrentPage + 1;

	-- first clear display
	AQClearALL();

	-- it is a story text
	if (AQ_NextPageType == "Story") then
		AtlasQuestInsideFrameStoryText:SetText(WHITE ..
		getglobal("Inst" .. CurrentDungeon .. "Story")["Page" .. AQ_CurrentPage]);
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage ..
		"/" .. getglobal("Inst" .. CurrentDungeon .. "Story")["MaxPages"])
		if (getglobal("Inst" .. CurrentDungeon .. "Caption" .. AQ_CurrentPage) ~= nil) then
			AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "Caption" .. AQ_CurrentPage));
		else
			AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "Caption"));
		end
		-- hide button if no next side
		if (getglobal("Inst" .. CurrentDungeon .. "Story")["Page" .. SideAfterThis] == nil) then
			AtlasQuestInsideFrameNextPage:Hide();
		else
			AtlasQuestInsideFrameNextPage:Show();
		end
	end

	-- it is a quest text
	if (AQ_NextPageType == "Quest") then
		-- SHIT is added to make the code smaller it give back the right link for horde or alliance
		if (AtlasQuest_Faction == 1) then --Alliance
			page = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Page")
		else
			page = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Page")
		end
		AtlasQuestInsideFrameStoryText:SetText(WHITE .. page[AQ_CurrentPage])
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage .. "/" .. page[1])
		-- hide button if no next side
		if (page[SideAfterThis] == nil) then
			AtlasQuestInsideFrameNextPage:Hide();
		else
			AtlasQuestInsideFrameNextPage:Show();
		end
	end

	-- it is a boss text
	if (AQ_NextPageType == "Boss") then
		AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][1]);
		AtlasQuestInsideFrameStoryText:SetText(WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][2] ..
			"\n \n" .. getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][3]);
		-- Show Next side button if next site is avaiable
		if (getglobal("Inst" .. CurrentDungeon .. "General")[SideAfterThis] ~= nil) then
			AtlasQuestInsideFrameNextPage:Show();
		end
		-- shows total amount of pages
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage .. "/" .. getn(getglobal("Inst" .. CurrentDungeon .. "General")))
	end

	-- Show backwards button
	AtlasQuestInsideFramePrevPage:Show();
end

-----------------------------------------------------------------------------
-- shows the side before this side
-----------------------------------------------------------------------------
function AQPrevPage_OnClick()
	local page
	AQ_CurrentPage = AQ_CurrentPage - 1;

	-- it is a story text
	if (AQ_NextPageType == "Story") then
		AtlasQuestInsideFrameStoryText:SetText(WHITE ..
		getglobal("Inst" .. CurrentDungeon .. "Story")["Page" .. AQ_CurrentPage]);
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage ..
		"/" .. getglobal("Inst" .. CurrentDungeon .. "Story")["MaxPages"])
		if (getglobal("Inst" .. CurrentDungeon .. "Caption" .. AQ_CurrentPage) ~= nil) then
			AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "Caption" .. AQ_CurrentPage));
		else
			AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "Caption"));
		end
		-- hide button if first side
		if (AQ_CurrentPage == 1) then
			AtlasQuestInsideFramePrevPage:Hide();
		end
	end

	-- it is a quest text
	if (AQ_NextPageType == "Quest") then
		-- SHIT is added to make the code smaller it give back the right link for horde or alliance
		if (AtlasQuest_Faction == 1) then --Alliance
			page = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_Page")
		else
			page = getglobal("Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE_Page")
		end
		if (AQ_CurrentPage == 1) then
			AQButton_SetText()
		else
			AtlasQuestInsideFrameStoryText:SetText(WHITE .. page[AQ_CurrentPage])
		end
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage .. "/" .. page[1])
	end

	-- it is a boss text
	if (AQ_NextPageType == "Boss") then
		AtlasQuestInsideFrameQuestName:SetText(BLUE .. getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][1]);
		AtlasQuestInsideFrameStoryText:SetText(WHITE ..
			getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][2] ..
			"\n \n" .. getglobal("Inst" .. CurrentDungeon .. "General")[AQ_CurrentPage][3]);
		-- Show Next side button if next site is avaiable
		if (AQ_CurrentPage == 1) then
			AtlasQuestInsideFramePrevPage:Hide();
		end
		-- shows total amount of pages
		AtlasQuestInsideFramePagesText:SetText(AQ_CurrentPage .. "/" .. getn(getglobal("Inst" .. CurrentDungeon .. "General")))
	end

	AtlasQuestInsideFrameNextPage:Show();
end

-----------------------------------------------------------------------------
-- Checkbox for the finished quest option
-----------------------------------------------------------------------------
function AQFinishedAtlasQuestButton_OnClick()
	if (AtlasQuestInsideFrameFinishedButton:GetChecked() and AtlasQuest_Faction == 1) then
		AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest] = 1;
		setglobal("AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest, 1);
	elseif (AtlasQuestInsideFrameFinishedButton:GetChecked() and AtlasQuest_Faction == 2) then
		AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"] = 1;
	elseif ((not AtlasQuestInsideFrameFinishedButton:GetChecked()) and (AtlasQuest_Faction == 1)) then
		AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest] = nil;
	elseif ((not AtlasQuestInsideFrameFinishedButton:GetChecked()) and (AtlasQuest_Faction == 2)) then
		AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"] = nil;
	end
	--save everything
	if (AtlasQuest_Faction == 1) then
		AtlasQuest_Options[UnitName("player")]["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest] = AQ
			["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest]
	elseif (AtlasQuest_Faction == 2) then
		AtlasQuest_Options[UnitName("player")]["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"] =
			AQ["AQFinishedQuest_Inst" .. CurrentDungeon .. "Quest" .. CurrentQuest .. "_HORDE"]
	end

	AtlasQuest_UpdateButtons()
	AQButton_SetText()
end

function AtlasQuestInsideFrame_OnHide()
	for i = 1, MAX_QUESTS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
	end
end