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

local RED = "|cffcc6666";
local WHITE = "|cffFFFFFF";
local BLUE = "|cff0070dd";

local MAX_INSTANCES = getn(AtlasQuest_Data)
local MAX_QUEST_BUTTONS = 23
local CurrentFaction = 1;
local CurrentDungeon = 1;
local PrevDungeon;
local Side = "Left"
local AutoShow = true;
local CurrentPage = 1
local PlayerName = UnitName("player")
local _, Race = UnitRace("player")
local LastSelectedQuest
local SearchPattern = gsub(ERR_QUEST_COMPLETE_S, "%%s", "(.+)")
local PlayerFaction = 1

if (Race == "Orc" or Race == "Troll" or Race == "Scourge" or Race == "Tauren" or Race == "Goblin") then
	CurrentFaction = 2;
	PlayerFaction = 2
end

local AtlasQuest_Defaults = {
	[PlayerName] = {
		["ShownSide"] = "Left",
		["AtlasAutoShow"] = true,
	},
};

function AQ_OnLoad()
	this:RegisterEvent("VARIABLES_LOADED");
	this:RegisterEvent("CHAT_MSG_SYSTEM") -- ERR_QUEST_COMPLETE_S = "%s completed."
	AtlasQuestFrameStoryButton:SetText(AQStoryB);
	AtlasQuestFrameOptionsButton:SetText(AQOptionB);
	AtlasQuestInsideFrameFinishedText:SetText(AQFinishedTEXT);
	AQUpdateNOW = true;
	AtlasQuestFrame_Title:SetText("AtlasQuest");
	this:SetFrameLevel(this:GetParent():GetFrameLevel() - 1)
end

function AtlasQuest_OnEvent()
	if (event == "VARIABLES_LOADED") then
		VariablesLoaded = 1; -- data is loaded completely
		tinsert(UISpecialFrames, "AtlasQuestOptionFrame")
		if (not AtlasQuest_Options) then
			AtlasQuest_Options = AtlasQuest_Defaults;
			DEFAULT_CHAT_FRAME:AddMessage("AtlasQuest Options database not found. Generating...");
		elseif (not AtlasQuest_Options[PlayerName]) then
			DEFAULT_CHAT_FRAME:AddMessage("Generate default database for this character");
			AtlasQuest_Options[PlayerName] = AtlasQuest_Defaults[PlayerName]
		end
		if (type(AtlasQuest_Options[PlayerName]) == "table") then
			-- Which side
			if (AtlasQuest_Options[PlayerName]["ShownSide"] ~= nil) then
				Side = AtlasQuest_Options[PlayerName]["ShownSide"];
			end
			-- atlas autoshow
			if (AtlasQuest_Options[PlayerName]["AtlasAutoShow"] ~= nil) then
				AutoShow = AtlasQuest_Options[PlayerName]["AtlasAutoShow"];
			end
			-- finished quests
			AtlasQuest_CharData = AtlasQuest_CharData or {}
			for i = 1, MAX_INSTANCES do
				AtlasQuest_CharData[i] = AtlasQuest_CharData[i] or { [1]={}, [2]={} }
				for b = 1, MAX_QUEST_BUTTONS do
					AtlasQuest_CharData[i][1][b] = AtlasQuest_CharData[i][1][b] or AtlasQuest_Options[PlayerName]["AQFinishedQuest_Inst"..i.."Quest"..b] or false
					AtlasQuest_CharData[i][2][b] = AtlasQuest_CharData[i][2][b] or AtlasQuest_Options[PlayerName]["AQFinishedQuest_Inst"..i.."Quest"..b.."_HORDE"] or false
				end
			end
		end
	elseif event == "CHAT_MSG_SYSTEM" then
		if strfind(arg1, SearchPattern) then
			local _, _, questName = strfind(arg1, SearchPattern)
			for k, v in pairs(AtlasQuest_Data) do
				for k2, v2 in pairs(AtlasQuest_Data[k]) do
					if k2 == PlayerFaction then
						for i = 1, getn(AtlasQuest_Data[k][k2]) do
							if AtlasQuest_Data[k][k2][i].title == questName then
								AtlasQuest_CharData[k][k2][i] = true
								return
							end
						end
					end
				end
			end
		end
	end
