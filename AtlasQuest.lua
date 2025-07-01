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
local Initialized = nil;                       -- the variables are not loaded yet
local MAX_INSTANCES = 68                       -- Sets the max number of instances and quests to check for.
local MAX_QUESTS = 23
AtlasQuest_Faction = 1;                           -- variable that configures whether horde or allianz is shown
AQINSTANZ = 1;                                 -- currently shown instance index
local AQINSTATM;                                -- variable to check whether AQINSTANZ has changed
AQ_ShownSide = "Left"                          -- configures at which side the AQ panel is shown
AQAtlasAuto = true;                            -- option to show the AQpanel automatically at atlas-startup
AQNOColourCheck = nil;
ATLASQUEST_VERSION = GetAddOnMetadata("AtlasQuest", "Version") -- Set title for AtlasQuest side panel

local playerName = UnitName("player")
local _, race = UnitRace("player")
if (race == "Orc" or race == "Troll" or race == "Scourge" or race == "Tauren" or race == "Goblin") then
	AtlasQuest_Faction = 2;
end

local AtlasQuest_Defaults = {
	["Version"] = "4.1.3",
	[playerName] = {
		["ShownSide"] = "Left",
		["AtlasAutoShow"] = 2,
		["NOColourCheck"] = nil,
		["CheckQuestlog"] = nil,
		["AutoQuery"] = nil,
		["NoQuerySpam"] = true,
		["CompareTooltip"] = nil,
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
		AQVersionCheck();
		AtlasQuest_LoadData();
	end
	Initialized = 1;
end

-----------------------------------------------------------------------------
-- New Version check
-----------------------------------------------------------------------------
function AQVersionCheck()
	if (AtlasQuest_Options["Version"] == nil or AtlasQuest_Options["Version"] ~= AtlasQuest_Defaults["Version"]) then
		AtlasQuest_Options["Version"] = AtlasQuest_Defaults["Version"];
		DEFAULT_CHAT_FRAME:AddMessage("First load after updating to version " .. ATLASQUEST_VERSION);
	end
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
	-- Colour Check? if nil = no cc; if true = cc
	AQNOColourCheck = AtlasQuest_Options[playerName]["ColourCheck"];
	-- Finished?
	for i = 1, MAX_INSTANCES do
		for b = 1, MAX_QUESTS do
			AQ["AQFinishedQuest_Inst" .. i .. "Quest" .. b] = AtlasQuest_Options[playerName]
				["AQFinishedQuest_Inst" .. i .. "Quest" .. b]
			AQ["AQFinishedQuest_Inst" .. i .. "Quest" .. b .. "_HORDE"] = AtlasQuest_Options[playerName]
				["AQFinishedQuest_Inst" .. i .. "Quest" .. b .. "_HORDE"]
		end
	end
	--AQCheckQuestlog
	AQCheckQuestlog = AtlasQuest_Options[playerName]["CheckQuestlog"];
	-- AutoQuery option
	AQAutoQuery = AtlasQuest_Options[playerName]["AutoQuery"];
	-- Suppress Server Query Text option
	AQNoQuerySpam = AtlasQuest_Options[playerName]["NoQuerySpam"];
	-- Comparison Tooltips option
	AQCompareTooltip = AtlasQuest_Options[playerName]["CompareTooltip"];
end

-----------------------------------------------------------------------------
-- Saves the variables
-----------------------------------------------------------------------------
function AtlasQuest_SaveData()
	AtlasQuest_Options[playerName]["ShownSide"] = AQ_ShownSide;
	AtlasQuest_Options[playerName]["AtlasAutoShow"] = AQAtlasAuto;
	AtlasQuest_Options[playerName]["ColourCheck"] = AQNOColourCheck;
	AtlasQuest_Options[playerName]["CheckQuestlog"] = AQCheckQuestlog;
	AtlasQuest_Options[playerName]["AutoQuery"] = AQAutoQuery;
	AtlasQuest_Options[playerName]["NoQuerySpam"] = AQNoQuerySpam;
	AtlasQuest_Options[playerName]["CompareTooltip"] = AQCompareTooltip;
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
	AQOptionCloseButton:SetText(AQ_OK);
	AQAutoshowOptionTEXT:SetText(AQOptionsAutoshowTEXT);
	AQLEFTOptionTEXT:SetText(AQOptionsLEFTTEXT);
	AQRIGHTOptionTEXT:SetText(AQOptionsRIGHTTEXT);
	AQColourOptionTEXT:SetText(AQOptionsCCTEXT);
	AtlasQuestInsideFrameFinishedText:SetText(AQFinishedTEXT);
	AQCheckQuestlogTEXT:SetText(AQQLColourChange);
	AQAutoQueryTEXT:SetText(AQOptionsAutoQueryTEXT);
	AQNoQuerySpamTEXT:SetText(AQOptionsNoQuerySpamTEXT);
	AQCompareTooltipTEXT:SetText(AQOptionsCompareTooltipTEXT);
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
	local previousValue = AQINSTANZ;
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
	if (AQINSTANZ == 99) then
		HideUIPanel(AtlasQuestFrame);
		HideUIPanel(AtlasQuestInsideFrame);
	elseif ((AQINSTANZ ~= previousValue) or AQUpdateNOW) then
		AtlasQuest_UpdateButtons();
		AQUpdateNOW = false
		AtlasQuestFrameZoneName:SetText();
		if (getglobal("Inst" .. AQINSTANZ .. "Caption") ~= nil) then
			AtlasQuestFrameZoneName:SetText(getglobal("Inst" .. AQINSTANZ .. "Caption"))
		end
	elseif ((AtlasORAlphaMap == "AlphaMap") and (AlphaMapAlphaMapFrame:IsVisible() == nil)) then
		HideUIPanel(AtlasQuestFrame);
		HideUIPanel(AtlasQuestInsideFrame);
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
	if (AQINSTATM ~= AQINSTANZ) then
		AtlasQuestInsideFrame:Hide();
	end
	AQINSTATM = AQINSTANZ;
	if (AtlasQuest_Faction == 1) then
		AtlasQuestFrameNumQuests:SetText(getglobal("Inst" .. AQINSTANZ .. "QAA") or "");
	elseif (AtlasQuest_Faction == 2) then
		AtlasQuestFrameNumQuests:SetText(getglobal("Inst" .. AQINSTANZ .. "QAH") or "");
	end
	for i = 1, MAX_QUESTS do
		local button = getglobal("AQQuestButton" .. i)
		local icon = getglobal("AQQuestButton" .. i .. "Icon")
		local text = getglobal("Inst" .. AQINSTANZ .. "Quest" .. i)
		local isFinished = AQ["AQFinishedQuest_Inst" .. AQINSTANZ .. "Quest" .. i] == 1
		local questLevel = tonumber(getglobal("Inst" .. AQINSTANZ .. "Quest" .. i .. "_Level"));
		if (AtlasQuest_Faction == 2) then
			text = getglobal("Inst" .. AQINSTANZ .. "Quest" .. i .. "_HORDE")
			isFinished = AQ["AQFinishedQuest_Inst" .. AQINSTANZ .. "Quest" .. i .. "_HORDE"] == 1
			questLevel = tonumber(getglobal("Inst" .. AQINSTANZ .. "Quest" .. i .. "_HORDE_Level"));
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
	if (AQCheckQuestlog) then
		for i = 1, GetNumQuestLogEntries() do
			questLogTitle, level, questTag, isHeader, isCollapsed, isComplete = GetQuestLogTitle(i)
			if not isHeader and strfind(questLogTitle or "", questName) then
				return true
			end
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
		ShowUIPanel(AtlasQuestFrame);
	else
		HideUIPanel(AtlasQuestFrame);
	end
	AtlasQuestInsideFrame:Hide();
	if (AQ_ShownSide == "Right") then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("TOP", "AtlasFrame", 567, -30);
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
	local SHOWNID

	if (AtlasQuest_Faction == 1) then
		SHOWNID = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ID" .. AQTHISISSHOWN);
	else
		SHOWNID = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ID" .. AQTHISISSHOWN .. "_HORDE");
	end

	if (SHOWNID ~= nil) then
		if (GetItemInfo(SHOWNID) ~= nil) then
			GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
			GameTooltip:SetHyperlink("item:" .. SHOWNID .. ":0:0:0");
			GameTooltip:Show();
		else
			GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
			GameTooltip:ClearLines();
			GameTooltip:AddLine(RED .. AQERRORNOTSHOWN);
			GameTooltip:AddLine(AQERRORASKSERVER);
			GameTooltip:Show();
		end
	end
end

-----------------------------------------------------------------------------
-- Ask Server right-click
-- + shift click to send link
-- + ctrl click for dressroom
-- BIG THANKS TO Daviesh and ATLASLOOT for the CODE
-----------------------------------------------------------------------------

function AtlasQuestItem_OnClick(arg1)
	local SHOWNID
	local nameDATA
	local colour
	local itemName, itemQuality

	if (AtlasQuest_Faction == 1) then
		SHOWNID = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ID" .. AQTHISISSHOWN);
		colour = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ITC" .. AQTHISISSHOWN);
		nameDATA = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "name" .. AQTHISISSHOWN);
	else
		SHOWNID = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ID" .. AQTHISISSHOWN .. "_HORDE");
		colour = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "ITC" .. AQTHISISSHOWN .. "_HORDE");
		nameDATA = getglobal("Inst" .. AQINSTANZ .. "Quest" .. AQSHOWNQUEST .. "name" .. AQTHISISSHOWN .. "_HORDE");
	end

	if (arg1 == "RightButton") then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
		GameTooltip:SetHyperlink("item:" .. SHOWNID .. ":0:0:0");
		GameTooltip:Show();
		if (AQNoQuerySpam == nil) then
			DEFAULT_CHAT_FRAME:AddMessage(AQSERVERASK ..
			"[" .. colour .. nameDATA .. WHITE .. "]" .. AQSERVERASKInformation);
		end
	elseif (IsShiftKeyDown()) then
		if (GetItemInfo(SHOWNID)) then
			itemName, _, itemQuality = GetItemInfo(SHOWNID);
			local r, g, b, hex = GetItemQualityColor(itemQuality);
			ChatFrameEditBox:Insert(hex .. "|Hitem:" .. SHOWNID .. ":0:0:0|h[" .. itemName .. "]|h|r");
		else
			DEFAULT_CHAT_FRAME:AddMessage("Item unsafe! Right click to get the item ID")
			ChatFrameEditBox:Insert("[" .. nameDATA .. "]");
		end
		--If control-clicked, use the dressing room
	elseif (IsControlKeyDown() and GetItemInfo(SHOWNID)) then
		DressUpItemLink(SHOWNID);
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
		AQINSTANZ = 1;
	elseif (map == pathAtlas.."WailingCaverns") or (map == pathAtlas.."WailingCavernsEnt") then
		AQINSTANZ = 2;
	elseif (map == pathAtlas.."RagefireChasm") then
		AQINSTANZ = 3;
	elseif (map == pathAtlas.."Uldaman") or (map == pathAtlas.."UldamanEnt") then
		AQINSTANZ = 4;
	elseif (map == pathAtlas.."BlackrockDepths") then
		AQINSTANZ = 5;
	elseif (map == pathAtlas.."BlackwingLair") then
		AQINSTANZ = 6;
	elseif (map == pathAtlas.."BlackfathomDeeps") or (map == pathAtlas.."BlackfathomDeepsEnt") then
		AQINSTANZ = 7;
	elseif (map == pathAtlas.."BlackrockSpireLower") then
		AQINSTANZ = 8;
	elseif (map == pathAtlas.."BlackrockSpireUpper") then
		AQINSTANZ = 9;
	elseif (map == pathAtlas.."DireMaulEast") then
		AQINSTANZ = 10;
	elseif (map == pathAtlas.."DireMaulNorth") then
		AQINSTANZ = 11;
	elseif (map == pathAtlas.."DireMaulWest") then
		AQINSTANZ = 12;
	elseif (map == pathAtlas.."Maraudon") or (map == pathAtlas.."MaraudonEnt") then
		AQINSTANZ = 13;
	elseif (map == pathAtlas.."MoltenCore") then
		AQINSTANZ = 14;
	elseif (map == pathAtlas.."Naxxramas") then
		AQINSTANZ = 15;
	elseif (map == pathAtlas.."OnyxiasLair") then
		AQINSTANZ = 16;
	elseif (map == pathAtlas.."RazorfenDowns") then
		AQINSTANZ = 17;
	elseif (map == pathAtlas.."RazorfenKraul") then
		AQINSTANZ = 18;
	elseif (map == pathAtlas.."SMLibrary") then
		AQINSTANZ = 19;
	elseif (map == pathAtlas.."SMArmory") then
		AQINSTANZ = 20;
	elseif (map == pathAtlas.."SMCathedral") then
		AQINSTANZ = 21;
	elseif (map == pathAtlas.."SMGraveyard") then
		AQINSTANZ = 22;
	elseif (map == pathAtlas.."Scholomance") then
		AQINSTANZ = 23;
	elseif (map == pathAtlas.."ShadowfangKeep") then
		AQINSTANZ = 24;
	elseif (map == pathAtlas.."Stratholme") then
		AQINSTANZ = 25;
	elseif (map == pathAtlas.."TheRuinsofAhnQiraj") then
		AQINSTANZ = 26;
	elseif (map == pathAtlas.."TheStockade") then
		AQINSTANZ = 27;
	elseif (map == pathAtlas.."TheSunkenTemple") or (map == pathAtlas.."TheSunkenTempleEnt") then
		AQINSTANZ = 28;
	elseif (map == pathAtlas.."TheTempleofAhnQiraj") then
		AQINSTANZ = 29;
	elseif (map == pathAtlas.."ZulFarrak") then
		AQINSTANZ = 30;
	elseif (map == pathAtlas.."ZulGurub") then
		AQINSTANZ = 31;
	elseif (map == pathAtlas.."Gnomeregan") or (map == pathAtlas.."GnomereganEnt") then
		AQINSTANZ = 32;
	-- Outdoor Raids
	elseif (map == pathAtlas.."FourDragons") then
		AQINSTANZ = 33;
	elseif (map == pathAtlas.."Azuregos") then
		AQINSTANZ = 34;
	elseif (map == pathAtlas.."LordKazzak") then
		AQINSTANZ = 35;
	-- Battlegrounds
	elseif (map == pathAtlas.."AlteracValleyNorth") then
		AQINSTANZ = 36;
	elseif (map == pathAtlas.."AlteracValleySouth") then
		AQINSTANZ = 36;
	elseif (map == pathAtlas.."ArathiBasin") then
		AQINSTANZ = 37;
	elseif (map == pathAtlas.."WarsongGulch") then
		AQINSTANZ = 38;
	-- TurtleWOW Dungeons
	elseif (map == pathAtlas.."TheCrescentGrove") then
		AQINSTANZ = 39;
	elseif (map == pathAtlas.."HateforgeQuarry") then
		AQINSTANZ = 40;
	elseif (map == pathAtlas.."KarazhanCrypt") then
		AQINSTANZ = 41;
	elseif (map == pathAtlas.."CavernsOfTimeBlackMorass") then
		AQINSTANZ = 42;
	elseif (map == pathAtlas.."StormwindVault") then
		AQINSTANZ = 43;
	elseif (map == pathAtlas.."GilneasCity") then
		AQINSTANZ = 44;
	elseif (map == pathAtlas.."LowerKara") then
		AQINSTANZ = 45;
	elseif (map == pathAtlas.."EmeraldSanctum") then
		AQINSTANZ = 46;
	elseif (map == pathAtlas.."Ostarius") then
		AQINSTANZ = 47;
		-- Default
	else --added for newer atlas version until i update atlasquest and for the flight pass maps
		AQINSTANZ = 99;
	end
