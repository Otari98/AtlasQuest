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