end

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
		if (AtlasQuest_Data[CurrentDungeon]) then
			AtlasQuestFrameZoneName:SetText(AtlasQuest_Data[CurrentDungeon].name)
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
		if (Side == "Right") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("LEFT", AtlasFrame, "RIGHT", -5, -10);
		elseif (Side == "Left") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("RIGHT", AtlasFrame, "LEFT", 16, -10);
		end
		AtlasQuestInsideFrame:SetParent(AtlasFrame);
		AtlasQuestInsideFrame:ClearAllPoints();
		AtlasQuestInsideFrame:SetPoint("TOPLEFT", AtlasFrame, 18, -84);
	elseif ((AlphaMapFrame ~= nil) and (AlphaMapFrame:IsVisible())) then
		AtlasORAlphaMap = "AlphaMap";
		AtlasQuestFrame:SetParent(AlphaMapFrame);
		if (Side == "Right") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("TOP", AlphaMapFrame, 400, -107);
		elseif (Side == "Left") then
			AtlasQuestFrame:ClearAllPoints();
			AtlasQuestFrame:SetPoint("TOPLEFT", AlphaMapFrame, -195, -107);
		end
		AtlasQuestInsideFrame:SetParent(AlphaMapFrame);
		AtlasQuestInsideFrame:ClearAllPoints();
		AtlasQuestInsideFrame:SetPoint("TOPLEFT", AlphaMapFrame, 1, -108);
	end
end

function AtlasQuest_UpdateButtons()
	if CurrentDungeon == 99 then
		return
	end
	if (PrevDungeon ~= CurrentDungeon) then
		AtlasQuestInsideFrame:Hide();
	end
	PrevDungeon = CurrentDungeon;
	if (AtlasQuest_Data[CurrentDungeon]) then
		AtlasQuestFrameNumQuests:SetText(QUESTS_COLON.." "..getn(AtlasQuest_Data[CurrentDungeon][CurrentFaction]));
	end
	for i = 1, MAX_QUEST_BUTTONS do
		getglobal("AQQuestButton"..i):Hide()
	end
	for i = 1, MAX_QUEST_BUTTONS do
		if AtlasQuest_Data[CurrentDungeon][CurrentFaction][i] then
			local button = getglobal("AQQuestButton"..i)
			local icon = getglobal("AQQuestButton"..i.."Icon")
			local text = AtlasQuest_Data[CurrentDungeon][CurrentFaction][i].title
			local isFinished = AtlasQuest_CharData[CurrentDungeon][CurrentFaction][i]
			local questLevel = AtlasQuest_Data[CurrentDungeon][CurrentFaction][i].level
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
				button:SetText(i..". "..text);
				button:Show()
				for j = 1, 6 do
					if AtlasQuest_Data[CurrentDungeon][CurrentFaction][i].rewards[j] then
						local itemID = AtlasQuest_Data[CurrentDungeon][CurrentFaction][i].rewards[j].id
						if not GetItemInfo(itemID) then
							GameTooltip:SetHyperlink("item:"..itemID)
						end
					end
				end
			end
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
	if (AutoShow) then
		AtlasQuestFrame:Show();
	else
		AtlasQuestFrame:Hide();
	end
	AtlasQuestInsideFrame:Hide();
	if (Side == "Right") then
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
	if AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[this:GetID()] then
		itemID = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[this:GetID()].id
	end
	if (itemID) then
		GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
		GameTooltip:SetHyperlink("item:"..itemID..":0:0:0");
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
	if AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[this:GetID()] then
		itemID = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[this:GetID()].id
	end
	if itemID then
		if (arg1 == "RightButton") then
			GameTooltip:SetOwner(this, "ANCHOR_RIGHT", -(this:GetWidth() / 2), 24);
			GameTooltip:SetHyperlink("item:"..itemID..":0:0:0");
			GameTooltip:Show();
		elseif (IsShiftKeyDown()) then
			if (GetItemInfo(itemID)) then
				local itemName, _, itemQuality = GetItemInfo(itemID);
				local r, g, b, hex = GetItemQualityColor(itemQuality);
				ChatFrameEditBox:Insert(hex.."|Hitem:"..itemID..":0:0:0|h["..itemName.."]|h|r");
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
	if CurrentFaction == 2 then
		AtlasQuestFrameHordeButton:SetChecked(true);
		AtlasQuestFrameAllianceButton:SetChecked(false);
	elseif CurrentFaction == 1 then
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