end

-----------------------------------------------------------------------------
-- Alpha Map Support
-----------------------------------------------------------------------------
local pathAlphaMapInst = "Interface\\AddOns\\AlphaMap_Instances\\Maps\\"
local pathAlphaMapExt = "Interface\\AddOns\\AlphaMap_Exteriors\\Maps\\"
local pathAlphaMapBG = "Interface\\AddOns\\AlphaMap_Battlegrounds\\Maps\\"

function AtlasQuest_InstanzencheckAM()
	AQALPHAMAP = AlphaMapAlphaMapTexture:GetTexture();
	-- Original Instances
	if (AQALPHAMAP == pathAlphaMapInst.."TheDeadmines") or (AQALPHAMAP == pathAlphaMapExt.."TheDeadminesExt") then
		AQINSTANZ = 1;
	elseif (AQALPHAMAP == pathAlphaMapInst.."WailingCaverns") or (AQALPHAMAP == pathAlphaMapExt.."WailingCavernsExt") then
		AQINSTANZ = 2;
	elseif (AQALPHAMAP == pathAlphaMapInst.."RagefireChasm") then
		AQINSTANZ = 3;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Uldaman") or (AQALPHAMAP == pathAlphaMapExt.."UldamanExt") then
		AQINSTANZ = 4;
	elseif (AQALPHAMAP == pathAlphaMapInst.."BlackrockDepths") then
		AQINSTANZ = 5;
	elseif (AQALPHAMAP == pathAlphaMapInst.."BlackwingLair") then
		AQINSTANZ = 6;
	elseif (AQALPHAMAP == pathAlphaMapInst.."BlackfathomDeeps") or (AQALPHAMAP == pathAlphaMapExt.."BlackfathomDeepsExt") then
		AQINSTANZ = 7;
	elseif (AQALPHAMAP == pathAlphaMapInst.."LBRS") then
		AQINSTANZ = 8;
	elseif (AQALPHAMAP == pathAlphaMapInst.."UBRS") then
		AQINSTANZ = 9;
	elseif (AQALPHAMAP == pathAlphaMapInst.."DMEast") then
		AQINSTANZ = 10;
	elseif (AQALPHAMAP == pathAlphaMapInst.."DMNorth") then
		AQINSTANZ = 11;
	elseif (AQALPHAMAP == pathAlphaMapInst.."DMWest") then
		AQINSTANZ = 12;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Maraudon") or (AQALPHAMAP == pathAlphaMapExt.."MaraudonExt") then
		AQINSTANZ = 13;
	elseif (AQALPHAMAP == pathAlphaMapInst.."MoltenCore") then
		AQINSTANZ = 14;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Naxxramas") then
		AQINSTANZ = 15;
	elseif (AQALPHAMAP == pathAlphaMapInst.."OnyxiasLair") then
		AQINSTANZ = 16;
	elseif (AQALPHAMAP == pathAlphaMapInst.."RazorfenDowns") then
		AQINSTANZ = 17;
	elseif (AQALPHAMAP == pathAlphaMapInst.."RazorfenKraul") then
		AQINSTANZ = 18;
	elseif (AQALPHAMAP == pathAlphaMapInst.."ScarletMonastery") then
		AQINSTANZ = 19;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Scholomance") then
		AQINSTANZ = 23;
	elseif (AQALPHAMAP == pathAlphaMapInst.."ShadowfangKeep") then
		AQINSTANZ = 24;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Stratholme") then
		AQINSTANZ = 25;
	elseif (AQALPHAMAP == pathAlphaMapInst.."RuinsofAhnQiraj") then
		AQINSTANZ = 26;
	elseif (AQALPHAMAP == pathAlphaMapInst.."TheStockade") then
		AQINSTANZ = 27;
	elseif (AQALPHAMAP == pathAlphaMapInst.."TheSunkenTemple") or (AQALPHAMAP == pathAlphaMapExt.."SunkenTempleExt") then
		AQINSTANZ = 28;
	elseif (AQALPHAMAP == pathAlphaMapInst.."TempleofAhnQiraj") then
		AQINSTANZ = 29;
	elseif (AQALPHAMAP == pathAlphaMapInst.."ZulFarrak") then
		AQINSTANZ = 30;
	elseif (AQALPHAMAP == pathAlphaMapInst.."ZulGurub") then
		AQINSTANZ = 31;
	elseif (AQALPHAMAP == pathAlphaMapInst.."Gnomeregan") or (AQALPHAMAP == pathAlphaMapExt.."GnomereganExt") then
		AQINSTANZ = 32;
	-- Battlegrounds
	elseif (AQALPHAMAP == pathAlphaMapBG.."AlteracValley") then
		AQINSTANZ = 36;
	elseif (AQALPHAMAP == pathAlphaMapBG.."ArathiBasin") then
		AQINSTANZ = 37;
	elseif (AQALPHAMAP == pathAlphaMapBG.."WarsongGulch") then
		AQINSTANZ = 38;
	-- Default
	else
		AQINSTANZ = 99;
	end
	-----------------------------------------------------------------------------
	-- function to work with outdoor boss @ alphamap
	-----------------------------------------------------------------------------
	if (AlphaMapAlphaMapFrame:IsVisible()) then
		if (GamAlphaMapMap ~= nil) then -- check to prevent errors (post  ui.worldofwar dunno why error ocour)
			if (GamAlphaMapMap.type == AM_TYP_WORLDBOSSES) then
				if (GamAlphaMapMap.filename == "AM_Kazzak_Map") then
					AQINSTANZ = 35;
				elseif (GamAlphaMapMap.filename == "AM_Azuregos_Map") then
					AQINSTANZ = 34;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Duskwood_Map") then
					AQINSTANZ = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Hinterlands_Map") then
					AQINSTANZ = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Feralas_Map") then
					AQINSTANZ = 33;
				elseif (GamAlphaMapMap.filename == "AM_Dragon_Ashenvale_Map") then
					AQINSTANZ = 33;
				else
					AQINSTANZ = 99;
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
	AQColourOption:SetChecked(AQNOColourCheck);
	AQCheckQuestlogButton:SetChecked(AQCheckQuestlog);
	AQAutoQueryOption:SetChecked(AQAutoQuery);
	AQNoQuerySpamOption:SetChecked(AQNoQuerySpam);
	AQCompareTooltipOption:SetChecked(AQCompareTooltip);