-----------------------------------------------------------------------------
-- initialises the options panel
-- and sets checks after the variables
-----------------------------------------------------------------------------
function AtlasQuestOptionFrame_OnShow()
	AQAutoshowOption:SetChecked(AutoShow);
	if (Side == "Left") then
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
	AutoShow = not AutoShow;
	AQAutoshowOption:SetChecked(AutoShow);
	AtlasQuest_Options[PlayerName]["ShownSide"] = Side;
end

-----------------------------------------------------------------------------
-- Right option
-----------------------------------------------------------------------------
function AQRIGHTOption_OnClick()
	if ((AtlasFrame ~= nil) and (AtlasORAlphaMap == "Atlas")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("LEFT", AtlasFrame, "RIGHT", -5, -10);
	elseif (AtlasORAlphaMap == "AlphaMap") then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("TOP", "AlphaMapFrame", 400, -107);
	end
	AQRIGHTOption:SetChecked(true);
	AQLEFTOption:SetChecked(false);
	Side = "Right";
	AtlasQuest_Options[PlayerName]["ShownSide"] = Side;
end

-----------------------------------------------------------------------------
-- Left option
-----------------------------------------------------------------------------
function AQLEFTOption_OnClick()
	if ((AtlasFrame ~= nil) and (AtlasORAlphaMap == "Atlas") and (Side == "Right")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("RIGHT", AtlasFrame, "LEFT", 16, -10);
	elseif ((AtlasORAlphaMap == "AlphaMap") and (Side == "Right")) then
		AtlasQuestFrame:ClearAllPoints();
		AtlasQuestFrame:SetPoint("TOPLEFT", "AlphaMapFrame", -195, -107);
	end
	AQRIGHTOption:SetChecked(false);
	AQLEFTOption:SetChecked(true);
	Side = "Left";
	AtlasQuest_Options[PlayerName]["ShownSide"] = Side;
end

function AQClearALL()
	AtlasQuestInsideFramePagesText:SetText();
	AtlasQuestInsideFrameNextPage:Hide();
	AtlasQuestInsideFramePrevPage:Hide();
	AtlasQuestInsideFrameQuestName:SetText();
	AtlasQuestInsideFrameQuestLevel:SetText();
	AtlasQuestInsideFrameQuestInfo:SetText();
	AtlasQuestInsideFrameAttainLevel:SetText();
	AtlasQuestInsideFrameRewardText:SetText();
	AtlasQuestInsideFrameStoryText:SetText();
	AtlasQuestInsideFrameFinishedText:SetText();
	AtlasQuestInsideFrameFinishedButton:Hide();
	for i = 1, 6 do
		getglobal("AtlasQuestItemframe"..i):Hide();
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
	CurrentFaction = 1
	AtlasQuestFrameHordeButton:SetChecked(false);
	AtlasQuestFrameAllianceButton:SetChecked(true);
	AtlasQuestInsideFrame:Hide();
	AQUpdateNOW = true;
	for i = 1, MAX_QUEST_BUTTONS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
		getglobal("AQQuestButton"..i):UnlockHighlight()
	end
end

-----------------------------------------------------------------------------
-- Checkbox for Horde
-----------------------------------------------------------------------------
function AtlasQuestFrameHordeButton_OnClick()
	CurrentFaction = 2
	AtlasQuestFrameHordeButton:SetChecked(true);
	AtlasQuestFrameAllianceButton:SetChecked(false);
	AtlasQuestInsideFrame:Hide();
	AQUpdateNOW = true;
	for i = 1, MAX_QUEST_BUTTONS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
		getglobal("AQQuestButton"..i):UnlockHighlight()
	end
end

-----------------------------------------------------------------------------
-- Story Button
-----------------------------------------------------------------------------
function AtlasQuestStoryButton_OnClick()
	AQHideAtlasLoot();
	if AtlasQuestInsideFrame:IsShown() then
		if not LastSelectedQuest then
			AtlasQuestInsideFrame:Hide();
		else
			AQButtonSTORY_SetText();
		end
	else
		AtlasQuestInsideFrame:Show()
		AQButtonSTORY_SetText();
	end
	for i = 1, MAX_QUEST_BUTTONS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
		getglobal("AQQuestButton"..i):UnlockHighlight()
	end
	LastSelectedQuest = nil
end

function AtlasQuestButton_OnClick()
	CurrentQuest = this:GetID();

	if (ChatFrameEditBox:IsVisible() and IsShiftKeyDown()) then
		AQInsertQuestInformation();
	else
		for i = 1, MAX_QUEST_BUTTONS do
			getglobal("AQQuestButton"..i.."Highlight"):Hide()
			getglobal("AQQuestButton"..i):UnlockHighlight()
		end
		AQHideAtlasLoot();
		AtlasQuestInsideFrameStoryText:SetText();
		if (not AtlasQuestInsideFrame:IsVisible()) then
			AtlasQuestInsideFrame:Show();
			LastSelectedQuest = CurrentQuest;
			getglobal(this:GetName().."Highlight"):SetVertexColor(this:GetTextColor())
			getglobal(this:GetName().."Highlight"):Show()
			this:LockHighlight()
			AtlasQuest_SetQuestText();
		elseif (LastSelectedQuest == CurrentQuest) then
			AtlasQuestInsideFrame:Hide();
			LastSelectedQuest = nil;
		else
			LastSelectedQuest = CurrentQuest;
			getglobal(this:GetName().."Highlight"):SetVertexColor(this:GetTextColor())
			getglobal(this:GetName().."Highlight"):Show()
			this:LockHighlight()
			AtlasQuest_SetQuestText();
		end
	end
end

-----------------------------------------------------------------------------
-- Hide the AtlasLoot Frame if available
-----------------------------------------------------------------------------
function AQHideAtlasLoot()
	if (AtlasLootItemsFrame) then
		AtlasLootItemsFrame:Hide(); -- hide atlasloot
	end
end

-----------------------------------------------------------------------------
-- Insert Quest Information into the chat box
-----------------------------------------------------------------------------
function AQInsertQuestInformation()
	local questName = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].title
	local questLevel = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].level
	ChatFrameEditBox:Insert("["..questName.."] ["..questLevel.."]");
end

-----------------------------------------------------------------------------
-- set the Quest text
-- executed when you push a button
-----------------------------------------------------------------------------
function AtlasQuest_SetQuestText()
	AQClearALL();
	local factionColor = CurrentFaction == 1 and BLUE or RED
	AtlasQuestInsideFrameFinishedText:SetText(factionColor..AQFinishedTEXT);
	AtlasQuestInsideFrameFinishedButton:Show();

	local level = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].level
	local attain = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].attain
	local prequest = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].prequest
	local followup = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].followup
	local location = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].location
	local aim = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].aim
	local note = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].note
	if level then
		local color = GetDifficultyColor(level, true)
		AtlasQuestInsideFrameQuestName:SetTextColor(color.r, color.g, color.b)
	end
	AtlasQuestInsideFrameQuestName:SetText(AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].title);
	AtlasQuestInsideFrameQuestLevel:SetText(factionColor ..AQDiscription_LEVEL..WHITE..level);
	AtlasQuestInsideFrameAttainLevel:SetText(factionColor ..AQDiscription_ATTAIN..WHITE..attain);
	AtlasQuestInsideFrameQuestInfo:SetText(factionColor..AQDiscription_PREQUEST..WHITE..prequest.."\n\n"
		..factionColor..AQDiscription_FOLGEQUEST..WHITE..followup.."\n\n"
		..factionColor..AQDiscription_START..WHITE..location.."\n\n"
		..factionColor..AQDiscription_AIM..WHITE..aim.."\n\n"
		..factionColor..AQDiscription_NOTE..WHITE..note);

	AtlasQuestInsideFrameRewardText:SetText(factionColor..(AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards.text or ""))
	local numRewards = getn(AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards)
	if numRewards > 0 then
		for i = 1, numRewards do
			local itemID = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[i].id
			if (not GetItemInfo(itemID)) then
				GameTooltip:SetHyperlink("item:"..itemID);
			end
			local name = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[i].name
			local quality = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[i].quality
			local icon = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[i].icon
			local subtext = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].rewards[i].subtext
			local _, _, _, color = GetItemQualityColor(quality)
			getglobal("AtlasQuestItemframe"..i.."_Icon"):SetTexture("Interface\\Icons\\"..icon);
			getglobal("AtlasQuestItemframe"..i.."_Name"):SetText(color..name);
			getglobal("AtlasQuestItemframe"..i.."_Extra"):SetText(subtext);
			getglobal("AtlasQuestItemframe"..i):Show();
		end
	end

	local pages = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].pages

	if (AtlasQuest_CharData[CurrentDungeon][CurrentFaction][CurrentQuest]) then
		AtlasQuestInsideFrameFinishedButton:SetChecked(true);
	else
		AtlasQuestInsideFrameFinishedButton:SetChecked(false);
	end

	if pages then
		AtlasQuestInsideFrameNextPage:Show();
		AQ_PageType = "Quest";
		CurrentPage = 1;
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..(getn(pages) + 1));
	end