end

-----------------------------------------------------------------------------
-- Autoshow option
-----------------------------------------------------------------------------
function AQAutoshowOption_OnClick()
	if (AQAtlasAuto) then
		AQAtlasAuto = false;
	else
		AQAtlasAuto = true;
	end
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
	if (AQ_ShownSide ~= "Right") then
		ChatFrame1:AddMessage(AQShowRight);
	end
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

-----------------------------------------------------------------------------
-- Colour Check
-- if AQNOColourCheck = true then NO Colour Check
-----------------------------------------------------------------------------
function AQColourOption_OnClick()
	AQNOColourCheck = not AQNOColourCheck;
	AQColourOption:SetChecked(AQNOColourCheck);
	AtlasQuest_SaveData();
	AQUpdateNOW = true;
end

-----------------------------------------------------------------------------
-- CheckQuestlog option
-----------------------------------------------------------------------------
function AQCheckQuestlogButton_OnClick()
	AQCheckQuestlog = not AQCheckQuestlog;
	AQCheckQuestlogButton:SetChecked(AQCheckQuestlog);
	AtlasQuest_SaveData();
	AQUpdateNOW = true;
end

-----------------------------------------------------------------------------
-- AutoQuery Option
-----------------------------------------------------------------------------
function AQAutoQueryOption_OnClick()
	AQAutoQuery = not AQAutoQuery;
	AQAutoQueryOption:SetChecked(AQAutoQuery);
	AtlasQuest_SaveData();
end

-----------------------------------------------------------------------------
-- Suppress AutoQuery Text Option
-----------------------------------------------------------------------------
function AQNoQuerySpamOption_OnClick()
	AQNoQuerySpam = not AQNoQuerySpam;
	AQNoQuerySpamOption:SetChecked(AQNoQuerySpam);
	AtlasQuest_SaveData();
end

-----------------------------------------------------------------------------
-- Comparison Tooltips Option
-----------------------------------------------------------------------------
function AQCompareTooltipOption_OnClick()
	AQCompareTooltip = not AQCompareTooltip;
	AQCompareTooltipOption:SetChecked(AQCompareTooltip);
	AtlasQuest_SaveData();
end