end

-----------------------------------------------------------------------------
-- Set Story Text
-----------------------------------------------------------------------------
function AQButtonSTORY_SetText()
	AQClearALL();
	local factionColor = CurrentFaction == 1 and BLUE or RED
	AtlasQuestInsideFrameQuestName:SetText(factionColor..AtlasQuest_Data[CurrentDungeon].name)
	local story = AtlasQuest_Data[CurrentDungeon].story
	if type(story) == "string" then
		AtlasQuestInsideFrameStoryText:SetText(WHITE..story);
	elseif type(story) == "table" then
		AtlasQuestInsideFrameStoryText:SetText(WHITE..story[1])
		AtlasQuestInsideFrameNextPage:Show();
		CurrentPage = 1;
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..getn(story))
		AQ_PageType = "Story";
	end
end

-----------------------------------------------------------------------------
-- shows the next side
-----------------------------------------------------------------------------
function AQNextPage_OnClick()
	AQClearALL();
	local factionColor = CurrentFaction == 1 and BLUE or RED
	AtlasQuestInsideFrameQuestName:SetText(factionColor..AtlasQuest_Data[CurrentDungeon].name);
	
	if (AQ_PageType == "Story") then
		CurrentPage = CurrentPage + 1;
		local story = AtlasQuest_Data[CurrentDungeon].story
		AtlasQuestInsideFrameStoryText:SetText(WHITE..story[CurrentPage]);
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..getn(story))
		if story[CurrentPage + 1] then
			AtlasQuestInsideFrameNextPage:Show();
		else
			AtlasQuestInsideFrameNextPage:Hide();
		end
	elseif (AQ_PageType == "Quest") then
		local pages = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].pages
		AtlasQuestInsideFrameStoryText:SetText(WHITE..pages[CurrentPage])
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..(getn(pages) + 1))
		if pages[CurrentPage + 1] then
			AtlasQuestInsideFrameNextPage:Show();
		else
			AtlasQuestInsideFrameNextPage:Hide();
		end
		CurrentPage = CurrentPage + 1;
	end

	AtlasQuestInsideFramePrevPage:Show();
end

-----------------------------------------------------------------------------
-- shows the side before this side
-----------------------------------------------------------------------------
function AQPrevPage_OnClick()
	CurrentPage = CurrentPage - 1;
	local factionColor = CurrentFaction == 1 and BLUE or RED
	AtlasQuestInsideFrameQuestName:SetText(factionColor..AtlasQuest_Data[CurrentDungeon].name);

	if (AQ_PageType == "Story") then
		local story = AtlasQuest_Data[CurrentDungeon].story
		AtlasQuestInsideFrameStoryText:SetText(WHITE..story[CurrentPage]);
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..getn(story))
		if (CurrentPage == 1) then
			AtlasQuestInsideFramePrevPage:Hide();
		end
	elseif (AQ_PageType == "Quest") then
		local pages = AtlasQuest_Data[CurrentDungeon][CurrentFaction][CurrentQuest].pages
		AtlasQuestInsideFramePagesText:SetText(CurrentPage.."/"..(getn(pages) + 1))
		if (CurrentPage == 1) then
			AtlasQuest_SetQuestText()
		else
			AtlasQuestInsideFrameStoryText:SetText(WHITE..pages[CurrentPage])
		end
	end

	AtlasQuestInsideFrameNextPage:Show();
end

-----------------------------------------------------------------------------
-- Checkbox for the finished quest option
-----------------------------------------------------------------------------
function AQFinishedAtlasQuestButton_OnClick()
	if AtlasQuestInsideFrameFinishedButton:GetChecked() then
		AtlasQuest_CharData[CurrentDungeon][CurrentFaction][CurrentQuest] = true
	else
		AtlasQuest_CharData[CurrentDungeon][CurrentFaction][CurrentQuest] = false
	end
	AtlasQuest_UpdateButtons()
	-- AtlasQuest_SetQuestText()
end

function AtlasQuestInsideFrame_OnHide()
	for i = 1, MAX_QUEST_BUTTONS do
		getglobal("AQQuestButton"..i.."Highlight"):Hide()
		getglobal("AQQuestButton"..i):UnlockHighlight()
	end
	LastSelectedQuest = nil
end
