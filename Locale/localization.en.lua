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

---------------
--- COLOURS ---
---------------

local GREY = "|cff999999";
local RED = "|cffff0000";
local REDA = "|cffcc6666";
local WHITE = "|cffFFFFFF";
local GREEN = "|cff1eff00";
local PURPLE = "|cff9F3FFF";
local BLUE = "|cff0070dd";
local ORANGE = "|cffFF8400";
local YELLOW = "|cffFFd200";   -- Ingame Yellow

local MAGE = "|cff69ccf0";
local PALADIN = "|cfff58cba";
local WARRIOR = "|cffc79c6e";
local ROGUE = "|cfffff569";
local DRUID = "|cffff7d0a";
local HUNTER = "|cffabd473";
local SHAMAN = "|cff0070de";
local WARLOCK = "|cff9482c9";

---------------
--- OPTIONS ---
---------------

AQHelpText = "type /aq or atlasquest "..WHITE.."[command]"..YELLOW.."\ncommands: help; option/config; show/hide; left/right; colour; autoshow"..RED.."(only Atlas)"
--
AQOptionsCaptionTEXT = "AtlasQuest Options";
AQ_OK = "Done"

-- Autoshow
AQOptionsAutoshowTEXT = "Show AtlasQuest panel with Atlas.";
AQAtlasAutoON = "The AtlasQuest panel will be automatically displayed when atlas is opened."..GREEN.."(default)"
AQAtlasAutoOFF = "The AtlasQuest panel "..RED.."will not"..WHITE.." be displayed when you open atlas."

-- Right/Left
AQOptionsLEFTTEXT = "Show the AtlasQuest panel "..RED.."left.";
AQOptionsRIGHTTEXT = "Show the AtlasQuest panel "..RED.."right.";
AQShowRight = "Now shows the AtlasQuest Panel on the "..RED.."right"..WHITE.." side.";
AQShowLeft = "Now shows the AtlasQuest Panel on the "..RED.."left"..WHITE.." side "..GREEN.."(default)";

-- Colour Check
AQOptionsCCTEXT = "Recolour the quests depending on their levels."
AQCCON = "AtlasQuest will now recolour quests depending on their levels."
AQCCOFF = "AtlasQuest will not recolour quests."

-- QuestLog Colour Check
AQQLColourChange = "Colours all quest, you have in your Questlog "..BLUE.."blue."

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = "Automatically query the server for items you haven't seen."

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = "Suppress Server Query spam."

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = "Compare rewards to currently equipped items."


AQAbilities = BLUE .. "Abilities:" .. WHITE;
AQSERVERASKInformation = " Please click right until you see the Item frame."
AQSERVERASKAuto = " Try moving the cursor over the item in a second."
AQSERVERASK = "AtlasQuest is querying the server for: "
AQERRORNOTSHOWN = "This item is not safe!"
AQERRORASKSERVER = "You can right-click to attempt to query the server. You may be disconnected."
AQOptionB = "Options"
AQStoryB = "Story"
AQNoReward = ""..BLUE.."No Rewards"
AQDiscription_OR = ""..GREY.." or "..WHITE..""
AQDiscription_AND = ""..GREY.." and "..WHITE..""
AQDiscription_REWARD = ""..BLUE.."Reward: "
AQDiscription_ATTAIN = "Attain: "
AQDiscription_LEVEL = "Level: "
AQDiscription_START = "Starts at: \n"
AQDiscription_AIM = "Objective: \n"
AQDiscription_NOTE = "Note: \n"
AQDiscription_PREQUEST= "Prequest: "
AQDiscription_FOLGEQUEST = "Quest follows: "
AQFinishedTEXT = "Quest finished: ";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = " Dagger"
AQITEM_POLEARM = " Polearm"
AQITEM_SWORD = " Sword"
AQITEM_AXE = " Axe"
AQITEM_WAND = "Wand"
AQITEM_STAFF = "Staff"
AQITEM_MACE = " Mace"
AQITEM_SHIELD = "Shield"
AQITEM_GUN = "Gun"
AQITEM_BOW = "Bow"
AQITEM_CROSSBOW = "Crossbow"
AQITEM_THROWN = "Thrown"

AQITEM_WAIST = "Waist,"
AQITEM_SHOULDER = "Shoulder,"
AQITEM_CHEST = "Chest,"
AQITEM_LEGS = "Legs,"
AQITEM_HANDS = "Hands,"
AQITEM_FEET = "Feet,"
AQITEM_WRIST = "Wrist,"
AQITEM_HEAD = "Head,"
AQITEM_BACK = "Back"
AQITEM_TABARD = "Tabard"

AQITEM_CLOTH = " Cloth"
AQITEM_LEATHER = " Leather"
AQITEM_MAIL = " Mail"
AQITEM_PLATE = " Plate"

AQITEM_OFFHAND = "Off Hand"
AQITEM_MAINHAND = "Main Hand,"
AQITEM_ONEHAND = "One-Hand,"
AQITEM_TWOHAND = "Two-Hand,"

AQITEM_ITEM = "Item" -- Use this for those oddball rewards which aren't really anything else.
AQITEM_TRINKET = "Trinket"
AQITEM_RELIC = "Relic"
AQITEM_POTION = "Potion"
AQITEM_OFFHAND = "Held In Off-hand"
AQITEM_NECK = "Neck"
AQITEM_PATTERN = "Pattern"
AQITEM_BAG = "Bag"
AQITEM_RING = "Ring"
AQITEM_KEY = "Key"
AQITEM_QUIVER = "Quiver"
AQITEM_AMMOPOUCH = "Ammo Pouch"
AQITEM_ENCHANT = "Enchant"



----------------------------------------------
---------------- DUNGEONS --------------------
----------------------------------------------

--------------- INST1 - Deadmines (DM) ---------------
Inst1Story = "Once the greatest gold production center in the human lands, the Dead Mines were abandoned when the Horde razed Stormwind city during the First War. Now the Defias Brotherhood has taken up residence and turned the dark tunnels into their private sanctum. It is rumored that the thieves have conscripted the clever goblins to help them build something terrible at the bottom of the mines - but what that may be is still uncertain. Rumor has it that the way into the Deadmines lies through the quiet, unassuming village of Moonbrook."
Inst1Caption = "Deadmines"
Inst1QAA = "10 Quests 3TW" -- how many quests for alliance
Inst1QAH = "3 Quests 3TW" -- for horde

--Quest 1 Alliance
Inst1Quest1 = "1. Red Silk Bandanas" -- 214
Inst1Quest1_Level = "17"
Inst1Quest1_Attain = "14"
Inst1Quest1_Aim = "Scout Riell at the Sentinel Hill Tower wants you to bring her 10 Red Silk Bandanas."
Inst1Quest1_Location = "Scout Riell (Westfall - Sentinel Hill; "..YELLOW.."56, 47"..WHITE..")"
Inst1Quest1_Note = "You can get the Red Silk Bandanas from miners in the Deadmines or the in the town where the instance is located. The quest becomes available after you complete the The Defias Brotherhood questline up to the part where you have to kill Edwin VanCleef."
Inst1Quest1_Prequest = "The Defias Brotherhood (id = 155)" -- 155
Inst1Quest1_Folgequest = "No"
Inst1Quest1name1 = "Solid Shortblade"
Inst1Quest1name2 = "Scrimshaw Dagger"
Inst1Quest1name3 = "Piercing Axe"

--Quest 2 Alliance
Inst1Quest2 = "2. Collecting Memories" -- 168
Inst1Quest2_Level = "18"
Inst1Quest2_Attain = "14"
Inst1Quest2_Aim = "Retrieve 4 Miners' Union Cards and return them to Wilder Thistlenettle in Stormwind."
Inst1Quest2_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."65, 21"..WHITE..")"
Inst1Quest2_Note = "The cards drop off undead mobs outside the instance in the area near "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst1Quest2_Prequest = "No"
Inst1Quest2_Folgequest = "No"
Inst1Quest2name1 = "Tunneler's Boots"
Inst1Quest2name2 = "Dusty Mining Gloves"

--Quest 3 Alliance
Inst1Quest3 = "3. Oh Brother. . ." -- 167
Inst1Quest3_Level = "20"
Inst1Quest3_Attain = "15"
Inst1Quest3_Aim = "Bring Foreman Thistlenettle's Explorers' League Badge to Wilder Thistlenettle in Stormwind."
Inst1Quest3_Location = "Wilder Thistlenettle (Stormwind - Dwarven District; "..YELLOW.."65,21"..WHITE..")"
Inst1Quest3_Note = "Foreman Thistlenettle is found outside the instance in the undead area at "..YELLOW.."[3]"..WHITE.." on the Entrance map."
Inst1Quest3_Prequest = "No"
Inst1Quest3_Folgequest = "No"
Inst1Quest3name1 = "Miner's Revenge"

--Quest 4 Alliance
Inst1Quest4 = "4. Underground Assault" -- 2040
Inst1Quest4_Level = "20"
Inst1Quest4_Attain = "15"
Inst1Quest4_Aim = "Retrieve the Gnoam Sprecklesprocket from the Deadmines and return it to Shoni the Shilent in Stormwind."
Inst1Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."55,12"..WHITE..")"
Inst1Quest4_Note = "The prequest can be obtained from Gnoarn (Ironforge - Tinkertown; "..YELLOW.."69,50"..WHITE..").\nSneed's Shredder drops the Sprecklesprocket "..YELLOW.."[3]"..WHITE.."."
Inst1Quest4_Prequest = "Speak with Shoni" -- 2041
Inst1Quest4_Folgequest = "No"
Inst1Quest4name1 = "Polar Gauntlets"
Inst1Quest4name2 = "Sable Wand"

--Quest 5 Alliance
Inst1Quest5 = "5. The Defias Brotherhood" -- 166
Inst1Quest5_Level = "22"
Inst1Quest5_Attain = "14"
Inst1Quest5_Aim = "Kill Edwin VanCleef and bring his head to Gryan Stoutmantle."
Inst1Quest5_Location = "Gryan Stoutmantle (Westfall - Sentinel Hill; "..YELLOW.."56,47"..WHITE..")"
Inst1Quest5_Note = "You start this Questline at Gryan Stoutmantle (Westfall - Sentinel Hill; "..YELLOW.."56,47"..WHITE..").\nEdwin VanCleef is the last boss of The Deadmines. You can find him at the top of his ship "..YELLOW.."[6]"..WHITE.."."
Inst1Quest5_Prequest = "The Defias Brotherhood" -- 155
Inst1Quest5_Folgequest = "No"
Inst1Quest5name1 = "Chausses of Westfall"
Inst1Quest5name2 = "Tunic of Westfall"
Inst1Quest5name3 = "Staff of Westfall"

--Quest 6 Alliance
Inst1Quest6 = "6. The Test of Righteousness" -- 1654
Inst1Quest6_Level = "22"
Inst1Quest6_Attain = "20"
Inst1Quest6_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst1Quest6_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst1Quest6_Note = PALADIN.."(Paladin only)"..WHITE.." To see the note click on "..YELLOW.."[The Test of Righteousness Information]"..WHITE.."."
Inst1Quest6_Page = {2, "1. You get the  Whitestone Oak Lumber from Goblin Woodcarvers in "..YELLOW.."[Deadmines]"..WHITE.." near "..YELLOW.."[3]"..WHITE..".\n\n2. To get the Bailor's Refined Ore Shipment you must talk to Bailor Stonehand (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE.."). He gives you the 'Bailor's Ore Shipment' quest. You find the Jordan's Ore Shipment behind a tree at "..YELLOW.."71,21"..WHITE.."\n\n3. You get Jordan's Smithing Hammer in "..YELLOW.."[Shadowfang Keep]"..WHITE.." at "..YELLOW.."[3]"..WHITE..".\n\n4. To get a Kor Gem you have to go to Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..") and do the 'Seeking the Kor Gem' quest. For this quest, you must kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop a corrupted Kor Gem. Thundris Windweaver will clean it for you.", };
Inst1Quest6_Prequest = "The Tome of Valor -> The Test of Righteousness" -- 1651 -> 1653
Inst1Quest6_Folgequest = "The Test of Righteousness" -- 1806
Inst1Quest6name1 = "Verigan's Fist"

--Quest 7 Alliance
Inst1Quest7 = "7. The Unsent Letter" -- 373
Inst1Quest7_Level = "22"
Inst1Quest7_Attain = "16"
Inst1Quest7_Aim = "Deliver the Letter to the City Architect to Baros Alexston in Stormwind."
Inst1Quest7_Location = "An Unsent Letter (drops from Edwin VanCleef; "..YELLOW.."[6]"..WHITE..")"
Inst1Quest7_Note = "Baros Alexston is in Stormwind City, next to the Cathedral of Light at "..YELLOW.."49,30"..WHITE.."."
Inst1Quest7_Prequest = "No"
Inst1Quest7_Folgequest = "Bazil Thredd" -- 389
-- No Rewards for this quest

--Quest 8 Alliance
Inst1Quest8 = "(TW)8. Captain Grayson's Revenge" -- 40396
Inst1Quest8_Level = "22"
Inst1Quest8_Attain = "15"
Inst1Quest8_Aim = "End Cookie, bring Grayson's Pendant"
Inst1Quest8_Location = "Captain Grayson (Westfall - Lighthouse; "..YELLOW.."30,86"..WHITE..")"
Inst1Quest8_Note = "You start this Questline on the northwest island in Westfall; red book on the ground "..YELLOW.."26.1,16.5"..WHITE..").\n"
Inst1Quest8_Prequest = "Food for Sailing Thoughts?" -- 40395
Inst1Quest8_Folgequest = "No"
Inst1Quest8name1 = "Grayson’s Hat"

--Quest 9 Alliance
Inst1Quest9 = "(TW)9. The Harvest Golem Mystery" -- 40478
Inst1Quest9_Level = "19"
Inst1Quest9_Attain = "15"
Inst1Quest9_Aim = "Venture into the Deadmines and slay Gilnid, once done, return to Maltimor Gartside at the Gartside Plot in Westfall."
Inst1Quest9_Location = "Maltimor Gartside (Westfall - north from Gold Coast Quarry; "..YELLOW.."31.3,37.6"..WHITE..")"
Inst1Quest9_Note = "You start this Questline at Christopher Hewen (Westfall - Sentinel Hill Inn; "..YELLOW.."52.3,52.8"..WHITE..").\nGilnid is at "..YELLOW.."[4]"..WHITE.."."
Inst1Quest9_Prequest = "The Harvest Golem Mystery VIII" -- 40477
Inst1Quest9_Folgequest = "The Harvest Golem Mystery X" --40479
Inst1Quest9name1 = "Tinkering Belt "
Inst1Quest9name2 = "Safety Wraps"
Inst1Quest9name3 = "Harvest Golem Arm"

--Quest 10 Alliance
Inst1Quest10 = "(TW)10. Turning Off The Tap"
Inst1Quest10_Level = "20"
Inst1Quest10_Attain = "14"
Inst1Quest10_Aim = "Infiltrate the Deadmines in Westfall and acquire Voss' Sizzling Brew."
Inst1Quest10_Location = "Renzik \"The Shiv\" (Stormwind City - Old Town; "..YELLOW.."75.8,60.3"..WHITE..")"
Inst1Quest10_Note = "You start this Questline at Renzik \"The Shiv\" (Stormwind City - Old Town; "..YELLOW.."75.8,60.3"..WHITE..").\nJared Voss is at "..YELLOW.."[1]"..WHITE.."."
Inst1Quest10_Prequest = "Drones In Westfall -> Venture Delivery"
Inst1Quest10_Folgequest = "No"
Inst1Quest10name1 = "Operative Cloak"
Inst1Quest10name2 = "Cuffs of Integrity"

--Quest 1 Horde
Inst1Quest1_HORDE = "(TW)1. Prototype Thievery" -- 55005
Inst1Quest1_HORDE_Level = "18"
Inst1Quest1_HORDE_Attain = "16"
Inst1Quest1_HORDE_Aim = "Bring the Prototype Shredder X0-1 Schematic to Wrix Ozzlenut."
Inst1Quest1_HORDE_Location = "Wrix Ozzlenut (Durotar - Sparkwater Port; "..YELLOW.."58.3,25.7"..WHITE..")"
Inst1Quest1_HORDE_Note = WHITE.."Sneed "..YELLOW.."[4]"..WHITE.." drops the Prototype Shredder X0-1 Schematic."
Inst1Quest1_HORDE_Prequest = "No"
Inst1Quest1_HORDE_Folgequest = "No"
Inst1Quest1name1_HORDE = "Foe Chopper" -- 81316
Inst1Quest1name2_HORDE = "Shining Electro-lantern" -- 81317

--Quest 2 Horde
Inst1Quest2_HORDE = "(TW)2. Captain Grayson's Revenge" -- 40396
Inst1Quest2_HORDE_Level = "22"
Inst1Quest2_HORDE_Attain = "15"
Inst1Quest2_HORDE_Aim = "End Cookie, bring Grayson's Pendant"
Inst1Quest2_HORDE_Location = "Captain Grayson (Westfall - Lighthouse; "..YELLOW.."30,86"..WHITE..")"
Inst1Quest2_HORDE_Note = "You start this Questline on the northwest island in Westfall; red book on the ground "..YELLOW.."26.1,16.5"..WHITE..").\n"
Inst1Quest2_HORDE_Prequest = "Food for Sailing Thoughts?" -- 40395
Inst1Quest2_HORDE_Folgequest = "No"
Inst1Quest2name1_HORDE = "Grayson’s Hat"

--Quest 3 Horde
Inst1Quest3_HORDE = "(TW)3. Horde Defender's Axe" -- 39998
Inst1Quest3_HORDE_Level = "18"
Inst1Quest3_HORDE_Attain = "15"
Inst1Quest3_HORDE_Aim = "Bring a Stolen Tombstone to Nargal Deatheye at the Crossroads"
Inst1Quest3_HORDE_Location = "Birgitte Cranston <Portal Trainer> (Thunder Bluff)"
Inst1Quest3_HORDE_Note = "You start this Questline at Nargal Deatheye (Crossroads "..YELLOW.."51.2,29.1"..WHITE..").\nThis quest "..RED.."JUST TELEPORTS you to WESTFALL"..WHITE..". You can either finish this quest and get the reward after completing questline or use it as westfall teleport retaking the quest."
Inst1Quest3_HORDE_Prequest = "Horde Defender's Axe" -- 39994, 39995, 39996, 39997
Inst1Quest3_HORDE_Folgequest = "Horde Defender's Axe" -- 39999
Inst1Quest3name1_HORDE = "Horde Defender's Axe" -- 40065


--------------- INST2 - Wailing Caverns (WC) ---------------
Inst2Story = "Recently, a night elf druid named Naralex discovered a network of underground caverns within the heart of the Barrens. Dubbed the 'Wailing Caverns', these natural caves were filled with steam fissures which produced long, mournful wails as they vented. Naralex believed he could use the caverns' underground springs to restore lushness and fertility to the Barrens - but to do so would require siphoning the energies of the fabled Emerald Dream. Once connected to the Dream however, the druid's vision somehow became a nightmare. Soon the Wailing Caverns began to change - the waters turned foul and the once-docile creatures inside metamorphosed into vicious, deadly predators. It is said that Naralex himself still resides somewhere inside the heart of the labyrinth, trapped beyond the edges of the Emerald Dream. Even his former acolytes have been corrupted by their master's waking nightmare - transformed into the wicked Druids of the Fang."
Inst2Caption = "Wailing Caverns"
Inst2QAA = "8 Quests 3TW"
Inst2QAH = "9 Quests 2TW"

--Quest 1 Alliance
Inst2Quest1 = "1. Deviate Hides" --1486
Inst2Quest1_Level = "17"
Inst2Quest1_Attain = "13"
Inst2Quest1_Aim = "Nalpak in the Wailing Caverns wants 20 Deviate Hides."
Inst2Quest1_Location = "Nalpak (Barrens - Wailing Caverns; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest1_Note = "All deviate mobs inside of and right before the entrance to the instance can drop hides.\nNalpak can be found in a hidden cave above the actual cave entrance. Easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst2Quest1_Prequest = "No"
Inst2Quest1_Folgequest = "No"
Inst2Quest1name1 = "Slick Deviate Leggings"
Inst2Quest1name2 = "Deviate Hide Pack"

--Quest 2 Alliance
Inst2Quest2 = "2. Trouble at the Docks" -- 959
Inst2Quest2_Level = "18"
Inst2Quest2_Attain = "14"
Inst2Quest2_Aim = "Crane Operator Bigglefuzz in Ratchet wants you to retrieve the bottle of 99-Year-Old Port from Mad Magglish who is hiding in the Wailing Caverns."
Inst2Quest2_Location = "Crane Operator Bigglefuzz (Barrens - Ratchet; "..YELLOW.."63,37"..WHITE..")"
Inst2Quest2_Note = "You get the bottle right before you go into the instance by killing Mad Magglish. When you first enter the cave make an immediate right to find him at the end of the passage. He is stealthed by the wall at "..YELLOW.."[2] on the Entrance Map"..WHITE.."."
Inst2Quest2_Prequest = "No"
Inst2Quest2_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Alliance
Inst2Quest3 = "3. Smart Drinks" -- 1491
Inst2Quest3_Level = "18"
Inst2Quest3_Attain = "13"
Inst2Quest3_Aim = "Bring 6 portions of Wailing Essence to Mebok Mizzyrix in Ratchet."
Inst2Quest3_Location = "Mebok Mizzyrix (Barrens - Ratchet; "..YELLOW.."62,37"..WHITE..")"
Inst2Quest3_Note = "The prequest can be obtained from Mebok Mizzyrix too.\nAll Ectoplasm enemies in and before the instance drop the Essence."
Inst2Quest3_Prequest = "Raptor Horns" -- 865
Inst2Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst2Quest4 = "4. Deviate Eradication" -- 1487
Inst2Quest4_Level = "21"
Inst2Quest4_Attain = "15"
Inst2Quest4_Aim = "Ebru in the Wailing Caverns wants you to kill 7 Deviate Ravagers, 7 Deviate Vipers, 7 Deviate Shamblers and 7 Deviate Dreadfangs."
Inst2Quest4_Location = "Ebru (Barrens - Wailing Caverns; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest4_Note = "Ebru is in a hidden cave above the cave entrance. Easiest way to him seems to be to run up the hill outside and behind the entrance and drop down the slight ledge above the cave entrance."
Inst2Quest4_Prequest = "No"
Inst2Quest4_Folgequest = "No"
Inst2Quest4name1 = "Pattern: Deviate Scale Belt"
Inst2Quest4name2 = "Sizzle Stick"
Inst2Quest4name3 = "Dagmire Gauntlets"

--Quest 5 Alliance
Inst2Quest5 = "5. The Glowing Shard" -- 6981
Inst2Quest5_Level = "26"
Inst2Quest5_Attain = "15"
Inst2Quest5_Aim = "Travel to Ratchet to find someone that can tell you more about the glowing shard."
Inst2Quest5_Location = "The Glowing Shard (drops from Mutanus the Devourer; "..YELLOW.."[12]"..WHITE..")"
Inst2Quest5_Note = "Mutanus the Devourer will only appear if you kill the four leader druids of the fang and escort the tauren druid at the entrance.\nWhen you have the Shard, you must bring it to the NPC Sputtervalve "..YELLOW.."63,37.2"..WHITE.." next to the Ratchet fly master, and then back to the top of the hill over Wailing Caverns to Falla Sagewind."
Inst2Quest5_Prequest = "No"
Inst2Quest5_Folgequest = "In Nightmares(ends in Darnassus)" -- 3370
Inst2Quest5name1 = "Talbar Mantle"
Inst2Quest5name2 = "Quagmire Galoshes"

--Quest 6 Alliance
Inst2Quest6 = "(TW)6. Serpentbloom" -- 60125
Inst2Quest6_Level = "18"
Inst2Quest6_Attain = "16"
Inst2Quest6_Aim = "Alanndarian Nightsong in Auberdine has tasked you with the collection on 10 Serpentblooms."
Inst2Quest6_Location = "Alanndarian Nightsong (Auberdine - Darkshore; "..YELLOW.."37.7,40.7"..WHITE..")"
Inst2Quest6_Note = "You get the Serpentbloom inside the cave in front of the instance and inside the instance. Players with Herbalism can see the plants on their minimap."
Inst2Quest6_Prequest = "No"
Inst2Quest6_Folgequest = "No"
Inst2Quest6name1 = "Greenweave Sash"
Inst2Quest6name2 = "Verdant Boots"

--Quest 7 Alliance
Inst2Quest7 = "(TW)7. Trapped in the Nightmare" -- 60124
Inst2Quest7_Level = "19"
Inst2Quest7_Attain = "16"
Inst2Quest7_Aim = "Alanndarian Nightsong wants you to venture into the Wailing Caverns in the Northern Barrens and free Naralex from the Nightmare. Find his Disciple in the caverns to learn how. Return to her when you free Naralex.\nSlain Mutanus the Devourer"..YELLOW.."[12]"..WHITE.."."
Inst2Quest7_Location = "Alanndarian Nightsong (Auberdine - Darkshore; "..YELLOW.."37.7,40.7"..WHITE..")"
Inst2Quest7_Note = "Mutanus the Devourer will only appear if you kill the four leader druids of the fang and escort the tauren druid at the entrance."
Inst2Quest7_Prequest = "No"
Inst2Quest7_Folgequest = "No"
Inst2Quest7name1 = "Ancient Elven Robes"
Inst2Quest7name2 = "Thunderhorn"

--Quest 8 Alliance
Inst2Quest8 = "(TW)8. Rampant Weeds" -- 61964
Inst2Quest8_Level = "20"
Inst2Quest8_Attain = "16"
Inst2Quest8_Aim = "Thundris Windweaver in Auberdine needs samples of the Unnatural Overgrowths in the Wailing Caverns."
Inst2Quest8_Location = "Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..")"
Inst2Quest8_Note = "Kill Unnatural Overgrowth near "..YELLOW.."[9]"..WHITE.." to collect Overgrowth Samples"
Inst2Quest8_Prequest = "No"
Inst2Quest8_Folgequest = "No"
Inst2Quest8name1 = "Mana Potion"
Inst2Quest8name2 = "Greater Healing Potion"

--Quest 1 Horde (same as Quest 1 Alliance)
Inst2Quest1_HORDE = Inst2Quest1
Inst2Quest1_HORDE_Level = Inst2Quest1_Level
Inst2Quest1_HORDE_Attain = Inst2Quest1_Attain
Inst2Quest1_HORDE_Aim = Inst2Quest1_Aim
Inst2Quest1_HORDE_Location = Inst2Quest1_Location
Inst2Quest1_HORDE_Note = Inst2Quest1_Note
Inst2Quest1_HORDE_Prequest = Inst2Quest1_Prequest
Inst2Quest1_HORDE_Folgequest = Inst2Quest1_Folgequest
Inst2Quest1name1_HORDE = Inst2Quest1name1
Inst2Quest1name2_HORDE = Inst2Quest1name2

--Quest 2 Horde (same as Quest 2 Alliance)
Inst2Quest2_HORDE = Inst2Quest2
Inst2Quest2_HORDE_Level = Inst2Quest2_Level
Inst2Quest2_HORDE_Attain = Inst2Quest2_Attain
Inst2Quest2_HORDE_Aim = Inst2Quest2_Aim
Inst2Quest2_HORDE_Location = Inst2Quest2_Location
Inst2Quest2_HORDE_Note = Inst2Quest2_Note
Inst2Quest2_HORDE_Prequest = Inst2Quest2_Prequest
Inst2Quest2_HORDE_Folgequest = Inst2Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde
Inst2Quest3_HORDE = "3. Serpentbloom" -- 962
Inst2Quest3_HORDE_Level = "18"
Inst2Quest3_HORDE_Attain = "14"
Inst2Quest3_HORDE_Aim = "Apothecary Zamah in Thunder Bluff wants you to collect 10 Serpentbloom."
Inst2Quest3_HORDE_Location = "Apothecary Zamah (Thunder Bluff - Spirit Rise; "..YELLOW.."22,20"..WHITE..")"
Inst2Quest3_HORDE_Note = "Apothecary Zamah is in a cave under the Spirit Rise.  You get the prequest from Apothecary Helbrim (Barrens - Crossroads; "..YELLOW.."51,30"..WHITE..").\nYou get the Serpentbloom inside the cave in front of the instance and inside the instance. Players with Herbalism can see the plants on their minimap."
Inst2Quest3_HORDE_Prequest = "Fungal Spores -> Apothecary Zamah" -- 848 -> 853
Inst2Quest3_HORDE_Folgequest = "No"
Inst2Quest3name1_HORDE = "Apothecary Gloves"

--Quest 4 Horde (same as Quest 3 Alliance)
Inst2Quest4_HORDE = "4. Smart Drinks"
Inst2Quest4_HORDE_Level = Inst2Quest3_Level
Inst2Quest4_HORDE_Attain = Inst2Quest3_Attain
Inst2Quest4_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest4_HORDE_Location = Inst2Quest3_Location
Inst2Quest4_HORDE_Note = Inst2Quest3_Note
Inst2Quest4_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest4_HORDE_Folgequest = Inst2Quest3_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 4 Alliance)
Inst2Quest5_HORDE = "5. Deviate Eradication"
Inst2Quest5_HORDE_Level = Inst2Quest4_Level
Inst2Quest5_HORDE_Attain = Inst2Quest4_Attain
Inst2Quest5_HORDE_Aim = Inst2Quest4_Aim
Inst2Quest5_HORDE_Location = Inst2Quest4_Location
Inst2Quest5_HORDE_Note = Inst2Quest4_Note
Inst2Quest5_HORDE_Prequest = Inst2Quest4_Prequest
Inst2Quest5_HORDE_Folgequest = Inst2Quest4_Folgequest
Inst2Quest5name1_HORDE = Inst2Quest4name1
Inst2Quest5name2_HORDE = Inst2Quest4name2
Inst2Quest5name3_HORDE = Inst2Quest4name3

--Quest 6 Horde
Inst2Quest6_HORDE = "6. Leaders of the Fang" -- 914
Inst2Quest6_HORDE_Level = "22"
Inst2Quest6_HORDE_Attain = "11"
Inst2Quest6_HORDE_Aim = "Bring the Gems of Cobrahn, Anacondra, Pythas and Serpentis to Nara Wildmane in Thunder Bluff."
Inst2Quest6_HORDE_Location = "Nara Wildmane (Thunder Bluff - Elder Rise; "..YELLOW.."75,31"..WHITE..")"
Inst2Quest6_HORDE_Note = "The Questline starts at Hamuul Runetotem (Thunderbluff - Elder Rise; "..YELLOW.."78,28"..WHITE..")\nThe 4 druids drop the gems "..YELLOW.."[2]"..WHITE..", "..YELLOW.."[3]"..WHITE..", "..YELLOW.."[7]"..WHITE..", "..YELLOW.."[10]"..WHITE.."."
Inst2Quest6_HORDE_Prequest = "The Barrens Oases -> Nara Wildmane" -- 886 -> 1490
Inst2Quest6_HORDE_Folgequest = "No"
Inst2Quest6name1_HORDE = "Crescent Staff"
Inst2Quest6name2_HORDE = "Wingblade"

--Quest 7 Horde (same as Quest 5 Alliance)
Inst2Quest7_HORDE = "7. The Glowing Shard"
Inst2Quest7_HORDE_Level = Inst2Quest5_Level
Inst2Quest7_HORDE_Attain = Inst2Quest5_Attain
Inst2Quest7_HORDE_Aim = Inst2Quest5_Aim
Inst2Quest7_HORDE_Location = Inst2Quest5_Location
Inst2Quest7_HORDE_Note = Inst2Quest5_Note
Inst2Quest7_HORDE_Prequest = Inst2Quest5_Prequest
Inst2Quest7_HORDE_Folgequest = "In Nightmares(ends in Thunder Bluff)" -- 3369
Inst2Quest7name1_HORDE = Inst2Quest5name1
Inst2Quest7name2_HORDE = Inst2Quest5name2

--Quest 8 Horde
Inst2Quest8_HORDE = "(TW)8. Arcane Arms" -- 80312
Inst2Quest8_HORDE_Level = "18"
Inst2Quest8_HORDE_Attain = "14"
Inst2Quest8_HORDE_Aim = "Bring Chok'Garok 5 pieces of Moontouched Wood"..WHITE..", a Crystal of the Serpent, and an Everchanging Essence from Wailing Caverns."
Inst2Quest8_HORDE_Location = "Chok'Garok <Stonemaul Clan> (on a bank of Southfury River in the Barrens; "..YELLOW.."62.4,10.8"..WHITE..")"
Inst2Quest8_HORDE_Note = MAGE.."(Mage only)"..WHITE.." The Questline starts at Ureda <Mage Trainer> (Orgrimar) with quest 'Mastering the Arcane'.\nMoontouched Wood you get from "..YELLOW.."trash mobs"..WHITE..", a Crystal of the Serpent from Lord Serpentis <Fanglord>"..YELLOW.."[10]"..WHITE..", and an Everchanging Essence from Lord Pythas <Fanglord> "..YELLOW.."[7]"..WHITE.."."
Inst2Quest8_HORDE_Prequest = "Mastering the Arcane" -- 80311
Inst2Quest8_HORDE_Folgequest = "No"
Inst2Quest8name1_HORDE = "Staff of the Arcane Path" -- 80860
Inst2Quest8name2_HORDE = "Spellweaving Dagger" -- 80861

--Quest 9 Horde
Inst2Quest9_HORDE = "(TW)9. Against the Kolkar Dream"
Inst2Quest9_HORDE_Level = "23"
Inst2Quest9_HORDE_Attain = "17"
Inst2Quest9_HORDE_Aim = "Slay Zandara Windhoof within Wailing Caverns, and bring her head back to Nalpak in the Barrens."
Inst2Quest9_HORDE_Location = "Nalpak (Barrens - Wailing Caverns; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest9_HORDE_Note = "Zandara Windhoof is at "..YELLOW.."[6]"..WHITE.."."
Inst2Quest9_HORDE_Prequest = "No"
Inst2Quest9_HORDE_Folgequest = "No"
Inst2Quest9name1_HORDE = "Kolkar Drape"

--------------- INST3 - Ragefire Chasm (RFC) ------------
Inst3Story = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain."
Inst3Caption = "Ragefire Chasm"
Inst3QAA = "No Quests"
Inst3QAH = "5 Quests"

--Quest 1 Horde
Inst3Quest1_HORDE = "1. Testing an Enemy's Strength" -- 5723
Inst3Quest1_HORDE_Level = "15"
Inst3Quest1_HORDE_Attain = "9"
Inst3Quest1_HORDE_Aim = "Search Orgrimmar for Ragefire Chasm, then kill 8 Ragefire Troggs and 8 Ragefire Shaman before returning to Rahauro in Thunder Bluff."
Inst3Quest1_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest1_HORDE_Note = "You find the troggs at the beginning."
Inst3Quest1_HORDE_Prequest = "No"
Inst3Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde
Inst3Quest2_HORDE = "2. The Power to Destroy..." -- 5725
Inst3Quest2_HORDE_Level = "16"
Inst3Quest2_HORDE_Attain = "9"
Inst3Quest2_HORDE_Aim = "Bring the books Spells of Shadow and Incantations from the Nether to Varimathras in Undercity."
Inst3Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst3Quest2_HORDE_Note = "Searing Blade Cultists and Warlocks drop the books"
Inst3Quest2_HORDE_Prequest = "No"
Inst3Quest2_HORDE_Folgequest = "No"
Inst3Quest2name1_HORDE = "Ghastly Trousers"
Inst3Quest2name2_HORDE = "Dredgemire Leggings"
Inst3Quest2name3_HORDE = "Gargoyle Leggings"

--Quest 3 Horde
Inst3Quest3_HORDE = "3. Searching for the Lost Satchel" -- 5722
Inst3Quest3_HORDE_Level = "16"
Inst3Quest3_HORDE_Attain = "9"
Inst3Quest3_HORDE_Aim = "Search Ragefire Chasm for Maur Grimtotem's corpse and search it for any items of interest."
Inst3Quest3_HORDE_Location = "Rahauro (Thunder Bluff - Elder Rise; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest3_HORDE_Note = "You find Maur Grimtotem at "..YELLOW.."[1]"..WHITE..". After getting the satchel you must bring it back to Rahauro in Thunder Bluff"
Inst3Quest3_HORDE_Prequest = "No"
Inst3Quest3_HORDE_Folgequest = "Returning the Lost Satchel" -- 5724
Inst3Quest3name1_HORDE = "Featherbead Bracers"
Inst3Quest3name2_HORDE = "Savannah Bracers"

--Quest 4 Horde
Inst3Quest4_HORDE = "4. Hidden Enemies" -- 5728
Inst3Quest4_HORDE_Level = "16"
Inst3Quest4_HORDE_Attain = "9"
Inst3Quest4_HORDE_Aim = "Kill Bazzalan and Jergosh the Invoker before returning to Thrall in Orgrimmar."
Inst3Quest4_HORDE_Location = "Thrall (Orgrimmar - Valley of Wisdom; "..YELLOW.."31,37"..WHITE..")"
Inst3Quest4_HORDE_Note = "You find Bazzalan at  "..YELLOW.."[4]"..WHITE.." and Jergosh at "..YELLOW.."[3]"..WHITE..". The questline starts at Warchief Thrall in Orgrimmar."
Inst3Quest4_HORDE_Prequest = "Hidden Enemies" -- 5727
Inst3Quest4_HORDE_Folgequest = "Hidden Enemies" -- 5729
Inst3Quest4name1_HORDE = "Kris of Orgrimmar"
Inst3Quest4name2_HORDE = "Hammer of Orgrimmar"
Inst3Quest4name3_HORDE = "Axe of Orgrimmar"
Inst3Quest4name4_HORDE = "Staff of Orgrimmar"

--Quest 5 Horde
Inst3Quest5_HORDE = "5. Slaying the Beast" -- 5761
Inst3Quest5_HORDE_Level = "16"
Inst3Quest5_HORDE_Attain = "9"
Inst3Quest5_HORDE_Aim = "Enter Ragefire Chasm and slay Taragaman the Hungerer, then bring his heart back to Neeru Fireblade in Orgrimmar."
Inst3Quest5_HORDE_Location = "Neeru Fireblade (Orgrimmar - Cleft of Shadow; "..YELLOW.."49,50"..WHITE..")"
Inst3Quest5_HORDE_Note = "You find Taragaman at "..YELLOW.."[2]"..WHITE.."."
Inst3Quest5_HORDE_Prequest = "No"
Inst3Quest5_HORDE_Folgequest = "No"
-- No Rewards for this quest



--------------- INST4 - Uldaman (Ulda) ---------------
Inst4Story = "Uldaman is an ancient Titan vault that has laid buried deep within the earth since the world's creation. Dwarven excavations have recently penetrated this forgotten city, releasing the Titans' first failed creations: the troggs. Legends say that the Titans created troggs from stone. When they deemed the experiment a failure, the Titans locked the troggs away and tried again - resulting in the creation of the dwarven race. The secrets of the dwarves' creation are recorded on the fabled Discs of Norgannon - massive Titan artifacts that lie at the very bottom of the ancient city. Recently, the Dark Iron dwarves have launched a series of incursions into Uldaman, hoping to claim the discs for their fiery master, Ragnaros. However, protecting the buried city are several guardians - giant constructs of living stone that crush any hapless intruders they find. The Discs themselves are guarded by a massive, sentient Stonekeeper called Archaedas. Some rumors even suggest that the dwarves' stone-skinned ancestors, the earthen, still dwell deep within the city's hidden recesses."
Inst4Caption = "Uldaman"
Inst4QAA = "17 Quests 1TW"
Inst4QAH = "11 Quests 1TW"

--Quest 1 Alliance
Inst4Quest1 = "1. A Sign of Hope" -- 721
Inst4Quest1_Level = "35"
Inst4Quest1_Attain = "33"
Inst4Quest1_Aim = "Find Hammertoe Grez in Uldaman."
Inst4Quest1_Location = "Prospector Ryedol (Badlands; "..YELLOW.."53,43"..WHITE..")"
Inst4Quest1_Note = "The Prequest starts at the Crumpled Map (Badlands; "..YELLOW.."53,33"..WHITE..").\nYou find Hammertoe Grez before you enter the instance, at "..YELLOW.."[1]"..WHITE.." on the Entrance map."
Inst4Quest1_Prequest = "A Sign of Hope" -- 720
Inst4Quest1_Folgequest = "Amulet of Secrets" -- 722
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. Amulet of Secrets" -- 722
Inst4Quest2_Level = "40"
Inst4Quest2_Attain = "35"
Inst4Quest2_Aim = "Find Hammertoe's Amulet and return it to him in Uldaman."
Inst4Quest2_Location = "Hammertoe Grez (Uldaman; "..YELLOW.."[1] on Entrance Map"..WHITE..")."
Inst4Quest2_Note = "The Amulet drops from Magregan Deepshadow at "..YELLOW.."[2] on the Entrance Map"..WHITE.."."
Inst4Quest2_Prequest = "A Sign of Hope" -- 721
Inst4Quest2_Folgequest = "Prospect of Faith" -- 723
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. The Lost Tablets of Will" -- 1139
Inst4Quest3_Level = "45"
Inst4Quest3_Attain = "35"
Inst4Quest3_Aim = "Find the Tablet of Will, and return them to Advisor Belgrum in Ironforge."
Inst4Quest3_Location = "Advisor Belgrum (Ironforge - Hall of Explorers; "..YELLOW.."77,10"..WHITE..")"
Inst4Quest3_Note = "The tablet is at "..YELLOW.."[8]"..WHITE.."."
Inst4Quest3_Prequest = "Amulet of Secrets -> An Ambassador of Evil" -- 722 -> 762
Inst4Quest3_Folgequest = "No"
Inst4Quest3name1 = "Medal of Courage"

--Quest 4 Alliance
Inst4Quest4 = "4. Power Stones" -- 2418
Inst4Quest4_Level = "36"
Inst4Quest4_Attain = "30"
Inst4Quest4_Aim = "Bring 8 Dentrium Power Stones and 8 An'Alleum Power Stones to Rigglefuzz in the Badlands."
Inst4Quest4_Location = "Rigglefuzz (Badlands; "..YELLOW.."42,52"..WHITE..")"
Inst4Quest4_Note = "The stones can be found on any Shadowforge enemies before and in the instance."
Inst4Quest4_Prequest = "No"
Inst4Quest4_Folgequest = "No"
Inst4Quest4name1 = "Energized Stone Circle"
Inst4Quest4name2 = "Duracin Bracers"
Inst4Quest4name3 = "Everlast Boots"

--Quest 5 Alliance
Inst4Quest5 = "5. Agmond's Fate" -- 704
Inst4Quest5_Level = "38"
Inst4Quest5_Attain = "30"
Inst4Quest5_Aim = "Bring 4 Carved Stone Urns to Prospector Ironband in Loch Modan."
Inst4Quest5_Location = "Prospector Ironband (Loch Modan - Ironband's Excavation Site; "..YELLOW.."65,65"..WHITE..")"
Inst4Quest5_Note = "The Prequest starts at Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."74,12"..WHITE..").\nThe Urns are scattered throughout the caves before the instance."
Inst4Quest5_Prequest = "Ironband Wants You! -> Murdaloc" -- 707 -> 739
Inst4Quest5_Folgequest = "No"
Inst4Quest5name1 = "Prospector Gloves"

--Quest 6 Alliance
Inst4Quest6 = "6. Solution to Doom" -- 709
Inst4Quest6_Level = "40"
Inst4Quest6_Attain = "30"
Inst4Quest6_Aim = "Bring the Tablet of Ryun'eh to Theldurin the Lost."
Inst4Quest6_Location = "Theldurin the Lost (Badlands; "..YELLOW.."51,76"..WHITE..")"
Inst4Quest6_Note = "The tablet is north of the caves, at the east end of a tunnel, before the instance. On the Entrance map, it's at "..YELLOW.."[3]"..WHITE.."."
Inst4Quest6_Prequest = "No"
Inst4Quest6_Folgequest = "To Ironforge for Yagyin's Digest" -- 727
Inst4Quest6name1 = "Doomsayer's Robe"

--Quest 7 Alliance
Inst4Quest7 = "7. The Lost Dwarves" -- 2398
Inst4Quest7_Level = "40"
Inst4Quest7_Attain = "35"
Inst4Quest7_Aim = "Find Baelog in Uldaman."
Inst4Quest7_Location = "Prospector Stormpike (Ironforge - Hall of Explorers; "..YELLOW.."75,12"..WHITE..")"
Inst4Quest7_Note = "Baelog is at "..YELLOW.."[1]"..WHITE.."."
Inst4Quest7_Prequest = "No"
Inst4Quest7_Folgequest = "The Hidden Chamber" -- 2240
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. The Hidden Chamber" -- 2240
Inst4Quest8_Level = "40"
Inst4Quest8_Attain = "35"
Inst4Quest8_Aim = "Read Baelog's Journal, explore the hidden chamber, then report to Prospector Stormpike."
Inst4Quest8_Location = "Baelog (Uldaman; "..YELLOW.."[1]"..WHITE..")"
Inst4Quest8_Note = "The Hidden Chamber is at "..YELLOW.."[4]"..WHITE..". To open the Hidden Chamber you need The Shaft of Tsol from Revelosh "..YELLOW.."[3]"..WHITE.." and the Gni'kiv Medallion from Baelog's Chest "..YELLOW.."[1]"..WHITE..". Combine these two items to form Staff of Prehistoria. The Staff is used in the Map Room between "..YELLOW.."[3] and [4]"..WHITE.." to summon Ironaya. After killing her, run inside the room she came from to get quest credit."
Inst4Quest8_Prequest = "The Lost Dwarves" -- 2398
Inst4Quest8_Folgequest = "No"
Inst4Quest8name1 = "Dwarven Charge"
Inst4Quest8name2 = "Explorer's League Lodestar"

--Quest 9 Alliance
Inst4Quest9 = "9. The Shattered Necklace" -- 2198
Inst4Quest9_Level = "41"
Inst4Quest9_Attain = "37"
Inst4Quest9_Aim = "Search for the original creator of the shattered necklace to learn of its potential value."
Inst4Quest9_Location = "Shattered Necklace (random drop from Uldaman)"
Inst4Quest9_Note = "Bring the necklace to Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36,3"..WHITE..")."
Inst4Quest9_Prequest = "No"
Inst4Quest9_Folgequest = "Lore for a Price" -- 2199
-- No Rewards for this quest

--Quest 10 Alliance
Inst4Quest10 = "10. Back to Uldaman" -- 2200
Inst4Quest10_Level = "42"
Inst4Quest10_Attain = "37"
Inst4Quest10_Aim = "Search for clues as to the current disposition of Talvash's necklace within Uldaman. The slain paladin he mentioned was the person who has it last."
Inst4Quest10_Location = "Talvash del Kissel (Ironforge - The Mystic Ward; "..YELLOW.."36,3"..WHITE..")"
Inst4Quest10_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest10_Prequest = "Lore for a Price" -- 2199
Inst4Quest10_Folgequest = "Find the Gems" -- 2201
-- No Rewards for this quest

--Quest 11 Alliance
Inst4Quest11 = "11. Find the Gems" -- 2201
Inst4Quest11_Level = "43"
Inst4Quest11_Attain = "40"
Inst4Quest11_Aim = "Find the ruby, sapphire, and topaz that are scattered throughout Uldaman. Once acquired, contact Talvash del Kissel remotely by using the Phial of Scrying he previously gave you."
Inst4Quest11_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest11_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok. Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you.\nUse Talvash's Scrying Bowl to turn the quest in and get the followup."
Inst4Quest11_Prequest = "Back to Uldaman" -- 2200
Inst4Quest11_Folgequest = "Restoring the Necklace" -- 2204
-- No Rewards for this quest

--Quest 12 Alliance
Inst4Quest12 = "12. Restoring the Necklace" -- 2204
Inst4Quest12_Level = "44"
Inst4Quest12_Attain = "37"
Inst4Quest12_Aim = "Obtain a power source from the most powerful construct you can find in Uldaman, and deliver it to Talvash del Kissel in Ironforge."
Inst4Quest12_Location = "Talvash's Scrying Bowl"
Inst4Quest12_Note = "The Shattered Necklace Power Source drops Archaedas "..YELLOW.."[10]"..WHITE.."."
Inst4Quest12_Prequest = "Find the Gems" -- 2201
Inst4Quest12_Folgequest = "No"
Inst4Quest12name1 = "Talvash's Enhancing Necklace"

--Quest 13 Alliance
Inst4Quest13 = "13. Uldaman Reagent Run" -- 17
Inst4Quest13_Level = "42"
Inst4Quest13_Attain = "36"
Inst4Quest13_Aim = "Bring 12 Magenta Fungus Caps to Ghak Healtouch in Thelsamar."
Inst4Quest13_Location = "Ghak Healtouch (Loch Modan - Thelsamar; "..YELLOW.."37,49"..WHITE..")"
Inst4Quest13_Note = "The caps are scattered throughout the instance. Herbalists can see them on their minimap if Track Herbs is on and they have the quest."
Inst4Quest13_Prequest = "Badlands Reagent Run" -- 2500
Inst4Quest13_Folgequest = "No"
Inst4Quest13name1 = "Restorative Potion"

--Quest 14 Alliance
Inst4Quest14 = "14. Reclaimed Treasures" -- 1360
Inst4Quest14_Level = "43"
Inst4Quest14_Attain = "33"
Inst4Quest14_Aim = "Get Krom Stoutarm's treasured possession from his chest in the North Common Hall of Uldaman, and bring it to him in Ironforge."
Inst4Quest14_Location = "Krom Stoutarm (Ironforge - Hall of Explorers; "..YELLOW.."74,9"..WHITE..")"
Inst4Quest14_Note = "You find the treasure before you enter the instance. It is in the north of the caves, at the southeast end of the first tunnel. On the entrance map, it's at "..YELLOW.."[4]"..WHITE.."."
Inst4Quest14_Prequest = "No"
Inst4Quest14_Folgequest = "No"
-- No Rewards for this quest

--Quest 15 Alliance
Inst4Quest15 = "15. The Platinum Discs" -- 2278 -> 2439
Inst4Quest15_Level = "47"
Inst4Quest15_Attain = "40"
Inst4Quest15_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the Explorers' League in Ironforge."
Inst4Quest15_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest15_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to High Explorer Magellas in Ironforge - Hall of Explorers ("..YELLOW.."69,18"..WHITE.."). The followup starts another NPC who is nearby."
Inst4Quest15_Prequest = "No"
Inst4Quest15_Folgequest = "Portents of Uldum" -- 2963
Inst4Quest15name1 = "Thawpelt Sack"
Inst4Quest15name2 = "Superior Healing Potion"
Inst4Quest15name3 = "Greater Mana Potion"

--Quest 16 Alliance
Inst4Quest16 = "16. Power in Uldaman" -- 1956
Inst4Quest16_Level = "40"
Inst4Quest16_Attain = "35"
Inst4Quest16_Aim = "Retrieve an Obsidian Power Source and bring it to Tabetha in Dustwallow Marsh."
Inst4Quest16_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46,57"..WHITE..")"
Inst4Quest16_Note = MAGE.."(Mage only)"..WHITE.." The Obsidian Power Source drops from the Obsidian Sentinel at "..YELLOW.."[5]"..WHITE.."."
Inst4Quest16_Prequest = "The Exorcism" -- 1955
Inst4Quest16_Folgequest = "Mana Surges" -- 1957
-- No Rewards for this quest

--Quest 17 Alliance
Inst4Quest17 = "(TW)17. Stealing a Core" -- 40129 -> 40132
Inst4Quest17_Level = "45"
Inst4Quest17_Attain = "45"
Inst4Quest17_Aim = "Acquire an Intact Power Core  from Uldaman's Ancient Treasure "..YELLOW.."[11]"..WHITE.."."
Inst4Quest17_Location = "Torble Sparksprocket (The Barrens; "..YELLOW.."48.6,83"..WHITE.." gnome with purple goggles under the tent, next to the dwarf)"
Inst4Quest17_Note = "Intact Power Core "..YELLOW.."[11]"..WHITE..", in the room with platinum disc behind the last boss in the chest behind the right pillar.\nQuestline starts in Southern Barrens -> Bael Modan -> a little north from the path to Bael'dun Keep under the tent. First quest can be attain at lvl 18, last at lvl 53"
Inst4Quest17_Prequest = "An Ancient Acquisition" --40128
Inst4Quest17_Folgequest = "The Activation" -- 40132
Inst4Quest17name1 = "Broken Core Pendant" --60518


--Quest 1 Horde (same as Quest 4 Alliance)
Inst4Quest1_HORDE = "1. Power Stones"
Inst4Quest1_HORDE_Level = Inst4Quest4_Level
Inst4Quest1_HORDE_Attain = Inst4Quest4_Attain
Inst4Quest1_HORDE_Aim = Inst4Quest4_Aim
Inst4Quest1_HORDE_Location = Inst4Quest4_Location
Inst4Quest1_HORDE_Note = Inst4Quest4_Note
Inst4Quest1_HORDE_Prequest = Inst4Quest4_Prequest
Inst4Quest1_HORDE_Folgequest = Inst4Quest4_Folgequest
Inst4Quest1name1_HORDE = Inst4Quest4name1
Inst4Quest1name2_HORDE = Inst4Quest4name2
Inst4Quest1name3_HORDE = Inst4Quest4name3

--Quest 2 Horde (same as Quest 6 Alliance - different followup)
Inst4Quest2_HORDE = "2. Solution to Doom"
Inst4Quest2_HORDE_Level = Inst4Quest6_Level
Inst4Quest2_HORDE_Attain = Inst4Quest6_Attain
Inst4Quest2_HORDE_Aim = Inst4Quest6_Aim
Inst4Quest2_HORDE_Location = Inst4Quest6_Location
Inst4Quest2_HORDE_Note = Inst4Quest6_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest6_Prequest
Inst4Quest2_HORDE_Folgequest = Inst4Quest6_Folgequest
Inst4Quest2name1_HORDE = Inst4Quest6name1

--Quest 3 Horde
Inst4Quest3_HORDE = "3. Necklace Recovery" -- 2283
Inst4Quest3_HORDE_Level = "41"
Inst4Quest3_HORDE_Attain = "37"
Inst4Quest3_HORDE_Aim = "Look for a valuable necklace within the Uldaman dig site and bring it back to Dran Droffers in Orgrimmar. The necklace may be damaged."
Inst4Quest3_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest3_HORDE_Note = "The necklace is a random drop in the instance."
Inst4Quest3_HORDE_Prequest = "No"
Inst4Quest3_HORDE_Folgequest = "Necklace Recovery, Take 2" -- 2284
-- No Rewards for this quest

--Quest 4 Horde
Inst4Quest4_HORDE = "4. Necklace Recovery, Take 2" -- 2284
Inst4Quest4_HORDE_Level = "41"
Inst4Quest4_HORDE_Attain = "37"
Inst4Quest4_HORDE_Aim = "Find a clue as to the gems' whereabouts in the depths of Uldaman."
Inst4Quest4_HORDE_Location = "Dran Droffers (Orgrimmar - The Drag; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest4_HORDE_Note = "The Paladin is at "..YELLOW.."[2]"..WHITE.."."
Inst4Quest4_HORDE_Prequest = "Necklace Recovery" -- 2283
Inst4Quest4_HORDE_Folgequest = "Translating the Journal" -- 2318
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. Translating the Journal" -- 2318, 2338
Inst4Quest5_HORDE_Level = "42"
Inst4Quest5_HORDE_Attain = "37"
Inst4Quest5_HORDE_Aim = "Find someone who can translate the paladin's journal. The closest location that might have someone is Kargath, in the Badlands."
Inst4Quest5_HORDE_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest5_HORDE_Note = "The translator Jarkal Mossmeld is in Kargath (Badlands; "..YELLOW.."2,46"..WHITE..")."
Inst4Quest5_HORDE_Prequest = "Necklace Recovery, Take 2" -- 2284
Inst4Quest5_HORDE_Folgequest = "Find the Gems and Power Source" -- 2339
-- No Rewards for this quest

--Quest 6 Horde
Inst4Quest6_HORDE = "6. Find the Gems and Power Source" -- 2339
Inst4Quest6_HORDE_Level = "44"
Inst4Quest6_HORDE_Attain = "37"
Inst4Quest6_HORDE_Aim = "Recover all three gems and a power source for the necklace from Uldaman, and then bring them to Jarkal Mossmeld in Kargath. Jarkal believes a power source might be found on the strongest construct present in Uldaman."
Inst4Quest6_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2,46"..WHITE..")"
Inst4Quest6_HORDE_Note = "The gems are at "..YELLOW.."[1]"..WHITE.." in a Conspicous Urn, "..YELLOW.."[8]"..WHITE.." from the Shadowforge Cache, and "..YELLOW.."[9]"..WHITE.." off Grimlok. Note that when openning the Shadowforge Cache, a few mobs will spawn an aggro you. The Shattered Necklace Power Source drops from Archaedas "..YELLOW.."[10]"..WHITE.."."
Inst4Quest6_HORDE_Prequest = "Translating the Journal" -- 2338
Inst4Quest6_HORDE_Folgequest = "Deliver the Gems" -- 2340
Inst4Quest6name1_HORDE = "Jarkal's Enhancing Necklace"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. Uldaman Reagent Run" -- 2202
Inst4Quest7_HORDE_Level = "42"
Inst4Quest7_HORDE_Attain = "36"
Inst4Quest7_HORDE_Aim = "Bring 12 Magenta Fungus Caps to Jarkal Mossmeld in Kargath."
Inst4Quest7_HORDE_Location = "Jarkal Mossmeld (Badlands - Kargath; "..YELLOW.."2,69"..WHITE..")"
Inst4Quest7_HORDE_Note = "You get the Prequest from Jarkal Mossmeld, too.\nThe caps are scattered throughout the instance. Herbalists can see them on their minimap if Track Herbs is on and they have the quest."
Inst4Quest7_HORDE_Prequest = "Badlands Reagent Run" -- 2258
Inst4Quest7_HORDE_Folgequest = "Badlands Reagent Run II"  -- 2203
Inst4Quest7name1_HORDE = "Restorative Potion"

--Quest 8 Horde
Inst4Quest8_HORDE = "8. Reclaimed Treasures" -- 2342
Inst4Quest8_HORDE_Level = "43"
Inst4Quest8_HORDE_Attain = "33"
Inst4Quest8_HORDE_Aim = "Get Patrick Garrett's family treasure from their family chest in the South Common Hall of Uldaman, and bring it to him in the Undercity."
Inst4Quest8_HORDE_Location = "Patrick Garrett (Undercity; "..YELLOW.."72,48"..WHITE..")"
Inst4Quest8_HORDE_Note = "You find the treasure before you enter the instance. It is at the end of the south tunnel. On the entrance map, it's at "..YELLOW.."[5]"..WHITE.."."
Inst4Quest8_HORDE_Prequest = "No"
Inst4Quest8_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 9 Horde
Inst4Quest9_HORDE = "9. The Platinum Discs" -- 2278 -> 2440
Inst4Quest9_HORDE_Level = "47"
Inst4Quest9_HORDE_Attain = "40"
Inst4Quest9_HORDE_Aim = "Speak with stone watcher and learn what ancient lore it keeps. Once you have learned what lore it has to offer, activate the Discs of Norgannon. -> Take the miniature version of the Discs of Norgannon to the one of the sages in Thunder Bluff."
Inst4Quest9_HORDE_Location = "The Discs of Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest9_HORDE_Note = "After you receive the quest, speak to the stone watcher to the left of the discs.  Then use the platinum discs again to recieve miniature discs, which you'll have to take to Sage Truthseeker in Thunder Bluff ("..YELLOW.."34,46"..WHITE.."). The followup starts another NPC who is nearby."
Inst4Quest9_HORDE_Prequest = "No"
Inst4Quest9_HORDE_Folgequest = "Portents of Uldum" -- 2965
Inst4Quest9name1_HORDE = "Thawpelt Sack"
Inst4Quest9name2_HORDE = "Superior Healing Potion"
Inst4Quest9name3_HORDE = "Greater Mana Potion"

--Quest 10 Horde (same as Quest 4 Alliance)
Inst4Quest10_HORDE = "10. Power in Uldaman"
Inst4Quest10_HORDE_Level = Inst4Quest16_Level
Inst4Quest10_HORDE_Attain = Inst4Quest16_Attain
Inst4Quest10_HORDE_Aim = Inst4Quest16_Aim
Inst4Quest10_HORDE_Location = Inst4Quest16_Location
Inst4Quest10_HORDE_Note = Inst4Quest16_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest16_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest16_Folgequest
-- No Rewards for this quest

--Quest 11 Horde
Inst4Quest11_HORDE = "(TW)11. Requisitioning a Core" -- 40131 -> 40133
Inst4Quest11_HORDE_Level = "45"
Inst4Quest11_HORDE_Attain = "45"
Inst4Quest11_HORDE_Aim = "Acquire an Intact Power Core from Uldaman's Ancient Treasure "..YELLOW.."[11]"..WHITE.."."
Inst4Quest11_HORDE_Location = "Kex Blowmaster (The Barrens; "..YELLOW.."45.7,83.6"..WHITE.." goblin under the tent."
Inst4Quest11_HORDE_Note = "Intact Power Core "..YELLOW.."[11]"..WHITE..", in the room with platinum disc behind the last boss in the chest behind the right pillar.\nQuestline starts in Southern Barrens -> Bael Modan -> west side of the road to The Thousand Needles, accros Bael Modan Excavation. first quest can be taken at lvl 18. last at lvl 53."
Inst4Quest11_HORDE_Prequest = "A Profitable Acquisition" --40130
Inst4Quest11_HORDE_Folgequest = "The Profitable Activation" -- 40133
Inst4Quest11name1_HORDE = "Broken Core Pendant" --60518



--------------- INST5 - Blackrock Depths (BRD) ---------------
Inst5Story = "Once the capital city of the Dark Iron dwarves, this volcanic labyrinth now serves as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain. Obsessed with defeating Nefarian and his draconic minions, Ragnaros will go to any extreme to achieve final victory."
Inst5Caption = "Blackrock Depths"
Inst5QAA = "23 Quests 6TW"
Inst5QAH = "23 Quests 6TW"

--Quest 1 Alliance
Inst5Quest1 = "1. Dark Iron Legacy" -- 3802
Inst5Quest1_Level = "52"
Inst5Quest1_Attain = "48"
Inst5Quest1_Aim = "Slay Fineous Darkvire and recover the great hammer, Ironfel. Take Ironfel to the Shrine of Thaurissan and place it on the statue of Franclorn Forgewright."
Inst5Quest1_Location = "Franclorn Forgewright (Blackrock Mountain; "..YELLOW.."[3] on Entrance map"..WHITE..")"
Inst5Quest1_Note = "Franclorn is in the middle of the blackrock, above his grave. You have to be dead to see him! Talk 2 times with him to start the quest.\nFineous Darkvire is at "..YELLOW.."[9]"..WHITE..". You find the Shrine next to the arena "..YELLOW.."[7]"..WHITE.."."
Inst5Quest1_Prequest = "Dark Iron Legacy" -- 3801
Inst5Quest1_Folgequest = "No"
Inst5Quest1name1 = "Shadowforge Key"

--Quest 2 Alliance
Inst5Quest2 = "2. Ribbly Screwspigot" -- 4136
Inst5Quest2_Level = "53"
Inst5Quest2_Attain = "48"
Inst5Quest2_Aim = "Bring Ribbly's Head to Yuka Screwspigot in the Burning Steppes."
Inst5Quest2_Location = "Yuka Screwspigot (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst5Quest2_Note = "You get the prequest from Yorba Screwspigot (Tanaris - Steamwheedle Port; "..YELLOW.."67,23"..WHITE..").\nRibbly is at "..YELLOW.."[15]"..WHITE.."."
Inst5Quest2_Prequest = "Yuka Screwspigot" -- 4324
Inst5Quest2_Folgequest = "No"
Inst5Quest2name1 = "Rancor Boots"
Inst5Quest2name2 = "Penance Spaulders"
Inst5Quest2name3 = "Splintsteel Armor"

--Quest 3 Alliance
Inst5Quest3 = "3. The Love Potion" -- 4201
Inst5Quest3_Level = "54"
Inst5Quest3_Attain = "50"
Inst5Quest3_Aim = "Bring 4 Gromsblood, 10 Giant Silver Veins and Nagmara's Filled Vial to Mistress Nagmara in Blackrock Depths."
Inst5Quest3_Location = "Mistress Nagmara (Blackrock Depths; "..YELLOW.."[15]"..WHITE..")"
Inst5Quest3_Note = "You get the Giant Silver Veins from Giants in Azshara. Gromsblood can be most easily acquired from either an herbalist or at the Auction House. Lastly, the vial can be filled at the Go-Lakka crater (Un'Goro Crater; "..YELLOW.."31,50"..WHITE..").\nAfter completing the quest, you can use the backdoor instead of killing Phalanx."
Inst5Quest3_Prequest = "No"
Inst5Quest3_Folgequest = "No"
Inst5Quest3name1 = "Manacle Cuffs"
Inst5Quest3name2 = "Nagmara's Whipping Belt"

--Quest 4 Alliance
Inst5Quest4 = "4. Hurley Blackbreath" -- 4126
Inst5Quest4_Level = "55"
Inst5Quest4_Attain = "50"
Inst5Quest4_Aim = "Bring the Lost Thunderbrew Recipe to Ragnar Thunderbrew in Kharanos."
Inst5Quest4_Location = "Ragnar Thunderbrew  (Dun Morogh - Kharanos; "..YELLOW.."46,52"..WHITE..")"
Inst5Quest4_Note = "You get the prequest from Enohar Thunderbrew (Blasted Lands - Nethergarde Keep; "..YELLOW.."61,18"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_Prequest = "Ragnar Thunderbrew" -- 4128
Inst5Quest4_Folgequest = "No"
Inst5Quest4name1 = "Dark Dwarven Lager"
Inst5Quest4name2 = "Swiftstrike Cudgel"
Inst5Quest4name3 = "Limb Cleaver"

--Quest 5 Alliance  
Inst5Quest5 = "5. Incendius!" -- 4263
Inst5Quest5_Level = "56"
Inst5Quest5_Attain = "48"
Inst5Quest5_Aim = "Find Lord Incendius in Blackrock Depths and destroy him!"
Inst5Quest5_Location = "Jalinda Sprig (Burning Steppes - Morgan's Vigil; "..YELLOW.."85,69"..WHITE..")"
Inst5Quest5_Note = "You get the prequest from Jalinda Sprig, too. You find Lord Incendius at "..YELLOW.."[10]"..WHITE.."."
Inst5Quest5_Prequest = "Overmaster Pyron" -- 4262
Inst5Quest5_Folgequest = "No"
Inst5Quest5name1 = "Sunborne Cape"
Inst5Quest5name2 = "Nightfall Gloves"
Inst5Quest5name3 = "Crypt Demon Bracers"
Inst5Quest5name4 = "Stalwart Clutch"

--Quest 6 Alliance
Inst5Quest6 = "6. The Heart of the Mountain" -- 4123
Inst5Quest6_Level = "55"
Inst5Quest6_Attain = "50"
Inst5Quest6_Aim = "Bring the Heart of the Mountain to Maxwort Uberglint in the Burning Steppes."
Inst5Quest6_Location = "Maxwort Uberglint (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE..")"
Inst5Quest6_Note = "You find the Heart at "..YELLOW.."[8]"..WHITE.." in a safe. You get the key for the safe from Warder Stillgiss. He appears after opening all small safes."
Inst5Quest6_Prequest = "No"
Inst5Quest6_Folgequest = "No"
-- No Rewards for this quest

--Quest 7 Alliance
Inst5Quest7 = "7. The Good Stuff" -- 4286
Inst5Quest7_Level = "56"
Inst5Quest7_Attain = "50"
Inst5Quest7_Aim = "Travel to Blackrock Depths and recover 20 Dark Iron Fanny Packs. Return to Oralius when you have completed this task. You assume that the Dark Iron dwarves inside Blackrock Depths carry these 'fanny pack' contraptions."
Inst5Quest7_Location = "Oralius (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,68"..WHITE..")"
Inst5Quest7_Note = "All dwarves can drop the packs."
Inst5Quest7_Prequest = "No"
Inst5Quest7_Folgequest = "No"
Inst5Quest7name1 = "A Dingy Fanny Pack"

--Quest 8 Alliance
Inst5Quest8 = "8. Marshal Windsor" -- 4241
Inst5Quest8_Level = "54"
Inst5Quest8_Attain = "48"
Inst5Quest8_Aim = "Travel to Blackrock Mountain in the northwest and enter Blackrock Depths. Find out what became of Marshal Windsor.\nYou recall Ragged John talking about Windsor being dragged off to a prison."
Inst5Quest8_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,68"..WHITE..")"
Inst5Quest8_Note = "This is part of the Onyxia attunement questline. It starts at Helendis Riverhorn (Burning Steppes - Morgan's Vigil; "..YELLOW.."85,68"..WHITE..").\nMarshal Windsor is at "..YELLOW.."[4]"..WHITE..". You have to come back to Maxwell after completing this quest."
Inst5Quest8_Prequest = "Dragonkin Menace -> The True Masters" -- 4182 -> 4224
Inst5Quest8_Folgequest = "Abandoned Hope" -- 4242
Inst5Quest8name1 = "Conservator Helm"
Inst5Quest8name2 = "Shieldplate Sabatons"
Inst5Quest8name3 = "Windshear Leggings"

--Quest 9 Alliance
Inst5Quest9 = "9. A Crumpled Up Note" -- 4264
Inst5Quest9_Level = "58"
Inst5Quest9_Attain = "50"
Inst5Quest9_Aim = "You may have just stumbled on to something that Marshal Windsor would be interested in seeing. There may be hope, after all."
Inst5Quest9_Location = "A Crumpled Up Note (random drop from Blackrock Depths)"
Inst5Quest9_Note = "This is part of the Onyxia attunement questline. Marshal Windsor is at "..YELLOW.."[4]"..WHITE..". Best chance for drops seems to be the Dark Iron mobs around the Quarry."
Inst5Quest9_Prequest = "Abandoned Hope" -- 4242
Inst5Quest9_Folgequest = "A Shred of Hope" -- 4282
-- No Rewards for this quest

--Quest 10 Alliance
Inst5Quest10 = "10. A Shred of Hope" -- 4282
Inst5Quest10_Level = "58"
Inst5Quest10_Attain = "50"
Inst5Quest10_Aim = "Return Marshal Windsor's Lost Information.\nMarshal Windsor believes that the information is being held by Golem Lord Argelmach and General Angerforge."
Inst5Quest10_Location = "Marshal Windsor (Blackrock Depths; "..YELLOW.."[4]"..WHITE..")"
Inst5Quest10_Note = "This is part of the Onyxia attunement questline. Marshal Windsor is at "..YELLOW.."[4]"..WHITE..".\nYou find Golem Lord Argelmach at "..YELLOW.."[14]"..WHITE..", General Angerforge at "..YELLOW.."[13]"..WHITE.."."
Inst5Quest10_Prequest = "A Crumpled Up Note" -- 4264
Inst5Quest10_Folgequest = "Jail Break!" -- 4322
-- No Rewards for this quest

--Quest 11 Alliance
Inst5Quest11 = "11. Jail Break!" -- 4322
Inst5Quest11_Level = "58"
Inst5Quest11_Attain = "50"
Inst5Quest11_Aim = "Help Marshal Windsor get his gear back and free his friends. Return to Marshal Maxwell if you succeed."
Inst5Quest11_Location = "Marshal Windsor (Blackrock Depths; "..YELLOW.."[4]"..WHITE..")"
Inst5Quest11_Note = "This is part of the Onyxia attunement questline. Marshal Windsor is at "..YELLOW.."[4]"..WHITE..".\nThe quest is easier if you clean the Ring of Law ("..YELLOW.."[6]"..WHITE..") and the path to the entrance before you start the event. You find Marshal Maxwell at Burning Steppes - Morgan's Vigil ("..YELLOW.."84,68"..WHITE..")"
Inst5Quest11_Prequest = "A Shred of Hope" -- 4282
Inst5Quest11_Folgequest = "Stormwind Rendezvous" -- 6204
Inst5Quest11name1 = "Ward of the Elements"
Inst5Quest11name2 = "Blade of Reckoning"
Inst5Quest11name3 = "Skilled Fighting Blade"

--Quest 12 Alliance
Inst5Quest12 = "12. A Taste of Flame" -- 4024
Inst5Quest12_Level = "58"
Inst5Quest12_Attain = "52"
Inst5Quest12_Aim = "Travel to Blackrock Depths and slay Bael'Gar. "..YELLOW.."[11]"..WHITE.." Return the Encased Fiery Essence to Cyrus Therepentous."
Inst5Quest12_Location = "Cyrus Therepentous (Burning Steppes; "..YELLOW.."94,31"..WHITE..")"
Inst5Quest12_Note = "The questline starts at Kalaran Windblade (Searing Gorge; "..YELLOW.."39,38"..WHITE..").\nBael'Gar is at "..YELLOW.."[11]"..WHITE.."."
Inst5Quest12_Prequest = "The Flawless Flame -> A Taste of Flame" -- 3442 -> 4022
Inst5Quest12_Folgequest = "No"
Inst5Quest12name1 = "Shaleskin Cape"
Inst5Quest12name2 = "Wyrmhide Spaulders"
Inst5Quest12name3 = "Valconian Sash"

--Quest 13 Alliance
Inst5Quest13 = "13. Kharan Mighthammer" -- 4341
Inst5Quest13_Level = "59"
Inst5Quest13_Attain = "50"
Inst5Quest13_Aim = "Travel to Blackrock Depths and find Kharan Mighthammer.\nThe King mentioned that Kharan was being held prisoner there - perhaps you should try looking for a prison."
Inst5Quest13_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest13_Note = "The prequest starts at Royal Historian Archesonus (Ironforge; "..YELLOW.."38,55"..WHITE.."). Kharan Mighthammer is at "..YELLOW.."[2]"..WHITE.."."
Inst5Quest13_Prequest = "The Smoldering Ruins of Thaurissan" -- 3701
Inst5Quest13_Folgequest = "Kharan's Tale" -- 4342
-- No Rewards for this quest

--Quest 14 Alliance
Inst5Quest14 = "14. The Fate of the Kingdom" -- 4362
Inst5Quest14_Level = "59"
Inst5Quest14_Attain = "50"
Inst5Quest14_Aim = "Return to Blackrock Depths and rescue Princess Moira Bronzebeard from the evil clutches of Emperor Dagran Thaurissan."
Inst5Quest14_Location = "King Magni Bronzebeard (Ironforge; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest14_Note = "Princess Moira Bronzebeard is at "..YELLOW.."[21]"..WHITE..". During the fight she might heal Dagran. Try to interrupt her as often as possible, but hurry as she must not die or you can't complete the quest! After talking to her you have to return to Magni Bronzebeard."
Inst5Quest14_Prequest = "The Bearer of Bad News" -- 4361
Inst5Quest14_Folgequest = "The Princess's Surprise" -- 4363
Inst5Quest14name1 = "Magni's Will"
Inst5Quest14name2 = "Songstone of Ironforge"

--Quest 15 Alliance
Inst5Quest15 = "15. Attunement to the Core" -- 7848
Inst5Quest15_Level = "60"
Inst5Quest15_Attain = "55"
Inst5Quest15_Aim = "Venture to the Molten Core entry portal in Blackrock Depths and recover a Core Fragment. Return to Lothos Riftwaker in Blackrock Mountain when you have recovered the Core Fragment."
Inst5Quest15_Location = "Lothos Riftwaker (Blackrock Mountain; "..YELLOW.."[2] on Entrance Map"..WHITE..")"
Inst5Quest15_Note = "After completing this quest, you can use the stone next to Lothos Riftwaker to enter the Molten Core.\nYou find the Core Fragment near "..YELLOW.."[23]"..WHITE..", very close to the Molten Core portal."
Inst5Quest15_Prequest = "No"
Inst5Quest15_Folgequest = "No"
-- No Rewards for this quest

--Quest 16 Alliance
Inst5Quest16 = "16. The Challenge" -- 9015
Inst5Quest16_Level = "60"
Inst5Quest16_Attain = "58"
Inst5Quest16_Aim = "Travel to the Ring of the Law in Blackrock Depths and place the Banner of Provocation in its center as you are sentenced by High Justice Grimstone. Slay Theldren and his gladiators and return to Anthion Harmon in the Eastern Plaguelands with the first piece of Lord Valthalak's amulet."
Inst5Quest16_Location = "Falrin Treeshaper (Dire Maul West; "..YELLOW.."[1] Library"..WHITE..")"
Inst5Quest16_Note = "Followup quest is different for each class."
Inst5Quest16_Prequest = "The Instigator's Enchantment. Entire questline starts with quest 'An Earnest Proposition' from Deliana Ironforge Kings room behid The Bank" -- 8922
Inst5Quest16_Folgequest = "(Class Quests)"
-- No Rewards for this quest

--Quest 17 Alliance
Inst5Quest17 = "17. The Spectral Chalice" -- 4083
Inst5Quest17_Level = "55"
Inst5Quest17_Attain = "40"
Inst5Quest17_Aim = "The gems make no sound as they fall into depths of the chalice... "
Inst5Quest17_Location = "Gloom'rel (Blackrock Depths; "..YELLOW.."[18]"..WHITE..")"
Inst5Quest17_Note = "Only Miners with skill 230 or higher can get this quest to learn Smelt Dark Iron. Materials for the Chalice: 2 [Star Ruby], 20 [Gold Bar], 10 [Truesilver Bar]. Afterwards, if you have [Dark Iron Ore] you can take it to The Black Forge at "..YELLOW.."[22]"..WHITE.." and Smelt it."
Inst5Quest17_Prequest = "No"
Inst5Quest17_Folgequest = "No"
-- No Rewards for this quest

--Quest 18 Alliance
Inst5Quest18 = "(TW)18. Operation Help Jabbey" -- 40757
Inst5Quest18_Level = "58"
Inst5Quest18_Attain = "50"
Inst5Quest18_Aim = "Venture into Blackrock Depths, and recover the 'Extremely Potent Snuff' from Darneg Darkbeard near the Domicile (between "..YELLOW.."[7]"..WHITE.."and"..YELLOW.."[8]"..WHITE.." after the bridge is The Domicile), for Jabbey at Steamwheedle Port in Tanaris."
Inst5Quest18_Location = "Jabbey (Tanaris, Steamwheedle Port; "..YELLOW.."67,24"..WHITE..")"
Inst5Quest18_Note = "Questline starts at Bixxle Screwfuse north of Tel'Abim Island "..YELLOW.."51.3,34.3"..WHITE.." east from Tanaris.\nDarneg Darkbeard is in the right room as you enter the Domicile from the bridge."
Inst5Quest18_Prequest = "Operation Screwfuse 1000 -> Operation FIX Screwfuse 1000" --40755,40756
Inst5Quest18_Folgequest = "Operation Help Jabbey 2 -> Operation Return to Screwfuse -> Operation Final Repairs -> Secrets of the Dark Iron Desecrator -> The Dark Iron Desecrator" --40758
-- No Rewards for this quest

--Quest 19 Alliance
Inst5Quest19 = "(TW)19. The Dark Iron Desecrator" -- 40762
Inst5Quest19_Level = "60"
Inst5Quest19_Attain = "55"
Inst5Quest19_Aim = "I need a Magma Condensor from within Blackrock Depths, you can find it near the Golem Laboratory"..YELLOW.."[14]"..WHITE.."."
Inst5Quest19_Location = "Bixxle Screwfuse (Tel'Abim Island east from Tanaris)"
Inst5Quest19_Note = "This quest requires to collect 4 items.\n1) Magma Condensor (Blackrock Depths in Magma Condensor Crate) "..YELLOW.."[14]"..WHITE.." north west corner of the room.\n2) Intricate Arcanite Barrel (Blackrock Spire in Intricate Arcanite Barrels container)\n3) Molten Fragment (Molten Core from Molten Destroyer).\n4) Dark Iron Rifle (crafted by Engineers).\nTo finish the construction, I will also need Fiery Core(x3) found in Molten Core, and Enchanted Thorium Bars(x10)."
Inst5Quest19_Prequest = "Secrets of the Dark Iron Desecrator" --40761
Inst5Quest19_Folgequest = "No"
Inst5Quest19name1 = "Dark Iron Desecrator"

--Quest 20 Alliance
Inst5Quest20 = "(TW)20. Senatorial Revenge" -- 40464
Inst5Quest20_Level = "56"
Inst5Quest20_Attain = "45"
Inst5Quest20_Aim = "Slay 25 Shadowforge Senators deep within the Blackrock Depths for Orvak Sternrock at the Blackrock Pass in Burning Steppes."
Inst5Quest20_Location = "Orvak Sternrock (after Redridge Mountains - Burning Steppes pass "..YELLOW.."76,68"..WHITE..", west from alliance camp)"
Inst5Quest20_Note = "This questline starts at Radgan Deepblaze next to Orvak Sternrock with quest 'Gaining Orvak's Trust'"
Inst5Quest20_Prequest = "Gaining Orvak's Trust -> Hearing Orvak's Story -> The Sternrock Stash" --40761
Inst5Quest20_Folgequest = "No"
Inst5Quest20name1 = "Badge of Shadowforge"

--Quest 21 Alliance
Inst5Quest21 = "(TW)21. The Arcane Golem Core" -- 40467
Inst5Quest21_Level = "55"
Inst5Quest21_Attain = "45"
Inst5Quest21_Aim = "Find, and collect an Arcane Golem Core from Golem Lord Argelmach"..YELLOW.."[14]"..WHITE.."in Blackrock Depths and return to Radgan Deepblaze at Blackrock Pass in Burning Steppes."
Inst5Quest21_Location = " Radgan Deepblaze (after Redridge Mountains - Burning Steppes pass "..YELLOW.."76,68"..WHITE..", west from alliance camp)"
Inst5Quest21_Note = "This questline starts at Radgan Deepblaze next to Orvak Sternrock with quest 'Gaining Orvak's Trust'"
Inst5Quest21_Prequest = "Gaining Orvak's Trust -> Hearing Orvak's Story -> The Sternrock Stash -> Discovering Golem Secrets -> To Purchase Secret Information" --40761
Inst5Quest21_Folgequest = "No"
Inst5Quest21name1 = "Energized Golem Core"

--Quest 22 Alliance
Inst5Quest22 = "(TW)22. To Build a Pounder" -- 80401
Inst5Quest22_Level = "60"
Inst5Quest22_Attain = "30"
Inst5Quest22_Aim = "Acquire Thorium Tuned Servo from the Scarlet Monastery's Armory, obtain the Perfect Golem Core in the Blackrocks Depths from Golem Lord Argelmach, find the Adamantite Rod in Stratholme. Return to Oglethorpe Obnoticus."
Inst5Quest22_Location = "Oglethorpe Obnoticus (Stranglethorn Vale - Booty Bay "..YELLOW.."28.4,76.3"..WHITE..")."
Inst5Quest22_Note = "\"Crowd Pummeler 9-60\" in Gnomeregan drops Intact Pounder Mainframe that starts the PreQuest \"A Pounding Brain\".\nThorium Tuned Servo drops from Scarlet Myrmidons.\nPerfect Golem Core drops from Golem Lord Argelmach.\nAdamantite Rod drops from Crimson Hammersmith."
Inst5Quest22_Prequest = "A Pounding Brain "..YELLOW.."(Engineers only)"
Inst5Quest22_Folgequest = "No"
Inst5Quest22name1 = "Reinforced Red Pounder"
Inst5Quest22name2 = "Reinforced Green Pounder"
Inst5Quest22name3 = "Reinforced Blue Pounder"
Inst5Quest22name4 = "Reinforced Black Pounder"

--Quest 23 Alliance
Inst5Quest23 = "(TW)23. Winter Veil Brew" -- 40748
Inst5Quest23_Level = "55"
Inst5Quest23_Attain = "45"
Inst5Quest23_Aim = "Recover the Winter Veil Keg in the caverns of Blackrock Depths for Bomarn Fireaxe at Winter Veil Vale"
Inst5Quest23_Location = "Bomarn Fireaxe at Winter Veil Vale"
Inst5Quest23_Note = "AVAILABLE ONLY while Winter Veil Holiday Event is active!\nThose dastardly Dark Irons stole it, no doubt hidden away in their tavern "..YELLOW.."[15]"..WHITE.." deep within the Blackrock Depths."
Inst5Quest23_Prequest = "No"
Inst5Quest23_Folgequest = "No"
-- No Rewards for this quest

--Quest 1 Horde (same as Quest 1 Alliance)
Inst5Quest1_HORDE = Inst5Quest1
Inst5Quest1_HORDE_Level = Inst5Quest1_Level
Inst5Quest1_HORDE_Attain = Inst5Quest1_Attain
Inst5Quest1_HORDE_Aim = Inst5Quest1_Aim
Inst5Quest1_HORDE_Location = Inst5Quest1_Location
Inst5Quest1_HORDE_Note = Inst5Quest1_Note
Inst5Quest1_HORDE_Prequest = Inst5Quest1_Prequest
Inst5Quest1_HORDE_Folgequest = Inst5Quest1_Folgequest
Inst5Quest1name1_HORDE = Inst5Quest1name1

--Quest 2 Horde (same as Quest 2 Alliance)
Inst5Quest2_HORDE = Inst5Quest2
Inst5Quest2_HORDE_Level = Inst5Quest2_Level
Inst5Quest2_HORDE_Attain = Inst5Quest2_Attain
Inst5Quest2_HORDE_Aim = Inst5Quest2_Aim
Inst5Quest2_HORDE_Location = Inst5Quest2_Location
Inst5Quest2_HORDE_Note = Inst5Quest2_Note
Inst5Quest2_HORDE_Prequest = Inst5Quest2_Prequest
Inst5Quest2_HORDE_Folgequest = Inst5Quest2_Folgequest
Inst5Quest2name1_HORDE = Inst5Quest2name1
Inst5Quest2name2_HORDE = Inst5Quest2name2
Inst5Quest2name3_HORDE = Inst5Quest2name3

--Quest 3 Horde (same as Quest 3 Alliance)
Inst5Quest3_HORDE = Inst5Quest3
Inst5Quest3_HORDE_Level = Inst5Quest3_Level
Inst5Quest3_HORDE_Attain = Inst5Quest3_Attain
Inst5Quest3_HORDE_Aim = Inst5Quest3_Aim
Inst5Quest3_HORDE_Location = Inst5Quest3_Location
Inst5Quest3_HORDE_Note = Inst5Quest3_Note
Inst5Quest3_HORDE_Prequest = Inst5Quest3_Prequest
Inst5Quest3_HORDE_Folgequest = Inst5Quest3_Folgequest
Inst5Quest3name1_HORDE = Inst5Quest3name1
Inst5Quest3name2_HORDE = Inst5Quest3name2

--Quest 4 Horde
Inst5Quest4_HORDE = "4. Lost Thunderbrew Recipe" -- 4143
Inst5Quest4_HORDE_Level = "55"
Inst5Quest4_HORDE_Attain = "50"
Inst5Quest4_HORDE_Aim = "Bring the Lost Thunderbrew Recipe to Vivian Lagrave in Kargath."
Inst5Quest4_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest4_HORDE_Note = "You get the prequest from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."50,68"..WHITE..").\nYou get the recipe from one of the guards who appear if you destroy the ale "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_HORDE_Prequest = "Vivian Lagrave" -- 4133
Inst5Quest4_HORDE_Folgequest = "No"
Inst5Quest4name1_HORDE = "Superior Healing Potion"
Inst5Quest4name2_HORDE = "Greater Mana Potion"
Inst5Quest4name3_HORDE = "Swiftstrike Cudgel"
Inst5Quest4name4_HORDE = "Limb Cleaver"

--Quest 5 Horde (same as Quest 6 Alliance)
Inst5Quest5_HORDE = "5. The Heart of the Mountain"
Inst5Quest5_HORDE_Level = Inst5Quest6_Level
Inst5Quest5_HORDE_Attain = Inst5Quest6_Attain
Inst5Quest5_HORDE_Aim = Inst5Quest6_Aim
Inst5Quest5_HORDE_Location = Inst5Quest6_Location
Inst5Quest5_HORDE_Note = Inst5Quest6_Note
Inst5Quest5_HORDE_Prequest = Inst5Quest6_Prequest
Inst5Quest5_HORDE_Folgequest = Inst5Quest6_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst5Quest6_HORDE = "6. KILL ON SIGHT: Dark Iron Dwarves" -- 4081
Inst5Quest6_HORDE_Level = "52"
Inst5Quest6_HORDE_Attain = "48"
Inst5Quest6_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 15 Anvilrage Guardsmen, 10 Anvilrage Wardens and 5 Anvilrage Footmen. Return to him once your task is complete."
Inst5Quest6_HORDE_Location = "Sign Post on the ground (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest6_HORDE_Note = "You find the dwarves in the first part of Blackrock Depths.\nYou find Warlord Goretooth in Kargath at the top of the tower (Badlands, "..YELLOW.."5,47"..WHITE..")."
Inst5Quest6_HORDE_Prequest = "No"
Inst5Quest6_HORDE_Folgequest = "KILL ON SIGHT: High Ranking Dark Iron Officials" -- 4082
-- No Rewards for this quest

--Quest 7 Horde
Inst5Quest7_HORDE = "7. KILL ON SIGHT: High Ranking Dark Iron Officials" -- 4082
Inst5Quest7_HORDE_Level = "54"
Inst5Quest7_HORDE_Attain = "50"
Inst5Quest7_HORDE_Aim = "Venture to Blackrock Depths and destroy the vile aggressors! Warlord Goretooth wants you to kill 10 Anvilrage Medics, 10 Anvilrage Soldiers and 10 Anvilrage Officers. Return to him once your task is complete."
Inst5Quest7_HORDE_Location = "Sign Post on the wall (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest7_HORDE_Note = "You find the dwarves near Bael'Gar "..YELLOW.."[11]"..WHITE..". You find Warlord Goretooth in Kargath at the top of the tower (Badlands, "..YELLOW.."5,47"..WHITE..").\n The followup quest starts at Lexlort (Badlands - Kargath; "..YELLOW.."5,47"..WHITE.."). You find Grark Lorkrub in the Burning Steppes ("..YELLOW.."38,35"..WHITE.."). You have to reduce his life below 50% to bind him and start a Escort quest."
Inst5Quest7_HORDE_Prequest = "KILL ON SIGHT: Dark Iron Dwarves" -- 4081
Inst5Quest7_HORDE_Folgequest = "Grark Lorkrub -> Precarious Predicament (Escort quest)" -- 4122 -> 4121
-- No Rewards for this quest

--Quest 8 Horde
Inst5Quest8_HORDE = "8. Operation: Death to Angerforge" -- 4132
Inst5Quest8_HORDE_Level = "58"
Inst5Quest8_HORDE_Attain = "52"
Inst5Quest8_HORDE_Aim = "Travel to Blackrock Depths and slay General Angerforge! Return to Warlord Goretooth when the task is complete."
Inst5Quest8_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest8_HORDE_Note = "You find General Angerforge at "..YELLOW.."[13]"..WHITE..". He calls help below 30%!\nQuestline starts at Lexlort(Badlands - Kargath, on the tower) with quest 'Grark Lorkrub'."
Inst5Quest8_HORDE_Prequest = "Grark Lorkrub -> Precarious Predicament" -- 41224121
Inst5Quest8_HORDE_Folgequest = "No"
Inst5Quest8name1_HORDE = "Conqueror's Medallion"

--Quest 9 Horde
Inst5Quest9_HORDE = "9. The Rise of the Machines" -- 4063
Inst5Quest9_HORDE_Level = "58"
Inst5Quest9_HORDE_Attain = "52"
Inst5Quest9_HORDE_Aim = "Find and slay Golem Lord Argelmach. Return his head to Lotwil. You will also need to collect 10 Intact Elemental Cores from the Ragereaver Golems and Warbringer Constructs protecting Argelmach. You know this because you are psychic."
Inst5Quest9_HORDE_Location = "Lotwil Veriatus (Badlands; "..YELLOW.."25,44"..WHITE..")"
Inst5Quest9_HORDE_Note = "You get the prequest from Hierophant Theodora Mulvadania (Badlands - Kargath; "..YELLOW.."3,47"..WHITE..").\nYou find Argelmach at "..YELLOW.."[14]"..WHITE.."."
Inst5Quest9_HORDE_Prequest = "The Rise of the Machines" -- 4062
Inst5Quest9_HORDE_Folgequest = "No"
Inst5Quest9name1_HORDE = "Azure Moon Amice"
Inst5Quest9name2_HORDE = "Raincaster Drape"
Inst5Quest9name3_HORDE = "Basaltscale Armor"
Inst5Quest9name4_HORDE = "Lavaplate Gauntlets"

--Quest 10 Horde (same as Quest 12 Alliance)
Inst5Quest10_HORDE = "10. A Taste of Flame"
Inst5Quest10_HORDE_Level = Inst5Quest12_Level
Inst5Quest10_HORDE_Attain = Inst5Quest12_Attain
Inst5Quest10_HORDE_Aim = Inst5Quest12_Aim
Inst5Quest10_HORDE_Location = Inst5Quest12_Location
Inst5Quest10_HORDE_Note = Inst5Quest12_Note
Inst5Quest10_HORDE_Prequest = Inst5Quest12_Prequest
Inst5Quest10_HORDE_Folgequest = Inst5Quest12_Folgequest
Inst5Quest10name1_HORDE = Inst5Quest12name1
Inst5Quest10name2_HORDE = Inst5Quest12name2
Inst5Quest10name3_HORDE = Inst5Quest12name3

--Quest 11 Horde
Inst5Quest11_HORDE = "11. Disharmony of Fire" -- 3907
Inst5Quest11_HORDE_Level = "56"
Inst5Quest11_HORDE_Attain = "48"
Inst5Quest11_HORDE_Aim = "Enter Blackrock Depths and track down Lord Incendius. Slay him and return any source of information you may find to Thunderheart."
Inst5Quest11_HORDE_Location = "Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..")"
Inst5Quest11_HORDE_Note = "You get the prequest from Thunderheart, too.\nYou find Lord Incendius at "..YELLOW.."[10]"..WHITE.."."
Inst5Quest11_HORDE_Prequest = "Disharmony of Flame" -- 3906
Inst5Quest11_HORDE_Folgequest = "No"
Inst5Quest11name1_HORDE = "Sunborne Cape"
Inst5Quest11name2_HORDE = "Nightfall Gloves"
Inst5Quest11name3_HORDE = "Crypt Demon Bracers"
Inst5Quest11name4_HORDE = "Stalwart Clutch"

--Quest 12 Horde
Inst5Quest12_HORDE = "12. The Last Element" -- 7201
Inst5Quest12_HORDE_Level = "54"
Inst5Quest12_HORDE_Attain = "48"
Inst5Quest12_HORDE_Aim = "Travel to Blackrock Depths and recover 10 Essence of the Elements. Your first inclination is to search the golems and golem makers. You remember Vivian Lagrave also muttering something about elementals."
Inst5Quest12_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest12_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..").\n Every elemental can drop the Essence"
Inst5Quest12_HORDE_Prequest = "Disharmony of Flame"
Inst5Quest12_HORDE_Folgequest = "No"
Inst5Quest12name1_HORDE = "Lagrave's Seal"

--Quest 13 Horde
Inst5Quest13_HORDE = "13. Commander Gor'shak" -- 3981
Inst5Quest13_HORDE_Level = "52"
Inst5Quest13_HORDE_Attain = "48"
Inst5Quest13_HORDE_Aim = "Find Commander Gor'shak in Blackrock Depths.\nYou recall that the crudely drawn picture of the orc included bars drawn over the portrait. Perhaps you should search for a prison of some sort."
Inst5Quest13_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest13_HORDE_Note = "You get the prequest from Thunderheart (Badlands - Kargath; "..YELLOW.."3,48"..WHITE..").\nYou find Commander Gor'shak at "..YELLOW.."[3]"..WHITE..". The key to open the prison drops from High Interrogator Gerstahn "..YELLOW.."[5]"..WHITE..". If you talk to him and start the next Quest enemys appears."
Inst5Quest13_HORDE_Prequest = "Disharmony of Flame" -- 3906
Inst5Quest13_HORDE_Folgequest = "What Is Going On?" -- 3982
-- No Rewards for this quest

--Quest 14 Horde
Inst5Quest14_HORDE = "14. The Royal Rescue" -- 4003
Inst5Quest14_HORDE_Level = "59"
Inst5Quest14_HORDE_Attain = "48"
Inst5Quest14_HORDE_Aim = "Slay Emperor Dagran Thaurissan and free Princess Moira Bronzebeard from his evil spell."
Inst5Quest14_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,37"..WHITE..")"
Inst5Quest14_HORDE_Note = "After talking a with Kharan Mighthammer and Thrall you get this quest.\nYou find Emperor Dagran Thaurissan at "..YELLOW.."[21]"..WHITE..". The Princess heals Dagran but you must not kill her to complete the quest! Try to interrupt her healing spells. (Rewards are for The Princess Saved?)"
Inst5Quest14_HORDE_Prequest = "Commander Gor'shak -> What Is Going On? (x2) -> The Eastern Kingdom" -- 3981 -> 4002
Inst5Quest14_HORDE_Folgequest = "The Princess Saved?" -- 4004
Inst5Quest14name1_HORDE = "Thrall's Resolve"
Inst5Quest14name2_HORDE = "Eye of Orgrimmar"

--Quest 15 Horde (same as Quest 15 Alliance)
Inst5Quest15_HORDE = Inst5Quest15 -- 7487
Inst5Quest15_HORDE_Level = Inst5Quest15_Level
Inst5Quest15_HORDE_Attain = Inst5Quest15_Attain
Inst5Quest15_HORDE_Aim = Inst5Quest15_Aim
Inst5Quest15_HORDE_Location = Inst5Quest15_Location
Inst5Quest15_HORDE_Note = Inst5Quest15_Note
Inst5Quest15_HORDE_Prequest = Inst5Quest15_Prequest
Inst5Quest15_HORDE_Folgequest = Inst5Quest15_Folgequest
-- No Rewards for this quest

--Quest 16 Horde (same as Quest 16 Alliance)
Inst5Quest16_HORDE = Inst5Quest16
Inst5Quest16_HORDE_Level = Inst5Quest16_Level
Inst5Quest16_HORDE_Attain = Inst5Quest16_Attain
Inst5Quest16_HORDE_Aim = Inst5Quest16_Aim
Inst5Quest16_HORDE_Location = Inst5Quest16_Location
Inst5Quest16_HORDE_Note = Inst5Quest16_Note
Inst5Quest16_HORDE_Prequest = "The Instigator's Enchantment. Entire questline starts with quest 'An Earnest Proposition' from Mokvar Orgrimar Thrall's room" -- 8923
Inst5Quest16_HORDE_Folgequest = Inst5Quest16_Folgequest
-- No Rewards for this quest

--Quest 17 Horde (same as Quest 17 Alliance)
Inst5Quest17_HORDE = Inst5Quest17
Inst5Quest17_HORDE_Level = Inst5Quest17_Level
Inst5Quest17_HORDE_Attain = Inst5Quest17_Attain
Inst5Quest17_HORDE_Aim = Inst5Quest17_Aim
Inst5Quest17_HORDE_Location = Inst5Quest17_Location
Inst5Quest17_HORDE_Note = Inst5Quest17_Note
Inst5Quest17_HORDE_Prequest = Inst5Quest17_Prequest
Inst5Quest17_HORDE_Folgequest = Inst5Quest17_Folgequest
-- No Rewards for this quest

--Quest 18 Horde (same as Quest 18 Alliance)
Inst5Quest18_HORDE = Inst5Quest18
Inst5Quest18_HORDE_Level = Inst5Quest18_Level
Inst5Quest18_HORDE_Attain = Inst5Quest18_Attain
Inst5Quest18_HORDE_Aim = Inst5Quest18_Aim
Inst5Quest18_HORDE_Location = Inst5Quest18_Location
Inst5Quest18_HORDE_Note = Inst5Quest18_Note
Inst5Quest18_HORDE_Prequest = Inst5Quest18_Prequest
Inst5Quest18_HORDE_Folgequest = Inst5Quest18_Folgequest
-- No Rewards for this quest

--Quest 19 Horde (same as Quest 19 Alliance)
Inst5Quest19_HORDE = Inst5Quest19
Inst5Quest19_HORDE_Level = Inst5Quest19_Level
Inst5Quest19_HORDE_Attain = Inst5Quest19_Attain
Inst5Quest19_HORDE_Aim = Inst5Quest19_Aim
Inst5Quest19_HORDE_Location = Inst5Quest19_Location
Inst5Quest19_HORDE_Note = Inst5Quest19_Note
Inst5Quest19_HORDE_Prequest = Inst5Quest19_Prequest
Inst5Quest19_HORDE_Folgequest = Inst5Quest19_Folgequest
Inst5Quest19name1_HORDE = Inst5Quest19name1

--Quest 20 Horde (same as Quest 20 Alliance)
Inst5Quest20_HORDE = Inst5Quest20
Inst5Quest20_HORDE_Level = Inst5Quest20_Level
Inst5Quest20_HORDE_Attain = Inst5Quest20_Attain
Inst5Quest20_HORDE_Aim = Inst5Quest20_Aim
Inst5Quest20_HORDE_Location = Inst5Quest20_Location
Inst5Quest20_HORDE_Note = Inst5Quest20_Note
Inst5Quest20_HORDE_Prequest = Inst5Quest20_Prequest
Inst5Quest20_HORDE_Folgequest = Inst5Quest20_Folgequest
Inst5Quest20name1_HORDE = Inst5Quest20name1

--Quest 21 Horde (same as Quest 21 Alliance)
Inst5Quest21_HORDE = Inst5Quest21
Inst5Quest21_HORDE_Level = Inst5Quest21_Level
Inst5Quest21_HORDE_Attain = Inst5Quest21_Attain
Inst5Quest21_HORDE_Aim = Inst5Quest21_Aim
Inst5Quest21_HORDE_Location = Inst5Quest21_Location
Inst5Quest21_HORDE_Note = Inst5Quest21_Note
Inst5Quest21_HORDE_Prequest = Inst5Quest21_Prequest
Inst5Quest21_HORDE_Folgequest = Inst5Quest21_Folgequest
Inst5Quest21name1_HORDE = Inst5Quest21name1

--Quest 22 Horde (same as Quest 22 Alliance)
Inst5Quest22_HORDE = Inst5Quest22
Inst5Quest22_HORDE_Level = Inst5Quest22_Level
Inst5Quest22_HORDE_Attain = Inst5Quest22_Attain
Inst5Quest22_HORDE_Aim = Inst5Quest22_Aim
Inst5Quest22_HORDE_Location = Inst5Quest22_Location
Inst5Quest22_HORDE_Note = Inst5Quest22_Note
Inst5Quest22_HORDE_Prequest = Inst5Quest22_Prequest
Inst5Quest22_HORDE_Folgequest = Inst5Quest22_Folgequest
Inst5Quest22name1_HORDE = Inst5Quest22name1
Inst5Quest22name2_HORDE = Inst5Quest22name2
Inst5Quest22name3_HORDE = Inst5Quest22name3
Inst5Quest22name4_HORDE = Inst5Quest22name4

--Quest 23 Horde (same as Quest 23 Alliance)
Inst5Quest23_HORDE = Inst5Quest23
Inst5Quest23_HORDE_Level = Inst5Quest23_Level
Inst5Quest23_HORDE_Attain = Inst5Quest23_Attain
Inst5Quest23_HORDE_Aim = Inst5Quest23_Aim
Inst5Quest23_HORDE_Location = Inst5Quest23_Location
Inst5Quest23_HORDE_Note = Inst5Quest23_Note
Inst5Quest23_HORDE_Prequest = Inst5Quest23_Prequest
Inst5Quest23_HORDE_Folgequest = Inst5Quest23_Folgequest
-- No Rewards for this quest 

--------------- INST6 - Blackwing Lair (BWL) ---------------
Inst6Story = {
	["Page1"] = "Blackwing Lair can be found at the very height of Blackrock Spire. It is there in the dark recesses of the mountain's peak that Nefarian has begun to unfold the final stages of his plan to destroy Ragnaros once and for all and lead his army to undisputed supremacy over all the races of Azeroth.",
	["Page2"] = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths, which serve as the seat of power for Ragnaros the Firelord. Ragnaros has uncovered the secret to creating life from stone and plans to build an army of unstoppable golems to aid him in conquering the whole of Blackrock Mountain.",
	["Page3"] = "Nefarian has vowed to crush Ragnaros. To this end, he has recently begun efforts to bolster his forces, much as his father Deathwing had attempted to do in ages past. However, where Deathwing failed, it now seems the scheming Nefarian may be succeeding. Nefarian's mad bid for dominance has even attracted the Fire of the Red Dragon Flight, which has always been the Black Flight's greatest foe. Though Nefarian's intentions are known, the methods he is using to achieve them remain a mystery. It is believed, however that Nefarian has been experimenting with the blood of all of the various Dragon Flights to produce unstoppable warriors.\n \nNefarian's sanctum, Blackwing Lair, can be found at the very height of Blackrock Spire. It is there in the dark recesses of the mountain's peak that Nefarian has begun to unfold the final stages of his plan to destroy Ragnaros once and for all and lead his army to undisputed supremacy over all the races of Azeroth.";
	["MaxPages"] = "3",
};
Inst6Caption = "Blackwing Lair"
Inst6Caption2 = "Blackwing Lair (Story Part 1)"
Inst6Caption3 = "Blackwing Lair (Story Part 2)"

Inst6QAA = "6 Quests 2TW"
Inst6QAH = "6 Quests 2TW"

--Quest 1 Alliance
Inst6Quest1 = "1. Nefarius's Corruption" -- 8730
Inst6Quest1_Level = "60"
Inst6Quest1_Attain = "60"
Inst6Quest1_Aim = "Slay Nefarian and recover the Red Scepter Shard. Return the Red Scepter Shard to Anachronos at the Caverns of Time in Tanaris. You have 5 hours to complete this task."
Inst6Quest1_Location = "Vaelastrasz the Corrupt (Blackwing Lair; "..YELLOW.."[2]"..WHITE..")"
Inst6Quest1_Note = "Only one person can loot the Shard. Anachronos (Tanaris - Caverns of Time; "..YELLOW.."65,49"..WHITE..")"
Inst6Quest1_Prequest = "The Charge of the Dragonflights" -- 8555
Inst6Quest1_Folgequest = "The Might of Kalimdor (Must complete Green & Blue quest chains as well)" -- 8742
Inst6Quest1name1 = "Onyx Embedded Leggings"
Inst6Quest1name2 = "Amulet of Shadow Shielding"

--Quest 2 Alliance
Inst6Quest2 = "2. The Lord of Blackrock" -- 7781
Inst6Quest2_Level = "60"
Inst6Quest2_Attain = "60"
Inst6Quest2_Aim = "Return the Head of Nefarian to Highlord Bolvar Fordragon in Stormwind."
Inst6Quest2_Location = "Head of Nefarian (drops from Nefarian; "..YELLOW.."[9]"..WHITE..")"
Inst6Quest2_Note = "Highlord Bolvar Fordragon is at (Stormwind City - Stormwind Keep; "..YELLOW.."78,20"..WHITE.."). The follow up sends you to Field Marshal Afrasiabi (Stormwind - Valley of Heroes; "..YELLOW.."67,72"..WHITE..") for the reward."
Inst6Quest2_Prequest = "No"
Inst6Quest2_Folgequest = "The Lord of Blackrock" -- 7782
Inst6Quest2name1 = "Master Dragonslayer's Medallion"
Inst6Quest2name2 = "Master Dragonslayer's Orb"
Inst6Quest2name3 = "Master Dragonslayer's Ring"

--Quest 3 Alliance
Inst6Quest3 = "3. Only One May Rise" -- 8288
Inst6Quest3_Level = "60"
Inst6Quest3_Attain = "60"
Inst6Quest3_Aim = "Return the Head of the Broodlord Lashlayer to Baristolth of the Shifting Sands at Cenarion Hold in Silithus."
Inst6Quest3_Location = "Head of the Broodlord Lashlayer (drops from Broodlord Lashlayer; "..YELLOW.."[3]"..WHITE..")"
Inst6Quest3_Note = "Only one person can pick up the head."
Inst6Quest3_Prequest = "What Tomorrow Brings" -- 8286
Inst6Quest3_Folgequest = "The Path of the Righteous" -- 8301
-- No Rewards for this quest

--Quest 4 Alliance
Inst6Quest4 = "4. The Only Prescription" -- 8620
Inst6Quest4_Level = "60"
Inst6Quest4_Attain = "60"
Inst6Quest4_Aim = "Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris. "
Inst6Quest4_Location = "Narain Soothfancy (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst6Quest4_Note = "Chapter can be looted by multiple people. Draconic for Dummies (looted from a table; "..GREEN.."[2']"..WHITE..")"
Inst6Quest4_Prequest = "Decoy!" -- 8606
Inst6Quest4_Folgequest = "The Good News and The Bad News (Must complete Stewvul, Ex-B.F.F. and Never Ask Me About My Business quest chains)" -- 8728
Inst6Quest4name1 = "Gnomish Turban of Psychic Might"

--Quest 5 Alliance
Inst6Quest5 = "(TW)5. The Key to Karazhan IX" -- 40828
Inst6Quest5_Level = "60"
Inst6Quest5_Attain = "58"
Inst6Quest5_Aim = "Find 'Treatise on Magical Locks and Keys' and bring it back to Vandol. It is rumored to be kept in Blackwing Lair."
Inst6Quest5_Location = "Dolvan Bracewind (Dustwallow Marsh - ; "..YELLOW.."[71.1,73.2]"..WHITE..")"
Inst6Quest5_Note = "Book 'Treatise on Magical Locks and Keys' is in the last boss room "..YELLOW.."[9]"..WHITE..", next to the throne."
Inst6Quest5_Prequest = "The Key to Karazhan VIII" -- 40827
Inst6Quest5_Folgequest = "The Key to Karazhan X" -- 40829
-- No Rewards for this quest

--Quest 6 Alliance
Inst6Quest6 = "(TW)6. Scythe of the Goddess" -- 41067
Inst6Quest6_Level = "60"
Inst6Quest6_Attain = "58"
Inst6Quest6_Aim = "Retrieve a copy of 'Vorgendor: Myths from the Blood Dimension' from Lord Victor Nefarius."
Inst6Quest6_Location = "Arch Druid Dreamwind (Hyjal - Nordanaar; "..YELLOW.."84.8,29.3"..WHITE.." top floor of the big tree)"
Inst6Quest6_Note = "Nefarian "..YELLOW.."[9]"..WHITE.." drops 'Burnt Copy of Vorgendor'.\nQuestline starts with rare drop legendary item 'The Scythe of Elune' from boss Lord Blackwald II in "..YELLOW.."[Karazhan]"..WHITE.."."
Inst6Quest6_Prequest = "Scythe of the Goddess" -- 41066
Inst6Quest6_Folgequest = "Scythe of the Goddess "..YELLOW.."[Upper Karazhan]"..WHITE.." " -- 41087
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst6Quest1_HORDE = Inst6Quest1
Inst6Quest1_HORDE_Level = Inst6Quest1_Level
Inst6Quest1_HORDE_Attain = Inst6Quest1_Attain
Inst6Quest1_HORDE_Aim = Inst6Quest1_Aim
Inst6Quest1_HORDE_Location = Inst6Quest1_Location
Inst6Quest1_HORDE_Note = Inst6Quest1_Note
Inst6Quest1_HORDE_Prequest = Inst6Quest1_Prequest
Inst6Quest1_HORDE_Folgequest = Inst6Quest1_Folgequest
Inst6Quest1name1_HORDE = Inst6Quest1name1
Inst6Quest1name2_HORDE = Inst6Quest1name2

--Quest 2 Horde
Inst6Quest2_HORDE = "2. The Lord of Blackrock" -- 7783
Inst6Quest2_HORDE_Level = "60"
Inst6Quest2_HORDE_Attain = "60"
Inst6Quest2_HORDE_Aim = "Return the Head of Nefarian to Thrall in Orgrimmar."
Inst6Quest2_HORDE_Location = "Head of Nefarian (drops from Nefarian; "..YELLOW.."[9]"..WHITE..")"
Inst6Quest2_HORDE_Note = "The follow up sends you to High Overlord Saurfang (Orgrimmar - Valley of Strength; "..YELLOW.."51,76"..WHITE..") for the reward."
Inst6Quest2_HORDE_Prequest = "No"
Inst6Quest2_HORDE_Folgequest = "The Lord of Blackrock" -- 7784
Inst6Quest2name1_HORDE = "Master Dragonslayer's Medallion"
Inst6Quest2name2_HORDE = "Master Dragonslayer's Orb"
Inst6Quest2name3_HORDE = "Master Dragonslayer's Ring"

--Quest 3 Horde (same as Quest 3 Alliance)
Inst6Quest3_HORDE = Inst6Quest3
Inst6Quest3_HORDE_Level = Inst6Quest3_Level
Inst6Quest3_HORDE_Attain = Inst6Quest3_Attain
Inst6Quest3_HORDE_Aim = Inst6Quest3_Aim
Inst6Quest3_HORDE_Location = Inst6Quest3_Location
Inst6Quest3_HORDE_Note = Inst6Quest3_Note
Inst6Quest3_HORDE_Prequest = Inst6Quest3_Prequest
Inst6Quest3_HORDE_Folgequest = Inst6Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst6Quest4_HORDE = Inst6Quest4
Inst6Quest4_HORDE_Level = Inst6Quest4_Level
Inst6Quest4_HORDE_Attain = Inst6Quest4_Attain
Inst6Quest4_HORDE_Aim = Inst6Quest4_Aim
Inst6Quest4_HORDE_Location = Inst6Quest4_Location
Inst6Quest4_HORDE_Note = Inst6Quest4_Note
Inst6Quest4_HORDE_Prequest = Inst6Quest4_Prequest
Inst6Quest4_HORDE_Folgequest = Inst6Quest4_Folgequest
Inst6Quest4name1_HORDE = Inst6Quest4name1

--Quest 5 Horde (same as Quest 5 Alliance)
Inst6Quest5_HORDE = Inst6Quest5
Inst6Quest5_HORDE_Level = Inst6Quest5_Level
Inst6Quest5_HORDE_Attain = Inst6Quest5_Attain
Inst6Quest5_HORDE_Aim = Inst6Quest5_Aim
Inst6Quest5_HORDE_Location = Inst6Quest5_Location
Inst6Quest5_HORDE_Note = Inst6Quest5_Note
Inst6Quest5_HORDE_Prequest = Inst6Quest5_Prequest
Inst6Quest5_HORDE_Folgequest = Inst6Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst6Quest6_HORDE = Inst6Quest6
Inst6Quest6_HORDE_Level = Inst6Quest6_Level
Inst6Quest6_HORDE_Attain = Inst6Quest6_Attain
Inst6Quest6_HORDE_Aim = Inst6Quest6_Aim
Inst6Quest6_HORDE_Location = Inst6Quest6_Location
Inst6Quest6_HORDE_Note = Inst6Quest6_Note
Inst6Quest6_HORDE_Prequest = Inst6Quest6_Prequest
Inst6Quest6_HORDE_Folgequest = Inst6Quest6_Folgequest
-- No Rewards for this quest



--------------- INST7 - Blackfathom Deeps (BFD) ---------------
Inst7Story = "Situated along the Zoram Strand of Ashenvale, Blackfathom Deeps was once a glorious temple dedicated to the night elves' moon-goddess, Elune. However, the great Sundering shattered the temple - sinking it beneath the waves of the Veiled Sea. There it remained untouched - until, drawn by its ancient power - the naga and satyr emerged to plumb its secrets. Legends hold that the ancient beast, Aku'mai, has taken up residence within the temple's ruins. Aku'mai, a favored pet of the primordial Old Gods, has preyed upon the area ever since. Drawn to Aku'mai's presence, the cult known as the Twilight's Hammer has also come to bask in the Old Gods' evil presence."
Inst7Caption = "Blackfathom Deeps"
Inst7QAA = "6 Quests"
Inst7QAH = "6 Quests"

--Quest 1 Alliance
Inst7Quest1 = "1. Knowledge in the Deeps" -- 971
Inst7Quest1_Level = "23"
Inst7Quest1_Attain = "10"
Inst7Quest1_Aim = "Bring the Lorgalis Manuscript to Gerrig Bonegrip in the Forlorn Cavern in Ironforge."
Inst7Quest1_Location = "Gerrig Bonegrip (Ironforge - The Forlorn Cavern; "..YELLOW.."50,5"..WHITE..")"
Inst7Quest1_Note = "You find the Manuscript at "..YELLOW.."[2]"..WHITE.." in the water."
Inst7Quest1_Prequest = "No"
Inst7Quest1_Folgequest = "No"
Inst7Quest1name1 = "Sustaining Ring"

--Quest 2 Alliance
Inst7Quest2 = "2. Researching the Corruption" -- 1275
Inst7Quest2_Level = "24"
Inst7Quest2_Attain = "18"
Inst7Quest2_Aim = "Gershala Nightwhisper in Auberdine wants 8 Corrupt Brain stems."
Inst7Quest2_Location = "Gershala Nightwhisper (Darkshore - Auberdine; "..YELLOW.."38,43"..WHITE..")"
Inst7Quest2_Note = "The prequest is optional. You get it from Argos Nightwhisper at (Stormwind - The Park; "..YELLOW.."21,55"..WHITE.."). \n\nAll the Nagas before and in Blackfathom Deeps drop the brains."
Inst7Quest2_Prequest = "The Corruption Abroad" -- 3765
Inst7Quest2_Folgequest = "No"
Inst7Quest2name1 = "Beetle Clasps"
Inst7Quest2name2 = "Prelacy Cape"

--Quest 3 Alliance
Inst7Quest3 = "3. In Search of Thaelrid" -- 1198
Inst7Quest3_Level = "24"
Inst7Quest3_Attain = "18"
Inst7Quest3_Aim = "Seek out Argent Guard Thaelrid in Blackfathom Deeps."
Inst7Quest3_Location = "Dawnwatcher Shaedlass (Darnassus - Craftsmen's Terrace; "..YELLOW.."55,24"..WHITE..")"
Inst7Quest3_Note = "You find Argent Guard Thaelrid at "..YELLOW.."[4]"..WHITE.."."
Inst7Quest3_Prequest = "No"
Inst7Quest3_Folgequest = "Blackfathom Villainy" -- 1200
-- No Rewards for this quest

--Quest 4 Alliance
Inst7Quest4 = "4. Blackfathom Villainy" -- 1200
Inst7Quest4_Level = "27"
Inst7Quest4_Attain = "18"
Inst7Quest4_Aim = "Bring the head of Twilight Lord Kelris to Dawnwatcher Selgorm in Darnassus."
Inst7Quest4_Location = "Argent Guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest4_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Dawnwatcher Selgorm in Darnassus - Craftsmen's Terrace ("..YELLOW.."55,24"..WHITE.."). \n\nATTENTION! If you turn on the flames beside Lord Kelris, enemies appear and attack you."
Inst7Quest4_Prequest = "In Search of Thaelrid" -- 1198
Inst7Quest4_Folgequest = "No"
Inst7Quest4name1 = "Gravestone Scepter"
Inst7Quest4name2 = "Arctic Buckler"

--Quest 5 Alliance
Inst7Quest5 = "5. Twilight Falls" -- 1199
Inst7Quest5_Level = "25"
Inst7Quest5_Attain = "20"
Inst7Quest5_Aim = "Bring 10 Twilight Pendants to Argent Guard Manados in Darnassus."
Inst7Quest5_Location = "Argent Guard Manados (Darnassus - Craftsmen's Terrace; "..YELLOW.."55,23"..WHITE..")"
Inst7Quest5_Note = "Every Twilight mob can drop the pendants."
Inst7Quest5_Prequest = "No"
Inst7Quest5_Folgequest = "No"
Inst7Quest5name1 = "Nimbus Boots"
Inst7Quest5name2 = "Heartwood Girdle"

--Quest 6 Alliance
Inst7Quest6 = "6. The Orb of Soran'ruk" -- 1740
Inst7Quest6_Level = "25"
Inst7Quest6_Attain = "20"
Inst7Quest6_Aim = "Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens."
Inst7Quest6_Location = "Doan Karhan (Barrens; "..YELLOW.."49,57"..WHITE..")"
Inst7Quest6_Note = WARLOCK.."(Warlock only)"..WHITE.." You get the 3 Soran'ruk Fragments from Twilight Accolytes in "..YELLOW.."[Blackfathom Deeps]"..WHITE..". You get the Large Soran'ruk Fragment in "..YELLOW.."[Shadowfang Keep]"..WHITE.." from Shadowfang Darksouls."
Inst7Quest6_Prequest = "No"
Inst7Quest6_Folgequest = "No"
Inst7Quest6name1 = "Orb of Soran'ruk"
Inst7Quest6name2 = "Staff of Soran'ruk"


--Quest 1 Horde
Inst7Quest1_HORDE = "1. The Essence of Aku'Mai" -- 6563
Inst7Quest1_HORDE_Level = "22"
Inst7Quest1_HORDE_Attain = "17"
Inst7Quest1_HORDE_Aim = "Bring 20 Sapphires of Aku'Mai to Je'neu Sancrea in Ashenvale."
Inst7Quest1_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest1_HORDE_Note = "You get the prequest Trouble in the Deeps from Tsunaman (Stonetalon Mountains - Sun Rock Retreat; "..YELLOW.."47,64"..WHITE.."). The crystals can be found in the tunnels before the instance."
Inst7Quest1_HORDE_Prequest = "Trouble in the Deeps" -- 6562
Inst7Quest1_HORDE_Folgequest = "Amongst the Ruins"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. Allegiance to the Old Gods" -- 6564 -> 6565
Inst7Quest2_HORDE_Level = "26"
Inst7Quest2_HORDE_Attain = "17"
Inst7Quest2_HORDE_Aim = "Bring the Damp Note to Je'neu Sancrea in Ashenvale -> Kill Lorgus Jett in Blackfathom Deeps and then return to Je'neu Sancrea in Ashenvale."
Inst7Quest2_HORDE_Location = "Damp Note (drop - see note)"
Inst7Quest2_HORDE_Note = "You get the Damp Note from Blackfathom Tide Priestess (5% drop rate). Then take it to Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE.."). Lorgus Jett is at "..YELLOW.."[6]"..WHITE.."."
Inst7Quest2_HORDE_Prequest = "No"
Inst7Quest2_HORDE_Folgequest = "No"
Inst7Quest2name1_HORDE = "Band of the Fist"
Inst7Quest2name2_HORDE = "Chestnut Mantle"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. Amongst the Ruins" -- 6921
Inst7Quest3_HORDE_Level = "27"
Inst7Quest3_HORDE_Attain = "21"
Inst7Quest3_HORDE_Aim = "Bring the Fathom Core to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."
Inst7Quest3_HORDE_Location = "Je'neu Sancrea (Ashenvale - Zoram'gar Outpost; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest3_HORDE_Note = "You find the Fathom Core at "..YELLOW.."[7]"..WHITE.." in the water. When you get the core Baron Aquanis appears and attacks you. He drops a quest item which you have to take back to Je'neu Sancrea."
Inst7Quest3_HORDE_Prequest = "No"
Inst7Quest3_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Horde
Inst7Quest4_HORDE = "4. Blackfathom Villainy" -- 6561
Inst7Quest4_HORDE_Level = "27"
Inst7Quest4_HORDE_Attain = "18"
Inst7Quest4_HORDE_Aim = "Bring the head of Twilight Lord Kelris to Bashana Runetotem in Thunder Bluff."
Inst7Quest4_HORDE_Location = "Argent guard Thaelrid (Blackfathom Deeps; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest4_HORDE_Note = "Twilight Lord Kelris is at "..YELLOW.."[8]"..WHITE..". You find Bashana Runetotem in Thunderbluff - The Elder Rise ("..YELLOW.."70,33"..WHITE.."). \n\nATTENTION! If you turn on the flames beside Lord Kelris, enemies appear and attack you."
Inst7Quest4_HORDE_Prequest = "No"
Inst7Quest4_HORDE_Folgequest = "No"
Inst7Quest4name1_HORDE = "Gravestone Scepter"
Inst7Quest4name2_HORDE = "Arctic Buckler"

--Quest 5 Horde (same as Quest 6 Alliance)
Inst7Quest5_HORDE = "5. The Orb of Soran'ruk"
Inst7Quest5_HORDE_Level = Inst7Quest6_Level
Inst7Quest5_HORDE_Attain = Inst7Quest6_Attain
Inst7Quest5_HORDE_Aim = Inst7Quest6_Aim
Inst7Quest5_HORDE_Location = Inst7Quest6_Location
Inst7Quest5_HORDE_Note = Inst7Quest6_Note
Inst7Quest5_HORDE_Prequest = Inst7Quest6_Prequest
Inst7Quest5_HORDE_Folgequest = Inst7Quest6_Folgequest
Inst7Quest5name1_HORDE = Inst7Quest6name1
Inst7Quest5name2_HORDE = Inst7Quest6name2

--Quest 6 Horde
Inst7Quest6_HORDE = "6. Baron Aquanis" -- 6922
Inst7Quest6_HORDE_Level = "30"
Inst7Quest6_HORDE_Attain = "21"
Inst7Quest6_HORDE_Aim = "Bring the Strange Water Globe to Je'neu Sancrea at Zoram'gar Outpost, Ashenvale."
Inst7Quest6_HORDE_Location = "Strange Water Globe (Blackfathom Deeps; "..YELLOW.."[7]"..WHITE..")"
Inst7Quest6_HORDE_Note = "Using Fathom Stone "..YELLOW.."[7]"..WHITE.." for the quest #3 summons Baron Aquanis. He drops Strange Water Globe that starts the quest."
Inst7Quest6_HORDE_Prequest = "No"
Inst7Quest6_HORDE_Folgequest = "No"
Inst7Quest6name1_HORDE = "Outlaw Sabre" -- 16886
Inst7Quest6name2_HORDE = "Witch's Finger" -- 16887


--------------- INST8 - Lower Blackrock Spire (LBRS) ---------------
Inst8Story = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself."
Inst8Caption = "Lower Blackrock Spire"
Inst8QAA = "15 Quests 1TW"
Inst8QAH = "18 Quests 4TW"

--Quest 1 Alliance
Inst8Quest1 = "1. The Final Tablets" -- 4788
Inst8Quest1_Level = "58"
Inst8Quest1_Attain = "40"
Inst8Quest1_Aim = "Bring the Fifth and Sixth Mosh'aru Tablets to Prospector Ironboot in Tanaris."
Inst8Quest1_Location = "Prospector Ironboot (Tanaris - Steamwheedle Port; "..YELLOW.."66,23"..WHITE..")"
Inst8Quest1_Note = "You find the tablets near "..YELLOW.."[7]"..WHITE.." and "..YELLOW.."[9]"..WHITE..".\nThe Rewards belong to 'Confront Yeh'kinya'. You find Yeh'kinya near Prospector Ironboot."
Inst8Quest1_Prequest = "The Lost Tablets of Mosh'aru" -- 5065
Inst8Quest1_Folgequest = "Confront Yeh'kinya" -- 8181

Inst8Quest1name1 = "Faded Hakkari Cloak"
Inst8Quest1name2 = "Tattered Hakkari Cape"

--Quest 2 Alliance
Inst8Quest2 = "2. Kibler's Exotic Pets" -- 4729
Inst8Quest2_Level = "59"
Inst8Quest2_Attain = "55"
Inst8Quest2_Aim = "Travel to Blackrock Spire and find Bloodaxe Worg Pups. Use the cage to carry the ferocious little beasts. Bring back a Caged Worg Pup to Kibler."
Inst8Quest2_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest2_Note = "You find the Worg Cup at "..YELLOW.."[17]"..WHITE.."."
Inst8Quest2_Prequest = "No"
Inst8Quest2_Folgequest = "No"
Inst8Quest2name1 = "Worg Carrier"

--Quest 3 Alliance
Inst8Quest3 = "3. En-Ay-Es-Tee-Why" -- 4862
Inst8Quest3_Level = "59"
Inst8Quest3_Attain = "55"
Inst8Quest3_Aim = "Travel to Blackrock Spire and collect 15 Spire Spider Eggs for Kibler."
Inst8Quest3_Location = "Kibler (Burning Steppes - Flame Crest; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest3_Note = "You find the spider eggs near "..YELLOW.."[13]"..WHITE.."."
Inst8Quest3_Prequest = "No"
Inst8Quest3_Folgequest = "No"
Inst8Quest3name1 = "Smolderweb Carrier"

--Quest 4 Alliance
Inst8Quest4 = "4. Mother's Milk" -- 4866
Inst8Quest4_Level = "60"
Inst8Quest4_Attain = "55"
Inst8Quest4_Aim = "In the heart of Blackrock Spire you will find Mother Smolderweb. Engage her and get her to poison you. Chances are good that you will have to kill her as well. Return to Ragged John when you are poisoned so that he can 'milk' you."
Inst8Quest4_Location = "Ragged John (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE..")"
Inst8Quest4_Note = "Mother Smolderweb is at "..YELLOW.."[13]"..WHITE..". The poison effect snares nearby players as well. If it is removed or dispelled, you fail the quest."
Inst8Quest4_Prequest = "No"
Inst8Quest4_Folgequest = "No"
Inst8Quest4name1 = "Ragged John's Neverending Cup"

--Quest 5 Alliance
Inst8Quest5 = "5. Put Her Down" -- 4701
Inst8Quest5_Level = "59"
Inst8Quest5_Attain = "55"
Inst8Quest5_Aim = "Travel to Blackrock Spire and destroy the source of the worg menace. As you left Helendis, he shouted a name: Halycon. It is what the orcs refer to in regards to the worg."
Inst8Quest5_Location = "Helendis Riverhorn (Burning Steppes - Morgan's Vigil; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_Note = "You find Halycon at "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_Prequest = "No"
Inst8Quest5_Folgequest = "No"
Inst8Quest5name1 = "Astoria Robes"
Inst8Quest5name2 = "Traphook Jerkin"
Inst8Quest5name3 = "Jadescale Breastplate"

--Quest 6 Alliance
Inst8Quest6 = "6. Urok Doomhowl" -- 4867
Inst8Quest6_Level = "60"
Inst8Quest6_Attain = "55"
Inst8Quest6_Aim = "Read Warosh's Scroll. Bring Warosh's Mojo to Warosh."
Inst8Quest6_Location = "Warosh (Blackrock Spire; "..YELLOW.."[2]"..WHITE..")"
Inst8Quest6_Note = "To get Warosh's Mojo you have to evoke and kill Urok Doomhowl "..YELLOW.."[15]"..WHITE..". For his Evocation you need a Spear and Highlord Omokk's Head "..YELLOW.."[5]"..WHITE..". The Spear is at "..YELLOW.."[3]"..WHITE..". During the Evocation a few waves of ogres appear before Urok Doomhowl attacks you. You can use the Spear during the fight to damage the ogres."
Inst8Quest6_Prequest = "No"
Inst8Quest6_Folgequest = "No"
Inst8Quest6name1 = "Prismcharm"

--Quest 7 Alliance
Inst8Quest7 = "7. Bijou's Belongings" -- 5001
Inst8Quest7_Level = "59"
Inst8Quest7_Attain = "55"
Inst8Quest7_Aim = "Find Bijou's Belongings and return them to her. Good luck!"
Inst8Quest7_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest7_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[13]"..WHITE..".\nMaxwell is at (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,58"..WHITE..")."
Inst8Quest7_Prequest = "No"
Inst8Quest7_Folgequest = "Message to Maxwell" -- 5002
-- No Rewards for this quest

--Quest 8 Alliance
Inst8Quest8 = "8. Maxwell's Mission" -- 5081
Inst8Quest8_Level = "60"
Inst8Quest8_Attain = "55"
Inst8Quest8_Aim = "Travel to Blackrock Spire and destroy War Master Voone, Highlord Omokk, and Overlord Wyrmthalak. Return to Marshal Maxwell when the job is done."
Inst8Quest8_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,58"..WHITE..")"
Inst8Quest8_Note = "You find War Master Voone at "..YELLOW.."[9]"..WHITE..", Highlord Omokk at "..YELLOW.."[5]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE.."."
Inst8Quest8_Prequest = "Message to Maxwell" -- 5002
Inst8Quest8_Folgequest = "No"
Inst8Quest8name1 = "Wyrmthalak's Shackles"
Inst8Quest8name2 = "Omokk's Girth Restrainer"
Inst8Quest8name3 = "Halycon's Muzzle"
Inst8Quest8name4 = "Vosh'gajin's Strand"
Inst8Quest8name5 = "Voone's Vice Grips"

--Quest 9 Alliance
Inst8Quest9 = "9. Seal of Ascension" -- 4742
Inst8Quest9_Level = "60"
Inst8Quest9_Attain = "57"
Inst8Quest9_Aim = "Find the three gemstones of command: The Gemstone of Smolderthorn, Gemstone of Spirestone, and Gemstone of Bloodaxe. Return them, along with the Unadorned Seal of Ascension, to Vaelan."
Inst8Quest9_Location = "Vaelan (Blackrock Spire; "..YELLOW.."[1]"..WHITE..")"
Inst8Quest9_Note = "You get the Gemstone of Spirestone from Highlord Omokk at "..YELLOW.."[5]"..WHITE..", the Gemstone of Smolderthorn from War Master Voone at "..YELLOW.."[9]"..WHITE.." and the Gemstone of Bloodaxe from Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE..". The Unadorned Seal of Ascension can drop from near all enemys in Lower Blackrock Spire. You get the Key for Upper Blackrock Spire if you complete this questline."
Inst8Quest9_Prequest = "No"
Inst8Quest9_Folgequest = "Seal of Ascension" -- 4743
-- No Rewards for this quest

--Quest 10 Alliance
Inst8Quest10 = "10. General Drakkisath's Command" -- 5089
Inst8Quest10_Level = "60"
Inst8Quest10_Attain = "55"
Inst8Quest10_Aim = "Take General Drakkisath's Command to Marshal Maxwell in Burning Steppes."
Inst8Quest10_Location = "General Drakkisath's Command (drops from Overlord Wyrmthalak; "..YELLOW.."[19]"..WHITE..")"
Inst8Quest10_Note = "Marshal Maxwell is in the Burning Steppes - Morgan's Vigil; ("..YELLOW.."84,58"..WHITE..")."
Inst8Quest10_Prequest = "No"
Inst8Quest10_Folgequest = "General Drakkisath's Demise ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 5102
-- No Rewards for this quest

--Quest 11 Alliance
Inst8Quest11 = "11. The Left Piece of Lord Valthalak's Amulet" -- 8966
Inst8Quest11_Level = "60"
Inst8Quest11_Attain = "58"
Inst8Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst8Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst8Quest11_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[9]"..WHITE..".\nA long long long questline starts (A) at Deliana Ironforge king's room 'A Supernatural Device', (H) Mokvar Orgrimar Thrall's room."
Inst8Quest11_Prequest = "Components of Importance" -- 8962
Inst8Quest11_Folgequest = "I See Alcaz Island In Your Future..." -- 8970
-- No Rewards for this quest

--Quest 12 Alliance
Inst8Quest12 = "12. The Right Piece of Lord Valthalak's Amulet" -- 8989
Inst8Quest12_Level = "60"
Inst8Quest12_Attain = "58"
Inst8Quest12_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Mor Grayhoof and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst8Quest12_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst8Quest12_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nMor Grayhoof is summoned at "..YELLOW.."[9]"..WHITE.."."
Inst8Quest12_Prequest = "More Components of Importance" -- 8986
Inst8Quest12_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 13 Alliance
Inst8Quest13 = "13. Snakestone of the Shadow Huntress" -- 5306
Inst8Quest13_Level = "60"
Inst8Quest13_Attain = "50"
Inst8Quest13_Aim = "Travel to Blackrock Spire and slay Shadow Hunter Vosh'gajin. Recover Vosh'gajin's Snakestone and return to Kilram."
Inst8Quest13_Location = "Kilram (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst8Quest13_Note = "Blacksmith quest. Shadow Hunter Vosh'gajin is at "..YELLOW.."[7]"..WHITE.."."
Inst8Quest13_Prequest = "No"
Inst8Quest13_Folgequest = "No"
Inst8Quest13name1 = "Plans: Dawn's Edge"

--Quest 14 Alliance
Inst8Quest14 = "14. Hot Fiery Death" -- 5103
Inst8Quest14_Level = "60"
Inst8Quest14_Attain = "60"
Inst8Quest14_Aim = "Someone in this world must know what to do with these gauntlets. Good luck!"
Inst8Quest14_Location = "Human Remains (Lower Blackrock Spire; "..YELLOW.."[9]"..WHITE..")"
Inst8Quest14_Note = "Blacksmith quest. Be sure to pick up the Unfired Plate Gauntlets near the Human Remains at "..YELLOW.."[11]"..WHITE..". Turns in to Malyfous Darkhammer (Winterspring - Everlook; "..YELLOW.."61,39"..WHITE.."). Rewards listed are for the followup."
Inst8Quest14_Prequest = "No"
Inst8Quest14_Folgequest = "Fiery Plate Gauntlets" -- 5124
Inst8Quest14name1 = "Plans: Fiery Plate Gauntlets"
Inst8Quest14name2 = "Fiery Plate Gauntlets"

--Quest 15 Alliance
Inst8Quest15 = "(TW)15. The Dark Iron Desecrator" -- 40762
Inst8Quest15_Level = "60"
Inst8Quest15_Attain = "55"
Inst8Quest15_Aim = "I require a Intricate Arcanite Barrel which can handle extreme heat. This can be found deep within Lower Blackrock Spire, near the Quartermaster "..YELLOW.."[16]"..WHITE.." there."
Inst8Quest15_Location = "Bixxle Screwfuse (Tel'Abim Island east from Tanaris)"
Inst8Quest15_Note = "This quest requires to collect 4 items.\n1) Magma Condensor (Blackrock Depths in Magma Condensor Crate) \n2) Intricate Arcanite Barrel (Blackrock Spire in Intricate Arcanite Barrels container) its a little box on a big box in the middle of the room.\n3) Molten Fragment (Molten Core from Molten Destroyer).\n4) Dark Iron Rifle (crafted by Engineers).\nFiery Core(x3) found in Molten Core, and Enchanted Thorium Bars(x10)."
Inst8Quest15_Prequest = "Secrets of the Dark Iron Desecrator" --40761
Inst8Quest15_Folgequest = "No"
Inst8Quest15name1 = "Dark Iron Desecrator"

--Quest 1 Horde (same as Quest 1 Alliance)
Inst8Quest1_HORDE = Inst8Quest1
Inst8Quest1_HORDE_Level = Inst8Quest1_Level
Inst8Quest1_HORDE_Attain = Inst8Quest1_Attain
Inst8Quest1_HORDE_Aim = Inst8Quest1_Aim
Inst8Quest1_HORDE_Location = Inst8Quest1_Location
Inst8Quest1_HORDE_Note = Inst8Quest1_Note
Inst8Quest1_HORDE_Prequest = Inst8Quest1_Prequest
Inst8Quest1_HORDE_Folgequest = Inst8Quest1_Folgequest
Inst8Quest1name1_HORDE = Inst8Quest1name1
Inst8Quest1name2_HORDE = Inst8Quest1name2

--Quest 2 Horde (same as Quest 2 Alliance)
Inst8Quest2_HORDE = Inst8Quest2
Inst8Quest2_HORDE_Level = Inst8Quest2_Level
Inst8Quest2_HORDE_Attain = Inst8Quest2_Attain
Inst8Quest2_HORDE_Aim = Inst8Quest2_Aim
Inst8Quest2_HORDE_Location = Inst8Quest2_Location
Inst8Quest2_HORDE_Note = Inst8Quest2_Note
Inst8Quest2_HORDE_Prequest = Inst8Quest2_Prequest
Inst8Quest2_HORDE_Folgequest = Inst8Quest2_Folgequest
Inst8Quest2name1_HORDE = Inst8Quest2name1

--Quest 3 Horde (same as Quest 3 Alliance)
Inst8Quest3_HORDE = Inst8Quest3
Inst8Quest3_HORDE_Level = Inst8Quest3_Level
Inst8Quest3_HORDE_Attain = Inst8Quest3_Attain
Inst8Quest3_HORDE_Aim = Inst8Quest3_Aim
Inst8Quest3_HORDE_Location = Inst8Quest3_Location
Inst8Quest3_HORDE_Note = Inst8Quest3_Note
Inst8Quest3_HORDE_Prequest = Inst8Quest3_Prequest
Inst8Quest3_HORDE_Folgequest = Inst8Quest3_Folgequest
Inst8Quest3name1_HORDE = Inst8Quest3name1

--Quest 4 Horde (same as Quest 4 Alliance)
Inst8Quest4_HORDE = Inst8Quest4
Inst8Quest4_HORDE_Level = Inst8Quest4_Level
Inst8Quest4_HORDE_Attain = Inst8Quest4_Attain
Inst8Quest4_HORDE_Aim = Inst8Quest4_Aim
Inst8Quest4_HORDE_Location = Inst8Quest4_Location
Inst8Quest4_HORDE_Note = Inst8Quest4_Note
Inst8Quest4_HORDE_Prequest = Inst8Quest4_Prequest
Inst8Quest4_HORDE_Folgequest = Inst8Quest4_Folgequest
Inst8Quest4name1_HORDE = Inst8Quest4name1

--Quest 5 Horde
Inst8Quest5_HORDE = "5. The Pack Mistress" -- 4724
Inst8Quest5_HORDE_Level = "59"
Inst8Quest5_HORDE_Attain = "55"
Inst8Quest5_HORDE_Aim = "Slay Halycon, pack mistress of the Bloodaxe worg."
Inst8Quest5_HORDE_Location = "Galamav the Marksman (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_HORDE_Note = "You find Halycon at "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_HORDE_Prequest = "No"
Inst8Quest5_HORDE_Folgequest = "No"
Inst8Quest5name1_HORDE = "Astoria Robes"
Inst8Quest5name2_HORDE = "Traphook Jerkin"
Inst8Quest5name3_HORDE = "Jadescale Breastplate"

--Quest 6 Horde (same as Quest 6 Alliance)
Inst8Quest6_HORDE = Inst8Quest6
Inst8Quest6_HORDE_Level = Inst8Quest6_Level
Inst8Quest6_HORDE_Attain = Inst8Quest6_Attain
Inst8Quest6_HORDE_Aim = Inst8Quest6_Aim
Inst8Quest6_HORDE_Location = Inst8Quest6_Location
Inst8Quest6_HORDE_Note = Inst8Quest6_Note
Inst8Quest6_HORDE_Prequest = Inst8Quest6_Prequest
Inst8Quest6_HORDE_Folgequest = Inst8Quest6_Folgequest
Inst8Quest6name1_HORDE = Inst8Quest6name1

--Quest 7 Horde
Inst8Quest7_HORDE = "7. Operative Bijou" -- 4981
Inst8Quest7_HORDE_Level = "59"
Inst8Quest7_HORDE_Attain = "55"
Inst8Quest7_HORDE_Aim = "Travel to Blackrock Spire and find out what happened to Bijou."
Inst8Quest7_HORDE_Location = "Lexlort (Badlands - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest7_HORDE_Note = "You find Bijou at "..YELLOW.."[8]"..WHITE.."."
Inst8Quest7_HORDE_Prequest = "No"
Inst8Quest7_HORDE_Folgequest = "Bijou's Belongings" -- 4982
-- No Rewards for this quest

--Quest 8 Horde
Inst8Quest8_HORDE = "8. Bijou's Belongings" -- 4982
Inst8Quest8_HORDE_Level = "59"
Inst8Quest8_HORDE_Attain = "55"
Inst8Quest8_HORDE_Aim = "Find Bijou's Belongings and return them to her. You recall her mentioning that she stashed them on the bottom floor of the city."
Inst8Quest8_HORDE_Location = "Bijou (Blackrock Spire; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest8_HORDE_Note = "You find Bijou's Belongings on the way to Mother Smolderweb at "..YELLOW.."[13]"..WHITE..".\nThe Rewards belong to 'Bijou's Reconnaissance Report'."
Inst8Quest8_HORDE_Prequest = "Operative Bijou" -- 4981
Inst8Quest8_HORDE_Folgequest = "Bijou's Reconnaissance Report" -- 4983
Inst8Quest8name1_HORDE = "Freewind Gloves"
Inst8Quest8name2_HORDE = "Seapost Girdle"

--Quest 9 Horde (same as Quest 9 Alliance)
Inst8Quest9_HORDE = Inst8Quest9
Inst8Quest9_HORDE_Level = Inst8Quest9_Level
Inst8Quest9_HORDE_Attain = Inst8Quest9_Attain
Inst8Quest9_HORDE_Aim = Inst8Quest9_Aim
Inst8Quest9_HORDE_Location = Inst8Quest9_Location
Inst8Quest9_HORDE_Note = Inst8Quest9_Note
Inst8Quest9_HORDE_Prequest = Inst8Quest9_Prequest
Inst8Quest9_HORDE_Folgequest = Inst8Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde
Inst8Quest10_HORDE = "10. Warlord's Command" -- 4903
Inst8Quest10_HORDE_Level = "60"
Inst8Quest10_HORDE_Attain = "55"
Inst8Quest10_HORDE_Aim = "Slay Highlord Omokk, War Master Voone, and Overlord Wyrmthalak. Recover Important Blackrock Documents. Return to Warlord Goretooth in Kargath when the mission has been accomplished."
Inst8Quest10_HORDE_Location = "Warlord Goretooth (Badlands - Kargath; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest10_HORDE_Note = "Onyxia Prequest.\nYou find Highlord Omokk at "..YELLOW.."[5]"..WHITE..", War Master Voone at "..YELLOW.."[9]"..WHITE.." and Overlord Wyrmthalak at "..YELLOW.."[19]"..WHITE..". The Blackrock Documents could appear next to one of these 3 bosses."
Inst8Quest10_HORDE_Prequest = "No"
Inst8Quest10_HORDE_Folgequest = "Eitrigg's Wisdom -> For the Horde! ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 4941 -> 4974
Inst8Quest10name1_HORDE = "Wyrmthalak's Shackles"
Inst8Quest10name2_HORDE = "Omokk's Girth Restrainer"
Inst8Quest10name3_HORDE = "Halycon's Muzzle"
Inst8Quest10name4_HORDE = "Vosh'gajin's Strand"
Inst8Quest10name5_HORDE = "Voone's Vice Grips"

--Quest 11 Horde (same as Quest 11 Alliance)
Inst8Quest11_HORDE = Inst8Quest11
Inst8Quest11_HORDE_Level = Inst8Quest11_Level
Inst8Quest11_HORDE_Attain = Inst8Quest11_Attain
Inst8Quest11_HORDE_Aim = Inst8Quest11_Aim
Inst8Quest11_HORDE_Location = Inst8Quest11_Location
Inst8Quest11_HORDE_Note = Inst8Quest11_Note
Inst8Quest11_HORDE_Prequest = Inst8Quest11_Prequest
Inst8Quest11_HORDE_Folgequest = Inst8Quest11_Folgequest
-- No Rewards for this quest

--Quest 12 Horde (same as Quest 12 Alliance)
Inst8Quest12_HORDE = Inst8Quest12
Inst8Quest12_HORDE_Level = Inst8Quest12_Level
Inst8Quest12_HORDE_Attain = Inst8Quest12_Attain
Inst8Quest12_HORDE_Aim = Inst8Quest12_Aim
Inst8Quest12_HORDE_Location = Inst8Quest12_Location
Inst8Quest12_HORDE_Note = Inst8Quest12_Note
Inst8Quest12_HORDE_Prequest = Inst8Quest12_Prequest
Inst8Quest12_HORDE_Folgequest = Inst8Quest12_Folgequest
-- No Rewards for this quest

--Quest 13 Horde (same as Quest 13 Alliance)
Inst8Quest13_HORDE = Inst8Quest13
Inst8Quest13_HORDE_Level = Inst8Quest13_Level
Inst8Quest13_HORDE_Attain = Inst8Quest13_Attain
Inst8Quest13_HORDE_Aim = Inst8Quest13_Aim
Inst8Quest13_HORDE_Location = Inst8Quest13_Location
Inst8Quest13_HORDE_Note = Inst8Quest13_Note
Inst8Quest13_HORDE_Prequest = Inst8Quest13_Prequest
Inst8Quest13_HORDE_Folgequest = Inst8Quest13_Folgequest
Inst8Quest13name1_HORDE = Inst8Quest13name1

--Quest 14 Horde (same as Quest 14 Alliance)
Inst8Quest14_HORDE = Inst8Quest14
Inst8Quest14_HORDE_Level = Inst8Quest14_Level
Inst8Quest14_HORDE_Attain = Inst8Quest14_Attain
Inst8Quest14_HORDE_Aim = Inst8Quest14_Aim
Inst8Quest14_HORDE_Location = Inst8Quest14_Location
Inst8Quest14_HORDE_Note = Inst8Quest14_Note
Inst8Quest14_HORDE_Prequest = Inst8Quest14_Prequest
Inst8Quest14_HORDE_Folgequest = Inst8Quest14_Folgequest
Inst8Quest14name1_HORDE = Inst8Quest14name1
Inst8Quest14name2_HORDE = Inst8Quest14name2

--Quest 15 Horde (same as Quest 15 Alliance)
Inst8Quest15_HORDE = Inst8Quest15
Inst8Quest15_HORDE_Level = Inst8Quest15_Level
Inst8Quest15_HORDE_Attain = Inst8Quest15_Attain
Inst8Quest15_HORDE_Aim = Inst8Quest15_Aim
Inst8Quest15_HORDE_Location = Inst8Quest15_Location
Inst8Quest15_HORDE_Note = Inst8Quest15_Note
Inst8Quest15_HORDE_Prequest = Inst8Quest15_Prequest
Inst8Quest15_HORDE_Folgequest = Inst8Quest15_Folgequest
Inst8Quest15name1_HORDE = Inst8Quest15name1

--Quest 16 Horde
Inst8Quest16_HORDE = "(TW)16. Forest Troll Scum" -- 40495
Inst8Quest16_HORDE_Level = "60"
Inst8Quest16_HORDE_Attain = "48"
Inst8Quest16_HORDE_Aim = "Kill War Master Voone "..YELLOW.."[9]"..WHITE.." in Lower Blackrock Spire and bring his tusks back to Taskmaster Ok'gog at Karfang Hold in Burning Steppes."
Inst8Quest16_HORDE_Location = "Taskmaster Ok'gog (Burning Steppes - Karfang Hold; "..YELLOW.."dont have any clue where it is, turtle wow database shows north-east corner of Burning Steppes 95.1,22.8"..WHITE..")"
Inst8Quest16_HORDE_Note = ""
Inst8Quest16_HORDE_Prequest = "The Firegut Task" --40494
Inst8Quest16_HORDE_Folgequest = "No"
Inst8Quest16name1_HORDE = "Taskmaster Whip" --60715

--Quest 17 Horde
Inst8Quest17_HORDE = "(TW)17. Raider's Raid" -- 40498
Inst8Quest17_HORDE_Level = "58"
Inst8Quest17_HORDE_Attain = "50"
Inst8Quest17_HORDE_Aim = "Slay Gizrul the Slavener "..YELLOW.."[17]"..WHITE.." in Blackrock Spire, then report to Raider Fargosh in Karfang Hold."
Inst8Quest17_HORDE_Location = "Raider Fargosh (Burning Steppes - Karfang Hold; "..YELLOW.."dont have any clue where it is, turtle wow database shows north-east corner of Burning Steppes 95.1,22.8"..WHITE..")"
Inst8Quest17_HORDE_Note = "Gizrul the Slavener appears after you kill boss Halycon "..YELLOW.."[17]"..WHITE.."."
Inst8Quest17_HORDE_Prequest = "Raider's Revenge -> Raider's New Mount" --40496, 40497
Inst8Quest17_HORDE_Folgequest = "No"
Inst8Quest17name1_HORDE = "Worg Rider Sash" --60717
Inst8Quest17name2_HORDE = "Sootwalker Sandals" --60718
Inst8Quest17name3_HORDE = "Axe of Fargosh" --60719

--Quest 18 Horde
Inst8Quest18_HORDE = "(TW)18. The Final Crack" -- 40498
Inst8Quest18_HORDE_Level = "59"
Inst8Quest18_HORDE_Attain = "50"
Inst8Quest18_HORDE_Aim = "Slay Quartermaster Zigris "..YELLOW.."[16]"..WHITE.." deep in the Blackrock Spire for Karfang at Karfang Hold in Burning Steppes."
Inst8Quest18_HORDE_Location = "Karfang (Burning Steppes - Karfang Hold; "..YELLOW.."dont have any clue where it is, turtle wow database shows north-east corner of Burning Steppes 95.1,22.8"..WHITE..")"
Inst8Quest18_HORDE_Note = ""
Inst8Quest18_HORDE_Prequest = "Protecting Fresh Blood -> Report to Molk -> Destroy All Traces... -> Take No Chances" --40505, 40506, 40507, 40508
Inst8Quest18_HORDE_Folgequest = "No"
Inst8Quest18name1_HORDE = "Tarnished Lancelot Ring" --60739

--------------- INST9 - Upper Blackrock Spire (UBRS) ---------------
Inst9Story = "The mighty fortress carved within the fiery bowels of Blackrock Mountain was designed by the master dwarf-mason, Franclorn Forgewright. Intended to be the symbol of Dark Iron power, the fortress was held by the sinister dwarves for centuries. However, Nefarian - the cunning son of the dragon, Deathwing - had other plans for the great keep. He and his draconic minions took control of the upper Spire and made war on the dwarves' holdings in the mountain's volcanic depths. Realizing that the dwarves were led by the mighty fire elemental, Ragnaros - Nefarian vowed to crush his enemies and claim the whole of Blackrock mountain for himself."
Inst9Caption = "Upper Blackrock Spire"
Inst9QAA = "12 Quests 1TW"
Inst9QAH = "13 Quests 1TW"

--Quest 1 Alliance
Inst9Quest1 = "1. The Matron Protectorate" -- 5160
Inst9Quest1_Level = "60"
Inst9Quest1_Attain = "57"
Inst9Quest1_Aim = "Travel to Winterspring and find Haleh. Give her Awbee's scale."
Inst9Quest1_Location = "Awbee (Blackrock Spire; "..YELLOW.."[7]"..WHITE..")"
Inst9Quest1_Note = "You find Awbee in the room after the Arena at "..YELLOW.."[7]"..WHITE..". She stands on a jutty.\nHaleh is in Winterspring ("..YELLOW.."54,51"..WHITE.."). Use the portal-sign in the end of the cave to get to her."
Inst9Quest1_Prequest = "No"
Inst9Quest1_Folgequest = "Wrath of the Blue Flight" -- 5161
-- No Rewards for this quest

--Quest 2 Alliance
Inst9Quest2 = "2. Finkle Einhorn, At Your Service!" -- 5047
Inst9Quest2_Level = "60"
Inst9Quest2_Attain = "55"
Inst9Quest2_Aim = "Talk to Malyfous Darkhammer in Everlook."
Inst9Quest2_Location = "Finkle Einhorn (Blackrock Spire; "..YELLOW.."[8]"..WHITE..")"
Inst9Quest2_Note = "Finkle Einhorn spawns after skinning The Beast. You find Malyfous at (Winterspring - Everlook; "..YELLOW.."61,38"..WHITE..")."
Inst9Quest2_Prequest = "No"
Inst9Quest2_Folgequest = "Leggings of Arcana, Cap of the Scarlet Savant, Breastplate of Bloodthirst and Shoulderguards of the Lightbringer" -- 5063, 5067, 5068, 40299
-- No Rewards for this quest

--Quest 3 Alliance
Inst9Quest3 = "3. Egg Freezing" -- 4734
Inst9Quest3_Level = "60"
Inst9Quest3_Attain = "57"
Inst9Quest3_Aim = "Use the Eggscilloscope Prototype on an egg in the Rookery."
Inst9Quest3_Location = "Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65,24"..WHITE..")"
Inst9Quest3_Note = "You find the eggs in the room of Father Flame at "..YELLOW.."[2]"..WHITE.."."
Inst9Quest3_Prequest = "Broodling Essence -> Tinkee Steamboil" -- 4726 -> 4907
Inst9Quest3_Folgequest = "Egg Collection -> Leonid Barthalomew -> Dawn's Gambit ("..YELLOW.."Scholomance"..WHITE..")" -- 4735 and 5522 -> 4771
-- No Rewards for this quest

--Quest 4 Alliance
Inst9Quest4 = "4. Eye of the Emberseer" -- 6821
Inst9Quest4_Level = "60"
Inst9Quest4_Attain = "56"
Inst9Quest4_Aim = "Bring the Eye of the Emberseer to Duke Hydraxis in Azshara."
Inst9Quest4_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst9Quest4_Note = "You can find Pyroguard Emberseer at "..YELLOW.."[1]"..WHITE.."."
Inst9Quest4_Prequest = "Poisoned Water, Stormers and Rumblers" -- 6804, 6805
Inst9Quest4_Folgequest = "The Molten Core" -- 6822
-- No Rewards for this quest

--Quest 5 Alliance
Inst9Quest5 = "5. General Drakkisath's Demise" -- 5102
Inst9Quest5_Level = "60"
Inst9Quest5_Attain = "55"
Inst9Quest5_Aim = "Travel to Blackrock Spire and destroy General Drakkisath. Return to Marshal Maxwell when the job is done."
Inst9Quest5_Location = "Marshal Maxwell (Burning Steppes - Morgan's Vigil; "..YELLOW.."82,68"..WHITE..")"
Inst9Quest5_Note = "You find General Drakkisath at "..YELLOW.."[9]"..WHITE.."."
Inst9Quest5_Prequest = "General Drakkisath's Command ("..YELLOW.."Lower Blackrock Spire"..WHITE..")" -- 5089
Inst9Quest5_Folgequest = "No"
Inst9Quest5name1 = "Mark of Tyranny"
Inst9Quest5name2 = "Eye of the Beast"
Inst9Quest5name3 = "Blackhand's Breadth"

--Quest 6 Alliance
Inst9Quest6 = "6. Doomrigger's Clasp" -- 4764
Inst9Quest6_Level = "60"
Inst9Quest6_Attain = "57"
Inst9Quest6_Aim = "Bring Doomrigger's Clasp to Mayara Brightwing in the Burning Steppes."
Inst9Quest6_Location = "Mayara Brightwing (Burning Steppes - Morgan's Vigil; "..YELLOW.."84,69"..WHITE..")"
Inst9Quest6_Note = "You get the prequest from Count Remington Ridgewell (Stormwind - Stormwind Keep; "..YELLOW.."74,30"..WHITE..").\n\nDoomrigger's Clasp is at "..YELLOW.."[3]"..WHITE.." in a chest."
Inst9Quest6_Prequest = "Mayara Brightwing" -- 4766
Inst9Quest6_Folgequest = "Delivery to Ridgewell" -- 4765
Inst9Quest6name1 = "Swiftfoot Treads"
Inst9Quest6name2 = "Blinkstrike Armguards"

--Quest 7 Alliance
Inst9Quest7 = "7. Drakefire Amulet" -- 6502
Inst9Quest7_Level = "60"
Inst9Quest7_Attain = "50"
Inst9Quest7_Aim = "You must retrieve the Blood of the Black Dragon Champion from General Drakkisath. Drakkisath can be found in his throne room behind the Halls of Ascension in Blackrock Spire."
Inst9Quest7_Location = "Haleh (Winterspring; "..YELLOW.."54,51"..WHITE..")"
Inst9Quest7_Note = "Last part of the Onyxia quest chain for the Alliance. You find General Drakkisath at "..YELLOW.."[9]"..WHITE.."."
Inst9Quest7_Prequest = "The Dragon's Eye" -- 6501
Inst9Quest7_Folgequest = "No"
Inst9Quest7name1 = "Drakefire Amulet"

--Quest 8 Alliance
Inst9Quest8 = "8. Blackhand's Command" -- 7761
Inst9Quest8_Level = "60"
Inst9Quest8_Attain = "55"
Inst9Quest8_Aim = "The letter indicates that General Drakkisath guards the brand. Perhaps you should investigate."
Inst9Quest8_Location = "Blackhand's Command (drops from Scarshield Quartermaster; "..YELLOW.."[7] on Entrance Map"..WHITE..")"
Inst9Quest8_Note = "Blackwing Lair attunement quest. Scarshield Quartermaster is found if you turn right before the LBRS/UBRS portal.\n\nGeneral Drakkisath is at "..YELLOW.."[9]"..WHITE..". The brand is behind him."
Inst9Quest8_Prequest = "No"
Inst9Quest8_Folgequest = "No"
-- No Rewards for this quest

--Quest 9 Alliance
Inst9Quest9 = "9. Final Preparations" -- 8994
Inst9Quest9_Level = "60"
Inst9Quest9_Attain = "58"
Inst9Quest9_Aim = "Gather 40 Blackrock Bracers and acquire a Flask of Supreme Power. Return them to Bodley inside Blackrock Mountain."
Inst9Quest9_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst9Quest9_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest. Blackrock Bracers drop off mobs with Blackhand in the name. Flask of Supreme Power is made by an Alchemist."
Inst9Quest9_Prequest = "The Right Piece of Lord Valthalak's Amulet ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 8989
Inst9Quest9_Folgequest = "Mea Culpa, Lord Valthalak" -- 8995
-- No Rewards for this quest

--Quest 10 Alliance
Inst9Quest10 = "10. Mea Culpa, Lord Valthalak" -- 8995
Inst9Quest10_Level = "60"
Inst9Quest10_Attain = "58"
Inst9Quest10_Aim = "Use the Brazier of Beckoning to summon Lord Valthalak. Dispatch him, and use Lord Valthalak's Amulet on the corpse. Then, return Lord Valthalak's Amulet to the Spirit of Lord Valthalak."
Inst9Quest10_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst9Quest10_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest. Lord Valthalak is summoned at "..YELLOW.."[8]"..WHITE..". Rewards listed are for Return to Bodley."
Inst9Quest10_Prequest = "Final Preparations" -- 8994
Inst9Quest10_Folgequest = "Return to Bodley" -- 8996
Inst9Quest10name1 = "Brazier of Invocation"
Inst9Quest10name2 = "Brazier of Invocation: User's Manual"

--Quest 11 Alliance
Inst9Quest11 = "11. The Demon Forge" -- 5127
Inst9Quest11_Level = "60"
Inst9Quest11_Attain = "55"
Inst9Quest11_Aim = "Travel to Blackrock Spire and find Goraluk Anvilcrack. Slay him and then use the Blood Stained Pike upon his corpse. After his soul has been siphoned, the pike will be Soul Stained. You must also find the Unforged Rune Covered Breastplate. Return both the Soul Stained Pike and the Unforged Rune Covered Breastplate to Lorax in Winterspring."
Inst9Quest11_Location = "Lorax (Winterspring; "..YELLOW.."64,74"..WHITE..")"
Inst9Quest11_Note = "Blacksmith quest. Goraluk Anvilcrack is at "..YELLOW.."[5]"..WHITE.."."
Inst9Quest11_Prequest = "Lorax's Tale" --5126
Inst9Quest11_Folgequest = "No"
Inst9Quest11name1 = "Plans: Demon Forged Breastplate"
Inst9Quest11name2 = "Elixir of Demonslaying"
Inst9Quest11name3 = "Demon Kissed Sack"

--Quest 12 Alliance
Inst9Quest12 = "(TW)12. The Upper Binding I" -- 41011
Inst9Quest12_Level = "60"
Inst9Quest12_Attain = "55"
Inst9Quest12_Aim = "Gather a Dragonkin Charge from the Black Dragonkin(Solakar Flamewreath) "..YELLOW.."[2]"..WHITE.." within Blackrock Spire for Parnabus in Gilneas."
Inst9Quest12_Location = "Parnabus <Wandering Wizard> (Gilneas; "..YELLOW.."[22.9,74.4]"..WHITE..", very south of Gilneas City, west of river. inside of a lonely hose)."
Inst9Quest12_Note = "Highly recommend to take prequest 'The Binding of Xanthar' from Hanvar the Righteous (Deadwind Pass in the small church outside of Karazhan "..YELLOW.."[40.9,79.3]"..WHITE..").\nReward for the last quest of The Upper Binding quest chain will be quest item 'The Upper Binding of Xanthar' for quest 'The Binding of Xanthar'."
Inst9Quest12_Prequest = "The Binding of Xanthar" --41015
Inst9Quest12_Folgequest = "The Upper Binding II -> The Upper Binding III "..YELLOW.."[Dire Maul West]"..WHITE.." -> The Upper Binding IV" --41012, 41013, 41014
Inst9Quest12name1 = "The Upper Binding of Xanthar" -- 61696

--Quest 1 Horde (same as Quest 1 Alliance)
Inst9Quest1_HORDE = Inst9Quest1
Inst9Quest1_HORDE_Level = Inst9Quest1_Level
Inst9Quest1_HORDE_Attain = Inst9Quest1_Attain
Inst9Quest1_HORDE_Aim = Inst9Quest1_Aim
Inst9Quest1_HORDE_Location = Inst9Quest1_Location
Inst9Quest1_HORDE_Note = Inst9Quest1_Note
Inst9Quest1_HORDE_Prequest = Inst9Quest1_Prequest
Inst9Quest1_HORDE_Folgequest = Inst9Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst9Quest2_HORDE = Inst9Quest2
Inst9Quest2_HORDE_Level = Inst9Quest2_Level
Inst9Quest2_HORDE_Attain = Inst9Quest2_Attain
Inst9Quest2_HORDE_Aim = Inst9Quest2_Aim
Inst9Quest2_HORDE_Location = Inst9Quest2_Location
Inst9Quest2_HORDE_Note = Inst9Quest2_Note
Inst9Quest2_HORDE_Prequest = Inst9Quest2_Prequest
Inst9Quest2_HORDE_Folgequest = Inst9Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst9Quest3_HORDE = Inst9Quest3
Inst9Quest3_HORDE_Level = Inst9Quest3_Level
Inst9Quest3_HORDE_Attain = Inst9Quest3_Attain
Inst9Quest3_HORDE_Aim = Inst9Quest3_Aim
Inst9Quest3_HORDE_Location = Inst9Quest3_Location
Inst9Quest3_HORDE_Note = Inst9Quest3_Note
Inst9Quest3_HORDE_Prequest = Inst9Quest3_Prequest
Inst9Quest3_HORDE_Folgequest = Inst9Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst9Quest4_HORDE = Inst9Quest4
Inst9Quest4_HORDE_Level = Inst9Quest4_Level
Inst9Quest4_HORDE_Attain = Inst9Quest4_Attain
Inst9Quest4_HORDE_Aim = Inst9Quest4_Aim
Inst9Quest4_HORDE_Location = Inst9Quest4_Location
Inst9Quest4_HORDE_Note = Inst9Quest4_Note
Inst9Quest4_HORDE_Prequest = Inst9Quest4_Prequest
Inst9Quest4_HORDE_Folgequest = Inst9Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst9Quest5_HORDE = "5. The Darkstone Tablet" -- 4768
Inst9Quest5_HORDE_Level = "60"
Inst9Quest5_HORDE_Attain = "57"
Inst9Quest5_HORDE_Aim = "Bring the Darkstone Tablet to Shadow Mage Vivian Lagrave in Kargath."
Inst9Quest5_HORDE_Location = "Shadowmage Vivian Lagrave (Badlands - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst9Quest5_HORDE_Note = "You get the prequest from Apothecary Zinge in Undercity - The Apothecarium ("..YELLOW.."50,68"..WHITE..").\n\nThe Darkstone Tablet is at "..YELLOW.."[3]"..WHITE.." in a chest."
Inst9Quest5_HORDE_Prequest = "Vivian Lagrave and the Darkstone Tablet" -- 4769
Inst9Quest5_HORDE_Folgequest = "No"
Inst9Quest5name1_HORDE = "Swiftfoot Treads"
Inst9Quest5name2_HORDE = "Blinkstrike Armguards"

--Quest 6 Horde
Inst9Quest6_HORDE = "6. For The Horde!" -- 4974
Inst9Quest6_HORDE_Level = "60"
Inst9Quest6_HORDE_Attain = "55"
Inst9Quest6_HORDE_Aim = "Travel to Blackrock Spire and slay Warchief Rend Blackhand. Take his head and return to Orgrimmar."
Inst9Quest6_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,38"..WHITE..")"
Inst9Quest6_HORDE_Note = "Onyxia attunement quest. You find Warchief Rend Blackhand at "..YELLOW.."[6]"..WHITE.."."
Inst9Quest6_HORDE_Prequest = "Warlord's Command -> Eitrigg's Wisdom" -- 4903 -> 4941
Inst9Quest6_HORDE_Folgequest = "What the Wind Carries" -- 6566
Inst9Quest6name1_HORDE = "Mark of Tyranny"
Inst9Quest6name2_HORDE = "Eye of the Beast"
Inst9Quest6name3_HORDE = "Blackhand's Breadth"

--Quest 7 Horde
Inst9Quest7_HORDE = "7. Oculus Illusions" -- 6569
Inst9Quest7_HORDE_Level = "60"
Inst9Quest7_HORDE_Attain = "55"
Inst9Quest7_HORDE_Aim = "Travel to Blackrock Spire and collect 20 Black Dragonspawn Eyes. Return to Myranda the Hag when the task is complete."
Inst9Quest7_HORDE_Location = "Myranda the Hag (Western Plaguelands; "..YELLOW.."50,77"..WHITE..")"
Inst9Quest7_HORDE_Note = "Dragonkin drop the eyes."
Inst9Quest7_HORDE_Prequest = "For The Horde! -> What the Wind Carries -> The Testament of Rexxar" -- 6566 -> 6568
Inst9Quest7_HORDE_Folgequest = "Emberstrife" -- 6570
-- No Rewards for this quest

--Quest 8 Horde
Inst9Quest8_HORDE = "8. Blood of the Black Dragon Champion" -- 6602
Inst9Quest8_HORDE_Level = "60"
Inst9Quest8_HORDE_Attain = "55"
Inst9Quest8_HORDE_Aim = "Travel to Blackrock Spire and slay General Drakkisath. Gather his blood and return it to Rexxar."
Inst9Quest8_HORDE_Location = "Rexxar (Desolace - Shadowprey Village; "..YELLOW.."25,71"..WHITE..")"
Inst9Quest8_HORDE_Note = "Last part of the Onyxia prequest. You find General Drakkisath at "..YELLOW.."[9]"..WHITE.."."
Inst9Quest8_HORDE_Prequest = "Emberstrife -> Ascension..." -- 6570 -> 6601
Inst9Quest8_HORDE_Folgequest = "No"
Inst9Quest8name1_HORDE = "Drakefire Amulet"

--Quest 9 Horde (same as Quest 8 Alliance)
Inst9Quest9_HORDE = "9. Blackhand's Command"
Inst9Quest9_HORDE_Level = Inst9Quest8_Level
Inst9Quest9_HORDE_Attain = Inst9Quest8_Attain
Inst9Quest9_HORDE_Aim = Inst9Quest8_Aim
Inst9Quest9_HORDE_Location = Inst9Quest8_Location
Inst9Quest9_HORDE_Note = Inst9Quest8_Note
Inst9Quest9_HORDE_Prequest = Inst9Quest8_Prequest
Inst9Quest9_HORDE_Folgequest = Inst9Quest8_Folgequest
-- No Rewards for this quest

--Quest 10 Horde (same as Quest 9 Alliance)
Inst9Quest10_HORDE = "10. Final Preparations"
Inst9Quest10_HORDE_Level = Inst9Quest9_Level
Inst9Quest10_HORDE_Attain = Inst9Quest9_Attain
Inst9Quest10_HORDE_Aim = Inst9Quest9_Aim
Inst9Quest10_HORDE_Location = Inst9Quest9_Location
Inst9Quest10_HORDE_Note = Inst9Quest9_Note
Inst9Quest10_HORDE_Prequest = Inst9Quest9_Prequest
Inst9Quest10_HORDE_Folgequest = Inst9Quest9_Folgequest
-- No Rewards for this quest

--Quest 11 Horde (same as Quest 10 Alliance)
Inst9Quest11_HORDE = "11. Mea Culpa, Lord Valthalak"
Inst9Quest11_HORDE_Level = Inst9Quest10_Level
Inst9Quest11_HORDE_Attain = Inst9Quest10_Attain
Inst9Quest11_HORDE_Aim = Inst9Quest10_Aim
Inst9Quest11_HORDE_Location = Inst9Quest10_Location
Inst9Quest11_HORDE_Note = Inst9Quest10_Note
Inst9Quest11_HORDE_Prequest = Inst9Quest10_Prequest
Inst9Quest11_HORDE_Folgequest = Inst9Quest10_Folgequest
Inst9Quest11name1_HORDE = Inst9Quest10name1
Inst9Quest11name2_HORDE = Inst9Quest10name2

--Quest 12 Horde (same as Quest 11 Alliance)
Inst9Quest12_HORDE = "12. The Demon Forge"
Inst9Quest12_HORDE_Level = Inst9Quest11_Level
Inst9Quest12_HORDE_Attain = Inst9Quest11_Attain
Inst9Quest12_HORDE_Aim = Inst9Quest11_Aim
Inst9Quest12_HORDE_Location = Inst9Quest11_Location
Inst9Quest12_HORDE_Note = Inst9Quest11_Note
Inst9Quest12_HORDE_Prequest = Inst9Quest11_Prequest
Inst9Quest12_HORDE_Folgequest = Inst9Quest11_Folgequest
Inst9Quest12name1_HORDE = Inst9Quest11name1
Inst9Quest12name2_HORDE = Inst9Quest11name2
Inst9Quest12name3_HORDE = Inst9Quest11name3

--Quest 13 Horde (same as Quest 10 Alliance)
Inst9Quest13_HORDE = "(TW)13. The Upper Binding I"
Inst9Quest13_HORDE_Level = Inst9Quest12_Level
Inst9Quest13_HORDE_Attain = Inst9Quest12_Attain
Inst9Quest13_HORDE_Aim = Inst9Quest12_Aim
Inst9Quest13_HORDE_Location = Inst9Quest12_Location
Inst9Quest13_HORDE_Note = Inst9Quest12_Note
Inst9Quest13_HORDE_Prequest = Inst9Quest12_Prequest
Inst9Quest13_HORDE_Folgequest = Inst9Quest12_Folgequest
Inst9Quest13name1_HORDE = Inst9Quest12name1



--------------- INST10 - Dire Maul East (DM) ---------------
Inst10Story = "Built twelve thousand years ago by a covert sect of night elf sorcerers, the ancient city of Eldre'Thalas was used to protect Queen Azshara's most prized arcane secrets. Though it was ravaged by the Great Sundering of the world, much of the wondrous city still stands as the imposing Dire Maul. The ruins' three distinct districts have been overrun by all manner of creatures - especially the spectral highborne, foul satyr and brutish ogres. Only the most daring party of adventurers can enter this broken city and face the ancient evils locked within its ancient vaults."
Inst10Caption = "Dire Maul (East)"
Inst10QAA = "7 Quests 1TW"
Inst10QAH = "7 Quests 1TW"

--Quest 1 Alliance
Inst10Quest1 = "1. Pusillin and the Elder Azj'Tordin" -- 7441
Inst10Quest1_Level = "58"
Inst10Quest1_Attain = "54"
Inst10Quest1_Aim = "Travel to Dire Maul and locate the Imp, Pusillin. Convince Pusillin to give you Azj'Tordin's Book of Incantations through any means necessary.\nReturn to Azj'Tordin at the Lariss Pavilion in Feralas should you recover the Book of Incantations."
Inst10Quest1_Location = "Azj'Tordin (Feralas - Lariss Pavillion; "..YELLOW.."76,37"..WHITE..")"
Inst10Quest1_Note = "Pusillin is in Dire Maul "..YELLOW.."East"..WHITE.." at "..YELLOW.."[1]"..WHITE..". He runs when you talk to him, but stops and fights at "..YELLOW.."[2]"..WHITE..". He'll drop the Crescent Key which is used for Dire Maul North and West."
Inst10Quest1_Prequest = "No"
Inst10Quest1_Folgequest = "No"
Inst10Quest1name1 = "Spry Boots"
Inst10Quest1name2 = "Sprinter's Sword"

--Quest 2 Alliance
Inst10Quest2 = "2. Lethtendris's Web" -- 7488
Inst10Quest2_Level = "57"
Inst10Quest2_Attain = "54"
Inst10Quest2_Aim = "Bring Lethtendris' Web to Latronicus Moonspear at the Feathermoon Stronghold in Feralas."
Inst10Quest2_Location = "Latronicus Moonspear (Feralas - Feathermoon Stronghold; "..YELLOW.."30,46"..WHITE..")"
Inst10Quest2_Note = "Lethtendris is in Dire Maul "..YELLOW.."East"..WHITE.." at "..YELLOW.."[3]"..WHITE..". The prequest comes from Courier Hammerfall in Ironforge. He roams the entire city."
Inst10Quest2_Prequest = "Feathermoon Stronghold" -- 7494
Inst10Quest2_Folgequest = "No"
Inst10Quest2name1 = "Lorespinner"

--Quest 3 Alliance
Inst10Quest3 = "3. Shards of the Felvine" -- 5526
Inst10Quest3_Level = "60"
Inst10Quest3_Attain = "56"
Inst10Quest3_Aim = "Find the Felvine in Dire Maul and acquire a shard from it. Chances are you'll only be able to procure one with the demise of Alzzin the Wildshaper. Use the Reliquary of Purity to securely seal the shard inside, and return it to Rabine Saturna in Nighthaven, Moonglade."
Inst10Quest3_Location = "Rabine Saturna (Moonglade - Nighthaven; "..YELLOW.."51,44"..WHITE..")"
Inst10Quest3_Note = "You find Alliz the Wildshaper in the "..YELLOW.."East"..WHITE.." part of Dire Maul at "..YELLOW.."[5]"..WHITE..". The relict is in Silithius at "..YELLOW.."62,54"..WHITE..". The prequest comes from Rabine Saturna as well."
Inst10Quest3_Prequest = "A Reliquary of Purity" -- 5527
Inst10Quest3_Folgequest = "No"
Inst10Quest3name1 = "Milli's Shield"
Inst10Quest3name2 = "Milli's Lexicon"

--Quest 4 Alliance
Inst10Quest4 = "4. The Left Piece of Lord Valthalak's Amulet" -- 8967
Inst10Quest4_Level = "60"
Inst10Quest4_Attain = "58"
Inst10Quest4_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay her. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst10Quest4_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst10Quest4_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nIsalien is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst10Quest4_Prequest = "Components of Importance" -- 8963
Inst10Quest4_Folgequest = "I See Alcaz Island In Your Future..." -- 8970
-- No Rewards for this quest

--Quest 5 Alliance
Inst10Quest5 = "5. The Right Piece of Lord Valthalak's Amulet" -- 8990
Inst10Quest5_Level = "60"
Inst10Quest5_Attain = "58"
Inst10Quest5_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Isalien and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst10Quest5_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst10Quest5_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nIsalien is summoned at "..YELLOW.."[5]"..WHITE.."."
Inst10Quest5_Prequest = "More Components of Importance" -- 8985
Inst10Quest5_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 6 Alliance
Inst10Quest6 = "6. The Prison's Bindings" -- 7581
Inst10Quest6_Level = "60"
Inst10Quest6_Attain = "60"
Inst10Quest6_Aim = "Travel to Dire Maul in Feralas and recover 15 Satyr Blood from the Wildspawn Satyr that inhabit the Warpwood Quarter. Return to Daio in the Tainted Scar when this is done."
Inst10Quest6_Location = "Daio the Decrepit (Blasted Lands - The Tainted Scar; "..YELLOW.."34,50"..WHITE..")"
Inst10Quest6_Note = WARLOCK.."(Warlock only)"..WHITE.." This along with another quest given by Daio the Decrepit are Warlock only quests for the Ritual of Doom spell. The easiest way to get to the Wildspawn Satyr is to enter Dire Maul East through the 'back door' at the Lariss Pavilion (Feralas; "..YELLOW.."77,37"..WHITE.."). You'll need the Crescent Key, however."
Inst10Quest6_Prequest = "No"
Inst10Quest6_Folgequest = "No"
-- No Rewards for this quest

--Quest 7 Alliance
Inst10Quest7 = "(TW)7. The Wildshaper" -- 41016
Inst10Quest7_Level = "60"
Inst10Quest7_Attain = "55"
Inst10Quest7_Aim = "Bring the Head of Alzzin the Wildshaper for Arch Druid Dreamwind at Nordanaar in Hyjal."
Inst10Quest7_Location = "Arch Druid Dreamwind (Hyjal - Nordanaar; "..YELLOW.."84.8,29.3"..WHITE.." top floor of the big tree)"
Inst10Quest7_Note = "You find Alliz the Wildshaper at "..YELLOW.."[5]"..WHITE.."."
Inst10Quest7_Prequest = "No"
Inst10Quest7_Folgequest = "No"
Inst10Quest7name1 = "Bright Dream Shard" -- 61199
Inst10Quest7name2 = "Talisman of the Dreamshaper" -- 61703


--Quest 1 Horde (same as Quest 1 Alliance)
Inst10Quest1_HORDE = Inst10Quest1
Inst10Quest1_HORDE_Level = Inst10Quest1_Level
Inst10Quest1_HORDE_Attain = Inst10Quest1_Attain
Inst10Quest1_HORDE_Aim = Inst10Quest1_Aim
Inst10Quest1_HORDE_Location = Inst10Quest1_Location
Inst10Quest1_HORDE_Note = Inst10Quest1_Note
Inst10Quest1_HORDE_Prequest = Inst10Quest1_Prequest
Inst10Quest1_HORDE_Folgequest = Inst10Quest1_Folgequest
Inst10Quest1name1_HORDE = Inst10Quest1name1
Inst10Quest1name2_HORDE = Inst10Quest1name2

--Quest 2 Horde
Inst10Quest2_HORDE = "2. Lethtendris's Web" -- 7489
Inst10Quest2_HORDE_Level = "57"
Inst10Quest2_HORDE_Attain = "54"
Inst10Quest2_HORDE_Aim = "Bring Lethtendris's Web to Talo Thornhoof at Camp Mojache in Feralas."
Inst10Quest2_HORDE_Location = "Talo Thornhoof (Feralas - Camp Mojache; "..YELLOW.."76,43"..WHITE..")"
Inst10Quest2_HORDE_Note = "Lethtendris is in Dire Maul "..YELLOW.."East"..WHITE.." at "..YELLOW.."[3]"..WHITE..". The prequest comes from Warcaller Gorlach in Orgrimmar. He roams the entire city."
Inst10Quest2_HORDE_Prequest = "Camp Mojache" -- 7492
Inst10Quest2_HORDE_Folgequest = "No"
Inst10Quest2name1_HORDE = "Lorespinner"

--Quest 3 Horde (same as Quest 3 Alliance)
Inst10Quest3_HORDE = Inst10Quest3
Inst10Quest3_HORDE_Level = Inst10Quest3_Level
Inst10Quest3_HORDE_Attain = Inst10Quest3_Attain
Inst10Quest3_HORDE_Aim = Inst10Quest3_Aim
Inst10Quest3_HORDE_Location = Inst10Quest3_Location
Inst10Quest3_HORDE_Note = Inst10Quest3_Note
Inst10Quest3_HORDE_Prequest = Inst10Quest3_Prequest
Inst10Quest3_HORDE_Folgequest = Inst10Quest3_Folgequest
Inst10Quest3name1_HORDE = Inst10Quest3name1
Inst10Quest3name2_HORDE = Inst10Quest3name2

--Quest 4 Horde (same as Quest 4 Alliance)
Inst10Quest4_HORDE = Inst10Quest4
Inst10Quest4_HORDE_Level = Inst10Quest4_Level
Inst10Quest4_HORDE_Attain = Inst10Quest4_Attain
Inst10Quest4_HORDE_Aim = Inst10Quest4_Aim
Inst10Quest4_HORDE_Location = Inst10Quest4_Location
Inst10Quest4_HORDE_Note = Inst10Quest4_Note
Inst10Quest4_HORDE_Prequest = Inst10Quest4_Prequest
Inst10Quest4_HORDE_Folgequest = Inst10Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst10Quest5_HORDE = Inst10Quest5
Inst10Quest5_HORDE_Level = Inst10Quest5_Level
Inst10Quest5_HORDE_Attain = Inst10Quest5_Attain
Inst10Quest5_HORDE_Aim = Inst10Quest5_Aim
Inst10Quest5_HORDE_Location = Inst10Quest5_Location
Inst10Quest5_HORDE_Note = Inst10Quest5_Note
Inst10Quest5_HORDE_Prequest = Inst10Quest5_Prequest
Inst10Quest5_HORDE_Folgequest = Inst10Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst10Quest6_HORDE = Inst10Quest6
Inst10Quest6_HORDE_Level = Inst10Quest6_Level
Inst10Quest6_HORDE_Attain = Inst10Quest6_Attain
Inst10Quest6_HORDE_Aim = Inst10Quest6_Aim
Inst10Quest6_HORDE_Location = Inst10Quest6_Location
Inst10Quest6_HORDE_Note = Inst10Quest6_Note
Inst10Quest6_HORDE_Prequest = Inst10Quest6_Prequest
Inst10Quest6_HORDE_Folgequest = Inst10Quest6_Folgequest
-- No Rewards for this quest

--Quest 7 Horde (same as Quest 7 Alliance)
Inst10Quest7_HORDE = Inst10Quest7
Inst10Quest7_HORDE_Level = Inst10Quest7_Level
Inst10Quest7_HORDE_Attain = Inst10Quest7_Attain
Inst10Quest7_HORDE_Aim = Inst10Quest7_Aim
Inst10Quest7_HORDE_Location = Inst10Quest7_Location
Inst10Quest7_HORDE_Note = Inst10Quest7_Note
Inst10Quest7_HORDE_Prequest = Inst10Quest7_Prequest
Inst10Quest7_HORDE_Folgequest = Inst10Quest7_Folgequest
Inst10Quest7name1_HORDE = Inst10Quest7name1
Inst10Quest7name2_HORDE = Inst10Quest7name2


--------------- INST11 - Dire Maul North (DM) ---------------
Inst11Story = Inst10Story
Inst11Caption = "Dire Maul (North)"
Inst11QAA = "4 Quests"
Inst11QAH = "4 Quests"

--Quest 1 Alliance
Inst11Quest1 = "1. A Broken Trap" -- 1193
Inst11Quest1_Level = "60"
Inst11Quest1_Attain = "56"
Inst11Quest1_Aim = "Repair the trap."
Inst11Quest1_Location = "A Broken Trap (Dire Maul; "..YELLOW.."North"..WHITE..")"
Inst11Quest1_Note = "Repeatable quest. To repair the trap you have to use a [Thorium Widget] and a [Frost Oil]."
Inst11Quest1_Prequest = "No"
Inst11Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst11Quest2 = "2. The Gordok Ogre Suit" -- 5518
Inst11Quest2_Level = "60"
Inst11Quest2_Attain = "56"
Inst11Quest2_Aim = "Bring 4 Bolts of Runecloth, 8 Rugged Leather, 2 Rune Threads, and Ogre Tannin to Knot Thimblejack. He is currently chained inside the Gordok wing of Dire Maul."
Inst11Quest2_Location = "Knot Thimblejack (Dire Maul; "..YELLOW.."North, [4]"..WHITE..")"
Inst11Quest2_Note = "Repeatable quest. You get the Ogre Tannin near "..YELLOW.."[4] (above)"..WHITE.."."
Inst11Quest2_Prequest = "No"
Inst11Quest2_Folgequest = "No"
Inst11Quest2name1 = "Gordok Ogre Suit"

--Quest 3 Alliance
Inst11Quest3 = "3. Free Knot!" -- 5525
Inst11Quest3_Level = "60"
Inst11Quest3_Attain = "57"
Inst11Quest3_Aim = "Collect a Gordok Shackle Key for Knot Thimblejack."
Inst11Quest3_Location = "Knot Thimblejack (Dire Maul; "..YELLOW.."North, [4]"..WHITE..")"
Inst11Quest3_Note = "Repeatable quest. Every warden can drop the key."
Inst11Quest3_Prequest = "No"
Inst11Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst11Quest4 = "4. Unfinished Gordok Business" -- 1318 or 7703 lol...
Inst11Quest4_Level = "60"
Inst11Quest4_Attain = "56"
Inst11Quest4_Aim = "Find the Gauntlet of Gordok Might and return it to Captain Kromcrush in Dire Maul.\nAccording to Kromcrush, the 'old timey story' says that Tortheldrin - a 'creepy' elf who called himself a prince - stole it from one of the Gordok kings."
Inst11Quest4_Location = "Captain Kromcrush (Dire Maul; "..YELLOW.."North, [5]"..WHITE..")"
Inst11Quest4_Note = "Prince is in Dire Maul "..YELLOW.."West"..WHITE.." at "..YELLOW.."[7]"..WHITE..". The Gauntlet is near him in a chest. You can only get this quest after a Tribute run and have the 'King of the Gordok' buff."
Inst11Quest4_Prequest = "No"
Inst11Quest4_Folgequest = "No"
Inst11Quest4name1 = "Gordok's Handwraps"
Inst11Quest4name2 = "Gordok's Gloves"
Inst11Quest4name3 = "Gordok's Gauntlets"
Inst11Quest4name4 = "Gordok's Handguards"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst11Quest1_HORDE = Inst11Quest1
Inst11Quest1_HORDE_Level = Inst11Quest1_Level
Inst11Quest1_HORDE_Attain = Inst11Quest1_Attain
Inst11Quest1_HORDE_Aim = Inst11Quest1_Aim
Inst11Quest1_HORDE_Location = Inst11Quest1_Location
Inst11Quest1_HORDE_Note = Inst11Quest1_Note
Inst11Quest1_HORDE_Prequest = Inst11Quest1_Prequest
Inst11Quest1_HORDE_Folgequest = Inst11Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst11Quest2_HORDE = Inst11Quest2
Inst11Quest2_HORDE_Level = Inst11Quest2_Level
Inst11Quest2_HORDE_Attain = Inst11Quest2_Attain
Inst11Quest2_HORDE_Aim = Inst11Quest2_Aim
Inst11Quest2_HORDE_Location = Inst11Quest2_Location
Inst11Quest2_HORDE_Note = Inst11Quest2_Note
Inst11Quest2_HORDE_Prequest = Inst11Quest2_Prequest
Inst11Quest2_HORDE_Folgequest = Inst11Quest2_Folgequest
Inst11Quest2name1_HORDE = Inst11Quest2name1

--Quest 3 Horde (same as Quest 3 Alliance)
Inst11Quest3_HORDE = Inst11Quest3
Inst11Quest3_HORDE_Level = Inst11Quest3_Level
Inst11Quest3_HORDE_Attain = Inst11Quest3_Attain
Inst11Quest3_HORDE_Aim = Inst11Quest3_Aim
Inst11Quest3_HORDE_Location = Inst11Quest3_Location
Inst11Quest3_HORDE_Note = Inst11Quest3_Note
Inst11Quest3_HORDE_Prequest = Inst11Quest3_Prequest
Inst11Quest3_HORDE_Folgequest = Inst11Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst11Quest4_HORDE = Inst11Quest4
Inst11Quest4_HORDE_Level = Inst11Quest4_Level
Inst11Quest4_HORDE_Attain = Inst11Quest4_Attain
Inst11Quest4_HORDE_Aim = Inst11Quest4_Aim
Inst11Quest4_HORDE_Location = Inst11Quest4_Location
Inst11Quest4_HORDE_Note = Inst11Quest4_Note
Inst11Quest4_HORDE_Prequest = Inst11Quest4_Prequest
Inst11Quest4_HORDE_Folgequest = Inst11Quest4_Folgequest
Inst11Quest4name1_HORDE = Inst11Quest4name1
Inst11Quest4name2_HORDE = Inst11Quest4name2
Inst11Quest4name3_HORDE = Inst11Quest4name3
Inst11Quest4name4_HORDE = Inst11Quest4name4



--------------- INST12 - Dire Maul West (DM) ---------------
Inst12Story = Inst10Story
Inst12Caption = "Dire Maul (West)"
Inst12QAA = "21 Quests 4TW"
Inst12QAH = "21 Quests 4TW"

--Quest 1 Alliance
Inst12Quest1 = "1. Elven Legends" -- 7482
Inst12Quest1_Level = "60"
Inst12Quest1_Attain = "54"
Inst12Quest1_Aim = "Search Dire Maul for Kariel Winthalus. Report back to Scholar Runethorn at Feathermoon with whatever information that you may find."
Inst12Quest1_Location = "Scholar Runethorn (Feralas - Feathermoon Stronghold; "..YELLOW.."31,43"..WHITE..")"
Inst12Quest1_Note = "You find Kariel Winthalus in the "..YELLOW.."Library (West)"..WHITE.."."
Inst12Quest1_Prequest = "No"
Inst12Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst12Quest2 = "2. The Madness Within" -- 7461
Inst12Quest2_Level = "60"
Inst12Quest2_Attain = "56"
Inst12Quest2_Aim = "You must destroy the guardians surrounding the 5 Pylons that power the Prison of Immol'thar. Once the Pylons have powered down, the force field surrounding Immol'thar will have dissipated.\nEnter the Prison of Immol'thar and eradicate the foul demon that stands at its heart. Finally, confront Prince Tortheldrin in Athenaeum."
Inst12Quest2_Location = "Shen'dralar Ancient (Dire Maul; "..YELLOW.."West, [1] (above)"..WHITE..")"
Inst12Quest2_Note = "The Pylons are marked as "..BLUE.."[B]"..WHITE..". Immol'thar is at "..YELLOW.."[6]"..WHITE..", Prince Tortheldrin at "..YELLOW.."[7]"..WHITE.."."
Inst12Quest2_Prequest = "No"
Inst12Quest2_Folgequest = "The Treasure of the Shen'dralar" -- 7877
-- No Rewards for this quest

--Quest 3 Alliance
Inst12Quest3 = "3. The Treasure of the Shen'dralar" -- 7462
Inst12Quest3_Level = "60"
Inst12Quest3_Attain = "56"
Inst12Quest3_Aim = "Return to the Athenaeum and find the Treasure of the Shen'dralar. Claim your reward!"
Inst12Quest3_Location = "Shen'dralar Ancient (Dire Maul; "..YELLOW.."West, [1]"..WHITE..")"
Inst12Quest3_Note = "You can find the Treasure under the stairs "..YELLOW.."[7]"..WHITE.."."
Inst12Quest3_Prequest = "The Madness Within" -- 7461
Inst12Quest3_Folgequest = "No"
Inst12Quest3name1 = "Sedge Boots"
Inst12Quest3name2 = "Backwood Helm"
Inst12Quest3name3 = "Bonecrusher"

--Quest 4 Alliance
Inst12Quest4 = "4. Dreadsteed of Xoroth" -- 7631
Inst12Quest4_Level = "60"
Inst12Quest4_Attain = "60"
Inst12Quest4_Aim = "Read Mor'zul's Instructions. Summon a Xorothian Dreadsteed, defeat it, then bind its spirit to you."
Inst12Quest4_Location = "Mor'zul Bloodbringer (Burning Steppes; "..YELLOW.."12,31"..WHITE..")"
Inst12Quest4_Note = WARLOCK.."(Warlock only)"..WHITE.." Final Quest in the Warlock Epic mount questline. First you must shut down all Pylons marked with "..BLUE.."[B]"..WHITE.." and then kill Immol'thar at "..YELLOW.."[6]"..WHITE..". After that, you can begin the Summoning Ritual. Be sure to have upwards of 20 Soul Shards ready and have one Warlock specifically assigned to keeping the Bell, Candle and Wheel up. The Doomguards that come can be enslaved. After completion, talk to the Dreadsteed ghost to complete the quest."
Inst12Quest4_Prequest = "Imp Delivery ("..YELLOW.."Scholomance"..WHITE..")" -- 7629
Inst12Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst12Quest5 = "5. The Emerald Dream..." -- 7506
Inst12Quest5_Level = "60"
Inst12Quest5_Attain = "54"
Inst12Quest5_Aim = "Return the book to its rightful owners."
Inst12Quest5_Location = "The Emerald Dream (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest5_Note = DRUID.."(Druid only)"..WHITE.." You turn the book in to Lorekeeper Javon at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest5_Prequest = "No"
Inst12Quest5_Folgequest = "No"
Inst12Quest5name1 = "Royal Seal of Eldre'Thalas"

--Quest 6 Alliance
Inst12Quest6 = "6. The Greatest Race of Hunters" -- 7503
Inst12Quest6_Level = "60"
Inst12Quest6_Attain = "54"
Inst12Quest6_Aim = "Return the book to its rightful owners."
Inst12Quest6_Location = "The Greatest Race of Hunters (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest6_Note = HUNTER.."(Hunter only)"..WHITE.." You turn the book in to Lorekeeper Mykos at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest6_Prequest = "No"
Inst12Quest6_Folgequest = "No"
Inst12Quest6name1 = "Royal Seal of Eldre'Thalas"

--Quest 7 Alliance
Inst12Quest7 = "7. The Arcanist's Cookbook" -- 7500
Inst12Quest7_Level = "60"
Inst12Quest7_Attain = "54"
Inst12Quest7_Aim = "Return the book to its rightful owners."
Inst12Quest7_Location = "The Arcanist's Cookbook (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest7_Note = MAGE.."(Mage only)"..WHITE.." You turn the book in to Lorekeeper Kildrath at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest7_Prequest = "No"
Inst12Quest7_Folgequest = "No"
Inst12Quest7name1 = "Royal Seal of Eldre'Thalas"

--Quest 8 Alliance
Inst12Quest8 = "8. The Light and How To Swing It" -- 7501
Inst12Quest8_Level = "60"
Inst12Quest8_Attain = "54"
Inst12Quest8_Aim = "Return the book to its rightful owners."
Inst12Quest8_Location = "The Light and How To Swing It (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest8_Note = PALADIN.."(Paladin only)"..WHITE.." You turn the book in to Lorekeeper Mykos at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest8_Prequest = "No"
Inst12Quest8_Folgequest = "No"
Inst12Quest8name1 = "Royal Seal of Eldre'Thalas"

--Quest 9 Alliance
Inst12Quest9 = "9. Holy Bologna: What the Light Won't Tell You" -- 7504
Inst12Quest9_Level = "60"
Inst12Quest9_Attain = "56"
Inst12Quest9_Aim = "Return the book to its rightful owners."
Inst12Quest9_Location = "Holy Bologna: What the Light Won't Tell You (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest9_Note = "(Priest only) You turn the book in to Lorekeeper Javon at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest9_Prequest = "No"
Inst12Quest9_Folgequest = "No"
Inst12Quest9name1 = "Royal Seal of Eldre'Thalas"

--Quest 10 Alliance
Inst12Quest10 = "10. Garona: A Study on Stealth and Treachery" -- 7498
Inst12Quest10_Level = "60"
Inst12Quest10_Attain = "54"
Inst12Quest10_Aim = "Return the book to its rightful owners."
Inst12Quest10_Location = "Garona: A Study on Stealth and Treachery (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest10_Note = ROGUE.."(Rogue only)"..WHITE.." You turn the book in to Lorekeeper Kildrath at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest10_Prequest = "No"
Inst12Quest10_Folgequest = "No"
Inst12Quest10name1 = "Royal Seal of Eldre'Thalas"

--Quest 11 Alliance
Inst12Quest11 = "11. Frost Shock and You" -- 7505
Inst12Quest11_Level = "60"
Inst12Quest11_Attain = "54"
Inst12Quest11_Aim = "Return the book to its rightful owners."
Inst12Quest11_Location = "Frost Shock and You (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest11_Note = SHAMAN.."(Shaman only)"..WHITE.." You turn the book in to Lorekeeper Javon at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest11_Prequest = "No"
Inst12Quest11_Folgequest = "No"
Inst12Quest11name1 = "Royal Seal of Eldre'Thalas"

--Quest 12 Alliance
Inst12Quest12 = "12. Harnessing Shadows" -- 7502
Inst12Quest12_Level = "60"
Inst12Quest12_Attain = "54"
Inst12Quest12_Aim = "Return the book to its rightful owners."
Inst12Quest12_Location = "Harnessing Shadows (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest12_Note = WARLOCK.."(Warlock only)"..WHITE.." You turn the book in to Lorekeeper Mykos at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest12_Prequest = "No"
Inst12Quest12_Folgequest = "No"
Inst12Quest12name1 = "Royal Seal of Eldre'Thalas"

--Quest 13 Alliance
Inst12Quest13 = "13. Codex of Defense" -- 7499
Inst12Quest13_Level = "60"
Inst12Quest13_Attain = "54"
Inst12Quest13_Aim = "Return the book to its rightful owners."
Inst12Quest13_Location = "Codex of Defense (randomly drops off bosses in all Dire Maul wings)"
Inst12Quest13_Note = WARRIOR.."(Warrior only)"..WHITE.." You turn the book in to Lorekeeper Kildrath at the "..YELLOW.."1' Library"..WHITE.."."
Inst12Quest13_Prequest = "No"
Inst12Quest13_Folgequest = "No"
Inst12Quest13name1 = "Royal Seal of Eldre'Thalas"

--Quest 14 Alliance
Inst12Quest14 = "14. Libram of Focus" -- 7484
Inst12Quest14_Level = "60"
Inst12Quest14_Attain = "58"
Inst12Quest14_Aim = "Bring a Libram of Focus, 1 Pristine Black Diamond, 4 Large Brilliant Shards, and 2 Skin of Shadow to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Focus."
Inst12Quest14_Location = "Lorekeeper Lydros (Dire Maul West; "..YELLOW.."[1'] Library"..WHITE..")"
Inst12Quest14_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House. Skin of Shadow is Soulbound and can drop off some bosses, Risen Constructs and Risen Bonewarder in "..YELLOW.."Scholomance"..WHITE.."."
Inst12Quest14_Prequest = "No"
Inst12Quest14_Folgequest = "No"
Inst12Quest14name1 = "Arcanum of Focus"

--Quest 15 Alliance
Inst12Quest15 = "15. Libram of Protection" -- 7485
Inst12Quest15_Level = "60"
Inst12Quest15_Attain = "58"
Inst12Quest15_Aim = "Bring a Libram of Protection, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 1 Frayed Abomination Stitching to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Protection."
Inst12Quest15_Location = "Lorekeeper Lydros (Dire Maul West; "..YELLOW.."[1'] Library"..WHITE..")"
Inst12Quest15_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House. Frayed Abomination Stitching is Soulbound and can drop off Ramstein the Gorger, Venom Belchers, Bile Spewer and Patchwork Horror in "..YELLOW.."Stratholme"..WHITE.."."
Inst12Quest15_Prequest = "No"
Inst12Quest15_Folgequest = "No"
Inst12Quest15name1 = "Arcanum of Protection"

--Quest 16 Alliance
Inst12Quest16 = "16. Libram of Rapidity" -- 7483
Inst12Quest16_Level = "60"
Inst12Quest16_Attain = "58"
Inst12Quest16_Aim = "Bring a Libram of Rapidity, 1 Pristine Black Diamond, 2 Large Brilliant Shards, and 2 Blood of Heroes to Lorekeeper Lydros in Dire Maul to receive an Arcanum of Rapidity."
Inst12Quest16_Location = "Lorekeeper Lydros (Dire Maul West; "..YELLOW.."[1'] Library"..WHITE..")"
Inst12Quest16_Note = "It's not a prequest, but Elven Legends must be completed before this quest can be started.\n\nThe Libram is a random drop in Dire Maul and is tradeable, so it may be found on the Auction House. Blood of Heroes is Soulbound and can be found on the ground in random places in the Western and Eastern Plaguelands."
Inst12Quest16_Prequest = "No"
Inst12Quest16_Folgequest = "No"
Inst12Quest16name1 = "Arcanum of Rapidity"

--Quest 17 Alliance
Inst12Quest17 = "17. Foror's Compendium" -- 7507
Inst12Quest17_Level = "60"
Inst12Quest17_Attain = "60"
Inst12Quest17_Aim = "Return Foror's Compendium of Dragon Slaying to the Athenaeum."
Inst12Quest17_Location = "Foror's Compendium of Dragon Slaying (random boss drop in "..YELLOW.."Dire Maul"..WHITE..")"
Inst12Quest17_Note = WARRIOR.."Warrior"..WHITE.." or "..PALADIN.."Paladin"..WHITE.." quest. It turns in to Lorekeeper Lydros at (Dire Maul West; "..YELLOW.."[1'] Library"..WHITE.."). Turning this in allows you to start the quest for Quel'Serrar."
Inst12Quest17_Prequest = "No"
Inst12Quest17_Folgequest = "The Forging of Quel'Serrar" -- 7508
-- No Rewards for this quest

--Quest 18 Alliance
Inst12Quest18 = "(TW)18. Keeping Secrets" -- 40254
Inst12Quest18_Level = "58"
Inst12Quest18_Attain = "45"
Inst12Quest18_Aim = "Travel to Dire Maul, and slay the great evil being that the Highborne are leeching energy upon, gather from it Pure Ley Essence, and return to Keeper Laena in Azshara."
Inst12Quest18_Location = "Keeper Laena (Azshara; "..YELLOW.."44,45.4"..WHITE..")"
Inst12Quest18_Note = "Immol'thar "..YELLOW.."[6]"..WHITE.." drops Pure Ley Essence.\nQuestline starts with quest 'The Keepers Charge' at Keeper Iselus "..YELLOW.."89,8,33.8"..WHITE.." Azshara, north-east coast corner."
Inst12Quest18_Prequest = "Restoring the Ley Lines" --40253
Inst12Quest18_Folgequest = "No"
Inst12Quest18name1 = "Azshara Keeper's Staff" --60333
Inst12Quest18name2 = "Ring of Eldara" --60334

--Quest 19 Alliance
Inst12Quest19 = "(TW)19. The Upper Binding III" -- 41013
Inst12Quest19_Level = "60"
Inst12Quest19_Attain = "55"
Inst12Quest19_Aim = "Gather a Supercharged Arcane Resonation from the arcane elementals of Dire Maul for Parnabus in Gilneas."
Inst12Quest19_Location = "Parnabus <Wandering Wizard> (Gilneas; "..YELLOW.."[22.9,74.4]"..WHITE..", very south of Gilneas City, west of river. inside of a lonely hose)."
Inst12Quest19_Note = "Highly recommend to take prequest 'The Binding of Xanthar' from Hanvar the Righteous (Deadwind Pass in the small church outside of Karazhan "..YELLOW.."[40.9,79.3]"..WHITE..").\nArcane Torrents in the circle around "..YELLOW.."[6]"..WHITE.." drop Supercharged Arcane Resonation."
Inst12Quest19_Prequest = "The Binding of Xanthar -> The Upper Binding I "..YELLOW.."[Upper Blackrock Spire]"..WHITE.." -> The Upper Binding II" --41015, 41011, 41012
Inst12Quest19_Folgequest = "The Upper Binding IV" --41014
Inst12Quest19name1 = "The Upper Binding of Xanthar" -- 61696

--Quest 20 Alliance
Inst12Quest20 = "(TW)20. The Key to Karazhan VIII" -- 40827
Inst12Quest20_Level = "60"
Inst12Quest20_Attain = "58"
Inst12Quest20_Aim = "Slay Immol'thar "..YELLOW.."[6]"..WHITE.." in Dire Maul West, retrieve Arcanized Gems from his skin, and return to Dolvan. "
Inst12Quest20_Location = "Dolvan Bracewind (Dustwallow Marsh - ; "..YELLOW.."[71.1,73.2]"..WHITE..")"
Inst12Quest20_Note = ""
Inst12Quest20_Prequest = "The Key to Karazhan I - VI -> The Key to Karazhan VII "..YELLOW.."[Stratholme]"..WHITE.." " --40817
Inst12Quest20_Folgequest = "The Key to Karazhan IX -> The Key to Karazhan X" --40828, 40829
-- No Rewards for this quest

--Quest 21 Alliance
Inst12Quest21 = "(TW)21. Into the Dream III" -- 40959
Inst12Quest21_Level = "60"
Inst12Quest21_Attain = "58"
Inst12Quest21_Aim = "Gather a Binding Fragment from Cliff Breakers in "..YELLOW.."[Azshara]"..WHITE..", Overloaded Arcane Prism from Arcane Torrents in "..YELLOW.."[Dire Maul West]"..WHITE..", Slumberer's Shard from Weaver in the "..YELLOW.."[Sunken Temple]"..WHITE.." and an Arcanite Rod. Report to Itharius in the Swamp of Sorrows with the collected items."
Inst12Quest21_Location = "Ralathius (Hyjal - Nordanaar; "..YELLOW.."[81.6,27.7]"..WHITE.." a green dragonkin)"
Inst12Quest21_Note = "Arcane Torrents in the circle around "..YELLOW.."[6]"..WHITE.." drop Overloaded Arcane Prism.\nFinishing this questline you get the necklace and you will be able to enter Hyjal raid instance Emerald Sanctum."
Inst12Quest21_Prequest = "Into the Dream I -> Into the Dream II" --40957, 40958
Inst12Quest21_Folgequest = "Into the Dream IV - VI" --40960, 40961, 40962
Inst12Quest21name1 = "Gemstone of Ysera" -- 50545


--Quest 1 Horde
Inst12Quest1_HORDE = "1. Elven Legends" -- 7481
Inst12Quest1_HORDE_Level = "60"
Inst12Quest1_HORDE_Attain = "54"
Inst12Quest1_HORDE_Aim = "Search Dire Maul for Kariel Winthalus. Report back to Sage Korolusk at Camp Mojache with whatever information that you may find."
Inst12Quest1_HORDE_Location = "Sage Korolusk (Feralas - Camp Mojache; "..YELLOW.."74,43"..WHITE..")"
Inst12Quest1_HORDE_Note = "You find Kariel Winthalus in the "..YELLOW.."Library (West)"..WHITE.."."
Inst12Quest1_HORDE_Prequest = "No"
Inst12Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst12Quest2_HORDE = Inst12Quest2
Inst12Quest2_HORDE_Level = Inst12Quest2_Level
Inst12Quest2_HORDE_Attain = Inst12Quest2_Attain
Inst12Quest2_HORDE_Aim = Inst12Quest2_Aim
Inst12Quest2_HORDE_Location = Inst12Quest2_Location
Inst12Quest2_HORDE_Note = Inst12Quest2_Note
Inst12Quest2_HORDE_Prequest = Inst12Quest2_Prequest
Inst12Quest2_HORDE_Folgequest = Inst12Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst12Quest3_HORDE = Inst12Quest3
Inst12Quest3_HORDE_Level = Inst12Quest3_Level
Inst12Quest3_HORDE_Attain = Inst12Quest3_Attain
Inst12Quest3_HORDE_Aim = Inst12Quest3_Aim
Inst12Quest3_HORDE_Location = Inst12Quest3_Location
Inst12Quest3_HORDE_Note = Inst12Quest3_Note
Inst12Quest3_HORDE_Prequest = Inst12Quest3_Prequest
Inst12Quest3_HORDE_Folgequest = Inst12Quest3_Folgequest
Inst12Quest3name1_HORDE = Inst12Quest3name1
Inst12Quest3name2_HORDE = Inst12Quest3name2
Inst12Quest3name3_HORDE = Inst12Quest3name3

--Quest 4 Horde (same as Quest 4 Alliance)
Inst12Quest4_HORDE = Inst12Quest4
Inst12Quest4_HORDE_Level = Inst12Quest4_Level
Inst12Quest4_HORDE_Attain = Inst12Quest4_Attain
Inst12Quest4_HORDE_Aim = Inst12Quest4_Aim
Inst12Quest4_HORDE_Location = Inst12Quest4_Location
Inst12Quest4_HORDE_Note = Inst12Quest4_Note
Inst12Quest4_HORDE_Prequest = Inst12Quest4_Prequest
Inst12Quest4_HORDE_Folgequest = Inst12Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst12Quest5_HORDE = Inst12Quest5
Inst12Quest5_HORDE_Level = Inst12Quest5_Level
Inst12Quest5_HORDE_Attain = Inst12Quest5_Attain
Inst12Quest5_HORDE_Aim = Inst12Quest5_Aim
Inst12Quest5_HORDE_Location = Inst12Quest5_Location
Inst12Quest5_HORDE_Note = Inst12Quest5_Note
Inst12Quest5_HORDE_Prequest = Inst12Quest5_Prequest
Inst12Quest5_HORDE_Folgequest = Inst12Quest5_Folgequest
Inst12Quest5name1_HORDE = Inst12Quest5name1

--Quest 6 Horde (same as Quest 6 Alliance)
Inst12Quest6_HORDE = Inst12Quest6
Inst12Quest6_HORDE_Level = Inst12Quest6_Level
Inst12Quest6_HORDE_Attain = Inst12Quest6_Attain
Inst12Quest6_HORDE_Aim = Inst12Quest6_Aim
Inst12Quest6_HORDE_Location = Inst12Quest6_Location
Inst12Quest6_HORDE_Note = Inst12Quest6_Note
Inst12Quest6_HORDE_Prequest = Inst12Quest6_Prequest
Inst12Quest6_HORDE_Folgequest = Inst12Quest6_Folgequest
Inst12Quest6name1_HORDE = Inst12Quest6name1

--Quest 7 Horde (same as Quest 7 Alliance)
Inst12Quest7_HORDE = Inst12Quest7
Inst12Quest7_HORDE_Level = Inst12Quest7_Level
Inst12Quest7_HORDE_Attain = Inst12Quest7_Attain
Inst12Quest7_HORDE_Aim = Inst12Quest7_Aim
Inst12Quest7_HORDE_Location = Inst12Quest7_Location
Inst12Quest7_HORDE_Note = Inst12Quest7_Note
Inst12Quest7_HORDE_Prequest = Inst12Quest7_Prequest
Inst12Quest7_HORDE_Folgequest = Inst12Quest7_Folgequest
Inst12Quest7name1_HORDE = Inst12Quest7name1

--Quest 8 Horde (same as Quest 8 Alliance)
Inst12Quest8_HORDE = Inst12Quest8
Inst12Quest8_HORDE_Level = Inst12Quest8_Level
Inst12Quest8_HORDE_Attain = Inst12Quest8_Attain
Inst12Quest8_HORDE_Aim = Inst12Quest8_Aim
Inst12Quest8_HORDE_Location = Inst12Quest8_Location
Inst12Quest8_HORDE_Note = Inst12Quest8_Note
Inst12Quest8_HORDE_Prequest = Inst12Quest8_Prequest
Inst12Quest8_HORDE_Folgequest = Inst12Quest8_Folgequest
Inst12Quest8name1_HORDE = Inst12Quest8name1

--Quest 9 Horde (same as Quest 9 Alliance)
Inst12Quest9_HORDE = Inst12Quest9
Inst12Quest9_HORDE_Level = Inst12Quest9_Level
Inst12Quest9_HORDE_Attain = Inst12Quest9_Attain
Inst12Quest9_HORDE_Aim = Inst12Quest9_Aim
Inst12Quest9_HORDE_Location = Inst12Quest9_Location
Inst12Quest9_HORDE_Note = Inst12Quest9_Note
Inst12Quest9_HORDE_Prequest = Inst12Quest9_Prequest
Inst12Quest9_HORDE_Folgequest = Inst12Quest9_Folgequest
Inst12Quest9name1_HORDE = Inst12Quest9name1

--Quest 10 Horde (same as Quest 10 Alliance)
Inst12Quest10_HORDE = Inst12Quest10
Inst12Quest10_HORDE_Level = Inst12Quest10_Level
Inst12Quest10_HORDE_Attain = Inst12Quest10_Attain
Inst12Quest10_HORDE_Aim = Inst12Quest10_Aim
Inst12Quest10_HORDE_Location = Inst12Quest10_Location
Inst12Quest10_HORDE_Note = Inst12Quest10_Note
Inst12Quest10_HORDE_Prequest = Inst12Quest10_Prequest
Inst12Quest10_HORDE_Folgequest = Inst12Quest10_Folgequest
Inst12Quest10name1_HORDE = Inst12Quest10name1

--Quest 11 Horde (same as Quest 11 Alliance)
Inst12Quest11_HORDE = Inst12Quest11
Inst12Quest11_HORDE_Level = Inst12Quest11_Level
Inst12Quest11_HORDE_Attain = Inst12Quest11_Attain
Inst12Quest11_HORDE_Aim = Inst12Quest11_Aim
Inst12Quest11_HORDE_Location = Inst12Quest11_Location
Inst12Quest11_HORDE_Note = Inst12Quest11_Note
Inst12Quest11_HORDE_Prequest = Inst12Quest11_Prequest
Inst12Quest11_HORDE_Folgequest = Inst12Quest11_Folgequest
Inst12Quest11name1_HORDE = Inst12Quest11name1

--Quest 12 Horde (same as Quest 12 Alliance)
Inst12Quest12_HORDE = Inst12Quest12
Inst12Quest12_HORDE_Level = Inst12Quest12_Level
Inst12Quest12_HORDE_Attain = Inst12Quest12_Attain
Inst12Quest12_HORDE_Aim = Inst12Quest12_Aim
Inst12Quest12_HORDE_Location = Inst12Quest12_Location
Inst12Quest12_HORDE_Note = Inst12Quest12_Note
Inst12Quest12_HORDE_Prequest = Inst12Quest12_Prequest
Inst12Quest12_HORDE_Folgequest = Inst12Quest12_Folgequest
Inst12Quest12name1_HORDE = Inst12Quest12name1

--Quest 13 Horde (same as Quest 13 Alliance)
Inst12Quest13_HORDE = Inst12Quest13
Inst12Quest13_HORDE_Level = Inst12Quest13_Level
Inst12Quest13_HORDE_Attain = Inst12Quest13_Attain
Inst12Quest13_HORDE_Aim = Inst12Quest13_Aim
Inst12Quest13_HORDE_Location = Inst12Quest13_Location
Inst12Quest13_HORDE_Note = Inst12Quest13_Note
Inst12Quest13_HORDE_Prequest = Inst12Quest13_Prequest
Inst12Quest13_HORDE_Folgequest = Inst12Quest13_Folgequest
Inst12Quest13name1_HORDE = Inst12Quest13name1

--Quest 14 Horde (same as Quest 14 Alliance)
Inst12Quest14_HORDE = Inst12Quest14
Inst12Quest14_HORDE_Level = Inst12Quest14_Level
Inst12Quest14_HORDE_Attain = Inst12Quest14_Attain
Inst12Quest14_HORDE_Aim = Inst12Quest14_Aim
Inst12Quest14_HORDE_Location = Inst12Quest14_Location
Inst12Quest14_HORDE_Note = Inst12Quest14_Note
Inst12Quest14_HORDE_Prequest = Inst12Quest14_Prequest
Inst12Quest14_HORDE_Folgequest = Inst12Quest14_Folgequest
Inst12Quest14name1_HORDE = Inst12Quest14name1

--Quest 15 Horde (same as Quest 15 Alliance)
Inst12Quest15_HORDE = Inst12Quest15
Inst12Quest15_HORDE_Level = Inst12Quest15_Level
Inst12Quest15_HORDE_Attain = Inst12Quest15_Attain
Inst12Quest15_HORDE_Aim = Inst12Quest15_Aim
Inst12Quest15_HORDE_Location = Inst12Quest15_Location
Inst12Quest15_HORDE_Note = Inst12Quest15_Note
Inst12Quest15_HORDE_Prequest = Inst12Quest15_Prequest
Inst12Quest15_HORDE_Folgequest = Inst12Quest15_Folgequest
Inst12Quest15name1_HORDE = Inst12Quest15name1

--Quest 16 Horde (same as Quest 16 Alliance)
Inst12Quest16_HORDE = Inst12Quest16
Inst12Quest16_HORDE_Level = Inst12Quest16_Level
Inst12Quest16_HORDE_Attain = Inst12Quest16_Attain
Inst12Quest16_HORDE_Aim = Inst12Quest16_Aim
Inst12Quest16_HORDE_Location = Inst12Quest16_Location
Inst12Quest16_HORDE_Note = Inst12Quest16_Note
Inst12Quest16_HORDE_Prequest = Inst12Quest16_Prequest
Inst12Quest16_HORDE_Folgequest = Inst12Quest16_Folgequest
Inst12Quest16name1_HORDE = Inst12Quest16name1

--Quest 17 Horde (same as Quest 17 Alliance)
Inst12Quest17_HORDE = Inst12Quest17
Inst12Quest17_HORDE_Level = Inst12Quest17_Level
Inst12Quest17_HORDE_Attain = Inst12Quest17_Attain
Inst12Quest17_HORDE_Aim = Inst12Quest17_Aim
Inst12Quest17_HORDE_Location = Inst12Quest17_Location
Inst12Quest17_HORDE_Note = Inst12Quest17_Note
Inst12Quest17_HORDE_Prequest = Inst12Quest17_Prequest
Inst12Quest17_HORDE_Folgequest = Inst12Quest17_Folgequest
-- No Rewards for this quest

--Quest 18 Horde (same as Quest 18 Alliance)
Inst12Quest18_HORDE = Inst12Quest18
Inst12Quest18_HORDE_Level = Inst12Quest18_Level
Inst12Quest18_HORDE_Attain = Inst12Quest18_Attain
Inst12Quest18_HORDE_Aim = Inst12Quest18_Aim
Inst12Quest18_HORDE_Location = Inst12Quest18_Location
Inst12Quest18_HORDE_Note = Inst12Quest18_Note
Inst12Quest18_HORDE_Prequest = Inst12Quest18_Prequest
Inst12Quest18_HORDE_Folgequest = Inst12Quest18_Folgequest
Inst12Quest18name1_HORDE = Inst12Quest18name1
Inst12Quest18name2_HORDE = Inst12Quest18name2

--Quest 19 Horde (same as Quest 19 Alliance)
Inst12Quest19_HORDE = Inst12Quest19
Inst12Quest19_HORDE_Level = Inst12Quest19_Level
Inst12Quest19_HORDE_Attain = Inst12Quest19_Attain
Inst12Quest19_HORDE_Aim = Inst12Quest19_Aim
Inst12Quest19_HORDE_Location = Inst12Quest19_Location
Inst12Quest19_HORDE_Note = Inst12Quest19_Note
Inst12Quest19_HORDE_Prequest = Inst12Quest19_Prequest
Inst12Quest19_HORDE_Folgequest = Inst12Quest19_Folgequest
Inst12Quest19name1_HORDE = Inst12Quest19name1

--Quest 20 Horde (same as Quest 20 Alliance)
Inst12Quest20_HORDE = Inst12Quest20
Inst12Quest20_HORDE_Level = Inst12Quest20_Level
Inst12Quest20_HORDE_Attain = Inst12Quest20_Attain
Inst12Quest20_HORDE_Aim = Inst12Quest20_Aim
Inst12Quest20_HORDE_Location = Inst12Quest20_Location
Inst12Quest20_HORDE_Note = Inst12Quest20_Note
Inst12Quest20_HORDE_Prequest = Inst12Quest20_Prequest
Inst12Quest20_HORDE_Folgequest = Inst12Quest20_Folgequest
-- No Rewards for this quest

--Quest 21 Horde (same as Quest 21 Alliance)
Inst12Quest21_HORDE = Inst12Quest21
Inst12Quest21_HORDE_Level = Inst12Quest21_Level
Inst12Quest21_HORDE_Attain = Inst12Quest21_Attain
Inst12Quest21_HORDE_Aim = Inst12Quest21_Aim
Inst12Quest21_HORDE_Location = Inst12Quest21_Location
Inst12Quest21_HORDE_Note = Inst12Quest21_Note
Inst12Quest21_HORDE_Prequest = Inst12Quest21_Prequest
Inst12Quest21_HORDE_Folgequest = Inst12Quest21_Folgequest
Inst12Quest21name1_HORDE = Inst12Quest21name1

--------------- INST13 - Maraudon (Mara) ---------------
Inst13Story = "Protected by the fierce Maraudine centaur, Maraudon is one of the most sacred sites within Desolace. The great temple/cavern is the burial place of Zaetar, one of two immortal sons born to the demigod, Cenarius. Legend holds that Zaetar and the earth elemental princess, Theradras, sired the misbegotten centaur race. It is said that upon their emergence, the barbaric centaur turned on their father and killed him. Some believe that Theradras, in her grief, trapped Zaetar's spirit within the winding cavern - used its energies for some malign purpose. The subterranean tunnels are populated by the vicious, long-dead ghosts of the Centaur Khans, as well as Theradras' own raging, elemental minions."
Inst13Caption = "Maraudon"
Inst13QAA = "9 Quests 1TW"
Inst13QAH = "8 Quests"

--Quest 1 Alliance
Inst13Quest1 = "1. Shadowshard Fragments" -- 7070
Inst13Quest1_Level = "42"
Inst13Quest1_Attain = "38"
Inst13Quest1_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Archmage Tervosh in Theramore on the coast of Dustwallow Marsh."
Inst13Quest1_Location = "Archmage Tervosh (Dustwallow Marsh - Theramore Isle; "..YELLOW.."66,49"..WHITE..")"
Inst13Quest1_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the instance on the Purple side."
Inst13Quest1_Prequest = "No"
Inst13Quest1_Folgequest = "No"
Inst13Quest1name1 = "Zealous Shadowshard Pendant"
Inst13Quest1name2 = "Prodigious Shadowshard Pendant"

--Quest 2 Alliance
Inst13Quest2 = "2. Vyletongue Corruption" -- 7041
Inst13Quest2_Level = "47"
Inst13Quest2_Attain = "41"
Inst13Quest2_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Talendria in Nijel's Point."
Inst13Quest2_Location = "Talendria (Desolace - Nijel's Point; "..YELLOW.."68,8"..WHITE..")"
Inst13Quest2_Note = "You can fill the Vial at any pool outside the instance on the Orange side. The plants are in the orange and purple areas inside the instance."
Inst13Quest2_Prequest = "No"
Inst13Quest2_Folgequest = "No"
Inst13Quest2name1 = "Woodseed Hoop"
Inst13Quest2name2 = "Sagebrush Girdle"
Inst13Quest2name3 = "Branchclaw Gauntlets"

--Quest 3 Alliance
Inst13Quest3 = "3. Twisted Evils" -- 7028
Inst13Quest3_Level = "47"
Inst13Quest3_Attain = "41"
Inst13Quest3_Aim = "Collect 15 Theradric Crystal Carvings for Willow in Desolace."
Inst13Quest3_Location = "Willow (Desolace; "..YELLOW.."62,39"..WHITE..")"
Inst13Quest3_Note = "Most mobs in Maraudon drop the Carvings."
Inst13Quest3_Prequest = "No"
Inst13Quest3_Folgequest = "No"
Inst13Quest3name1 = "Acumen Robes"
Inst13Quest3name2 = "Sprightring Helm"
Inst13Quest3name3 = "Relentless Chain"
Inst13Quest3name4 = "Hulkstone Pauldrons"

--Quest 4 Alliance
Inst13Quest4 = "4. The Pariah's Instructions" -- 7067
Inst13Quest4_Level = "48"
Inst13Quest4_Attain = "39"
Inst13Quest4_Aim = "Read the Pariah's Instructions. Afterwards, obtain the Amulet of Union from Maraudon and return it to the Centaur Pariah in southern Desolace."
Inst13Quest4_Location = "Centaur Pariah (Desolace; "..YELLOW.."45,86"..WHITE..")"
Inst13Quest4_Note = "The 5 Kahns (Description for The Pariah's Instructions)"
Inst13Quest4_Page = {2, "You find the Centaur Pariah in the south of desolace. He walks between "..YELLOW.."44,85"..WHITE.." and "..YELLOW.."50,87"..WHITE..".\nFirst, you have to kill the The Nameless Prophet ("..YELLOW.."[A] on Entrance Map"..WHITE.."). You find him before you enter the instance, before the point where you can choose whether you take the purple or the orange entrance. After killing him you must kill the 5 Kahns. You find the first if you choose the way in the middle ("..YELLOW.."[1] on Entrance Map"..WHITE.."). The second is in the purple part of Maraudon but before you enter the instance ("..YELLOW.."[2] on Entrance Map"..WHITE.."). The third is in the orange part before you enter the instance ("..YELLOW.."[3] on Entrance Map"..WHITE.."). The fourth is near "..YELLOW.."[4]"..WHITE.." and the fifth is near  "..YELLOW.."[1]"..WHITE..".", };
Inst13Quest4_Prequest = "No"
Inst13Quest4_Folgequest = "No"
Inst13Quest4name1 = "Mark of the Chosen"

--Quest 5 Alliance
Inst13Quest5 = "5. Legends of Maraudon" -- 7044
Inst13Quest5_Level = "49"
Inst13Quest5_Attain = "41"
Inst13Quest5_Aim = "Recover the two parts of the Scepter of Celebras: the Celebrian Rod and the Celebrian Diamond.\nFind a way to speak with Celebras."
Inst13Quest5_Location = "Cavindra (Desolace - Maraudon; "..YELLOW.."[4] on Entrance Map"..WHITE..")"
Inst13Quest5_Note = "You find Cavindra at the beginning  of the orange part before you enter the instance.\nYou get the Celebrian Rod from Noxxion at "..YELLOW.."[2]"..WHITE..", the Celebrian Diamond from Lord Vyletongue at  "..YELLOW.."[5]"..WHITE..". Celebras is at "..YELLOW.."[7]"..WHITE..". You have to defeat him to be able to talk to him."
Inst13Quest5_Prequest = "No"
Inst13Quest5_Folgequest = "The Scepter of Celebras" -- 7046
-- No Rewards for this quest

--Quest 6 Alliance
Inst13Quest6 = "6. The Scepter of Celebras" -- 7046
Inst13Quest6_Level = "49"
Inst13Quest6_Attain = "41"
Inst13Quest6_Aim = "Assist Celebras the Redeemed while he creates the Scepter of Celebras.\nSpeak with him when the ritual is complete."
Inst13Quest6_Location = "Celebras the Redeemed (Maraudon; "..YELLOW.."[7]"..WHITE..")"
Inst13Quest6_Note = "Celebras creates the Scepter. Speak with him after he is finished."
Inst13Quest6_Prequest = "Legends of Maraudon" -- 7044
Inst13Quest6_Folgequest = "No"
Inst13Quest6name1 = "Scepter of Celebras"

--Quest 7 Alliance
Inst13Quest7 = "7. Corruption of Earth and Seed" -- 7065
Inst13Quest7_Level = "51"
Inst13Quest7_Attain = "45"
Inst13Quest7_Aim = "Slay Princess Theradras and return to Keeper Marandis at Nijel's Point in Desolace."
Inst13Quest7_Location = "Keeper Marandis (Desolace - Nijel's Point; "..YELLOW.."[63, 10]"..WHITE..")"
Inst13Quest7_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_Prequest = "No"
Inst13Quest7_Folgequest = "Seed of Life" -- 7066
Inst13Quest7name1 = "Thrash Blade"
Inst13Quest7name2 = "Resurgence Rod"
Inst13Quest7name3 = "Verdant Keeper's Aim"

--Quest 8 Alliance
Inst13Quest8 = "8. Seed of Life" -- 7066
Inst13Quest8_Level = "51"
Inst13Quest8_Attain = "45"
Inst13Quest8_Aim = "Seek out Remulos in Moonglade and give him the Seed of Life."
Inst13Quest8_Location = "Zaetars Ghost (Maraudon; "..YELLOW.."[11]"..WHITE..")"
Inst13Quest8_Note = "Zaetars Ghost appears after killing Princess Theradras "..YELLOW.."[11]"..WHITE..". You find Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE..")."
Inst13Quest8_Prequest = "Corruption of Earth and Seed" -- 7065
Inst13Quest8_Folgequest = "No"
-- No Rewards for this quest

--Quest 9 Alliance
Inst13Quest9 = "(TW)9. Harness of Chimaeran" -- 41052
Inst13Quest9_Level = "48"
Inst13Quest9_Attain = "38"
Inst13Quest9_Aim = "Retrieve the Harness of Chimaeran from Maraudon and bring it back to Velos Sharpstrike at Chimaera Roost Vale in Feralas."
Inst13Quest9_Location = "Velos Sharpstrike (Feralas - Chimaera Roost Vale; "..YELLOW.."[82.0, 62.3]"..WHITE.." southeastern corner of Feralas)"
Inst13Quest9_Note = "Purple Maraudon satir boss Lord Vyletongue "..YELLOW.."[5]"..WHITE.." drops Harness of Chimaeran."
Inst13Quest9_Prequest = "Cleansing the Roost -> Feeding the Younglings" --41050, 41051
Inst13Quest9_Folgequest = "No"
Inst13Quest9name1 = "Chimaera's Eye" -- 61517

--Quest 10 Alliance
Inst13Quest10 = "(TW)10. Why Not Both?" -- 41052
Inst13Quest10_Level = "50"
Inst13Quest10_Attain = "40"
Inst13Quest10_Aim = "Obtain the Heart of Landslide from the depths of Maraudon, and the Essence of Corrosis from Hateforge Quarry for Frig Thunderforge at Aerie Peak"
Inst13Quest10_Location = "Frig Thunderforge (Hinterlands - Aerie Peak; "..YELLOW.."[10.0, 49.3]"..WHITE..")."
Inst13Quest10_Note = "Landslide is at "..YELLOW.."[8]"..WHITE.."."
Inst13Quest10_Prequest = "Proving A Point -> I've Read It In A Book Once"
Inst13Quest10_Folgequest = "Thunderforge Mastery"
Inst13Quest10name1 = "Thunderforge Lance" -- 40080

--Quest 1 Horde
Inst13Quest1_HORDE = "1. Shadowshard Fragments" -- 7068
Inst13Quest1_HORDE_Level = "42"
Inst13Quest1_HORDE_Attain = "38"
Inst13Quest1_HORDE_Aim = "Collect 10 Shadowshard Fragments from Maraudon and return them to Uthel'nay in Orgrimmar"
Inst13Quest1_HORDE_Location = "Uthel'nay (Orgrimmar - Valley of Spirits; "..YELLOW.."39,86"..WHITE..")"
Inst13Quest1_HORDE_Note = "You get the Shadowshard Fragments from 'Shadowshard Rumbler' or 'Shadowshard Smasher' outside the instance on the Purple side."
Inst13Quest1_HORDE_Prequest = "No"
Inst13Quest1_HORDE_Folgequest = "No"
Inst13Quest1name1_HORDE = "Zealous Shadowshard Pendant"
Inst13Quest1name2_HORDE = "Prodigious Shadowshard Pendant"

--Quest 2 Horde
Inst13Quest2_HORDE = "2. Vyletongue Corruption" -- 7029
Inst13Quest2_HORDE_Level = "47"
Inst13Quest2_HORDE_Attain = "41"
Inst13Quest2_HORDE_Aim = "Fill the Coated Cerulean Vial at the orange crystal pool in Maraudon.\nUse the Filled Cerulean Vial on the Vylestem Vines to force the corrupted Noxxious Scion to emerge.\nHeal 8 plants by killing these Noxxious Scion, then return to Vark Battlescar in Shadowprey Village."
Inst13Quest2_HORDE_Location = "Vark Battlescar (Desolace - Shadowprey Village; "..YELLOW.."23,70"..WHITE..")"
Inst13Quest2_HORDE_Note = "You can fill the Vial at any pool outside the instance on the Orange side. The plants are in the orange and purple areas inside the instance."
Inst13Quest2_HORDE_Prequest = "No"
Inst13Quest2_HORDE_Folgequest = "No"
Inst13Quest2name1_HORDE = "Woodseed Hoop"
Inst13Quest2name2_HORDE = "Sagebrush Girdle"
Inst13Quest2name3_HORDE = "Branchclaw Gauntlets"

--Quest 3 Horde (same as Quest 3 Alliance)
Inst13Quest3_HORDE = Inst13Quest3
Inst13Quest3_HORDE_Level = Inst13Quest3_Level
Inst13Quest3_HORDE_Attain = Inst13Quest3_Attain
Inst13Quest3_HORDE_Aim = Inst13Quest3_Aim
Inst13Quest3_HORDE_Location = Inst13Quest3_Location
Inst13Quest3_HORDE_Note = Inst13Quest3_Note
Inst13Quest3_HORDE_Prequest = Inst13Quest3_Prequest
Inst13Quest3_HORDE_Folgequest = Inst13Quest3_Folgequest
Inst13Quest3name1_HORDE = Inst13Quest3name1
Inst13Quest3name2_HORDE = Inst13Quest3name2
Inst13Quest3name3_HORDE = Inst13Quest3name3
Inst13Quest3name4_HORDE = Inst13Quest3name4

--Quest 4 Horde (same as Quest 4 Alliance)
Inst13Quest4_HORDE = Inst13Quest4
Inst13Quest4_HORDE_Level = Inst13Quest4_Level
Inst13Quest4_HORDE_Attain = Inst13Quest4_Attain
Inst13Quest4_HORDE_Aim = Inst13Quest4_Aim
Inst13Quest4_HORDE_Location = Inst13Quest4_Location
Inst13Quest4_HORDE_Note = Inst13Quest4_Note
Inst13Quest4_HORDE_Page = Inst13Quest4_Page
Inst13Quest4_HORDE_Prequest = Inst13Quest4_Prequest
Inst13Quest4_HORDE_Folgequest = Inst13Quest4_Folgequest
Inst13Quest4name1_HORDE = Inst13Quest4name1

--Quest 5 Horde (same as Quest 5 Alliance)
Inst13Quest5_HORDE = Inst13Quest5
Inst13Quest5_HORDE_Level = Inst13Quest5_Level
Inst13Quest5_HORDE_Attain = Inst13Quest5_Attain
Inst13Quest5_HORDE_Aim = Inst13Quest5_Aim
Inst13Quest5_HORDE_Location = Inst13Quest5_Location
Inst13Quest5_HORDE_Note = Inst13Quest5_Note
Inst13Quest5_HORDE_Prequest = Inst13Quest5_Prequest
Inst13Quest5_HORDE_Folgequest = Inst13Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst13Quest6_HORDE = Inst13Quest6
Inst13Quest6_HORDE_Level = Inst13Quest6_Level
Inst13Quest6_HORDE_Attain = Inst13Quest6_Attain
Inst13Quest6_HORDE_Aim = Inst13Quest6_Aim
Inst13Quest6_HORDE_Location = Inst13Quest6_Location
Inst13Quest6_HORDE_Note = Inst13Quest6_Note
Inst13Quest6_HORDE_Prequest = Inst13Quest6_Prequest
Inst13Quest6_HORDE_Folgequest = Inst13Quest6_Folgequest
Inst13Quest6name1_HORDE = Inst13Quest6name1

--Quest 7 Horde
Inst13Quest7_HORDE = "7. Corruption of Earth and Seed" -- 7064
Inst13Quest7_HORDE_Level = "51"
Inst13Quest7_HORDE_Attain = "45"
Inst13Quest7_HORDE_Aim = "Slay Princess Theradras and return to Selendra near Shadowprey Village in Desolace."
Inst13Quest7_HORDE_Location = "Selendra (Desolace; "..YELLOW.."27,77"..WHITE..")"
Inst13Quest7_HORDE_Note = "You find Princess Theradras at "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_HORDE_Prequest = "No"
Inst13Quest7_HORDE_Folgequest = "Seed of Life" -- 7066
Inst13Quest7name1_HORDE = "Thrash Blade"
Inst13Quest7name2_HORDE = "Resurgence Rod"
Inst13Quest7name3_HORDE = "Verdant Keeper's Aim"

--Quest 8 Horde (same as Quest 8 Alliance)
Inst13Quest8_HORDE = Inst13Quest8
Inst13Quest8_HORDE_Level = Inst13Quest8_Level
Inst13Quest8_HORDE_Attain = Inst13Quest8_Attain
Inst13Quest8_HORDE_Aim = Inst13Quest8_Aim
Inst13Quest8_HORDE_Location = Inst13Quest8_Location
Inst13Quest8_HORDE_Note = Inst13Quest8_Note
Inst13Quest8_HORDE_Prequest = Inst13Quest8_Prequest -- 7064
Inst13Quest8_HORDE_Folgequest = Inst13Quest8_Folgequest
-- No Rewards for this quest



--------------- INST14 - Molten Core (MC) ---------------
Inst14Story = "The Molten Core lies at the very bottom of Blackrock Depths. It is the heart of Blackrock Mountain and the exact spot where, long ago in a desperate bid to turn the tide of the dwarven civil war, Emperor Thaurissan summoned the elemental Firelord, Ragnaros, into the world. Though the fire lord is incapable of straying far from the blazing Core, it is believed that his elemental minions command the Dark Iron dwarves, who are in the midst of creating armies out of living stone. The burning lake where Ragnaros lies sleeping acts as a rift connecting to the plane of fire, allowing the malicious elementals to pass through. Chief among Ragnaros' agents is Majordomo Executus - for this cunning elemental is the only one capable of calling the Firelord from his slumber."
Inst14Caption = "Molten Core"
Inst14QAA = "7 Quests"
Inst14QAH = "7 Quests"

--Quest 1 Alliance
Inst14Quest1 = "1. The Molten Core" -- 6822
Inst14Quest1_Level = "60"
Inst14Quest1_Attain = "57"
Inst14Quest1_Aim = "Kill 1 Fire Lord, 1 Molten Giant, 1 Ancient Core Hound and 1 Lava Surger, then return to Duke Hydraxis in Azshara."
Inst14Quest1_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst14Quest1_Note = "These are non-bosses inside Molten Core."
Inst14Quest1_Prequest = "Eye of the Emberseer ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 6821
Inst14Quest1_Folgequest = "Agent of Hydraxis" -- 6823
-- No Rewards for this quest

--Quest 2 Alliance
Inst14Quest2 = "2. Hands of the Enemy" -- 6824
Inst14Quest2_Level = "60"
Inst14Quest2_Attain = "60"
Inst14Quest2_Aim = "Bring the Hands of Lucifron, Sulfuron, Gehennas and Shazzrah to Duke Hydraxis in Azshara."
Inst14Quest2_Location = "Duke Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst14Quest2_Note = "Lucifron is at "..YELLOW.."[1]"..WHITE..", Sulfuron is at "..YELLOW.."[8]"..WHITE..", Gehennas is at "..YELLOW.."[3]"..WHITE.." and Shazzrah is at "..YELLOW.."[5]"..WHITE.."."
Inst14Quest2_Prequest = "Agent of Hydraxis" -- 6823
Inst14Quest2_Folgequest = "A Hero's Reward" -- 7486
-- No Rewards for this quest

--Quest 3 Alliance
Inst14Quest3 = "3. Thunderaan the Windseeker" -- 7786
Inst14Quest3_Level = "60"
Inst14Quest3_Attain = "60"
Inst14Quest3_Aim = "To free Thunderaan the Windseeker from his prison, you must present the right and left halves of the Bindings of the Windseeker, 10 bars of Elementium, and the Essence of the Firelord to Highlord Demitrian in Silithus."
Inst14Quest3_Location = "Highlord Demitrian (Silithus; "..YELLOW.."22,9"..WHITE..")"
Inst14Quest3_Note = "Part of the Thunderfury, Blessed Blade of the Windseeker questline. It starts after obtaining either the left or right Bindings of the Windseeker from Garr at "..YELLOW.."[4]"..WHITE.." or Baron Geddon at "..YELLOW.."[6]"..WHITE..". Then talk to Highlord Demitrian to start the questline. Essence of the Firelord drops from Ragnaros at "..YELLOW.."[10]"..WHITE..". After turning this part in, Prince Thunderaan is summoned and you must kill him. He's a 40-man raid boss."
Inst14Quest3_Prequest = "Examine the Vessel" -- 7785
Inst14Quest3_Folgequest = "Rise, Thunderfury!" -- 7787
-- No Rewards for this quest

--Quest 4 Alliance
Inst14Quest4 = "4. A Binding Contract" -- 7604
Inst14Quest4_Level = "60"
Inst14Quest4_Attain = "60"
Inst14Quest4_Aim = "Turn the Thorium Brotherhood Contract in to Lokhtos Darkbargainer if you would like to receive the plans for Sulfuron."
Inst14Quest4_Location = "Lokhtos Darkbargainer (Blackrock Depths; "..YELLOW.."[15]"..WHITE..")"
Inst14Quest4_Note = "You need a Sulfuron Ingot to get the contract from Lokhtos. They drop from Golemagg the Incinerator in Molten Core at "..YELLOW.."[7]"..WHITE.."."
Inst14Quest4_Prequest = "No"
Inst14Quest4_Folgequest = "No"
Inst14Quest4name1 = "Plans: Sulfuron Hammer"

--Quest 5 Alliance
Inst14Quest5 = "5. The Ancient Leaf" -- 7632
Inst14Quest5_Level = "60"
Inst14Quest5_Attain = "60"
Inst14Quest5_Aim = "Find the owner of the Ancient Petrified Leaf."
Inst14Quest5_Location = "Ancient Petrified Leaf (drops from Cache of the Firelord; "..YELLOW.."[9]"..WHITE..")"
Inst14Quest5_Note = "Turns in to Vartrus the Ancient at (Felwood - Irontree Woods; "..YELLOW.."49,24"..WHITE..")."
Inst14Quest5_Prequest = "No"
Inst14Quest5_Folgequest = "Ancient Sinew Wrapped Lamina ("..YELLOW.."Azuregos"..WHITE..")" -- 7634
-- No Rewards for this quest

--Quest 6 Alliance
Inst14Quest6 = "6. The Only Prescription" -- 8620
Inst14Quest6_Level = "60"
Inst14Quest6_Attain = "60"
Inst14Quest6_Aim = "Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris. "
Inst14Quest6_Location = "Narain Soothfancy (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst14Quest6_Note = "Only one person can loot the Chapter. Draconic for Dummies VIII (drops from Ragnaros; "..YELLOW.."[10]"..WHITE..")"
Inst14Quest6_Prequest = "Decoy!" -- 8606
Inst14Quest6_Folgequest = "The Good News and The Bad News (Must complete Stewvul, Ex-B.F.F. and Never Ask Me About My Business quest chains)"
Inst14Quest6name1 = "Gnomish Turban of Psychic Might"

--Quest 7 Alliance
Inst14Quest7 = "7. Scrying Goggles? No Problem!" -- 8578
Inst14Quest7_Level = "60"
Inst14Quest7_Attain = "60"
Inst14Quest7_Aim = "Find Narain's Scrying Goggles and return them to Narain Soothfancy in Tanaris."
Inst14Quest7_Location = "Narain Soothfancy (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst14Quest7_Note = "Drops from boss in Molten Core."
Inst14Quest7_Prequest = "Stewvul, Ex-B.F.F." -- 8577
Inst14Quest7_Folgequest = "The Good News and The Bad News (Must complete Draconic for Dummies and Never Ask Me About My Business quest chains)" -- 8728
Inst14Quest7name1 = "Major Rejuvenation Potion"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst14Quest1_HORDE = Inst14Quest1
Inst14Quest1_HORDE_Level = Inst14Quest1_Level
Inst14Quest1_HORDE_Attain = Inst14Quest1_Attain
Inst14Quest1_HORDE_Aim = Inst14Quest1_Aim
Inst14Quest1_HORDE_Location = Inst14Quest1_Location
Inst14Quest1_HORDE_Note = Inst14Quest1_Note
Inst14Quest1_HORDE_Prequest = Inst14Quest1_Prequest
Inst14Quest1_HORDE_Folgequest = Inst14Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst14Quest2_HORDE = Inst14Quest2
Inst14Quest2_HORDE_Level = Inst14Quest2_Level
Inst14Quest2_HORDE_Attain = Inst14Quest2_Attain
Inst14Quest2_HORDE_Aim = Inst14Quest2_Aim
Inst14Quest2_HORDE_Location = Inst14Quest2_Location
Inst14Quest2_HORDE_Note = Inst14Quest2_Note
Inst14Quest2_HORDE_Prequest = Inst14Quest2_Prequest
Inst14Quest2_HORDE_Folgequest = Inst14Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst14Quest3_HORDE = Inst14Quest3
Inst14Quest3_HORDE_Level = Inst14Quest3_Level
Inst14Quest3_HORDE_Attain = Inst14Quest3_Attain
Inst14Quest3_HORDE_Aim = Inst14Quest3_Aim
Inst14Quest3_HORDE_Location = Inst14Quest3_Location
Inst14Quest3_HORDE_Note = Inst14Quest3_Note
Inst14Quest3_HORDE_Prequest = Inst14Quest3_Prequest
Inst14Quest3_HORDE_Folgequest = Inst14Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst14Quest4_HORDE = Inst14Quest4
Inst14Quest4_HORDE_Level = Inst14Quest4_Level
Inst14Quest4_HORDE_Attain = Inst14Quest4_Attain
Inst14Quest4_HORDE_Aim = Inst14Quest4_Aim
Inst14Quest4_HORDE_Location = Inst14Quest4_Location
Inst14Quest4_HORDE_Note = Inst14Quest4_Note
Inst14Quest4_HORDE_Prequest = Inst14Quest4_Prequest
Inst14Quest4_HORDE_Folgequest = Inst14Quest4_Folgequest
Inst14Quest4name1_HORDE = Inst14Quest4name1

--Quest 5 Horde (same as Quest 5 Alliance)
Inst14Quest5_HORDE = Inst14Quest5
Inst14Quest5_HORDE_Level = Inst14Quest5_Level
Inst14Quest5_HORDE_Attain = Inst14Quest5_Attain
Inst14Quest5_HORDE_Aim = Inst14Quest5_Aim
Inst14Quest5_HORDE_Location = Inst14Quest5_Location
Inst14Quest5_HORDE_Note = Inst14Quest5_Note
Inst14Quest5_HORDE_Prequest = Inst14Quest5_Prequest
Inst14Quest5_HORDE_Folgequest = Inst14Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst14Quest6_HORDE = Inst14Quest6
Inst14Quest6_HORDE_Level = Inst14Quest6_Level
Inst14Quest6_HORDE_Attain = Inst14Quest6_Attain
Inst14Quest6_HORDE_Aim = Inst14Quest6_Aim
Inst14Quest6_HORDE_Location = Inst14Quest6_Location
Inst14Quest6_HORDE_Note = Inst14Quest6_Note
Inst14Quest6_HORDE_Prequest = Inst14Quest6_Prequest
Inst14Quest6_HORDE_Folgequest = Inst14Quest6_Folgequest
Inst14Quest6name1_HORDE = Inst14Quest6name1

--Quest 7 Horde (same as Quest 7 Alliance)
Inst14Quest7_HORDE = Inst14Quest7
Inst14Quest7_HORDE_Level = Inst14Quest7_Level
Inst14Quest7_HORDE_Attain = Inst14Quest7_Attain
Inst14Quest7_HORDE_Aim = Inst14Quest7_Aim
Inst14Quest7_HORDE_Location = Inst14Quest7_Location
Inst14Quest7_HORDE_Note = Inst14Quest7_Note
Inst14Quest7_HORDE_Prequest = Inst14Quest7_Prequest
Inst14Quest7_HORDE_Folgequest = Inst14Quest7_Folgequest
Inst14Quest7name1_HORDE = Inst14Quest7name1



--------------- INST15 - Naxxramas (Naxx) ---------------
Inst15Story = "Floating above the Plaguelands, the necropolis known as Naxxramas serves as the seat of one of the Lich King's most powerful officers, the dreaded lich Kel'Thuzad. Horrors of the past and new terrors yet to be unleashed are gathering inside the necropolis as the Lich King's servants prepare their assault. Soon the Scourge will march again..."
Inst15Caption = "Naxxramas"
Inst15QAA = "5 Quests"
Inst15QAH = "5 Quests"

--Quest 1 Alliance
Inst15Quest1 = "1. The Fall of Kel'Thuzad" -- 9120
Inst15Quest1_Level = "60"
Inst15Quest1_Attain = "60"
Inst15Quest1_Aim = "Take the Phylactery of Kel'Thuzad to Light's Hope Chapel in the Eastern Plaguelands."
Inst15Quest1_Location = "Kel'Thuzad (Naxxramas; "..YELLOW.."Green 2"..WHITE..")"
Inst15Quest1_Note = "Father Inigo Montoy (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,58"..WHITE..")"
Inst15Quest1_Prequest = "No"
Inst15Quest1_Folgequest = "No"
Inst15Quest1name1 = "Mark of the Champion"
Inst15Quest1name2 = "Mark of the Champion"

--Quest 2 Alliance
Inst15Quest2 = "2. The Only Song I Know..." -- 9232
Inst15Quest2_Level = "60"
Inst15Quest2_Attain = "60"
Inst15Quest2_Aim = "Craftsman Wilhelm at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 2 Frozen Runes, 2 Essence of Water, 2 Blue Sapphires and 30 gold pieces."
Inst15Quest2_Location = "Craftsman Wilhelm (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,60"..WHITE..")"
Inst15Quest2_Note = "Frozen Runes come from Unholy Axes in Naxxramas."
Inst15Quest2_Prequest = "No"
Inst15Quest2_Folgequest = "No"
Inst15Quest2name1 = "Glacial Leggings"
Inst15Quest2name2 = "Icebane Leggings"
Inst15Quest2name3 = "Icy Scale Leggings"
Inst15Quest2name4 = "Polar Leggings"

--Quest 3 Alliance
Inst15Quest3 = "3. Echoes of War" -- 9033
Inst15Quest3_Level = "60"
Inst15Quest3_Attain = "60"
Inst15Quest3_Aim = "Commander Eligor Dawnbringer at Light's Hope Chapel in the Eastern Plaguelands wants you to slay 5 Living Monstrosities, 5 Stoneskin Gargoyles, 8 Deathknight Captains and 3 Venom Stalkers."
Inst15Quest3_Location = "Commander Eligor Dawnbringer (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest3_Note = "The mobs for this quest are trash mobs at the beginning of each wing of Naxxramas. This quest is a pre-requisite for the Tier 3 armor quests."
Inst15Quest3_Prequest = "The Dread Citadel - Naxxramas" -- 9121 or 9122 or 9123
Inst15Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst15Quest4 = "4. The Fate of Ramaladni" -- 9229
Inst15Quest4_Level = "60"
Inst15Quest4_Attain = "60"
Inst15Quest4_Aim = "Enter Naxxramas and uncover the Fate of Ramaladni."
Inst15Quest4_Location = "Korfax, Champion of the Light (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest4_Note = "A ring for this quest will drop off a random mob in Naxxramas. Everyone who has the quest can pick it up."
Inst15Quest4_Prequest = "No"
Inst15Quest4_Folgequest = "Ramaladni's Icy Grasp" -- 9230
-- No Rewards for this quest

--Quest 5 Alliance
Inst15Quest5 = "5. Ramaladni's Icy Grasp" -- 9230
Inst15Quest5_Level = "60"
Inst15Quest5_Attain = "60"
Inst15Quest5_Aim = "Korfax at Light's Hope Chapel in the Eastern Plaguelands wants you to bring him 1 Frozen Rune, 1 Blue Sapphire and 1 Arcanite Bar."
Inst15Quest5_Location = "Korfax, Champion of the Light (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest5_Note = "Frozen Runes come from Unholy Axes in Naxxramas."
Inst15Quest5_Prequest = "The Fate of Ramaladni" -- 9229
Inst15Quest5_Folgequest = "No"
Inst15Quest5name1 = "Ramaladni's Icy Grasp"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst15Quest1_HORDE = Inst15Quest1
Inst15Quest1_HORDE_Level = Inst15Quest1_Level
Inst15Quest1_HORDE_Attain = Inst15Quest1_Attain
Inst15Quest1_HORDE_Aim = Inst15Quest1_Aim
Inst15Quest1_HORDE_Location = Inst15Quest1_Location
Inst15Quest1_HORDE_Note = Inst15Quest1_Note
Inst15Quest1_HORDE_Prequest = Inst15Quest1_Prequest
Inst15Quest1_HORDE_Folgequest = Inst15Quest1_Folgequest
Inst15Quest1name1_HORDE = Inst15Quest1name1
Inst15Quest1name2_HORDE = Inst15Quest1name2

--Quest 2 Horde (same as Quest 2 Alliance)
Inst15Quest2_HORDE = Inst15Quest2
Inst15Quest2_HORDE_Level = Inst15Quest2_Level
Inst15Quest2_HORDE_Attain = Inst15Quest2_Attain
Inst15Quest2_HORDE_Aim = Inst15Quest2_Aim
Inst15Quest2_HORDE_Location = Inst15Quest2_Location
Inst15Quest2_HORDE_Note = Inst15Quest2_Note
Inst15Quest2_HORDE_Prequest = Inst15Quest2_Prequest
Inst15Quest2_HORDE_Folgequest = Inst15Quest2_Folgequest
Inst15Quest2name1_HORDE = Inst15Quest2name1
Inst15Quest2name2_HORDE = Inst15Quest2name2
Inst15Quest2name3_HORDE = Inst15Quest2name3
Inst15Quest2name4_HORDE = Inst15Quest2name4

--Quest 3 Horde (same as Quest 3 Alliance)
Inst15Quest3_HORDE = Inst15Quest3
Inst15Quest3_HORDE_Level = Inst15Quest3_Level
Inst15Quest3_HORDE_Attain = Inst15Quest3_Attain
Inst15Quest3_HORDE_Aim = Inst15Quest3_Aim
Inst15Quest3_HORDE_Location = Inst15Quest3_Location
Inst15Quest3_HORDE_Note = Inst15Quest3_Note
Inst15Quest3_HORDE_Prequest = Inst15Quest3_Prequest
Inst15Quest3_HORDE_Folgequest = Inst15Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst15Quest4_HORDE = Inst15Quest4
Inst15Quest4_HORDE_Level = Inst15Quest4_Level
Inst15Quest4_HORDE_Attain = Inst15Quest4_Attain
Inst15Quest4_HORDE_Aim = Inst15Quest4_Aim
Inst15Quest4_HORDE_Location = Inst15Quest4_Location
Inst15Quest4_HORDE_Note = Inst15Quest4_Note
Inst15Quest4_HORDE_Prequest = Inst15Quest4_Prequest
Inst15Quest4_HORDE_Folgequest = Inst15Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst15Quest5_HORDE = Inst15Quest5
Inst15Quest5_HORDE_Level = Inst15Quest5_Level
Inst15Quest5_HORDE_Attain = Inst15Quest5_Attain
Inst15Quest5_HORDE_Aim = Inst15Quest5_Aim
Inst15Quest5_HORDE_Location = Inst15Quest5_Location
Inst15Quest5_HORDE_Note = Inst15Quest5_Note
Inst15Quest5_HORDE_Prequest = Inst15Quest5_Prequest
Inst15Quest5_HORDE_Folgequest = Inst15Quest5_Folgequest
Inst15Quest5name1_HORDE = Inst15Quest5name1



--------------- INST16 - Onyxia's Lair (Ony) ---------------
Inst16Story = "Onyxia is the daughter of the mighty dragon Deathwing, and sister of the scheming Nefarion Lord of Blackrock Spire. It is said that Onyxia delights in corrupting the mortal races by meddling in their political affairs. To this end it is believed that she takes on various humanoid forms and uses her charm and power to influence delicate matters between the different races. Some believe that Onyxia has even assumed an alias once used by her father - the title of the royal House Prestor. When not meddling in mortal concerns, Onyxia resides in a fiery cave below the Dragonmurk, a dismal swamp located within Dustwallow Marsh. There she is guarded by her kin, the remaining members of the insidious Black Dragon Flight."
Inst16Caption = "Onyxias Lair"
Inst16QAA = "3 Quests"
Inst16QAH = "3 Quests"

--Quest 1 Alliance
Inst16Quest1 = "1. The Forging of Quel'Serrar" -- 7509
Inst16Quest1_Level = "60"
Inst16Quest1_Attain = "60"
Inst16Quest1_Aim = "You must get Onyxia to breathe fire on the Unfired Ancient Blade. Once this is done, pick up the now Heated Ancient Blade. Be warned, a Heated Ancient Blade will not remain heated forever - time is of the essence."
Inst16Quest1_Location = "Lorekeeper Lydros (Dire Maul West; "..YELLOW.."[1] Library"..WHITE..")"
Inst16Quest1_Note = "Drop the Sword in front of Onyxia when she's at 10% to 15% health. She'll have to breathe on and heat it. When Onyxia dies, pick the sword back up, click her corpse and use the sword. Then you're ready to turn in the quest."
Inst16Quest1_Prequest = "Foror's Compendium ("..YELLOW.."Dire Maul West"..WHITE..") -> The Forging of Quel'Serrar" -- 7507 -> 7508
Inst16Quest1_Folgequest = "No"
Inst16Quest1name1 = "Quel'Serrar"

--Quest 2 Alliance
Inst16Quest2 = "2. Victory for the Alliance" -- 7495
Inst16Quest2_Level = "60"
Inst16Quest2_Attain = "60"
Inst16Quest2_Aim = "Take the Head of Onyxia to Highlord Bolvar Fordragon in Stormwind."
Inst16Quest2_Location = "Head of Onyxia (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest2_Note = "Highlord Bolvar Fordragon is at (Stormwind City - Stormwind Keep; "..YELLOW.."78,20"..WHITE.."). Only one person in the raid can loot this item and the quest can only be done one time.\n\nRewards listed are for the followup."
Inst16Quest2_Prequest = "No"
Inst16Quest2_Folgequest = "Celebrating Good Times" -- 7496
Inst16Quest2name1 = "Onyxia Blood Talisman"
Inst16Quest2name2 = "Dragonslayer's Signet"
Inst16Quest2name3 = "Onyxia Tooth Pendant"

--Quest 3 Alliance
Inst16Quest3 = "3. The Only Prescription" -- 8620
Inst16Quest3_Level = "60"
Inst16Quest3_Attain = "60"
Inst16Quest3_Aim = "Recover the 8 lost chapters of Draconic for Dummies and combine them with the Magical Book Binding and return the completed book of Draconic for Dummies: Volume II to Narain Soothfancy in Tanaris. "
Inst16Quest3_Location = "Narain Soothfancy (Tanaris; "..YELLOW.."65,18"..WHITE..")".."Draconic for Dummies (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest3_Note = "Only one person can loot the Chapter. Draconic for Dummies VI (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest3_Prequest = "Decoy!" -- 8606
Inst16Quest3_Folgequest = "The Good News and The Bad News (Must complete Stewvul, Ex-B.F.F. and Never Ask Me About My Business quest chains)" -- 8728
Inst16Quest3name1 = "Gnomish Turban of Psychic Might"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst16Quest1_HORDE = Inst16Quest1
Inst16Quest1_HORDE_Attain = Inst16Quest1_Attain
Inst16Quest1_HORDE_Level = Inst16Quest1_Level
Inst16Quest1_HORDE_Aim = Inst16Quest1_Aim
Inst16Quest1_HORDE_Location = Inst16Quest1_Location
Inst16Quest1_HORDE_Note = Inst16Quest1_Note
Inst16Quest1_HORDE_Prequest = Inst16Quest1_Prequest
Inst16Quest1_HORDE_Folgequest = Inst16Quest1_Folgequest
Inst16Quest1name1_HORDE = Inst16Quest1name1

--Quest 2 Horde
Inst16Quest2_HORDE = "2. Victory for the Horde" -- 7490
Inst16Quest2_HORDE_Level = "60"
Inst16Quest2_HORDE_Attain = "60"
Inst16Quest2_HORDE_Aim = "Take the Head of Onyxia to Thrall in Orgrimmar."
Inst16Quest2_HORDE_Location = "Head of Onyxia (drops from Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest2_HORDE_Note = "Thrall is at (Orgrimmar - Valley of Wisdom; "..YELLOW.."31,37"..WHITE.."). Only one person in the raid can loot this item and the quest can only be done one time.\n\nRewards listed are for the followup."
Inst16Quest2_HORDE_Prequest = "No"
Inst16Quest2_HORDE_Folgequest = "For All To See" -- 7491
Inst16Quest2name1_HORDE = "Onyxia Blood Talisman"
Inst16Quest2name2_HORDE = "Dragonslayer's Signet"
Inst16Quest2name3_HORDE = "Onyxia Tooth Pendant"

--Quest 3 Horde (same as Quest 3 Alliance)
Inst16Quest3_HORDE = Inst16Quest3
Inst16Quest3_HORDE_Attain = Inst16Quest3_Attain
Inst16Quest3_HORDE_Level = Inst16Quest3_Level
Inst16Quest3_HORDE_Aim = Inst16Quest3_Aim
Inst16Quest3_HORDE_Location = Inst16Quest3_Location
Inst16Quest3_HORDE_Note = Inst16Quest3_Note
Inst16Quest3_HORDE_Prequest = Inst16Quest3_Prequest
Inst16Quest3_HORDE_Folgequest = Inst16Quest3_Folgequest
Inst16Quest3name1_HORDE = Inst16Quest3name1



--------------- INST17 - Razorfen Downs (RFD) ---------------
Inst17Story = "Crafted  from the same mighty vines as Razorfen Kraul, Razorfen Downs is the traditional capital city of the quillboar race. The sprawling, thorn-ridden labyrinth houses a veritable army of loyal quillboar as well as their high priests - the Death's Head tribe. Recently, however, a looming shadow has fallen over the crude den. Agents of the undead Scourge - led by the lich, Amnennar the Coldbringer - have taken control over the quillboar race and turned the maze of thorns into a bastion of undead might. Now the quillboar fight a desperate battle to reclaim their beloved city before Amnennar spreads his control across the Barrens."
Inst17Caption = "Razorfen Downs"
Inst17QAA = "3 Quests"
Inst17QAH = "5 Quests 1TW"

--Quest 1 Alliance
Inst17Quest1 = "1. A Host of Evil" -- 6626
Inst17Quest1_Level = "35"
Inst17Quest1_Attain = "28"
Inst17Quest1_Aim = "Kill 8 Razorfen Battleguard, 8 Razorfen Thornweavers, and 8 Death's Head Cultists and return to Myriam Moonsinger near the entrance to Razorfen Downs."
Inst17Quest1_Location = "Myriam Moonsinger (The Barrens; "..YELLOW.."49,94"..WHITE..")"
Inst17Quest1_Note = "You can find the mobs and the quest giver in the area just before the instance entrance."
Inst17Quest1_Prequest = "No"
Inst17Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst17Quest2 = "2. Extinguishing the Idol" -- 3525
Inst17Quest2_Level = "37"
Inst17Quest2_Attain = "32"
Inst17Quest2_Aim = "Escort Belnistrasz to the Quilboar's idol in Razorfen Downs. Protect Belnistrasz while he performs the ritual to shut down the idol."
Inst17Quest2_Location = "Belnistrasz (Razorfen Downs; "..YELLOW.."[2]"..WHITE..")"
Inst17Quest2_Note = "The prequest is just you agreeing to help him. Several mobs spawn and attack Belnistrasz as he attempts to shut down the idol. After completing the quest, you can turn the quest in at the brazier in front of the idol."
Inst17Quest2_Prequest = "Scourge of the Downs" -- 3523
Inst17Quest2_Folgequest = "No"
Inst17Quest2name1 = "Dragonclaw Ring"

--Quest 3 Alliance
Inst17Quest3 = "3. Bring the Light" -- 3636
Inst17Quest3_Level = "42"
Inst17Quest3_Attain = "39"
Inst17Quest3_Aim = "Archbishop Bendictus wants you to slay Amnennar the Coldbringer in Razorfen Downs."
Inst17Quest3_Location = "Archbishop Bendictus (Stormwind - Cathedral of Light; "..YELLOW.."39,27"..WHITE..")"
Inst17Quest3_Note = "Amnennar the Coldbringer is the last boss in Razorfen Downs. You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst17Quest3_Prequest = "No"
Inst17Quest3_Folgequest = "No"
Inst17Quest3name1 = "Vanquisher's Sword"
Inst17Quest3name2 = "Amberglow Talisman"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst17Quest1_HORDE = Inst17Quest1
Inst17Quest1_HORDE_Level = Inst17Quest1_Level
Inst17Quest1_HORDE_Attain = Inst17Quest1_Attain
Inst17Quest1_HORDE_Aim = Inst17Quest1_Aim
Inst17Quest1_HORDE_Location = Inst17Quest1_Location
Inst17Quest1_HORDE_Note = Inst17Quest1_Note
Inst17Quest1_HORDE_Prequest = Inst17Quest1_Prequest
Inst17Quest1_HORDE_Folgequest = Inst17Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst17Quest2_HORDE = "2. An Unholy Alliance" -- 6521
Inst17Quest2_HORDE_Level = "36"
Inst17Quest2_HORDE_Attain = "28"
Inst17Quest2_HORDE_Aim = "Bring Ambassador Malcin's Head to Varimathras in the Undercity."
Inst17Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst17Quest2_HORDE_Note = "The preceding quest can be obtained from the last Boss in Razorfen Kraul. You find Malcin outside of dungeon (The Barrens; "..YELLOW.."48,92"..WHITE..")."
Inst17Quest2_HORDE_Prequest = "An Unholy Alliance" -- 6522
Inst17Quest2_HORDE_Folgequest = "No"
Inst17Quest2name1_HORDE = "Skullbreaker"
Inst17Quest2name2_HORDE = "Nail Spitter"
Inst17Quest2name3_HORDE = "Zealot's Robe"

--Quest 3 Horde (same as Quest 2 Alliance)
Inst17Quest3_HORDE = "3. Extinguishing the Idol"
Inst17Quest3_HORDE_Level = Inst17Quest2_Level
Inst17Quest3_HORDE_Attain = Inst17Quest2_Attain
Inst17Quest3_HORDE_Aim = Inst17Quest2_Aim
Inst17Quest3_HORDE_Location = Inst17Quest2_Location
Inst17Quest3_HORDE_Note = Inst17Quest2_Note
Inst17Quest3_HORDE_Prequest = Inst17Quest2_Prequest
Inst17Quest3_HORDE_Folgequest = Inst17Quest2_Folgequest
Inst17Quest3name1_HORDE = Inst17Quest2name1

--Quest 4 Horde
Inst17Quest4_HORDE = "4. Bring the End" -- 3341
Inst17Quest4_HORDE_Level = "42"
Inst17Quest4_HORDE_Attain = "37"
Inst17Quest4_HORDE_Aim = "Andrew Brownell wants you to kill Amnennar the Coldbringer and return his skull."
Inst17Quest4_HORDE_Location = "Andrew Brownell (Undercity - The Magic Quarter; "..YELLOW.."72,32"..WHITE..")"
Inst17Quest4_HORDE_Note = "Amnennar the Coldbringer is the last Boss at Razorfen Downs. You can find him at "..YELLOW.."[6]"..WHITE.."."
Inst17Quest4_HORDE_Prequest = "No"
Inst17Quest4_HORDE_Folgequest = "No"
Inst17Quest4name1_HORDE = "Vanquisher's Sword"
Inst17Quest4name2_HORDE = "Amberglow Talisman"

--Quest 5 Horde
Inst17Quest5_HORDE = "(TW)5. The Powers Beyond" -- 40995
Inst17Quest5_HORDE_Level = "44"
Inst17Quest5_HORDE_Attain = "38"
Inst17Quest5_HORDE_Aim = "Venture into Razorfen Downs, slay Amnennar the Coldbringer "..YELLOW.."[6]"..WHITE.." and retrieve his phylactery for Dark Bishop Mordren at Stillward Church in Gilneas."
Inst17Quest5_HORDE_Location = "Dark Bishop Mordren (Gilneas - Stillward Church "..YELLOW.."57.7,39.6"..WHITE..")"
Inst17Quest5_HORDE_Note = "Questline starts with quest 'Through Greater Magic' at Dark Bishop Mordren.\n"..RED.."Description in the questlog is wrong. at least it was for me."..WHITE.."\nAmnennar the Coldbringer "..YELLOW.."[6]"..WHITE.." drops Obsidian Phylactery.\nYou will get the reward finishing the last quest in the chain."
Inst17Quest5_HORDE_Prequest = "Through Greater Magic -> The Ravenwood Scepter" -- 40993, 40994
Inst17Quest5_HORDE_Folgequest = "The Greymane Stone "..YELLOW.."[Gilneas City]"..WHITE.."-> Gift of the Dark Bishop" -- 40996, 40997
Inst17Quest5name1_HORDE = "Garalon's Might" -- 61660
Inst17Quest5name2_HORDE = "Varimathras' Cunning" -- 61661
Inst17Quest5name3_HORDE = "Stillward Amulet" -- 61662



--------------- INST18 - Razorfen Kraul (RFK) ---------------
Inst18Story = "Ten thousand years ago - during the War of the Ancients, the mighty demigod, Agamaggan, came forth to battle the Burning Legion. Though the colossal boar fell in combat, his actions helped save Azeroth from ruin. Yet over time, in the areas where his blood fell, massive thorn-ridden vines sprouted from the earth. The quillboar - believed to be the mortal offspring of the mighty god, came to occupy these regions and hold them sacred. The heart of these thorn-colonies was known as the Razorfen. The great mass of Razorfen Kraul was conquered by the old crone, Charlga Razorflank. Under her rule, the shamanistic quillboar stage attacks on rival tribes as well as Horde villages. Some speculate that Charlga has even been negotiating with agents of the Scourge - aligning her unsuspecting tribe with the ranks of the Undead for some insidious purpose."
Inst18Caption = "Razorfen Kraul"
Inst18QAA = "5 Quests"
Inst18QAH = "5 Quests"

--Quest 1 Alliance
Inst18Quest1 = "1. Blueleaf Tubers" -- 1221
Inst18Quest1_Level = "26"
Inst18Quest1_Attain = "20"
Inst18Quest1_Aim = "In Razorfen Kraul, use the Crate with Holes to summon a Snufflenose Gopher, and use the Command Stick on the gopher to make it search for Tubers. Bring 6 Blueleaf Tubers, the Snufflenose Command Stick and the Crate with Holes to Mebok Mizzyrix in Ratchet."
Inst18Quest1_Location = "Mebok Mizzyrix (The Barrens - Ratchet; "..YELLOW.."62,37"..WHITE..")"
Inst18Quest1_Note = "The Crate, the Stick and the Manual can all be found near Mebok Mizzyrix."
Inst18Quest1_Prequest = "No"
Inst18Quest1_Folgequest = "No"
Inst18Quest1name1 = "A Small Container of Gems"

--Quest 2 Alliance
Inst18Quest2 = "2. Mortality Wanes" -- 1142
Inst18Quest2_Level = "30"
Inst18Quest2_Attain = "25"
Inst18Quest2_Aim = "Find and return Treshala's Pendant to Treshala Fallowbrook in Darnassus."
Inst18Quest2_Location = "Heraltha Fallowbrook (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest2_Note = "The pendant is a random drop. You musst bring back the pendant to Treshala Fallowbrook in Darnassus - Tradesmen Terrace ("..YELLOW.."69,67"..WHITE..")."
Inst18Quest2_Prequest = "No"
Inst18Quest2_Folgequest = "No"
Inst18Quest2name1 = "Mourning Shawl"
Inst18Quest2name2 = "Lancer Boots"

--Quest 3 Alliance
Inst18Quest3 = "3. Willix the Importer" -- 1144
Inst18Quest3_Level = "30"
Inst18Quest3_Attain = "23"
Inst18Quest3_Aim = "Escort Willix the Importer out of Razorfen Kraul."
Inst18Quest3_Location = "Willix the Importer (Razorfen Kraul; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest3_Note = "Willix the Importer must be escorted to the entrance of the instance. The quest is turned in to him when completed."
Inst18Quest3_Prequest = "No"
Inst18Quest3_Folgequest = "No"
Inst18Quest3name1 = "Monkey Ring"
Inst18Quest3name2 = "Snake Hoop"
Inst18Quest3name3 = "Tiger Band"

--Quest 4 Alliance
Inst18Quest4 = "4. The Crone of the Kraul" -- 1101
Inst18Quest4_Level = "34"
Inst18Quest4_Attain = "29"
Inst18Quest4_Aim = "Bring Razorflank's Medallion to Falfindel Waywarder in Thalanaar."
Inst18Quest4_Location = "Falfindel Waywarder (Feralas - Thalanaar; "..YELLOW.."89,46"..WHITE..")"
Inst18Quest4_Note = "Charlga Razorflank "..YELLOW.."[7]"..WHITE.." drops the Medallion required for this quest.\nPrequest starts with Henrig Lonebrow's Journal in dead dwarfs hand at Thousand Needles elevator "..YELLOW.."30.8,24.3"..WHITE.."."
Inst18Quest4_Prequest = "Lonebrow's Journal" -- 1100
Inst18Quest4_Folgequest = "No"
Inst18Quest4name1 = "Berylline Pads"
Inst18Quest4name2 = "Stonefist Girdle"
Inst18Quest4name3 = "Marbled Buckler"

--Quest 5 Alliance
Inst18Quest5 = "5. Fire Hardened Mail" -- 1701
Inst18Quest5_Level = "28"
Inst18Quest5_Attain = "20"
Inst18Quest5_Aim = "Gather the materials Furen Longbeard requires, and bring them to him in Stormwind."
Inst18Quest5_Location = "Furen Longbeard (Stormwind - Dwarven District; "..YELLOW.."57,16"..WHITE..")"
Inst18Quest5_Note = WARRIOR.."(Warrior only)"..WHITE.." You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nThe followup quest is different for each race. Burning Blood for Humans, Iron Coral for Dwarves and Gnomes and Sunscorched Shells for Night Elves." -- 1705, 1710, 1708
Inst18Quest5_Prequest = "The Shieldsmith" -- 1702
Inst18Quest5_Folgequest = "(See Note)"
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst18Quest1_HORDE = Inst18Quest1
Inst18Quest1_HORDE_Level = Inst18Quest1_Level
Inst18Quest1_HORDE_Attain = Inst18Quest1_Attain
Inst18Quest1_HORDE_Aim = Inst18Quest1_Aim
Inst18Quest1_HORDE_Location = Inst18Quest1_Location
Inst18Quest1_HORDE_Note = Inst18Quest1_Note
Inst18Quest1_HORDE_Prequest = Inst18Quest1_Prequest
Inst18Quest1_HORDE_Folgequest = Inst18Quest1_Folgequest
Inst18Quest1name1_HORDE = Inst18Quest1name1

--Quest 2 Horde (same as Quest 3 Alliance)
Inst18Quest2_HORDE = "2. Willix the Importer"
Inst18Quest2_HORDE_Level = Inst18Quest3_Level
Inst18Quest2_HORDE_Attain = Inst18Quest3_Attain
Inst18Quest2_HORDE_Aim = Inst18Quest3_Aim
Inst18Quest2_HORDE_Location = Inst18Quest3_Location
Inst18Quest2_HORDE_Note = Inst18Quest3_Note
Inst18Quest2_HORDE_Prequest = Inst18Quest3_Prequest
Inst18Quest2_HORDE_Folgequest = Inst18Quest3_Folgequest
Inst18Quest2name1_HORDE = Inst18Quest3name1
Inst18Quest2name2_HORDE = Inst18Quest3name2
Inst18Quest2name3_HORDE = Inst18Quest3name3

-- Quest 3 Horde
Inst18Quest3_HORDE = "3. Going, Going, Guano!" -- 1109
Inst18Quest3_HORDE_Level = "33"
Inst18Quest3_HORDE_Attain = "30"
Inst18Quest3_HORDE_Aim = "Bring 1 pile of Kraul Guano to Master Apothecary Faranell in the Undercity."
Inst18Quest3_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69 "..WHITE..")"
Inst18Quest3_HORDE_Note = "Kraul Guano is dropped by any of the bats found within the instance."
Inst18Quest3_HORDE_Prequest = "No"
Inst18Quest3_HORDE_Folgequest = "Hearts of Zeal ("..YELLOW.."[Scarlet Monastery]"..WHITE..")" -- 1113
-- No Rewards for this quest

--Quest 4 Horde
Inst18Quest4_HORDE = "4. A Vengeful Fate" -- 1102
Inst18Quest4_HORDE_Level = "34"
Inst18Quest4_HORDE_Attain = "29"
Inst18Quest4_HORDE_Aim = "Bring Razorflank's Heart to Auld Stonespire in Thunder Bluff."
Inst18Quest4_HORDE_Location = "Auld Stonespire (Thunderbluff; "..YELLOW.."36,59"..WHITE..")"
Inst18Quest4_HORDE_Note = "You can find Charlga Razorflank at "..YELLOW.."[7]"..WHITE.."."
Inst18Quest4_HORDE_Prequest = "No"
Inst18Quest4_HORDE_Folgequest = "No"
Inst18Quest4name1_HORDE = "Berylline Pads"
Inst18Quest4name2_HORDE = "Stonefist Girdle"
Inst18Quest4name3_HORDE = "Marbled Buckler"

--Quest 5 Horde
Inst18Quest5_HORDE = "5. Brutal Armor" -- 1838
Inst18Quest5_HORDE_Level = "30"
Inst18Quest5_HORDE_Attain = "20"
Inst18Quest5_HORDE_Aim = "Bring to Thun'grim Firegaze 15 Smoky Iron Ingots, 10 Powdered Azurite, 10 Iron Bars and a Vial of Phlogiston."
Inst18Quest5_HORDE_Location = "Thun'grim Firegaze (The Barrens; "..YELLOW.."57,30"..WHITE..")"
Inst18Quest5_HORDE_Note = WARRIOR.."(Warrior only)"..WHITE.." You get the Vial of Phlogiston from Roogug at "..YELLOW.."[1]"..WHITE..".\n\nCompleting this quest allows you to start four new quests from the same NPC."
Inst18Quest5_HORDE_Prequest = "Speak with Thun'grim" -- 1825
Inst18Quest5_HORDE_Folgequest = "(See Note)"
-- No Rewards for this quest



--------------- INST19 - SM: Library (SM Lib) ---------------
Inst19Story = "The Monastery was once a proud bastion of Lordaeron's priesthood - a center for learning and enlightenment. With the rise of the undead Scourge during the Third War, the peaceful Monastery was converted into a stronghold of the fanatical Scarlet Crusade. The Crusaders are intolerant of all non-human races, regardless of alliance or affiliation. They believe that any and all outsiders are potential carriers of the undead plague - and must be destroyed. Reports indicate that adventurers who enter the monastery are forced to contend with Scarlet Commander Mograine - who commands a large garrison of fanatically devoted warriors. However, the monastery's true master is High Inquisitor Whitemane - a fearsome priestess who possesses the ability to resurrect fallen warriors to do battle in her name."
Inst19Caption = "SM: Library"
Inst19QAA = "3 Quests"
Inst19QAH = "5 Quests"

--Quest 1 Alliance
Inst19Quest1 = "1. In the Name of the Light" -- 1053
Inst19Quest1_Level = "40"
Inst19Quest1_Attain = "34"
Inst19Quest1_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Raleigh the Devout in Southshore."
Inst19Quest1_Location = "Raleigh the Devout (Hillsbrad Foothills - Southshore; "..YELLOW.."51,58"..WHITE..")"
Inst19Quest1_Note = "This quest line starts at Brother Crowley with quest 'Brother Anton' in Stormwind - Cathedral of Light ("..YELLOW.."42,24"..WHITE..").\nYou can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst19Quest1_Prequest = "Brother Anton -> Down the Scarlet Path" -- 6141 -> 1052
Inst19Quest1_Folgequest = "No"
Inst19Quest1name1 = "Sword of Serenity"
Inst19Quest1name2 = "Bonebiter"
Inst19Quest1name3 = "Black Menace"
Inst19Quest1name4 = "Orb of Lorica"

--Quest 2 Alliance
Inst19Quest2 = "2. Mythology of the Titans" -- 1050
Inst19Quest2_Level = "38"
Inst19Quest2_Attain = "28"
Inst19Quest2_Aim = "Retrieve Mythology of the Titans from the Monastery and bring it to Librarian Mae Paledust in Ironforge."
Inst19Quest2_Location = "Librarian Mae Paledust (Ironforge - Hall of Explorers; "..YELLOW.."74,12"..WHITE..")"
Inst19Quest2_Note = "The book is on the floor on the left side of one of the corridors leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..")."
Inst19Quest2_Prequest = "No"
Inst19Quest2_Folgequest = "No"
Inst19Quest2name1 = "Explorers' League Commendation"

--Quest 3 Alliance
Inst19Quest3 = "3. Rituals of Power" -- 1951
Inst19Quest3_Level = "40"
Inst19Quest3_Attain = "30"
Inst19Quest3_Aim = "Bring the book Rituals of Power to Tabetha in Dustwallow Marsh."
Inst19Quest3_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."43,57"..WHITE..")"
Inst19Quest3_Note = MAGE.."(Mage only)"..WHITE.." You can find the book in the last corridor leading to Arcanist Doan ("..YELLOW.."[2]"..WHITE..")."
Inst19Quest3_Prequest = "Get the Scoop" -- 1950
Inst19Quest3_Folgequest = "Mage's Wand" -- 1952
-- No Rewards for this quest


--Quest 1 Horde
Inst19Quest1_HORDE = "1. Hearts of Zeal" -- 1113
Inst19Quest1_HORDE_Level = "33"
Inst19Quest1_HORDE_Attain = "30"
Inst19Quest1_HORDE_Aim = "Master Apothecary Faranell in the Undercity wants 20 Hearts of Zeal."
Inst19Quest1_HORDE_Location = "Master Apothecary Faranell (Undercity - The Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst19Quest1_HORDE_Note = "All mobs in the Scarlet Monastery drop Hearts of Zeal."
Inst19Quest1_HORDE_Prequest = "Going, Going, Guano! ("..YELLOW.."[Razorfen Kraul]"..WHITE..")" -- 1109
Inst19Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde
Inst19Quest2_HORDE = "2. Into The Scarlet Monastery" -- 1048
Inst19Quest2_HORDE_Level = "42"
Inst19Quest2_HORDE_Attain = "33"
Inst19Quest2_HORDE_Aim = "Kill High Inquisitor Whitemane, Scarlet Commander Mograine, Herod, the Scarlet Champion and Houndmaster Loksey and then report back to Varimathras in the Undercity."
Inst19Quest2_HORDE_Location = "Varimathras (Undercity - Royal Quarter; "..YELLOW.."56,92"..WHITE..")"
Inst19Quest2_HORDE_Note = "You can find High Inquisitor Whitemane and Scarlet Commander Mograine at "..YELLOW.."SM: Cathedral [2]"..WHITE..", Herod at "..YELLOW.."SM: Armory [1]"..WHITE.." and Houndmaster Loksey at "..YELLOW.."SM: Library [1]"..WHITE.."."
Inst19Quest2_HORDE_Prequest = "No"
Inst19Quest2_HORDE_Folgequest = "No"
Inst19Quest2name1_HORDE = "Sword of Omen"
Inst19Quest2name2_HORDE = "Prophetic Cane"
Inst19Quest2name3_HORDE = "Dragon's Blood Necklace"

--Quest 3 Horde
Inst19Quest3_HORDE = "3. Compendium of the Fallen" -- 1049
Inst19Quest3_HORDE_Level = "38"
Inst19Quest3_HORDE_Attain = "28"
Inst19Quest3_HORDE_Aim = "Retrieve the Compendium of the Fallen from the Monastery in Tirisfal Glades and return to Sage Truthseeker in Thunder Bluff."
Inst19Quest3_HORDE_Location = "Sage Truthseeker (Thunderbluff; "..YELLOW.."34,47"..WHITE..")"
Inst19Quest3_HORDE_Note = "You can find the book in the Library section of the Scarlet Monastery."
Inst19Quest3_HORDE_Prequest = "No"
Inst19Quest3_HORDE_Folgequest = "No"
Inst19Quest3name1_HORDE = "Vile Protector"
Inst19Quest3name2_HORDE = "Forcestone Buckler"
Inst19Quest3name3_HORDE = "Omega Orb"

--Quest 4 Horde
Inst19Quest4_HORDE = "4. Test of Lore" -- 1160
Inst19Quest4_HORDE_Level = "36"
Inst19Quest4_HORDE_Attain = "25"
Inst19Quest4_HORDE_Aim = "Find The Beginnings of the Undead Threat, and return it to Parqual Fintallas in Undercity."
Inst19Quest4_HORDE_Location = "Parqual Fintallas (Undercity - The Apothecarium; "..YELLOW.."57,65"..WHITE..")"
Inst19Quest4_HORDE_Note = "Questline starts at Dorn Plainstalker with quest 'Test of Faith'  (Thousand Needles; "..YELLOW.."53,41"..WHITE.."). You can find the book in the Library of Scarlet Monastary."
Inst19Quest4_HORDE_Prequest = "Test of Faith - > Test of Lore" -- 1149 -> 1159
Inst19Quest4_HORDE_Folgequest = "Test of Lore" -- 6628
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 3 Alliance)
Inst19Quest5_HORDE = "5. Rituals of Power"
Inst19Quest5_HORDE_Level = Inst19Quest3_Level
Inst19Quest5_HORDE_Attain = Inst19Quest3_Attain
Inst19Quest5_HORDE_Aim = Inst19Quest3_Aim
Inst19Quest5_HORDE_Location = Inst19Quest3_Location
Inst19Quest5_HORDE_Note = Inst19Quest3_Note
Inst19Quest5_HORDE_Prequest = Inst19Quest3_Prequest
Inst19Quest5_HORDE_Folgequest = Inst19Quest3_Folgequest
-- No Rewards for this quest



--------------- INST20 - SM: Armory (SM Arm) ---------------
Inst20Story = Inst19Story
Inst20Caption = "SM: Armory"
Inst20QAA = "1 Quest"
Inst20QAH = "2 Quests"

--Quest 1 Alliance (same as Quest 1 Alliance INST19)
Inst20Quest1 = Inst19Quest1
Inst20Quest1_Level = Inst19Quest1_Level
Inst20Quest1_Attain = Inst19Quest1_Attain
Inst20Quest1_Aim = Inst19Quest1_Aim
Inst20Quest1_Location = Inst19Quest1_Location
Inst20Quest1_Note = Inst19Quest1_Note
Inst20Quest1_Prequest = Inst19Quest1_Prequest
Inst20Quest1_Folgequest = Inst19Quest1_Folgequest
Inst20Quest1name1 = Inst19Quest1name1
Inst20Quest1name2 = Inst19Quest1name2
Inst20Quest1name3 = Inst19Quest1name3
Inst20Quest1name4 = Inst19Quest1name4


--Quest 1 Horde (same as Quest 1 Horde INST19)
Inst20Quest1_HORDE = Inst19Quest1_HORDE
Inst20Quest1_HORDE_Level = Inst19Quest1_HORDE_Level
Inst20Quest1_HORDE_Attain = Inst19Quest1_HORDE_Attain
Inst20Quest1_HORDE_Aim = Inst19Quest1_HORDE_Aim
Inst20Quest1_HORDE_Location = Inst19Quest1_HORDE_Location
Inst20Quest1_HORDE_Note = Inst19Quest1_HORDE_Note
Inst20Quest1_HORDE_Prequest = Inst19Quest1_HORDE_Prequest
Inst20Quest1_HORDE_Folgequest = Inst19Quest1_HORDE_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Horde INST19)
Inst20Quest2_HORDE = Inst19Quest2_HORDE
Inst20Quest2_HORDE_Level = Inst19Quest2_HORDE_Level
Inst20Quest2_HORDE_Attain = Inst19Quest2_HORDE_Attain
Inst20Quest2_HORDE_Aim = Inst19Quest2_HORDE_Aim
Inst20Quest2_HORDE_Location = Inst19Quest2_HORDE_Location
Inst20Quest2_HORDE_Note = Inst19Quest2_HORDE_Note
Inst20Quest2_HORDE_Prequest = Inst19Quest2_HORDE_Prequest
Inst20Quest2_HORDE_Folgequest = Inst19Quest2_HORDE_Folgequest
Inst20Quest2name1_HORDE = Inst19Quest2name1_HORDE
Inst20Quest2name2_HORDE = Inst19Quest2name2_HORDE
Inst20Quest2name3_HORDE = Inst19Quest2name3_HORDE



--------------- INST21 - SM: Cathedral (SM Cath) ---------------
Inst21Story = Inst19Story
Inst21Caption = "SM: Cathedral"
Inst21QAA = "3 Quests 2TW"
Inst21QAH = "2 Quests"

--Quest 1 Alliance (same as Quest 1 Alliance INST19)
Inst21Quest1 = Inst19Quest1
Inst21Quest1_Level = Inst19Quest1_Level
Inst21Quest1_Attain = Inst19Quest1_Attain
Inst21Quest1_Aim = Inst19Quest1_Aim
Inst21Quest1_Location = Inst19Quest1_Location
Inst21Quest1_Note = Inst19Quest1_Note
Inst21Quest1_Prequest = Inst19Quest1_Prequest
Inst21Quest1_Folgequest = Inst19Quest1_Folgequest
Inst21Quest1name1 = Inst19Quest1name1
Inst21Quest1name2 = Inst19Quest1name2
Inst21Quest1name3 = Inst19Quest1name3
Inst21Quest1name4 = Inst19Quest1name4

--Quest 2 Alliance
Inst21Quest2 = "(TW)2. The Orb of Kaladus" --40233
Inst21Quest2_Level = "38"
Inst21Quest2_Attain = "30"
Inst21Quest2_Aim = "Venture within the Scarlet Monastery and find the Orb of Kaladus, retrieve it, and return to Watch Paladin Janathos at Sorrowguard Keep."
Inst21Quest2_Location = "Watch Paladin Janathos (west of Swamp of Sorrows - Sorrowguard Keep)"
Inst21Quest2_Note = "You can find Orb of Kaladus inside the second chamber, left from "..YELLOW.."[2]"..WHITE.."."
Inst21Quest2_Prequest = "Tales of the Past -> The Forgotten Tome -> Returning to Janathos"
Inst21Quest2_Folgequest = "No"
Inst21Quest2name1 = "Truthkeeper Mantle" --60316
Inst21Quest2name2 = "Lightgraced Mallet" --60317
Inst21Quest2name3 = "Sorrowguard Clutch" --60318

--Quest 3 Alliance
Inst21Quest3 = "(TW)3. Scarlet Corruption" --40935
Inst21Quest3_Level = "44"
Inst21Quest3_Attain = "35"
Inst21Quest3_Aim = "Discover the truth about the fate of High Inquisitor Fairbanks "..YELLOW.."[1]"..WHITE.." for Brother Elias at Shademore Tavern in Gilneas. Slain High Inquisitor Fairbanks"
Inst21Quest3_Location = "Brother Elias <Scarlet Crusade Emissary> (Gilneas - Ruins of Greyshire - Shademore Tavern "..YELLOW.."[33.6,54.1]"..WHITE..", 2nd floor.)"
Inst21Quest3_Note = ""
Inst21Quest3_Prequest = "Allies Against Undeath" --40934
Inst21Quest3_Folgequest = "No"
Inst21Quest3name1 = "Ring of Holy Sacrement" --61478


--Quest 1 Horde (same as Quest 1 Horde INST19)
Inst21Quest1_HORDE = Inst19Quest1_HORDE
Inst21Quest1_HORDE_Level = Inst19Quest1_HORDE_Level
Inst21Quest1_HORDE_Attain = Inst19Quest1_HORDE_Attain
Inst21Quest1_HORDE_Aim = Inst19Quest1_HORDE_Aim
Inst21Quest1_HORDE_Location = Inst19Quest1_HORDE_Location
Inst21Quest1_HORDE_Note = Inst19Quest1_HORDE_Note
Inst21Quest1_HORDE_Prequest = Inst19Quest1_HORDE_Prequest
Inst21Quest1_HORDE_Folgequest = Inst19Quest1_HORDE_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Horde INST19)
Inst21Quest2_HORDE = Inst19Quest2_HORDE
Inst21Quest2_HORDE_Level = Inst19Quest2_HORDE_Level
Inst21Quest2_HORDE_Attain = Inst19Quest2_HORDE_Attain
Inst21Quest2_HORDE_Aim = Inst19Quest2_HORDE_Aim
Inst21Quest2_HORDE_Location = Inst19Quest2_HORDE_Location
Inst21Quest2_HORDE_Note = Inst19Quest2_HORDE_Note
Inst21Quest2_HORDE_Prequest = Inst19Quest2_HORDE_Prequest
Inst21Quest2_HORDE_Folgequest = Inst19Quest2_HORDE_Folgequest
Inst21Quest2name1_HORDE = Inst19Quest2name1_HORDE
Inst21Quest2name2_HORDE = Inst19Quest2name2_HORDE
Inst21Quest2name3_HORDE = Inst19Quest2name3_HORDE



--------------- INST22 - SM: Graveyard (SM GY) ---------------
Inst22Story = Inst19Story
Inst22Caption = "SM: Graveyard"
Inst22QAA = "No Quest"
Inst22QAH = "3 Quests 1TW"

--Quest 1 Horde (same as Quest 1 Horde INST19)
Inst22Quest1_HORDE = Inst19Quest1_HORDE
Inst22Quest1_HORDE_Level = Inst19Quest1_HORDE_Level
Inst22Quest1_HORDE_Attain = Inst19Quest1_HORDE_Attain
Inst22Quest1_HORDE_Aim = Inst19Quest1_HORDE_Aim
Inst22Quest1_HORDE_Location = Inst19Quest1_HORDE_Location
Inst22Quest1_HORDE_Note = Inst19Quest1_HORDE_Note
Inst22Quest1_HORDE_Prequest = Inst19Quest1_HORDE_Prequest
Inst22Quest1_HORDE_Folgequest = Inst19Quest1_HORDE_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst22Quest2_HORDE = "2. Vorrel's Revenge" --1051
Inst22Quest2_HORDE_Level = "33"
Inst22Quest2_HORDE_Attain = "25"
Inst22Quest2_HORDE_Aim = "Return Vorrel Sengutz's wedding ring to Monika Sengutz in Tarren Mill."
Inst22Quest2_HORDE_Location = "Vorrel Sengutz (Scarlet Monastery - Graveyard; "..YELLOW.."[1]"..WHITE..")"
Inst22Quest2_HORDE_Note = "You can find Vorrel Sengutz at the beginning of the Graveyard section of the Scarlet Monastery. Nancy Vishas, who drops the ring needed for this quest, can be found in a house in the Alterac Mountains ("..YELLOW.."31,32"..WHITE..")."
Inst22Quest2_HORDE_Prequest = "No"
Inst22Quest2_HORDE_Folgequest = "No"
Inst22Quest2name1_HORDE = "Vorrel's Boots"
Inst22Quest2name2_HORDE = "Mantle of Woe"
Inst22Quest2name3_HORDE = "Grimsteel Cape"

--Quest 3 Horde
Inst22Quest3_HORDE = "(TW)3. Paint the Roses Red" --60116
Inst22Quest3_HORDE_Level = "29"
Inst22Quest3_HORDE_Attain = "27"
Inst22Quest3_HORDE_Aim = "Eliminate the Scarlet forces outside the Scarlet Monastery, then return to Deathguard Burgess in Brill.\nScarlet Scout slain (5)\nScarlet Preserver slain (5)\nScarlet Sentry slain (10)"
Inst22Quest3_HORDE_Location = "Deathguard Burgess (Tirisfal Glades - Brill; "..YELLOW.."61,52"..WHITE..")"
Inst22Quest3_HORDE_Note = "You can finish this quest outside.\nQuestline starts at Innkeeper Norman <Innkeeper> in Undercity with quest 'Scarlet with Rage'."
Inst22Quest3_HORDE_Prequest = "Scarlet with Rage"
Inst22Quest3_HORDE_Folgequest = "No"
Inst22Quest3name1_HORDE = "Nathrezim Wedge" --51832
Inst22Quest3name2_HORDE = "Femur Staff" --51833
Inst22Quest3name3_HORDE = "Scarlet Pillar" --51834


--------------- INST23 - Scholomance (Scholo) ---------------
Inst23Story = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster."
Inst23Caption = "Scholomance"
Inst23QAA = "12 Quests 1TW"
Inst23QAH = "12 Quests 1TW"

--Quest 1 Alliance
Inst23Quest1 = "1. Plagued Hatchlings" -- 5529
Inst23Quest1_Level = "58"
Inst23Quest1_Attain = "55"
Inst23Quest1_Aim = "Kill 20 Plagued Hatchlings, then return to Betina Bigglezink at the Light's Hope Chapel."
Inst23Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst23Quest1_Note = "The Plagued Hatchlings are on the way to Rattlegore in a large room."
Inst23Quest1_Prequest = "No"
Inst23Quest1_Folgequest = "Healthy Dragon Scale" -- 5582
-- No Rewards for this quest

--Quest 2 Alliance
Inst23Quest2 = "2. Healthy Dragon Scale" -- 5582
Inst23Quest2_Level = "58"
Inst23Quest2_Attain = "55"
Inst23Quest2_Aim = "Bring the Healthy Dragon Scale to Betina Bigglezink at the Light's Hope Chapel in Eastern Plaguelands."
Inst23Quest2_Location = "Healthy Dragon Scale (random drop in Scholomance)"
Inst23Quest2_Note = "Plagued Hatchlings drop the Healthy Dragon Scales (8% chance to drop). You can find Betina Bigglezink at Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."81,59"..WHITE..")."
Inst23Quest2_Prequest = "Plagued Hatchlings" -- 5529
Inst23Quest2_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Alliance
Inst23Quest3 = "3. Doctor Theolen Krastinov, the Butcher" -- 5382
Inst23Quest3_Level = "60"
Inst23Quest3_Attain = "55"
Inst23Quest3_Aim = "Find Doctor Theolen Krastinov inside the Scholomance. Destroy him, then burn the Remains of Eva Sarkhoff and the Remains of Lucien Sarkhoff. Return to Eva Sarkhoff when the task is complete."
Inst23Quest3_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest3_Note = "You find Doctor Theolen Krastinov, the remains of Eva Sarkhoff and the remains of Lucien Sarkhoff at "..YELLOW.."[9]"..WHITE.."."
Inst23Quest3_Prequest = "No"
Inst23Quest3_Folgequest = "Krastinov's Bag of Horrors" -- 5515
-- No Rewards for this quest

--Quest 4 Alliance
Inst23Quest4 = "4. Krastinov's Bag of Horrors" -- 5515
Inst23Quest4_Level = "60"
Inst23Quest4_Attain = "55"
Inst23Quest4_Aim = "Locate Jandice Barov in the Scholomance and destroy her. From her corpse recover Krastinov's Bag of Horrors. Return the bag to Eva Sarkhoff."
Inst23Quest4_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest4_Note = "You can find Jandice Barov at "..YELLOW.."[3]"..WHITE.."."
Inst23Quest4_Prequest = "Doctor Theolen Krastinov, the Butcher" -- 5382
Inst23Quest4_Folgequest = "Kirtonos the Herald" -- 5384
-- No Rewards for this quest

--Quest 5 Alliance
Inst23Quest5 = "5. Kirtonos the Herald" -- 5384
Inst23Quest5_Level = "60"
Inst23Quest5_Attain = "55"
Inst23Quest5_Aim = "Return to the Scholomance with the Blood of Innocents. Find the porch and place the Blood of Innocents in the brazier. Kirtonos will come to feast upon your soul. Fight valiantly, do not give an inch! Destroy Kirtonos and return to Eva Sarkhoff."
Inst23Quest5_Location = "Eva Sarkhoff (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest5_Note = "The porch is at "..YELLOW.."[2]"..WHITE.."."
Inst23Quest5_Prequest = "Krastinov's Bag of Horrors" -- 5515
Inst23Quest5_Folgequest = "The Human, Ras Frostwhisper" -- 5461
Inst23Quest5name1 = "Spectral Essence"
Inst23Quest5name2 = "Penelope's Rose"
Inst23Quest5name3 = "Mirah's Song"

--Quest 6 Alliance
Inst23Quest6 = "6. The Lich, Ras Frostwhisper" -- 5466
Inst23Quest6_Level = "60"
Inst23Quest6_Attain = "57"
Inst23Quest6_Aim = "Find Ras Frostwhisper in the Scholomance. When you have found him, use the Soulbound Keepsake on his undead visage. Should you succeed in reverting him to a mortal, strike him down and recover the Human Head of Ras Frostwhisper. Take the head back to Magistrate Marduke."
Inst23Quest6_Location = "Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest6_Note = "You can find Ras Frostwhisper at "..YELLOW.."[7]"..WHITE.."."
Inst23Quest6_Prequest = "The Human, Ras Frostwhisper - > Soulbound Keepsake" -- 5461 -> 5465
Inst23Quest6_Folgequest = "No"
Inst23Quest6name1 = "Darrowshire Strongguard"
Inst23Quest6name2 = "Warblade of Caer Darrow"
Inst23Quest6name3 = "Crown of Caer Darrow"
Inst23Quest6name4 = "Darrowspike"

--Quest 7 Alliance
Inst23Quest7 = "7. Barov Family Fortune" -- 5343
Inst23Quest7_Level = "60"
Inst23Quest7_Attain = "52"
Inst23Quest7_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Weldon Barov when you have completed this task."
Inst23Quest7_Location = "Weldon Barov (Western Plaguelands - Chillwind Camp; "..YELLOW.."43,83"..WHITE..")"
Inst23Quest7_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE.."."
Inst23Quest7_Prequest = "No"
Inst23Quest7_Folgequest = "The Last Barov" -- 5344
-- No Rewards for this quest

--Quest 8 Alliance
Inst23Quest8 = "8. Dawn's Gambit" -- 4771
Inst23Quest8_Level = "60"
Inst23Quest8_Attain = "57"
Inst23Quest8_Aim = "Place Dawn's Gambit in the Viewing Room of the Scholomance. Defeat Vectus, then return to Betina Bigglezink."
Inst23Quest8_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst23Quest8_Note = "Broodling Essence begins at Tinkee Steamboil (Burning Steppes - Flame Crest; "..YELLOW.."65,23"..WHITE.."). The Viewing Room is at "..YELLOW.."[6]"..WHITE.."."
Inst23Quest8_Prequest = "Broodling Essence - > Betina Bigglezink" -- 4726 -> 5531
Inst23Quest8_Folgequest = "No"
Inst23Quest8name1 = "Windreaper"
Inst23Quest8name2 = "Dancing Sliver"

--Quest 9 Alliance
Inst23Quest9 = "9. Imp Delivery" -- 7629
Inst23Quest9_Level = "60"
Inst23Quest9_Attain = "60"
Inst23Quest9_Aim = "Bring the Imp in a Yesr to the alchemy lab in the Scholomance. After the parchment is created, return the jar to Gorzeeki Wildeyes."
Inst23Quest9_Location = "Gorzeeki Wildeyes (Burning Steppes; "..YELLOW.."12,31"..WHITE..")"
Inst23Quest9_Note = WARLOCK.."(Warlock only)"..WHITE.." You find the alchemy lab at "..YELLOW.."[7]"..WHITE.."."
Inst23Quest9_Prequest = "Mor'zul Bloodbringer - > Xorothian Stardust" -- 7562 -> 7625
Inst23Quest9_Folgequest = "Dreadsteed of Xoroth ("..YELLOW.."Dire Maul West"..WHITE..")" -- 7631
-- No Rewards for this quest

--Quest 10 Alliance
Inst23Quest10 = "10. The Left Piece of Lord Valthalak's Amulet" -- 8969
Inst23Quest10_Level = "60"
Inst23Quest10_Attain = "58"
Inst23Quest10_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst23Quest10_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst23Quest10_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst23Quest10_Prequest = "Components of Importance" -- 8965
Inst23Quest10_Folgequest = "I See Alcaz Island In Your Future..." -- 8970
-- No Rewards for this quest

--Quest 11 Alliance
Inst23Quest11 = "11. The Right Piece of Lord Valthalak's Amulet" -- 8992
Inst23Quest11_Level = "60"
Inst23Quest11_Attain = "58"
Inst23Quest11_Aim = "Use the Brazier of Beckoning to summon forth the spirit of Kormok and slay him. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst23Quest11_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst23Quest11_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nKormok is summoned at "..YELLOW.."[7]"..WHITE.."."
Inst23Quest11_Prequest = "More Components of Importance" -- 8988
Inst23Quest11_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 12 Alliance
Inst23Quest12 = "(TW)12. A Favor for Farsan" -- 40237
Inst23Quest12_Level = "58"
Inst23Quest12_Attain = "55"
Inst23Quest12_Aim = "Venture into Scholomance and recover the book 'Fire Beckoning and Command' for Strahad Farsan in Ratchet."
Inst23Quest12_Location = "Strahad Farsan (The Barrens - Ratchet; "..YELLOW.."62.6,35.5"..WHITE..")"
Inst23Quest12_Note = "Questline starts at Craftsman Wilhelm (Eastern Plaguelands - Light's Hope Chapel) with quest 'A New Rune-Frontier'.\nYou will get this reward after finishing the last quest in the questline."
Inst23Quest12_Prequest = "A New Rune-Frontier -> The Secrets of Darkforging -> The Secrets of Darkforging" -- 40234, 40235, 40236
Inst23Quest12_Folgequest = "A Meeting With The Dreadlord" --40238
Inst23Quest12name1 = "Tempered Runeblade" --81060


--Quest 1 Horde (same as Quest 1 Alliance)
Inst23Quest1_HORDE = Inst23Quest1
Inst23Quest1_HORDE_Level = Inst23Quest1_Level
Inst23Quest1_HORDE_Attain = Inst23Quest1_Attain
Inst23Quest1_HORDE_Aim = Inst23Quest1_Aim
Inst23Quest1_HORDE_Location = Inst23Quest1_Location
Inst23Quest1_HORDE_Note = Inst23Quest1_Note
Inst23Quest1_HORDE_Prequest = Inst23Quest1_Prequest
Inst23Quest1_HORDE_Folgequest = Inst23Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst23Quest2_HORDE = Inst23Quest2
Inst23Quest2_HORDE_Level = Inst23Quest2_Level
Inst23Quest2_HORDE_Attain = Inst23Quest2_Attain
Inst23Quest2_HORDE_Aim = Inst23Quest2_Aim
Inst23Quest2_HORDE_Location = Inst23Quest2_Location
Inst23Quest2_HORDE_Note = Inst23Quest2_Note
Inst23Quest2_HORDE_Prequest = Inst23Quest2_Prequest
Inst23Quest2_HORDE_Folgequest = Inst23Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst23Quest3_HORDE = Inst23Quest3
Inst23Quest3_HORDE_Level = Inst23Quest3_Level
Inst23Quest3_HORDE_Attain = Inst23Quest3_Attain
Inst23Quest3_HORDE_Aim = Inst23Quest3_Aim
Inst23Quest3_HORDE_Location = Inst23Quest3_Location
Inst23Quest3_HORDE_Note = Inst23Quest3_Note
Inst23Quest3_HORDE_Prequest = Inst23Quest3_Prequest
Inst23Quest3_HORDE_Folgequest = Inst23Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst23Quest4_HORDE = Inst23Quest4
Inst23Quest4_HORDE_Level = Inst23Quest4_Level
Inst23Quest4_HORDE_Attain = Inst23Quest4_Attain
Inst23Quest4_HORDE_Aim = Inst23Quest4_Aim
Inst23Quest4_HORDE_Location = Inst23Quest4_Location
Inst23Quest4_HORDE_Note = Inst23Quest4_Note
Inst23Quest4_HORDE_Prequest = Inst23Quest4_Prequest
Inst23Quest4_HORDE_Folgequest = Inst23Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst23Quest5_HORDE = Inst23Quest5
Inst23Quest5_HORDE_Level = Inst23Quest5_Level
Inst23Quest5_HORDE_Attain = Inst23Quest5_Attain
Inst23Quest5_HORDE_Aim = Inst23Quest5_Aim
Inst23Quest5_HORDE_Location = Inst23Quest5_Location
Inst23Quest5_HORDE_Note = Inst23Quest5_Note
Inst23Quest5_HORDE_Prequest = Inst23Quest5_Prequest
Inst23Quest5_HORDE_Folgequest = Inst23Quest5_Folgequest
Inst23Quest5name1_HORDE = Inst23Quest5name1
Inst23Quest5name2_HORDE = Inst23Quest5name2
Inst23Quest5name3_HORDE = Inst23Quest5name3

--Quest 6 Horde (same as Quest 6 Alliance)
Inst23Quest6_HORDE = Inst23Quest6
Inst23Quest6_HORDE_Level = Inst23Quest6_Level
Inst23Quest6_HORDE_Attain = Inst23Quest6_Attain
Inst23Quest6_HORDE_Aim = Inst23Quest6_Aim
Inst23Quest6_HORDE_Location = Inst23Quest6_Location
Inst23Quest6_HORDE_Note = Inst23Quest6_Note
Inst23Quest6_HORDE_Prequest = Inst23Quest6_Prequest
Inst23Quest6_HORDE_Folgequest = Inst23Quest6_Folgequest
Inst23Quest6name1_HORDE = Inst23Quest6name1
Inst23Quest6name2_HORDE = Inst23Quest6name2
Inst23Quest6name3_HORDE = Inst23Quest6name3
Inst23Quest6name4_HORDE = Inst23Quest6name4

--Quest 7 Horde
Inst23Quest7_HORDE = "7. Barov Family Fortune" -- 5341
Inst23Quest7_HORDE_Level = "60"
Inst23Quest7_HORDE_Attain = "52"
Inst23Quest7_HORDE_Aim = "Venture to the Scholomance and recover the Barov family fortune. Four deeds make up this fortune: The Deed to Caer Darrow; The Deed to Brill; The Deed to Tarren Mill; and The Deed to Southshore. Return to Alexi Barov when you have completed this task."
Inst23Quest7_HORDE_Location = "Alexi Barov (Tirisfal Glades - The Bulwark; "..YELLOW.."80,73"..WHITE..")"
Inst23Quest7_HORDE_Note = "You can find The Deed to Caer Darrow at "..YELLOW.."[12]"..WHITE..", The Deed to Brill at "..YELLOW.."[7]"..WHITE..", The Deed to Tarren Mill at "..YELLOW.."[4]"..WHITE.." and The Deed to Southshore at "..YELLOW.."[1]"..WHITE.."."
Inst23Quest7_HORDE_Prequest = "No"
Inst23Quest7_HORDE_Folgequest = "The Last Barov" -- 5342
-- No Rewards for this quest

--Quest 8 Horde (same as Quest 8 Alliance)
Inst23Quest8_HORDE = Inst23Quest8
Inst23Quest8_HORDE_Level = Inst23Quest8_Level
Inst23Quest8_HORDE_Attain = Inst23Quest8_Attain
Inst23Quest8_HORDE_Aim = Inst23Quest8_Aim
Inst23Quest8_HORDE_Location = Inst23Quest8_Location
Inst23Quest8_HORDE_Note = Inst23Quest8_Note
Inst23Quest8_HORDE_Prequest = Inst23Quest8_Prequest
Inst23Quest8_HORDE_Folgequest = Inst23Quest8_Folgequest
Inst23Quest8name1_HORDE = Inst23Quest8name1
Inst23Quest8name2_HORDE = Inst23Quest8name2

--Quest 9 Horde (same as Quest 9 Alliance)
Inst23Quest9_HORDE = Inst23Quest9
Inst23Quest9_HORDE_Level = Inst23Quest9_Level
Inst23Quest9_HORDE_Attain = Inst23Quest9_Attain
Inst23Quest9_HORDE_Aim = Inst23Quest9_Aim
Inst23Quest9_HORDE_Location = Inst23Quest9_Location
Inst23Quest9_HORDE_Note = Inst23Quest9_Note
Inst23Quest9_HORDE_Prequest = Inst23Quest9_Prequest
Inst23Quest9_HORDE_Folgequest = Inst23Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde (same as Quest 10 Alliance)
Inst23Quest10_HORDE = Inst23Quest10
Inst23Quest10_HORDE_Level = Inst23Quest10_Level
Inst23Quest10_HORDE_Attain = Inst23Quest10_Attain
Inst23Quest10_HORDE_Aim = Inst23Quest10_Aim
Inst23Quest10_HORDE_Location = Inst23Quest10_Location
Inst23Quest10_HORDE_Note = Inst23Quest10_Note
Inst23Quest10_HORDE_Prequest = Inst23Quest10_Prequest
Inst23Quest10_HORDE_Folgequest = Inst23Quest10_Folgequest
-- No Rewards for this quest

--Quest 11 Horde (same as Quest 11 Alliance)
Inst23Quest11_HORDE = Inst23Quest11
Inst23Quest11_HORDE_Level = Inst23Quest11_Level
Inst23Quest11_HORDE_Attain = Inst23Quest11_Attain
Inst23Quest11_HORDE_Aim = Inst23Quest11_Aim
Inst23Quest11_HORDE_Location = Inst23Quest11_Location
Inst23Quest11_HORDE_Note = Inst23Quest11_Note
Inst23Quest11_HORDE_Prequest = Inst23Quest11_Prequest
Inst23Quest11_HORDE_Folgequest = Inst23Quest11_Folgequest
-- No Rewards for this quest

--Quest 12 Horde (same as Quest 12 Alliance)
Inst23Quest12_HORDE = Inst23Quest12
Inst23Quest12_HORDE_Level = Inst23Quest12_Level
Inst23Quest12_HORDE_Attain = Inst23Quest12_Attain
Inst23Quest12_HORDE_Aim = Inst23Quest12_Aim
Inst23Quest12_HORDE_Location = Inst23Quest12_Location
Inst23Quest12_HORDE_Note = Inst23Quest12_Note
Inst23Quest12_HORDE_Prequest = Inst23Quest12_Prequest
Inst23Quest12_HORDE_Folgequest = Inst23Quest12_Folgequest
Inst23Quest12name1_HORDE = Inst23Quest12name1



--------------- INST24 - Shadowfang Keep (SFK) ---------------
Inst24Story = "During the Third War, the wizards of the Kirin Tor battled against the undead armies of the Scourge. When the wizards of Dalaran died in battle, they would rise soon after - adding their former might to the growing Scourge. Frustrated by their lack of progress (and against the advice of his peers) the Archmage, Arugal elected to summon extra-dimensional entities to bolster Dalaran's diminishing ranks. Arugal's summoning brought the ravenous worgen into the world of Azeroth. The feral wolf-men slaughtered not only the Scourge, but quickly turned on the wizards themselves. The worgen laid siege to the keep of the noble, Baron Silverlaine. Situated above the tiny hamlet of Pyrewood, the keep quickly fell into shadow and ruin. Driven mad with guilt, Arugal adopted the worgen as his children and retreated to the newly dubbed 'Shadowfang Keep'. It's said he still resides there, protected by his massive pet, Fenrus - and haunted by the vengeful ghost of Baron Silverlaine."
Inst24Caption = "Shadowfang Keep"
Inst24QAA = "5 Quests 3TW"
Inst24QAH = "7 Quests 3TW"

--Quest 1 Alliance
Inst24Quest1 = "1. The Test of Righteousness" -- 1654
Inst24Quest1_Level = "22"
Inst24Quest1_Attain = "20"
Inst24Quest1_Aim = "Using Jordan's Weapon Notes, find some Whitestone Oak Lumber, Bailor's Refined Ore Shipment, Jordan's Smithing Hammer, and a Kor Gem, and return them to Jordan Stilwell in Ironforge."
Inst24Quest1_Location = "Jordan Stilwell (Dun Morogh - Ironforge Entrance; "..YELLOW.."52,36"..WHITE..")"
Inst24Quest1_Note = PALADIN.."(Paladin only)"..WHITE.." To see the note click on  "..YELLOW.."[The Test of Righteousness Information]"..WHITE.."."
Inst24Quest1_Page = {2, "\n1. You get the  Whitestone Oak Lumber from Goblin Woodcarvers in "..YELLOW.."[Deadmines]"..WHITE..".\n\n2. To get the Bailor's Refined Ore Shipment you must talk to Bailor Stonehand (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE.."). He gives you the 'Bailor's Ore Shipment' quest. You find the Jordan's Ore Shipment behind a tree at "..YELLOW.."71,21"..WHITE.."\n\n3. You get Jordan's Smithing Hammer in "..YELLOW.."[Shadowfang Keep]"..WHITE.." at "..YELLOW.."[3]"..WHITE..".\n\n4. To get a Kor Gem you have to go to Thundris Windweaver (Darkshore - Auberdine; "..YELLOW.."37,40"..WHITE..") and do the 'Seeking the Kor Gem' quest. For this quest, you must kill Blackfathom oracles or priestesses before "..YELLOW.."[Blackfathom Deeps]"..WHITE..". They drop a corrupted Kor Gem. Thundris Windweaver will clean it for you.", };
Inst24Quest1_Prequest = "The Tome of Valor -> The Test of Righteousness" -- 1651 -> 1653
Inst24Quest1_Folgequest = "The Test of Righteousness" -- 1806
Inst24Quest1name1 = "Verigan's Fist"

--Quest 2 Alliance
Inst24Quest2 = "2. The Orb of Soran'ruk" -- 1740
Inst24Quest2_Level = "25"
Inst24Quest2_Attain = "20"
Inst24Quest2_Aim = "Find 3 Soran'ruk Fragments and 1 Large Soran'ruk Fragment and return them to Doan Karhan in the Barrens."
Inst24Quest2_Location = "Doan Karhan (Barrens; "..YELLOW.."49,57"..WHITE..")"
Inst24Quest2_Note = WARLOCK.."(Warlock only)"..WHITE.." You get the 3 Soran'ruk Fragments from Twilight Accolytes in "..YELLOW.."[Blackfathom Deeps]"..WHITE..". You get the Large Soran'ruk Fragment in "..YELLOW.."[Shadowfang Keep]"..WHITE.." from Shadowfang Darksouls."
Inst24Quest2_Prequest = "No"
Inst24Quest2_Folgequest = "No"
Inst24Quest2name1 = "Orb of Soran'ruk"
Inst24Quest2name2 = "Staff of Soran'ruk"

--Quest 3 Alliance
Inst24Quest3 = "(TW)3. Arugal's Folly" -- 60108
Inst24Quest3_Level = "27"
Inst24Quest3_Attain = "22"
Inst24Quest3_Aim = "High Sorcerer Andromath has tasked you with the death of Archmage Arugal "..YELLOW.."[12]"..WHITE..". Return to him when you're done."
Inst24Quest3_Location = "High Sorcerer Andromath (Stormwind - The Mage Quarter, Mage Tower)"
Inst24Quest3_Note = ""
Inst24Quest3_Prequest = "No"
Inst24Quest3_Folgequest = "No"
Inst24Quest3name1 = "Signet of Arugal" --51805

--Quest 4 Alliance
Inst24Quest4 = "(TW)4. The Missing Sorcerer" -- 60109
Inst24Quest4_Level = "24"
Inst24Quest4_Attain = "22"
Inst24Quest4_Aim = "High Sorcerer Andromath wants you to travel to Shadowfang Keep in Silverpine Forest and find out what happened to Sorcerer Ashcrombe."
Inst24Quest4_Location = "High Sorcerer Andromath (Stormwind - The Mage Quarter, Mage Tower)"
Inst24Quest4_Note = "Sorcerer Ashcrombe is in the cage "..YELLOW.."[1]"..WHITE.."."
Inst24Quest4_Prequest = "No"
Inst24Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst24Quest5 = "(TW)5. Blood of Vorgendor"
Inst24Quest5_Level = "60"
Inst24Quest5_Attain = "60"
Inst24Quest5_Aim = "Gather worgen blood for Fandral Staghelm. He requires blood samples from Karazhan, Gilneas City and Shadowfang Keep."
Inst24Quest5_Location = "Arch Druid Fandral Staghelm (Darnassus - Cenarion Enclave "..YELLOW.."35,10"..WHITE..")"
Inst24Quest5_Note = "Shadowfang Blood drops from worgens inside the dungeon."
Inst24Quest5_Prequest = "Scythe of the Goddess"
Inst24Quest5_Folgequest = "Wolfblood"

--Quest 1 Horde
Inst24Quest1_HORDE = "1. Deathstalkers in Shadowfang" -- 1098
Inst24Quest1_HORDE_Level = "25"
Inst24Quest1_HORDE_Attain = "18"
Inst24Quest1_HORDE_Aim = "Find the Deathstalker Adamant and Deathstalker Vincent."
Inst24Quest1_HORDE_Location = "High Executor Hadrec (Silverpine Forest - The Sepulcher; "..YELLOW.."43,40"..WHITE..")"
Inst24Quest1_HORDE_Note = "You find Deathstalker Adamant at "..YELLOW.."[1]"..WHITE..". Deathstalker Vincent is on the right side when you go into the courtyard at "..YELLOW.."[2]"..WHITE.."."
Inst24Quest1_HORDE_Prequest = "No"
Inst24Quest1_HORDE_Folgequest = "No"
Inst24Quest1name1_HORDE = "Ghostly Mantle"

--Quest 2 Horde
Inst24Quest2_HORDE = "2. The Book of Ur" -- 1013
Inst24Quest2_HORDE_Level = "26"
Inst24Quest2_HORDE_Attain = "16"
Inst24Quest2_HORDE_Aim = "Bring the Book of Ur to Keeper Bel'dugur at the Apothecarium in the Undercity."
Inst24Quest2_HORDE_Location = "Keeper Bel'dugur (Undercity - The Apothecarium; "..YELLOW.."53,54"..WHITE..")"
Inst24Quest2_HORDE_Note = "You find the book at "..YELLOW.."[8]"..WHITE.." on the left side when you enter the room."
Inst24Quest2_HORDE_Prequest = "No"
Inst24Quest2_HORDE_Folgequest = "No"
Inst24Quest2name1_HORDE = "Grizzled Boots"
Inst24Quest2name2_HORDE = "Steel-clasped Bracers"

--Quest 3 Horde
Inst24Quest3_HORDE = "3. Arugal Must Die" -- 1014
Inst24Quest3_HORDE_Level = "27"
Inst24Quest3_HORDE_Attain = "18"
Inst24Quest3_HORDE_Aim = "Kill Arugal and bring his head to Dalar Dawnweaver at the Sepulcher."
Inst24Quest3_HORDE_Location = "Dalar Dawnweaver (Silverpine Forest - The Sepulcher; "..YELLOW.."44,39"..WHITE..")"
Inst24Quest3_HORDE_Note = "You find Archmage Arugal at "..YELLOW.."[12]"..WHITE.."."
Inst24Quest3_HORDE_Prequest = "No"
Inst24Quest3_HORDE_Folgequest = "No"
Inst24Quest3name1_HORDE = "Seal of Sylvanas"

--Quest 4 Horde (same as Quest 2 Alliance)
Inst24Quest4_HORDE = "4. The Orb of Soran'ruk"
Inst24Quest4_HORDE_Level = Inst24Quest2_Level
Inst24Quest4_HORDE_Attain = Inst24Quest2_Attain
Inst24Quest4_HORDE_Aim = Inst24Quest2_Aim
Inst24Quest4_HORDE_Location = Inst24Quest2_Location
Inst24Quest4_HORDE_Note = Inst24Quest2_Note
Inst24Quest4_HORDE_Prequest = Inst24Quest2_Prequest
Inst24Quest4_HORDE_Folgequest = Inst24Quest2_Folgequest
Inst24Quest4name1_HORDE = Inst24Quest2name1
Inst24Quest4name2_HORDE = Inst24Quest2name1

--Quest 5 Horde
Inst24Quest5_HORDE = "(TW)5. Into The Jaws" -- 40281
Inst24Quest5_HORDE_Level = "25"
Inst24Quest5_HORDE_Attain = "15"
Inst24Quest5_HORDE_Aim = "Find Melenas' Belongings in the Shadowfang Keep Library and return them to Pierce Shackleton in the Undercity."
Inst24Quest5_HORDE_Location = "Pierce Shackleton (Undercity - Magic Quarter "..YELLOW.."85.4,13.6"..WHITE..")"
Inst24Quest5_HORDE_Note = "You find Melenas' Belongings at "..YELLOW.."[10]"..WHITE..", a box on the floor between two left book shelves .\nQuestline starts at Duke Nargelas (Tirisfal Glades - Glenshire, west of Tirisfal Glades).\nQuest reward you will get after finishing next quest."
Inst24Quest5_HORDE_Prequest = "Darlthos Heritage -> A Different Type of Lock -> Ways of Magic" --40278, 40279, 40280
Inst24Quest5_HORDE_Folgequest = "Darlthos Legacy" --40282
Inst24Quest5name1_HORDE = "Sword of Laneron" --60392
Inst24Quest5name2_HORDE = "Shield of Mathela" --60393

--Quest 6 Horde
Inst24Quest6_HORDE = "(TW)6. Too Late to Prelate"
Inst24Quest6_HORDE_Level = "22"
Inst24Quest6_HORDE_Attain = "16"
Inst24Quest6_HORDE_Aim = "Slay Prelate Ironmane and return to Father Brightcopf in Glenshire."
Inst24Quest6_HORDE_Location = "Father Brightcopf (Tirisfal Glades - Glenshire "..YELLOW.."20.9,68.7"..WHITE..")"
Inst24Quest6_HORDE_Note = "Prelate Ironmane is at "..YELLOW.."[13]"..WHITE.."."
Inst24Quest6_HORDE_Prequest = "To Guard the Undead -> To Aid Brightcopf"
Inst24Quest6_HORDE_Folgequest = "No"
Inst24Quest6name1_HORDE = "Necklace of Redemption"

--Quest 7 Horde
Inst24Quest7_HORDE = "(TW)7. The Wolf, the Crone and the Scythe"
Inst24Quest7_HORDE_Level = "60"
Inst24Quest7_HORDE_Attain = "60"
Inst24Quest7_HORDE_Aim = "Gather worgen blood for Magatha Grimtotem. She requires blood samples from Karazhan, Gilneas City and Shadowfang Keep."
Inst24Quest7_HORDE_Location = "Magatha Grimtotem (Thunder Bluff - Elder Rise "..YELLOW.."70,31"..WHITE..")"
Inst24Quest7_HORDE_Note = "Shadowfang Blood drops from worgens inside the dungeon."
Inst24Quest7_HORDE_Prequest = "Scythe of the Goddess"
Inst24Quest7_HORDE_Folgequest = "Wolfblood"

--------------- INST25 - Stratholme (Strat) ------------
Inst25Story = "Once the jewel of northern Lordaeron, the city of Stratholme is where Prince Arthas turned against his mentor, Uther Lightbringer, and slaughtered hundreds of his own subjects who were believed to have contracted the dreaded plague of undeath. Arthas' downward spiral and ultimate surrender to the Lich King soon followed. The broken city is now inhabited by the undead Scourge - led by the powerful lich, Kel'thuzad. A contingent of Scarlet Crusaders, led by Grand Crusader Dathrohan, also holds a portion of the ravaged city. The two sides are locked in constant, violent combat. Those adventurers brave (or foolish) enough to enter Stratholme will be forced to contend with both factions before long. It is said that the city is guarded by three massive watchtowers, as well as powerful necromancers, banshees and abominations. There have also been reports of a malefic Death Knight riding atop an unholy steed - dispensing indiscriminate wrath on all those who venture within the realm of the Scourge."
Inst25Caption = "Stratholme"
Inst25QAA = "21 Quests 4TW"
Inst25QAH = "22 Quests 4TW"

--Quest 1 Alliance
Inst25Quest1 = "1. The Flesh Does Not Lie" -- 5212
Inst25Quest1_Level = "60"
Inst25Quest1_Attain = "55"
Inst25Quest1_Aim = "Recover 10 Plagued Flesh Samples from Stratholme and return them to Betina Bigglezink. You suspect that any creature in Stratholme would have said flesh sample."
Inst25Quest1_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest1_Note = "Most mobs in Stratholme can drop the Plagued Flesh Samples, but the drop rate seems low."
Inst25Quest1_Prequest = "No"
Inst25Quest1_Folgequest = "The Active Agent" -- 5213
-- No Rewards for this quest

--Quest 2 Alliance
Inst25Quest2 = "2. The Active Agent" -- 5213
Inst25Quest2_Level = "60"
Inst25Quest2_Attain = "55"
Inst25Quest2_Aim = "Travel to Stratholme and search the ziggurats. Find and return new Scourge Data to Betina Bigglezink."
Inst25Quest2_Location = "Betina Bigglezink (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest2_Note = "The Scourge Data is in one of the 3 Towers, you find near "..YELLOW.."[15]"..WHITE..", "..YELLOW.."[16]"..WHITE.." and "..YELLOW.."[17]"..WHITE.."."
Inst25Quest2_Prequest = "The Flesh Does Not Lie" -- 5212
Inst25Quest2_Folgequest = "No"
Inst25Quest2name1 = "Seal of the Dawn"
Inst25Quest2name2 = "Rune of the Dawn"

--Quest 3 Alliance
Inst25Quest3 = "3. Houses of the Holy" -- 5243
Inst25Quest3_Level = "60"
Inst25Quest3_Attain = "55"
Inst25Quest3_Aim = "Travel to Stratholme, in the north. Search the supply crates that litter the city and recover 5 Stratholme Holy Water. Return to Leonid Barthalomew the Revered when you have collected enough of the blessed fluid."
Inst25Quest3_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest3_Note = "You can find the Holy Water in chests everywhere in Stratholme. But if you open a chest bugs can appear and attack you."
Inst25Quest3_Prequest = "No"
Inst25Quest3_Folgequest = "No"
Inst25Quest3name1 = "Superior Healing Potion"
Inst25Quest3name2 = "Greater Mana Potion"
Inst25Quest3name3 = "Crown of the Penitent"
Inst25Quest3name4 = "Band of the Penitent"

--Quest 4 Alliance
Inst25Quest4 = "4. The Great Fras Siabi" -- 5214
Inst25Quest4_Level = "60"
Inst25Quest4_Attain = "55"
Inst25Quest4_Aim = "Find Fras Siabi's smoke shop in Stratholme and recover a box of Siabi's Premium Tobacco. Return to Smokey LaRue when the job is done."
Inst25Quest4_Location = "Smokey LaRue (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest4_Note = "You find the smoke shop near "..YELLOW.."[1]"..WHITE..". Fras Siabi spawns when you open box."
Inst25Quest4_Prequest = "No"
Inst25Quest4_Folgequest = "No"
Inst25Quest4name1 = "Smokey's Lighter"

--Quest 5 Alliance
Inst25Quest5 = "5. The Restless Souls" -- 5282
Inst25Quest5_Level = "60"
Inst25Quest5_Attain = "55"
Inst25Quest5_Aim = "Use Egan's Blaster on the ghostly and spectral citizens of Stratholme. When the restless souls break free from their ghostly shells, use the blaster again - freedom will be theirs!\nFree 15 Restless Souls and return to Egan."
Inst25Quest5_Location = "Egan (Eastern Plaguelands; "..YELLOW.."14,33"..WHITE..")"
Inst25Quest5_Note = "You get the prequest from Caretaker Alen (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."79,63"..WHITE.."). The spectral citizens walk through whole Stratholme."
Inst25Quest5_Prequest = "The Restless Souls" -- 5281
Inst25Quest5_Folgequest = "No"
Inst25Quest5name1 = "Testament of Hope"

--Quest 6 Alliance
Inst25Quest6 = "6. Of Love and Family" -- 5848
Inst25Quest6_Level = "60"
Inst25Quest6_Attain = "52"
Inst25Quest6_Aim = "Travel to Stratholme, in the northern part of the Plaguelands. It is in the Scarlet Bastion that you will find the painting 'Of Love and Family,' hidden behind another painting depicting the twin moons of our world.\nReturn the painting to Tirion Fordring."
Inst25Quest6_Location = "Artist Renfray (Western Plaguelands - Caer Darrow; "..YELLOW.."65,75"..WHITE..")"
Inst25Quest6_Note = "You get the prequest from Tirion Fordring (Western Plaguelands; "..YELLOW.."7,43"..WHITE.."). You can find the picture near "..YELLOW.."[10]"..WHITE.."."
Inst25Quest6_Prequest = "Redemption - > Of Love and Family" -- 5742 -> 5846
Inst25Quest6_Folgequest = "Find Myranda" -- 5861
-- No Rewards for this quest

--Quest 7 Alliance
Inst25Quest7 = "7. Menethil's Gift" -- 5463
Inst25Quest7_Level = "60"
Inst25Quest7_Attain = "57"
Inst25Quest7_Aim = "Travel to Stratholme and find Menethil's Gift. Place the Keepsake of Remembrance upon the unholy ground."
Inst25Quest7_Location = "Leonid Barthalomew the Revered (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest7_Note = "You get the prequest from Magistrate Marduke (Western Plaguelands - Caer Darrow; "..YELLOW.."70,73"..WHITE.."). You find the sign near "..YELLOW.."[19]"..WHITE..". See also: "..YELLOW.."[The Lich, Ras Frostwhisper]"..WHITE.." in Scholomance."
Inst25Quest7_Prequest = "The Human Ras Frostraunen - > The Dying, Ras Frostwhisper" -- 5461 -> 5462
Inst25Quest7_Folgequest = "Menethil's Gift" -- 5464
-- No Rewards for this quest

--Quest 8 Alliance
Inst25Quest8 = "8. Aurius' Reckoning" -- 5125
Inst25Quest8_Level = "60"
Inst25Quest8_Attain = "55"
Inst25Quest8_Aim = "Kill the Baron."
Inst25Quest8_Location = "Aurius (Stratholme; "..YELLOW.."[13]"..WHITE..")"
Inst25Quest8_Note = "To start the quest you have to give Aurius [The Medallion of Faith]. You get the Medallion from a chest (Malor's Strongbox "..YELLOW.."[7]"..WHITE..") in the first chamber of the bastion (before the ways split). After giving Aurius the Medallion he supports your group in the fight against the Baron "..YELLOW.."[19]"..WHITE..". After killing the Baron you have to talk to Aurius again to get the Rewards."
Inst25Quest8_Prequest = "No"
Inst25Quest8_Folgequest = "No"
Inst25Quest8name1 = "Will of the Martyr"
Inst25Quest8name2 = "Blood of the Martyr"

--Quest 9 Alliance
Inst25Quest9 = "9. The Archivist" -- 5251
Inst25Quest9_Level = "60"
Inst25Quest9_Attain = "55"
Inst25Quest9_Aim = "Travel to Stratholme and find Archivist Galford of the Scarlet Crusade. Destroy him and burn down the Scarlet Archive."
Inst25Quest9_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest9_Note = "You can find the Archive and the Achivist at "..YELLOW.."[10]"..WHITE.."."
Inst25Quest9_Prequest = "No"
Inst25Quest9_Folgequest = "The Truth Comes Crashing Down" -- 5262
-- No Rewards for this quest

--Quest 10 Alliance
Inst25Quest10 = "10. The Truth Comes Crashing Down" -- 5262
Inst25Quest10_Level = "60"
Inst25Quest10_Attain = "55"
Inst25Quest10_Aim = "Take the Head of Balnazzar to Duke Nicholas Zverenhoff in the Eastern Plaguelands."
Inst25Quest10_Location = "Balnazzar (Stratholme; "..YELLOW.."[11]"..WHITE..")"
Inst25Quest10_Note = "You find Duke Nicholas Zverenhoff in the Eastern Plaguelands - Light's Hope Chapel ("..YELLOW.."81,59"..WHITE..")."
Inst25Quest10_Prequest = "The Archivist" -- 5251
Inst25Quest10_Folgequest = "Above and Beyond" -- 5263
-- No Rewards for this quest

--Quest 11 Alliance
Inst25Quest11 = "11. Above and Beyond" -- 5263
Inst25Quest11_Level = "60"
Inst25Quest11_Attain = "55"
Inst25Quest11_Aim = "Venture to Stratholme and destroy Baron Rivendare. Take his head and return to Duke Nicholas Zverenhoff."
Inst25Quest11_Location = "Duke Nicholas Zverenhoff (Eastern Plaguelands - Light's Hope Chapel; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest11_Note = "You can find the Baron at "..YELLOW.."[19]"..WHITE.."."
Inst25Quest11_Prequest = "The Truth Comes Crashing Down" -- 5262
Inst25Quest11_Folgequest = "No"
Inst25Quest11name1 = "Argent Defender"
Inst25Quest11name2 = "Argent Crusader"
Inst25Quest11name3 = "Argent Avenger"

--Quest 12 Alliance
Inst25Quest12 = "12. Dead Man's Plea" -- 8945
Inst25Quest12_Level = "60"
Inst25Quest12_Attain = "58"
Inst25Quest12_Aim = "Go into Stratholme and rescue Ysida Harmon from Baron Rivendare."
Inst25Quest12_Location = "Anthion Harmon (Eastern Plaguelands - Stratholme)"
Inst25Quest12_Note = "Anthion stands just outside the Stratholme portal. You need the Extra-Dimensional Ghost Revealer to see him. It comes from the pre-quest. The questline starts with Just Compensation. Deliana in Ironforge ("..YELLOW.."43,52"..WHITE..") for Alliance, Mokvar in Orgrimmar ("..YELLOW.."38,37"..WHITE..") for Horde.\nThis is the infamous '45 minute' Baron run."
Inst25Quest12_Prequest = "In Search of Anthion" -- 8929
Inst25Quest12_Folgequest = "Proof of Life" -- 8946
-- No Rewards for this quest

--Quest 13 Alliance
Inst25Quest13 = "13. The Left Piece of Lord Valthalak's Amulet" -- 8968
Inst25Quest13_Level = "60"
Inst25Quest13_Attain = "58"
Inst25Quest13_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the Left Piece of Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst25Quest13_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst25Quest13_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst25Quest13_Prequest = "Components of Importance" -- 8964
Inst25Quest13_Folgequest = "I See Alcaz Island In Your Future..." -- 8970
-- No Rewards for this quest

--Quest 14 Alliance
Inst25Quest14 = "14. The Right Piece of Lord Valthalak's Amulet" -- 8991
Inst25Quest14_Level = "60"
Inst25Quest14_Attain = "58"
Inst25Quest14_Aim = "Use the Brazier of Beckoning to summon forth Jarien and Sothos and slay them. Return to Bodley inside Blackrock Mountain with the recombined Lord Valthalak's Amulet and the Brazier of Beckoning."
Inst25Quest14_Location = "Bodley (Blackrock Mountain; "..YELLOW.."[D] on Entrance Map"..WHITE..")"
Inst25Quest14_Note = "Extra-Dimensional Ghost Revealer is needed to see Bodley. You get it from the 'In Search of Anthion' quest.\n\nJarien and Sothos are summoned at "..YELLOW.."[11]"..WHITE.."."
Inst25Quest14_Prequest = "More Components of Importance" -- 8987
Inst25Quest14_Folgequest = "Final Preparations ("..YELLOW.."Upper Blackrock Spire"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 15 Alliance
Inst25Quest15 = "15. Atiesh, Greatstaff of the Guardian"
Inst25Quest15_Level = "60"
Inst25Quest15_Attain = "60"
Inst25Quest15_Aim = "Anachronos at the Caverns of Time in Tanaris wants you to take Atiesh, Greatstaff of the Guardian to Stratholme and use it on Consecrated Earth. Defeat the entity that is exorcised from the staff and return to him."
Inst25Quest15_Location = "Anachronos (Tanaris - Caverns of Time; "..YELLOW.."65,49"..WHITE..")"
Inst25Quest15_Note = "Atiesh is summoned at "..YELLOW.."[2]"..WHITE.."."
Inst25Quest15_Prequest = "Frame of Atiesh -> Atiesh, the Befouled Greatstaff" -- 9250 -> 9251 
Inst25Quest15_Folgequest = "No"
Inst25Quest15name1 = "Atiesh, Greatstaff of the Guardian"
Inst25Quest15name2 = "Atiesh, Greatstaff of the Guardian"
Inst25Quest15name3 = "Atiesh, Greatstaff of the Guardian"
Inst25Quest15name4 = "Atiesh, Greatstaff of the Guardian"

--Quest 16 Alliance
Inst25Quest16 = "16. Corruption" -- 5307
Inst25Quest16_Level = "60"
Inst25Quest16_Attain = "50"
Inst25Quest16_Aim = "Find the Black Guard Swordsmith in Stratholme and destroy him. Recover the Insignia of the Black Guard and return to Seril Scourgebane."
Inst25Quest16_Location = "Seril Scourgebane (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst25Quest16_Note = YELLOW.."(Blacksmith only)"..WHITE.." The Black Guard Swordsmith is summoned near "..YELLOW.."[15]"..WHITE.."."
Inst25Quest16_Prequest = "No"
Inst25Quest16_Folgequest = "No"
Inst25Quest16name1 = "Plans: Blazing Rapier"

--Quest 17 Alliance
Inst25Quest17 = "17. Sweet Serenity" -- 5305
Inst25Quest17_Level = "60"
Inst25Quest17_Attain = "50"
Inst25Quest17_Aim = "Travel to Stratholme and kill the Crimson Hammersmith. Recover the Crimson Hammersmith's Apron and return to Lilith."
Inst25Quest17_Location = "Lilith the Lithe (Winterspring - Everlook; "..YELLOW.."61,37"..WHITE..")"
Inst25Quest17_Note = YELLOW.."(Blacksmith only)"..WHITE.." The Crimson Hammersmith is summoned at "..YELLOW.."[8]"..WHITE.."."
Inst25Quest17_Prequest = "No"
Inst25Quest17_Folgequest = "No"
Inst25Quest17name1 = "Plans: Enchanted Battlehammer"

--Quest 18 Alliance
Inst25Quest18 = "(TW)18. To Build a Pounder" -- 80401
Inst25Quest18_Level = "60"
Inst25Quest18_Attain = "30"
Inst25Quest18_Aim = "Acquire Thorium Tuned Servo from the Scarlet Monastery's Armory, obtain the Perfect Golem Core in the Blackrocks Depths from Golem Lord Argelmach, find the Adamantite Rod in Stratholme. Return to Oglethorpe Obnoticus."
Inst25Quest18_Location = "Oglethorpe Obnoticus (Stranglethorn Vale - Booty Bay "..YELLOW.."28.4,76.3"..WHITE..")."
Inst25Quest18_Note = "\"Crowd Pummeler 9-60\" in Gnomeregan drops Intact Pounder Mainframe that starts the PreQuest \"A Pounding Brain\".\nThorium Tuned Servo drops from Scarlet Myrmidons.\nPerfect Golem Core drops from Golem Lord Argelmach.\nAdamantite Rod drops from Crimson Hammersmith."
Inst25Quest18_Prequest = "A Pounding Brain "..YELLOW.."(Engineers only)"
Inst25Quest18_Folgequest = "No"
Inst25Quest18name1 = "Reinforced Red Pounder"
Inst25Quest18name2 = "Reinforced Green Pounder"
Inst25Quest18name3 = "Reinforced Blue Pounder"
Inst25Quest18name4 = "Reinforced Black Pounder"

--Quest 19 Alliance
Inst25Quest19 = "(TW)19. Rothlen Family Brooch" -- 41000
Inst25Quest19_Level = "60"
Inst25Quest19_Attain = "55"
Inst25Quest19_Aim = "Recover the Rothlen Family Brooch from Stratholme for Duke Rothlen in Karazhan."
Inst25Quest19_Location = "Duke Rothlen (Karazhan; "..YELLOW.."[Karazhan - f]"..WHITE..")"
Inst25Quest19_Note = "Rothlen Family Brooch next to boss The Unforgiven "..YELLOW.."[4]"..WHITE.." in the chest.\nQuest chain starts with epic item random drop 'Scribbled Cooking Notes' "..YELLOW.."[Karazhan]"..WHITE.."."
Inst25Quest19_Prequest = "Scribbled Cooking Notes "..YELLOW.."[Karazhan]"..WHITE.." -> Lost and Found "..YELLOW.."[Karazhan]"..WHITE.."" -- 40998, 40999
Inst25Quest19_Folgequest = "The Secret Recipe ("..YELLOW.."[Karazhan]"..WHITE..")" -- 41001
-- No Rewards for this quest

--Quest 20 Alliance
Inst25Quest20 = "(TW)20. The Key to Karazhan VII" -- 40826
Inst25Quest20_Level = "60"
Inst25Quest20_Attain = "58"
Inst25Quest20_Aim = "Find four Echoes of Medivh. They might be found in places of great significance for the mage. Then return to Vandol with the key."
Inst25Quest20_Location = "Dolvan Bracewind (Dustwallow Marsh - ; "..YELLOW.."[71.1,73.2]"..WHITE..")"
Inst25Quest20_Note = "Second Feather of Medivh on the ground in the place where Elder Farwhisper (Lunar Festival) "..YELLOW.."[5]"..WHITE.." is.\nFirst Feather of Medivh "..YELLOW.."[Undercity]"..WHITE.." behind the entrance throne.\nThird Feather of Medivh "..YELLOW.."[Alterac Mountain]"..WHITE.." on the end of first(western) cliff "..YELLOW.."[30.8,87.4]"..WHITE..".\nFourth Feather of Medivh "..YELLOW.."[Hyjal]"..WHITE.." on the end of the cliff "..YELLOW.."[31.8,70.5]"..WHITE.."."
Inst25Quest20_Prequest = "The Key to Karazhan VI" -- 40825
Inst25Quest20_Folgequest = "The Key to Karazhan VIII ("..YELLOW.."Dire Maul West"..WHITE..")" -- 40827
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst25Quest1_HORDE = Inst25Quest1
Inst25Quest1_HORDE_Level = Inst25Quest1_Level
Inst25Quest1_HORDE_Attain = Inst25Quest1_Attain
Inst25Quest1_HORDE_Aim = Inst25Quest1_Aim
Inst25Quest1_HORDE_Location = Inst25Quest1_Location
Inst25Quest1_HORDE_Note = Inst25Quest1_Note
Inst25Quest1_HORDE_Prequest = Inst25Quest1_Prequest
Inst25Quest1_HORDE_Folgequest = Inst25Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst25Quest2_HORDE = Inst25Quest2
Inst25Quest2_HORDE_Level = Inst25Quest2_Level
Inst25Quest2_HORDE_Attain = Inst25Quest2_Attain
Inst25Quest2_HORDE_Aim = Inst25Quest2_Aim
Inst25Quest2_HORDE_Location = Inst25Quest2_Location
Inst25Quest2_HORDE_Note = Inst25Quest2_Note
Inst25Quest2_HORDE_Prequest = Inst25Quest2_Prequest
Inst25Quest2_HORDE_Folgequest = Inst25Quest2_Folgequest
Inst25Quest2name1_HORDE = Inst25Quest2name1
Inst25Quest2name2_HORDE = Inst25Quest2name2

--Quest 3 Horde (same as Quest 3 Alliance)
Inst25Quest3_HORDE = Inst25Quest3
Inst25Quest3_HORDE_Level = Inst25Quest3_Level
Inst25Quest3_HORDE_Attain = Inst25Quest3_Attain
Inst25Quest3_HORDE_Aim = Inst25Quest3_Aim
Inst25Quest3_HORDE_Location = Inst25Quest3_Location
Inst25Quest3_HORDE_Note = Inst25Quest3_Note
Inst25Quest3_HORDE_Prequest = Inst25Quest3_Prequest
Inst25Quest3_HORDE_Folgequest = Inst25Quest3_Folgequest
Inst25Quest3name1_HORDE = Inst25Quest3name1
Inst25Quest3name2_HORDE = Inst25Quest3name2
Inst25Quest3name3_HORDE = Inst25Quest3name3
Inst25Quest3name4_HORDE = Inst25Quest3name4

--Quest 4 Horde (same as Quest 4 Alliance)
Inst25Quest4_HORDE = Inst25Quest4
Inst25Quest4_HORDE_Level = Inst25Quest4_Level
Inst25Quest4_HORDE_Attain = Inst25Quest4_Attain
Inst25Quest4_HORDE_Aim = Inst25Quest4_Aim
Inst25Quest4_HORDE_Location = Inst25Quest4_Location
Inst25Quest4_HORDE_Note = Inst25Quest4_Note
Inst25Quest4_HORDE_Prequest = Inst25Quest4_Prequest
Inst25Quest4_HORDE_Folgequest = Inst25Quest4_Folgequest
Inst25Quest4name1_HORDE = Inst25Quest4name1

--Quest 5 Horde (same as Quest 5 Alliance)
Inst25Quest5_HORDE = Inst25Quest5
Inst25Quest5_HORDE_Level = Inst25Quest5_Level
Inst25Quest5_HORDE_Attain = Inst25Quest5_Attain
Inst25Quest5_HORDE_Aim = Inst25Quest5_Aim
Inst25Quest5_HORDE_Location = Inst25Quest5_Location
Inst25Quest5_HORDE_Note = Inst25Quest5_Note
Inst25Quest5_HORDE_Prequest = Inst25Quest5_Prequest
Inst25Quest5_HORDE_Folgequest = Inst25Quest5_Folgequest
Inst25Quest5name1_HORDE = Inst25Quest5name1

--Quest 6 Horde (same as Quest 6 Alliance)
Inst25Quest6_HORDE = Inst25Quest6
Inst25Quest6_HORDE_Level = Inst25Quest6_Level
Inst25Quest6_HORDE_Attain = Inst25Quest6_Attain
Inst25Quest6_HORDE_Aim = Inst25Quest6_Aim
Inst25Quest6_HORDE_Location = Inst25Quest6_Location
Inst25Quest6_HORDE_Note = Inst25Quest6_Note
Inst25Quest6_HORDE_Prequest = Inst25Quest6_Prequest
Inst25Quest6_HORDE_Folgequest = Inst25Quest6_Folgequest
-- No Rewards for this quest

--Quest 7 Horde (same as Quest 7 Alliance)
Inst25Quest7_HORDE = Inst25Quest7
Inst25Quest7_HORDE_Level = Inst25Quest7_Level
Inst25Quest7_HORDE_Attain = Inst25Quest7_Attain
Inst25Quest7_HORDE_Aim = Inst25Quest7_Aim
Inst25Quest7_HORDE_Location = Inst25Quest7_Location
Inst25Quest7_HORDE_Note = Inst25Quest7_Note
Inst25Quest7_HORDE_Prequest = Inst25Quest7_Prequest
Inst25Quest7_HORDE_Folgequest = Inst25Quest7_Folgequest
-- No Rewards for this quest

--Quest 8 Horde (same as Quest 8 Alliance)
Inst25Quest8_HORDE = Inst25Quest8
Inst25Quest8_HORDE_Level = Inst25Quest8_Level
Inst25Quest8_HORDE_Attain = Inst25Quest8_Attain
Inst25Quest8_HORDE_Aim = Inst25Quest8_Aim
Inst25Quest8_HORDE_Location = Inst25Quest8_Location
Inst25Quest8_HORDE_Note = Inst25Quest8_Note
Inst25Quest8_HORDE_Prequest = Inst25Quest8_Prequest
Inst25Quest8_HORDE_Folgequest = Inst25Quest8_Folgequest
Inst25Quest8name1_HORDE = Inst25Quest8name1
Inst25Quest8name2_HORDE = Inst25Quest8name2

--Quest 9 Horde (same as Quest 9 Alliance)
Inst25Quest9_HORDE = Inst25Quest9
Inst25Quest9_HORDE_Level = Inst25Quest9_Level
Inst25Quest9_HORDE_Attain = Inst25Quest9_Attain
Inst25Quest9_HORDE_Aim = Inst25Quest9_Aim
Inst25Quest9_HORDE_Location = Inst25Quest9_Location
Inst25Quest9_HORDE_Note = Inst25Quest9_Note
Inst25Quest9_HORDE_Prequest = Inst25Quest9_Prequest
Inst25Quest9_HORDE_Folgequest = Inst25Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde (same as Quest 10 Alliance)
Inst25Quest10_HORDE = Inst25Quest10
Inst25Quest10_HORDE_Level = Inst25Quest10_Level
Inst25Quest10_HORDE_Attain = Inst25Quest10_Attain
Inst25Quest10_HORDE_Aim = Inst25Quest10_Aim
Inst25Quest10_HORDE_Location = Inst25Quest10_Location
Inst25Quest10_HORDE_Note = Inst25Quest10_Note
Inst25Quest10_HORDE_Prequest = Inst25Quest10_Prequest
Inst25Quest10_HORDE_Folgequest = Inst25Quest10_Folgequest
-- No Rewards for this quest

--Quest 11 Horde (same as Quest 11 Alliance)
Inst25Quest11_HORDE = Inst25Quest11
Inst25Quest11_HORDE_Level = Inst25Quest11_Level
Inst25Quest11_HORDE_Attain = Inst25Quest11_Attain
Inst25Quest11_HORDE_Aim = Inst25Quest11_Aim
Inst25Quest11_HORDE_Location = Inst25Quest11_Location
Inst25Quest11_HORDE_Note = Inst25Quest11_Note
Inst25Quest11_HORDE_Prequest = Inst25Quest11_Prequest
Inst25Quest11_HORDE_Folgequest = Inst25Quest11_Folgequest
Inst25Quest11name1_HORDE = Inst25Quest11name1
Inst25Quest11name2_HORDE = Inst25Quest11name2
Inst25Quest11name3_HORDE = Inst25Quest11name3

--Quest 12 Horde (same as Quest 12 Alliance)
Inst25Quest12_HORDE = Inst25Quest12
Inst25Quest12_HORDE_Level = Inst25Quest12_Level
Inst25Quest12_HORDE_Attain = Inst25Quest12_Attain
Inst25Quest12_HORDE_Aim = Inst25Quest12_Aim
Inst25Quest12_HORDE_Location = Inst25Quest12_Location
Inst25Quest12_HORDE_Note = Inst25Quest12_Note
Inst25Quest12_HORDE_Prequest = Inst25Quest12_Prequest  -- 8930
Inst25Quest12_HORDE_Folgequest = Inst25Quest12_Folgequest
-- No Rewards for this quest

--Quest 13 Horde (same as Quest 13 Alliance)
Inst25Quest13_HORDE = Inst25Quest13
Inst25Quest13_HORDE_Level = Inst25Quest13_Level
Inst25Quest13_HORDE_Attain = Inst25Quest13_Attain
Inst25Quest13_HORDE_Aim = Inst25Quest13_Aim
Inst25Quest13_HORDE_Location = Inst25Quest13_Location
Inst25Quest13_HORDE_Note = Inst25Quest13_Note
Inst25Quest13_HORDE_Prequest = Inst25Quest13_Prequest
Inst25Quest13_HORDE_Folgequest = Inst25Quest13_Folgequest
-- No Rewards for this quest

--Quest 14 Horde (same as Quest 14 Alliance)
Inst25Quest14_HORDE = Inst25Quest14
Inst25Quest14_HORDE_Level = Inst25Quest14_Level
Inst25Quest14_HORDE_Attain = Inst25Quest14_Attain
Inst25Quest14_HORDE_Aim = Inst25Quest14_Aim
Inst25Quest14_HORDE_Location = Inst25Quest14_Location
Inst25Quest14_HORDE_Note = Inst25Quest14_Note
Inst25Quest14_HORDE_Prequest = Inst25Quest14_Prequest
Inst25Quest14_HORDE_Folgequest = Inst25Quest14_Folgequest
-- No Rewards for this quest

--Quest 15 Horde (same as Quest 15 Alliance)
Inst25Quest15_HORDE = Inst25Quest15
Inst25Quest15_HORDE_Level = Inst25Quest15_Level
Inst25Quest15_HORDE_Attain = Inst25Quest15_Attain
Inst25Quest15_HORDE_Aim = Inst25Quest15_Aim
Inst25Quest15_HORDE_Location = Inst25Quest15_Location
Inst25Quest15_HORDE_Note = Inst25Quest15_Note
Inst25Quest15_HORDE_Prequest = Inst25Quest15_Prequest
Inst25Quest15_HORDE_Folgequest = Inst25Quest15_Folgequest
Inst25Quest15name1_HORDE = Inst25Quest15name1
Inst25Quest15name2_HORDE = Inst25Quest15name2
Inst25Quest15name3_HORDE = Inst25Quest15name3
Inst25Quest15name4_HORDE = Inst25Quest15name4

--Quest 16 Horde (same as Quest 16 Alliance)
Inst25Quest16_HORDE = Inst25Quest16
Inst25Quest16_HORDE_Level = Inst25Quest16_Level
Inst25Quest16_HORDE_Attain = Inst25Quest16_Attain
Inst25Quest16_HORDE_Aim = Inst25Quest16_Aim
Inst25Quest16_HORDE_Location = Inst25Quest16_Location
Inst25Quest16_HORDE_Note = Inst25Quest16_Note
Inst25Quest16_HORDE_Prequest = Inst25Quest16_Prequest
Inst25Quest16_HORDE_Folgequest = Inst25Quest16_Folgequest
Inst25Quest16name1_HORDE = Inst25Quest16name1

--Quest 17 Horde (same as Quest 17 Alliance)
Inst25Quest17_HORDE = Inst25Quest17
Inst25Quest17_HORDE_Level = Inst25Quest17_Level
Inst25Quest17_HORDE_Attain = Inst25Quest17_Attain
Inst25Quest17_HORDE_Aim = Inst25Quest17_Aim
Inst25Quest17_HORDE_Location = Inst25Quest17_Location
Inst25Quest17_HORDE_Note = Inst25Quest17_Note
Inst25Quest17_HORDE_Prequest = Inst25Quest17_Prequest
Inst25Quest17_HORDE_Folgequest = Inst25Quest17_Folgequest
Inst25Quest17name1_HORDE = Inst25Quest17name1

--Quest 18 Horde
Inst25Quest18_HORDE = "18. Ramstein" -- 6163
Inst25Quest18_HORDE_Level = "60"
Inst25Quest18_HORDE_Attain = "56"
Inst25Quest18_HORDE_Aim = "Travel to Stratholme and slay Ramstein the Gorger. Take his head as a souvenir for Nathanos."
Inst25Quest18_HORDE_Location = "Nathanos Blightcaller (Eastern Plaguelands; "..YELLOW.."26,74"..WHITE..")"
Inst25Quest18_HORDE_Note = "You get the prequest from Nathanos Blightcaller, too. You can find Ramstein at "..YELLOW.."[18]"..WHITE.."."
Inst25Quest18_HORDE_Prequest = "The Ranger Lord's Behest -> Duskwing, Oh How I Hate Thee..." -- 6133 -> 6135
Inst25Quest18_HORDE_Folgequest = "No"
Inst25Quest18name1_HORDE = "Royal Seal of Alexis"
Inst25Quest18name2_HORDE = "Elemental Circle"

--Quest 19 Horde
Inst25Quest19_HORDE = "(TW)19. To Build a Pounder" -- 80401
Inst25Quest19_HORDE_Level = "60"
Inst25Quest19_HORDE_Attain = "30"
Inst25Quest19_HORDE_Aim = "Acquire Thorium Tuned Servo from the Scarlet Monastery's Armory, obtain the Perfect Golem Core in the Blackrocks Depths from Golem Lord Argelmach, find the Adamantite Rod in Stratholme. Return to Oglethorpe Obnoticus."
Inst25Quest19_HORDE_Location = "Oglethorpe Obnoticus (Stranglethorn Vale - Booty Bay "..YELLOW.."28.4,76.3"..WHITE..")."
Inst25Quest19_HORDE_Note = "\"Crowd Pummeler 9-60\" in Gnomeregan drops Intact Pounder Mainframe that starts the PreQuest \"A Pounding Brain\".\nThorium Tuned Servo drops from Scarlet Myrmidons.\nPerfect Golem Core drops from Golem Lord Argelmach.\nAdamantite Rod drops from Crimson Hammersmith."
Inst25Quest19_HORDE_Prequest = "A Pounding Brain "..YELLOW.."(Engineers only)"
Inst25Quest19_HORDE_Folgequest = "No"
Inst25Quest19name1_HORDE = "Reinforced Red Pounder"
Inst25Quest19name2_HORDE = "Reinforced Green Pounder"
Inst25Quest19name3_HORDE = "Reinforced Blue Pounder"
Inst25Quest19name4_HORDE = "Reinforced Black Pounder"

--Quest 20 Horde (same as Quest 19 Alliance)
Inst25Quest20_HORDE = "(TW)20. Rothlen Family Brooch" -- 41000
Inst25Quest20_HORDE_Level = Inst25Quest19_Level
Inst25Quest20_HORDE_Attain = Inst25Quest19_Attain
Inst25Quest20_HORDE_Aim = Inst25Quest19_Aim
Inst25Quest20_HORDE_Location = Inst25Quest19_Location
Inst25Quest20_HORDE_Note = Inst25Quest19_Note
Inst25Quest20_HORDE_Prequest = Inst25Quest19_Prequest
Inst25Quest20_HORDE_Folgequest = Inst25Quest19_Folgequest
-- No Rewards for this quest

--Quest 21 Horde (same as Quest 20 Alliance)
Inst25Quest21_HORDE = "(TW)21. The Key to Karazhan VII" -- 40826
Inst25Quest21_HORDE_Level = Inst25Quest20_Level
Inst25Quest21_HORDE_Attain = Inst25Quest20_Attain
Inst25Quest21_HORDE_Aim = Inst25Quest20_Aim
Inst25Quest21_HORDE_Location = Inst25Quest20_Location
Inst25Quest21_HORDE_Note = Inst25Quest20_Note
Inst25Quest21_HORDE_Prequest = Inst25Quest20_Prequest
Inst25Quest21_HORDE_Folgequest = Inst25Quest20_Folgequest
-- No Rewards for this quest



--------------- INST26 - The Ruins of Ahn'Qiraj (AQ20) ---------------
Inst26Story = "During the final hours of the War of the Shifting Sands, the combined forces of the night elves and the four dragonflights drove the battle to the very heart of the qiraji empire, to the fortress city of Ahn'Qiraj. Yet at the city gates, the armies of Kalimdor encountered a concentration of silithid war drones more massive than any they had encountered before. Ultimately the silithid and their qiraji masters were not defeated, but merely imprisoned inside a magical barrier, and the war left the cursed city in ruins. A thousand years have passed since that day, but the qiraji forces have not been idle. A new and terrible army has been spawned from the hives, and the ruins of Ahn'Qiraj are teeming once again with swarming masses of silithid and qiraji. This threat must be eliminated, or else all of Azeroth may fall before the terrifying might of the new qiraji army."
Inst26Caption = "Ruins of Ahn'Qiraj"
Inst26QAA = "2 Quests"
Inst26QAH = "2 Quests"

--Quest 1 Alliance
Inst26Quest1 = "1. The Fall of Ossirian" -- 8791
Inst26Quest1_Level = "60"
Inst26Quest1_Attain = "60"
Inst26Quest1_Aim = "Deliver the Head of Ossirian the Unscarred to Commander Mar'alith at Cenarion Hold in Silithus."
Inst26Quest1_Location = "Head of Ossirian the Unscarred (drops from Ossirian the Unscarred; "..YELLOW.."[6]"..WHITE..")"
Inst26Quest1_Note = "Commander Mar'alith (Silithus - Cenarion Hold; "..YELLOW.."49,34"..WHITE..")"
Inst26Quest1_Prequest = "No"
Inst26Quest1_Folgequest = "No"
Inst26Quest1name1 = "Charm of the Shifting Sands"
Inst26Quest1name2 = "Amulet of the Shifting Sands"
Inst26Quest1name3 = "Choker of the Shifting Sands"
Inst26Quest1name4 = "Pendant of the Shifting Sands"

--Quest 2 Alliance
Inst26Quest2 = "2. The Perfect Poison" -- 9023
Inst26Quest2_Level = "60"
Inst26Quest2_Attain = "60"
Inst26Quest2_Aim = "Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac."
Inst26Quest2_Location = "Dirk Thunderwood (Silithus - Cenarion Hold; "..YELLOW.."52,39"..WHITE..")"
Inst26Quest2_Note = "Venoxis's Venom Sac drops from High priest Venoxis in "..YELLOW.."Zul'Gurub"..WHITE..". Kurinnaxx's Venom Sac drops in the "..YELLOW.."Ruins of Ahn'Qiraj"..WHITE.." at "..YELLOW.."[1]"..WHITE.."."
Inst26Quest2_Prequest = "No"
Inst26Quest2_Folgequest = "No"
Inst26Quest2name1 = "Ravenholdt Slicer"
Inst26Quest2name2 = "Shivsprocket's Shiv"
Inst26Quest2name3 = "The Thunderwood Poker"
Inst26Quest2name4 = "Doomulus Prime"
Inst26Quest2name5 = "Fahrad's Reloading Repeater"
Inst26Quest2name6 = "Simone's Cultivating Hammer"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst26Quest1_HORDE = Inst26Quest1
Inst26Quest1_HORDE_Level = Inst26Quest1_Level
Inst26Quest1_HORDE_Attain = Inst26Quest1_Attain
Inst26Quest1_HORDE_Aim = Inst26Quest1_Aim
Inst26Quest1_HORDE_Location = Inst26Quest1_Location
Inst26Quest1_HORDE_Note = Inst26Quest1_Note
Inst26Quest1_HORDE_Prequest = Inst26Quest1_Prequest
Inst26Quest1_HORDE_Folgequest = Inst26Quest1_Folgequest
Inst26Quest1name1_HORDE = Inst26Quest1name1
Inst26Quest1name2_HORDE = Inst26Quest1name2
Inst26Quest1name3_HORDE = Inst26Quest1name3
Inst26Quest1name4_HORDE = Inst26Quest1name4

--Quest 2 Horde (same as Quest 2 Alliance)
Inst26Quest2_HORDE = Inst26Quest2
Inst26Quest2_HORDE_Level = Inst26Quest2_Level
Inst26Quest2_HORDE_Attain = Inst26Quest2_Attain
Inst26Quest2_HORDE_Aim = Inst26Quest2_Aim
Inst26Quest2_HORDE_Location = Inst26Quest2_Location
Inst26Quest2_HORDE_Note = Inst26Quest2_Note
Inst26Quest2_HORDE_Prequest = Inst26Quest2_Prequest
Inst26Quest2_HORDE_Folgequest = Inst26Quest2_Folgequest
Inst26Quest2name1_HORDE = Inst26Quest2name1
Inst26Quest2name2_HORDE = Inst26Quest2name2
Inst26Quest2name3_HORDE = Inst26Quest2name3
Inst26Quest2name4_HORDE = Inst26Quest2name4
Inst26Quest2name5_HORDE = Inst26Quest2name5
Inst26Quest2name6_HORDE = Inst26Quest2name6



--------------- INST27 - The Stockade (Stocks) ---------------
Inst27Story = "The Stockades are a high-security prison complex, hidden beneath the canal district of Stormwind city. Presided over by Warden Thelwater, the Stockades are home to petty crooks, political insurgents, murderers and a score of the most dangerous criminals in the land. Recently, a prisoner-led revolt has resulted in a state of pandemonium within the Stockades - where the guards have been driven out and the convicts roam free. Warden Thelwater has managed to escape the holding area and is currently enlisting brave thrill-seekers to venture into the prison and kill the uprising's mastermind - the cunning felon, Bazil Thredd."
Inst27Caption = "The Stockade"
Inst27QAA = "7 Quests 1TW"
Inst27QAH = "No Quests"

--Quest 1 Alliance
Inst27Quest1 = "1. What Comes Around..." -- 386
Inst27Quest1_Level = "25"
Inst27Quest1_Attain = "22"
Inst27Quest1_Aim = "Bring the head of Targorr the Dread to Guard Berton in Lakeshire."
Inst27Quest1_Location = "Guard Berton (Redridge Mountains - Lakeshire; "..YELLOW.."26,46"..WHITE..")"
Inst27Quest1_Note = "You can find Targorr at "..YELLOW.."[1]"..WHITE.."."
Inst27Quest1_Prequest = "No"
Inst27Quest1_Folgequest = "No"
Inst27Quest1name1 = "Lucine Longsword"
Inst27Quest1name2 = "Hardened Root Staff"

--Quest 2 Alliance
Inst27Quest2 = "2. Crime and Punishment" -- 377
Inst27Quest2_Level = "26"
Inst27Quest2_Attain = "22"
Inst27Quest2_Aim = "Councilman Millstipe of Darkshire wants you to bring him the hand of Dextren Ward."
Inst27Quest2_Location = "Millstipe (Duskwood - Darkshire; "..YELLOW.."72,47"..WHITE..")"
Inst27Quest2_Note = "You can find Dextren at "..YELLOW.."[5]"..WHITE.."."
Inst27Quest2_Prequest = "No"
Inst27Quest2_Folgequest = "No"
Inst27Quest2name1 = "Ambassador's Boots"
Inst27Quest2name2 = "Darkshire Mail Leggings"

--Quest 3 Alliance
Inst27Quest3 = "3. Quell The Uprising" -- 387
Inst27Quest3_Level = "26"
Inst27Quest3_Attain = "22"
Inst27Quest3_Aim = "Warden Thelwater of Stormwind wants you to kill 10 Defias Prisoners, 8 Defias Convicts, and 8 Defias Insurgents in The Stockade."
Inst27Quest3_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."41,58"..WHITE..")"
Inst27Quest3_Note = ""
Inst27Quest3_Prequest = "No"
Inst27Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst27Quest4 = "4. The Color of Blood" -- 388
Inst27Quest4_Level = "26"
Inst27Quest4_Attain = "22"
Inst27Quest4_Aim = "Nikova Raskol of Stormwind wants you to collect 10 Red Wool Bandanas."
Inst27Quest4_Location = "Nikova Raskol (Stormwind - Old Town; "..YELLOW.."73,46"..WHITE..")"
Inst27Quest4_Note = "All mobs found inside the instance drops Red Wool Bandanas."
Inst27Quest4_Prequest = "No"
Inst27Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst27Quest5 = "5. The Fury Runs Deep" -- 378
Inst27Quest5_Level = "27"
Inst27Quest5_Attain = "22"
Inst27Quest5_Aim = "Motley Garmason wants Kam Deepfury's head brought to him at Dun Modr."
Inst27Quest5_Location = "Motley Garmason (Wetlands - Dun Modr; "..YELLOW.."49,18"..WHITE..")"
Inst27Quest5_Note = "The preceding quest can be obtained from Motley too. You can find Kam Deepfury at "..YELLOW.."[2]"..WHITE.."."
Inst27Quest5_Prequest = "The Dark Iron War" -- 303
Inst27Quest5_Folgequest = "No"
Inst27Quest5name1 = "Belt of Vindication"
Inst27Quest5name2 = "Headbasher"

--Quest 6 Alliance
Inst27Quest6 = "6. The Stockade Riots" -- 391
Inst27Quest6_Level = "29"
Inst27Quest6_Attain = "16"
Inst27Quest6_Aim = "Kill Bazil Thredd and bring his head back to Warden Thelwater at the Stockade."
Inst27Quest6_Location = "Warden Thelwater (Stormwind - The Stockade; "..YELLOW.."41,58"..WHITE..")"
Inst27Quest6_Note = "For more details about the preceding quest see "..YELLOW.."[Deadmines, The Defias Brotherhood]"..WHITE..".\nYou can find Bazil Thredd at "..YELLOW.."[4]"..WHITE.."."
Inst27Quest6_Prequest = "The Defias Brotherhood -> Bazil Thredd" -- 65 -> 389
Inst27Quest6_Folgequest = "The Curious Visitor" -- 392
-- No Rewards for this quest

--Quest 7 Alliance
Inst27Quest7 = "(TW)7. The Stockade's Search" -- 55221
Inst27Quest7_Level = "24"
Inst27Quest7_Attain = "18"
Inst27Quest7_Aim = "Delve into the Stockades and find information on Martin Corinth."
Inst27Quest7_Location = "Master Mathias Shaw <Leader of SI:7> (Stormwind - Old Town, Rogue district; "..YELLOW.."75.8,59.8"..WHITE..")"
Inst27Quest7_Note = "You can find Martin Corinth's Information inside Sealed Documents Crate "..YELLOW.."[1]"..WHITE.." in the room across the dungeon entrance.\nQuestline starts with quest 'Uncovering Mystery' at Lord Commander Ryke (Wetlands - Hawk's Vigil "..YELLOW.."36.4,67.3"..WHITE.." under the tent)\nYou will get reward after you finish the last quest of the questline."
Inst27Quest7_Prequest = "Robb's Report"
Inst27Quest7_Folgequest = "Investigating Corinth"
Inst27Quest7name1 = "Valiant Medallion" --81416
Inst27Quest7name2 = "Ambient Talisman" --81417
Inst27Quest7name3 = "Magnificent Necklace" --81418



--------------- INST28 - Sunken Temple (ST) ---------------
Inst28Story = "Over a thousand years ago, the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, attempted to bring back an ancient blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire buckled in upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows. There they erected a great temple to Hakkar - where they could prepare for his arrival into the physical world. The great dragon Aspect, Ysera, learned of the Atal'ai's plans and smashed the temple beneath the marshes. To this day, the temple's drowned ruins are guarded by the green dragons who prevent anyone from getting in or out. However, it is believed that some of the fanatical Atal'ai may have survived Ysera's wrath - and recommitted themselves to the dark service of Hakkar."
Inst28Caption = "The Sunken Temple"
Inst28QAA = "18 Quests 2TW"
Inst28QAH = "19 Quests 3TW"

--Quest 1 Alliance
Inst28Quest1 = "1. Into The Temple of Atal'Hakkar" -- 1475
Inst28Quest1_Level = "50"
Inst28Quest1_Attain = "41"
Inst28Quest1_Aim = "Gather 10 Atal'ai Tablets for Brohann Caskbelly in Stormwind."
Inst28Quest1_Location = "Brohann Caskbelly (Stormwind - Dwarven District; "..YELLOW.."64,20"..WHITE..")"
Inst28Quest1_Note = "The prequest line comes from the same NPC and has quite a few steps.\n\nYou can find the Tablets everywhere in the Temple, both outside and inside the instance."
Inst28Quest1_Prequest = "In Search of The Temple -> Rhapsody's Tale" -- 1448 -> 1469
Inst28Quest1_Folgequest = "No"
Inst28Quest1name1 = "Guardian Talisman"

--Quest 2 Alliance
Inst28Quest2 = "2. Into the Depths" -- 3446
Inst28Quest2_Level = "51"
Inst28Quest2_Attain = "46"
Inst28Quest2_Aim = "Find the Altar of Hakkar in the Sunken Temple in Swamp of Sorrows."
Inst28Quest2_Location = "Marvon Rivetseeker (Tanaris; "..YELLOW.."52,45"..WHITE..")"
Inst28Quest2_Note = "The Altar is at "..YELLOW.."[1]"..WHITE..".\nAlliance questline starts at Angelas Moonbreeze (Feralas - Feathermoon Stronghold "..YELLOW.."31.8,45.6"..WHITE..") with quest 'The Sunken Temple'.\nHorde questline starts at Witch Doctor Uzer'i (Feralas - Camp Mojache "..YELLOW.."74.4,43.4"..WHITE..") with quest 'The Sunken Temple'."
Inst28Quest2_Prequest = "The Stone Circle" -- 3444
Inst28Quest2_Folgequest = "Secret of the Circle" -- 3447
-- No Rewards for this quest

--Quest 3 Alliance
Inst28Quest3 = "3. Secret of the Circle" -- 3447
Inst28Quest3_Level = "51"
Inst28Quest3_Attain = "46"
Inst28Quest3_Aim = "Travel into the Sunken Temple and discover the secret hidden in the circle of statues."
Inst28Quest3_Location = "Altar of Hakkar (Sunken Temple; "..YELLOW.."1"..WHITE..")"
Inst28Quest3_Note = "You find the statues at "..YELLOW.."[1]"..WHITE..". See map for order to activate them."
Inst28Quest3_Prequest = "Into the Depths" -- 3446
Inst28Quest3_Folgequest = "No"
Inst28Quest3name1 = "Hakkari Urn"

--Quest 4 Alliance
Inst28Quest4 = "4. Haze of Evil" -- 4143
Inst28Quest4_Level = "52"
Inst28Quest4_Attain = "47"
Inst28Quest4_Aim = "Collect 5 samples of Atal'ai Haze, then return to Muigin in Un'Goro Crater."
Inst28Quest4_Location = "Gregan Brewspewer (Feralas; "..YELLOW.."45,25"..WHITE..")"
Inst28Quest4_Note = "The Prequest 'Muigin and Larion' starts at Muigin (Un'Goro Crater - Marshal's Refuge; "..YELLOW.."42,9"..WHITE.."). You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst28Quest4_Prequest = "Muigin and Larion -> A Visit to Gregan" -- 4141 -> 4142
Inst28Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst28Quest5 = "5. The God Hakkar" -- 3528
Inst28Quest5_Level = "53"
Inst28Quest5_Attain = "40"
Inst28Quest5_Aim = "Bring the Filled Egg of Hakkar to Yeh'kinya in Tanaris."
Inst28Quest5_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."66,22"..WHITE..")"
Inst28Quest5_Note = "The Questline starts with 'Screecher Spirits' at the same NPC (See "..YELLOW.."[Zul'Farrak]"..WHITE..").\nYou have to use the Egg at "..YELLOW.."[3]"..WHITE.." to start the Event. Once it starts enemies spawn and attack you. Some of them drop the blood of Hakkar. With this blood you can put out the torch around the circle. After this the Avatar of Hakkar spawns. You kill him and loot the 'Essence of Hakkar' which you use to fill the egg."
Inst28Quest5_Prequest = "Screecher Spirits -> The Ancient Egg" -- 3520 -> 4787
Inst28Quest5_Folgequest = "No"
Inst28Quest5name1 = "Avenguard Helm"
Inst28Quest5name2 = "Lifeforce Dirk"
Inst28Quest5name3 = "Gemburst Circlet"

--Quest 6 Alliance
Inst28Quest6 = "6. Jammal'an the Prophet" -- 1446
Inst28Quest6_Level = "53"
Inst28Quest6_Attain = "38"
Inst28Quest6_Aim = "The Atal'ai Exile in The Hinterlands wants the Head of Jammal'an."
Inst28Quest6_Location = "The Atal'ai Exile (The Hinterlands; "..YELLOW.."33,75"..WHITE..")"
Inst28Quest6_Note = "You find Jammal'an at "..YELLOW.."[4]"..WHITE.."."
Inst28Quest6_Prequest = "No"
Inst28Quest6_Folgequest = "No"
Inst28Quest6name1 = "Rainstrider Leggings"
Inst28Quest6name2 = "Helm of Exile"

--Quest 7 Alliance
Inst28Quest7 = "7. The Essence of Eranikus" -- 3373
Inst28Quest7_Level = "55"
Inst28Quest7_Attain = "48"
Inst28Quest7_Aim = "Place the Essence of Eranikus in the Essence Font located in this lair in the Sunken Temple."
Inst28Quest7_Location = "The Essence of Eranikus (drops from Shade of Eranikus; "..YELLOW.."[8]"..WHITE..")"
Inst28Quest7_Note = "You find the Essence Font next to where Shade of Eranikus is at "..YELLOW.."[8]"..WHITE..".\n"..RED.."Don't"..WHITE.."  sell or throw away reward trinket Chained Essence of Eranikus. You will need it for next quest at Itharius (Swamp and Sorrows - Itharius's Cave "..YELLOW.."[13.6,71.7]"..WHITE..", after talking with him you will get an item that starts the quest."
Inst28Quest7_Prequest = "No"
Inst28Quest7_Folgequest = "The Essence of Eranikus" --3374
Inst28Quest7name1 = "Chained Essence of Eranikus" --10455

--Quest 8 Alliance
Inst28Quest8 = "8. Trolls of a Feather" -- 8422
Inst28Quest8_Level = "52"
Inst28Quest8_Attain = "50"
Inst28Quest8_Aim = "Bring a total of 6 Voodoo Feathers from the trolls in sunken temple."
Inst28Quest8_Location = "Impsy (Felwood; "..YELLOW.."42,45"..WHITE..")"
Inst28Quest8_Note = WARLOCK.."(Warlock only)"..WHITE.." Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst28Quest8_Prequest = "An Imp's Request -> The Wrong Stuff" -- 8419 -> 8421
Inst28Quest8_Folgequest = "No"
Inst28Quest8name1 = "Soul Harvester"
Inst28Quest8name2 = "Abyss Shard"
Inst28Quest8name3 = "Robes of Servitude"

--Quest 9 Alliance
Inst28Quest9 = "9. Voodoo Feathers" -- 8425
Inst28Quest9_Level = "52"
Inst28Quest9_Attain = "50"
Inst28Quest9_Aim = "Bring the Voodoo Feathers from the trolls in the Sunken Temple to the Fallen Hero of the Horde."
Inst28Quest9_Location = "Fallen Hero of the Horde (Swamp of Sorrows; "..YELLOW.."34,66"..WHITE..")"
Inst28Quest9_Note = WARRIOR.."(Warrior only)"..WHITE.." Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center.\nHorde questline starts in Orgrimar at warrior trainer Sorek "..YELLOW.."80.4,32.3"..WHITE.."."
Inst28Quest9_Prequest = "A Troubled Spirit -> War on the Shadowsworn" -- 8417 -> 8424
Inst28Quest9_Folgequest = "No"
Inst28Quest9name1 = "Fury Visor"
Inst28Quest9name2 = "Diamond Flask"
Inst28Quest9name3 = "Razorsteel Shoulders"

--Quest 10 Alliance
Inst28Quest10 = "10. A Better Ingredient" -- 9053
Inst28Quest10_Level = "52"
Inst28Quest10_Attain = "50"
Inst28Quest10_Aim = "Retrieve a Putrid Vine from the guardian at the bottom of the Sunken Temple and return to Torwa Pathfinder."
Inst28Quest10_Location = "Torwa Pathfinder (Un'Goro Crater; "..YELLOW.."72,76"..WHITE..")"
Inst28Quest10_Note = DRUID.."(Druid only)"..WHITE.." The Putrid Vine drops from Atal'alarion who is summoned at "..YELLOW.."[1]"..WHITE.." by activating the statues in the order listed on the map."
Inst28Quest10_Prequest = "Torwa Pathfinder -> Toxic Test" -- 9063 -> 9051
Inst28Quest10_Folgequest = "No"
Inst28Quest10name1 = "Grizzled Pelt"
Inst28Quest10name2 = "Forest's Embrace"
Inst28Quest10name3 = "Moonshadow Stave"

--Quest 11 Alliance
Inst28Quest11 = "11. The Green Drake" -- 8232
Inst28Quest11_Level = "52"
Inst28Quest11_Attain = "50"
Inst28Quest11_Aim = "Bring the Tooth of Morphaz to Ogtinc in Azshara. Ogtinc resides atop the cliffs northeast the Ruins of Eldarath."
Inst28Quest11_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst28Quest11_Note = HUNTER.."(Hunter only)"..WHITE.." Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst28Quest11_Prequest = "The Hunter's Charm -> Wavethrashing" -- 8151 -> 8231
Inst28Quest11_Folgequest = "No"
Inst28Quest11name1 = "Hunting Spear"
Inst28Quest11name2 = "Devilsaur Eye"
Inst28Quest11name3 = "Devilsaur Tooth"

--Quest 12 Alliance
Inst28Quest12 = "12. Destroy Morphaz" -- 8253
Inst28Quest12_Level = "52"
Inst28Quest12_Attain = "50"
Inst28Quest12_Aim = "Retrieve the Arcane Shard from Morphaz and return to Archmage Xylem."
Inst28Quest12_Location = "Archmage Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst28Quest12_Note = MAGE.."(Mage only)"..WHITE.." Morphaz is at "..YELLOW.."[5]"..WHITE.."."
Inst28Quest12_Prequest = "Magic Dust -> The Siren's Coral" -- 8251 -> 8252
Inst28Quest12_Folgequest = "No"
Inst28Quest12name1 = "Glacial Spike"
Inst28Quest12name2 = "Arcane Crystal Pendant"
Inst28Quest12name3 = "Fire Ruby"

--Quest 13 Alliance
Inst28Quest13 = "13. Blood of Morphaz" -- 8257
Inst28Quest13_Level = "52"
Inst28Quest13_Attain = "50"
Inst28Quest13_Aim = "Kill Morphaz in the sunken temple of Atal'Hakkar, and return his blood to Greta Mosshoof in Felwood. The entrance to the sunken temple can be found in the Swamp of Sorrows."
Inst28Quest13_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst28Quest13_Note = "(Priest only) Morphaz is at "..YELLOW.."[5]"..WHITE..". Greta Mosshoof is at Felwood - Emerald Sanctuary ("..YELLOW.."51,82"..WHITE..")."
Inst28Quest13_Prequest = "Cenarion Aid -> The Ichor of Undeath" -- 8254 -> 8256
Inst28Quest13_Folgequest = "No"
Inst28Quest13name1 = "Blessed Prayer Beads"
Inst28Quest13name2 = "Woestave"
Inst28Quest13name3 = "Circle of Hope"

--Quest 14 Alliance
Inst28Quest14 = "14. The Azure Key" -- 8236
Inst28Quest14_Level = "52"
Inst28Quest14_Attain = "50"
Inst28Quest14_Aim = "Return the Azure Key to Lord Jorach Ravenholdt."
Inst28Quest14_Location = "Archmage Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst28Quest14_Note = ROGUE.."(Rogue only)"..WHITE.." The Azure Key drops from Morphaz at "..YELLOW.."[5]"..WHITE..". Lord Jorach Ravenholdt is at Alterac Mountains - Ravenholdt ("..YELLOW.."86,79"..WHITE..")."
Inst28Quest14_Prequest = "A Simple Request -> Encoded Fragments" -- 8233 -> 8235
Inst28Quest14_Folgequest = "No"
Inst28Quest14name1 = "Ebon Mask"
Inst28Quest14name2 = "Whisperwalk Boots"
Inst28Quest14name3 = "Duskbat Drape"

--Quest 15 Alliance
Inst28Quest15 = "15. Forging the Mightstone" -- 8418
Inst28Quest15_Level = "52"
Inst28Quest15_Attain = "50"
Inst28Quest15_Aim = "Bring the voodoo feathers to Ashlam Valorfist."
Inst28Quest15_Location = "Commander Ashlam Valorfist (Western Plaguelands - Chillwind Camp; "..YELLOW.."43,85"..WHITE..")"
Inst28Quest15_Note = PALADIN.."(Paladin only)"..WHITE.." Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst28Quest15_Prequest = "Inert Scourgestones" -- 8416
Inst28Quest15_Folgequest = "No"
Inst28Quest15name1 = "Holy Mightstone"
Inst28Quest15name2 = "Lightforged Blade"
Inst28Quest15name3 = "Sanctified Orb"
Inst28Quest15name4 = "Chivalrous Signet"

--Quest 16 Alliance
Inst28Quest16 = "16. Eranikus, Tyrant of the Dream" -- 8733
Inst28Quest16_Level = "60"
Inst28Quest16_Attain = "60"
Inst28Quest16_Aim = "Travel to the continent of Teldrassil and find Malfurion's agent somewhere outside the walls of Darnassus."
Inst28Quest16_Location = "Malfurion Stormrage (Spawns at Shade of Eranikus; "..YELLOW.."[8]"..WHITE..")"
Inst28Quest16_Note = "Forest Wisp (Teldrassil; "..YELLOW.."37,47"..WHITE..")"
Inst28Quest16_Prequest = "The Charge of the Dragonflights" -- 8555
Inst28Quest16_Folgequest = "Tyrande and Remulos" --8734
-- No Rewards for this quest

--Quest 17 Alliance
Inst28Quest17 = "(TW)17. By Any Means Necessary IV" -- 40400
Inst28Quest17_Level = "53"
Inst28Quest17_Attain = "47"
Inst28Quest17_Aim = "Travel to the Sunken Temple, and find the Dragonkin Hazzas, slay him, and return the Heart of Hazzas to Niremius Darkwind."
Inst28Quest17_Location = "Niremius Darkwind <Demon Hunter> (Felwood; "..YELLOW.."39.8,29.6"..WHITE..")"
Inst28Quest17_Note = "Hazzas is the dragon boss flying in the room "..YELLOW.."[7]"..WHITE.." before the last boss.\nYou will get the reward finishing next quest."
Inst28Quest17_Prequest = "By Any Means Necessary III" -- 40399
Inst28Quest17_Folgequest = "By Any Means Necessary V" -- 40401
Inst28Quest17name1 = "Darkwind Glaive" --60536

--Quest 18 Alliance
Inst28Quest18 = "(TW)18. Into the Dream III" -- 40959
Inst28Quest18_Level = "60"
Inst28Quest18_Attain = "58"
Inst28Quest18_Aim = "Gather a Binding Fragment from Cliff Breakers in "..YELLOW.."[Azshara]"..WHITE..", Overloaded Arcane Prism from Arcane Torrents in "..YELLOW.."[Dire Maul West]"..WHITE..", Slumberer's Shard from Weaver in the "..YELLOW.."[Sunken Temple]"..WHITE.." and an Arcanite Rod. Report to Itharius in the Swamp of Sorrows with the collected items."
Inst28Quest18_Location = "Ralathius (Hyjal - Nordanaar; "..YELLOW.."[81.6,27.7]"..WHITE.." a green dragonkin)"
Inst28Quest18_Note = "Weaver "..YELLOW.."[6]"..WHITE.." 1 of 4 dragons  drop Slumberer's Shard, will appear after killing Jammal'an the Prophet "..YELLOW.."[4]"..WHITE..". Barrier to the Prophet will disappear after clearing 6 balcons "..BLUE.."[C]"..WHITE.."\nFinishing this questline you get the necklace and you will be able to enter Hyjal raid instance Emerald Sanctum."
Inst28Quest18_Prequest = "Into the Dream I -> Into the Dream II" --40957, 40958
Inst28Quest18_Folgequest = "Into the Dream IV - VI" --40960, 40961, 40962
Inst28Quest18name1 = "Gemstone of Ysera" -- 50545


--Quest 1 Horde
Inst28Quest1_HORDE = "1. The Temple of Atal'Hakkar" -- 1445
Inst28Quest1_HORDE_Level = "50"
Inst28Quest1_HORDE_Attain = "38"
Inst28Quest1_HORDE_Aim = "Collect 20 Fetishes of Hakkar and bring them to Fel'Zerul in Stonard."
Inst28Quest1_HORDE_Location = "Fel'Zerul (Swamp of Sorrows - Stonard; "..YELLOW.."47,54"..WHITE..")"
Inst28Quest1_HORDE_Note = "All Enemys in the Temple drop Fetishes.\nQuestline starts at Fel'Zerul (Swamp of Sorrows - Stonard; "..YELLOW.."47,54"..WHITE..")"
Inst28Quest1_HORDE_Prequest = "Pool of Tears -> Return to Fel'Zerul" -- 1424 -> 1444
Inst28Quest1_HORDE_Folgequest = "No"
Inst28Quest1name1_HORDE = "Guardian Talisman"

--Quest 2 Horde (same as Quest 2 Alliance)
Inst28Quest2_HORDE = Inst28Quest2
Inst28Quest2_HORDE_Level = Inst28Quest2_Level
Inst28Quest2_HORDE_Attain = Inst28Quest2_Attain
Inst28Quest2_HORDE_Aim = Inst28Quest2_Aim
Inst28Quest2_HORDE_Location = Inst28Quest2_Location
Inst28Quest2_HORDE_Note = Inst28Quest2_Note
Inst28Quest2_HORDE_Prequest = Inst28Quest2_Prequest
Inst28Quest2_HORDE_Folgequest = Inst28Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst28Quest3_HORDE = Inst28Quest3
Inst28Quest3_HORDE_Level = Inst28Quest3_Level
Inst28Quest3_HORDE_Attain = Inst28Quest3_Attain
Inst28Quest3_HORDE_Aim = Inst28Quest3_Aim
Inst28Quest3_HORDE_Location = Inst28Quest3_Location
Inst28Quest3_HORDE_Note = Inst28Quest3_Note
Inst28Quest3_HORDE_Prequest = Inst28Quest3_Prequest
Inst28Quest3_HORDE_Folgequest = Inst28Quest3_Folgequest
Inst28Quest3name1_HORDE = Inst28Quest3name1

--Quest 4 Horde
Inst28Quest4_HORDE = "4. Zapper Fuel" -- 4146
Inst28Quest4_HORDE_Level = "52"
Inst28Quest4_HORDE_Attain = "47"
Inst28Quest4_HORDE_Aim = "Deliver the Unloaded Zapper and 5 samples of Atal'ai Haze to Larion in Marshal's Refuge."
Inst28Quest4_HORDE_Location = "Liv Rizzlefix (Barrens; "..YELLOW.."62,38"..WHITE..")"
Inst28Quest4_HORDE_Note = "The Prequest 'Larion and Muigin' starts at Larion (Un'Goro Crater; "..YELLOW.."45,8"..WHITE.."). You get the Haze from Deep Lurkers, Murk Worms or Oozes in the Temple."
Inst28Quest4_HORDE_Prequest = "Larion and Muigin -> Marvon's Workshop" -- 4145 -> 4147
Inst28Quest4_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst28Quest5_HORDE = Inst28Quest5
Inst28Quest5_HORDE_Level = Inst28Quest5_Level
Inst28Quest5_HORDE_Attain = Inst28Quest5_Attain
Inst28Quest5_HORDE_Aim = Inst28Quest5_Aim
Inst28Quest5_HORDE_Location = Inst28Quest5_Location
Inst28Quest5_HORDE_Note = Inst28Quest5_Note
Inst28Quest5_HORDE_Prequest = Inst28Quest5_Prequest
Inst28Quest5_HORDE_Folgequest = Inst28Quest5_Folgequest
Inst28Quest5name1_HORDE = Inst28Quest5name1
Inst28Quest5name2_HORDE = Inst28Quest5name2
Inst28Quest5name3_HORDE = Inst28Quest5name3

--Quest 6 Horde (same as Quest 6 Alliance)
Inst28Quest6_HORDE = Inst28Quest6
Inst28Quest6_HORDE_Level = Inst28Quest6_Level
Inst28Quest6_HORDE_Attain = Inst28Quest6_Attain
Inst28Quest6_HORDE_Aim = Inst28Quest6_Aim
Inst28Quest6_HORDE_Location = Inst28Quest6_Location
Inst28Quest6_HORDE_Note = Inst28Quest6_Note
Inst28Quest6_HORDE_Prequest = Inst28Quest6_Prequest
Inst28Quest6_HORDE_Folgequest = Inst28Quest6_Folgequest
Inst28Quest6name1_HORDE = Inst28Quest6name1
Inst28Quest6name2_HORDE = Inst28Quest6name2

--Quest 7 Horde (same as Quest 7 Alliance)
Inst28Quest7_HORDE = Inst28Quest7
Inst28Quest7_HORDE_Level = Inst28Quest7_Level
Inst28Quest7_HORDE_Attain = Inst28Quest7_Attain
Inst28Quest7_HORDE_Aim = Inst28Quest7_Aim
Inst28Quest7_HORDE_Location = Inst28Quest7_Location
Inst28Quest7_HORDE_Note = Inst28Quest7_Note
Inst28Quest7_HORDE_Prequest = Inst28Quest7_Prequest
Inst28Quest7_HORDE_Folgequest = Inst28Quest7_Folgequest
Inst28Quest7name1_HORDE = Inst28Quest7name1

--Quest 8 Horde (same as Quest 8 Alliance)
Inst28Quest8_HORDE = Inst28Quest8
Inst28Quest8_HORDE_Level = Inst28Quest8_Level
Inst28Quest8_HORDE_Attain = Inst28Quest8_Attain
Inst28Quest8_HORDE_Aim = Inst28Quest8_Aim
Inst28Quest8_HORDE_Location = Inst28Quest8_Location
Inst28Quest8_HORDE_Note = Inst28Quest8_Note
Inst28Quest8_HORDE_Prequest = Inst28Quest8_Prequest
Inst28Quest8_HORDE_Folgequest = Inst28Quest8_Folgequest
Inst28Quest8name1_HORDE = Inst28Quest8name1
Inst28Quest8name2_HORDE = Inst28Quest8name2
Inst28Quest8name3_HORDE = Inst28Quest8name3

--Quest 9 Horde (same as Quest 9 Alliance)
Inst28Quest9_HORDE = Inst28Quest9
Inst28Quest9_HORDE_Level = Inst28Quest9_Level
Inst28Quest9_HORDE_Attain = Inst28Quest9_Attain
Inst28Quest9_HORDE_Aim = Inst28Quest9_Aim
Inst28Quest9_HORDE_Location = Inst28Quest9_Location
Inst28Quest9_HORDE_Note = Inst28Quest9_Note
Inst28Quest9_HORDE_Prequest = Inst28Quest9_Prequest
Inst28Quest9_HORDE_Folgequest = Inst28Quest9_Folgequest
Inst28Quest9name1_HORDE = Inst28Quest9name1
Inst28Quest9name2_HORDE = Inst28Quest9name2
Inst28Quest9name3_HORDE = Inst28Quest9name3

--Quest 10 Horde (same as Quest 10 Alliance)
Inst28Quest10_HORDE = Inst28Quest10
Inst28Quest10_HORDE_Level = Inst28Quest10_Level
Inst28Quest10_HORDE_Attain = Inst28Quest10_Attain
Inst28Quest10_HORDE_Aim = Inst28Quest10_Aim
Inst28Quest10_HORDE_Location = Inst28Quest10_Location
Inst28Quest10_HORDE_Note = Inst28Quest10_Note
Inst28Quest10_HORDE_Prequest = Inst28Quest10_Prequest
Inst28Quest10_HORDE_Folgequest = Inst28Quest10_Folgequest
Inst28Quest10name1_HORDE = Inst28Quest10name1
Inst28Quest10name2_HORDE = Inst28Quest10name2
Inst28Quest10name3_HORDE = Inst28Quest10name3

--Quest 11 Horde (same as Quest 11 Alliance)
Inst28Quest11_HORDE = Inst28Quest11
Inst28Quest11_HORDE_Level = Inst28Quest11_Level
Inst28Quest11_HORDE_Attain = Inst28Quest11_Attain
Inst28Quest11_HORDE_Aim = Inst28Quest11_Aim
Inst28Quest11_HORDE_Location = Inst28Quest11_Location
Inst28Quest11_HORDE_Note = Inst28Quest11_Note
Inst28Quest11_HORDE_Prequest = Inst28Quest11_Prequest
Inst28Quest11_HORDE_Folgequest = Inst28Quest11_Folgequest
Inst28Quest11name1_HORDE = Inst28Quest11name1
Inst28Quest11name2_HORDE = Inst28Quest11name2
Inst28Quest11name3_HORDE = Inst28Quest11name3

--Quest 12 Horde (same as Quest 12 Alliance)
Inst28Quest12_HORDE = Inst28Quest12
Inst28Quest12_HORDE_Level = Inst28Quest12_Level
Inst28Quest12_HORDE_Attain = Inst28Quest12_Attain
Inst28Quest12_HORDE_Aim = Inst28Quest12_Aim
Inst28Quest12_HORDE_Location = Inst28Quest12_Location
Inst28Quest12_HORDE_Note = Inst28Quest12_Note
Inst28Quest12_HORDE_Prequest = Inst28Quest12_Prequest
Inst28Quest12_HORDE_Folgequest = Inst28Quest12_Folgequest
Inst28Quest12name1_HORDE = Inst28Quest12name1
Inst28Quest12name2_HORDE = Inst28Quest12name2
Inst28Quest12name3_HORDE = Inst28Quest12name3

--Quest 13 Horde (same as Quest 13 Alliance)
Inst28Quest13_HORDE = Inst28Quest13
Inst28Quest13_HORDE_Level = Inst28Quest13_Level
Inst28Quest13_HORDE_Attain = Inst28Quest13_Attain
Inst28Quest13_HORDE_Aim = Inst28Quest13_Aim
Inst28Quest13_HORDE_Location = Inst28Quest13_Location
Inst28Quest13_HORDE_Note = Inst28Quest13_Note
Inst28Quest13_HORDE_Prequest = Inst28Quest13_Prequest
Inst28Quest13_HORDE_Folgequest = Inst28Quest13_Folgequest
Inst28Quest13name1_HORDE = Inst28Quest13name1
Inst28Quest13name2_HORDE = Inst28Quest13name2
Inst28Quest13name3_HORDE = Inst28Quest13name3

--Quest 14 Horde (same as Quest 14 Alliance)
Inst28Quest14_HORDE = Inst28Quest14
Inst28Quest14_HORDE_Level = Inst28Quest14_Level
Inst28Quest14_HORDE_Attain = Inst28Quest14_Attain
Inst28Quest14_HORDE_Aim = Inst28Quest14_Aim
Inst28Quest14_HORDE_Location = Inst28Quest14_Location
Inst28Quest14_HORDE_Note = Inst28Quest14_Note
Inst28Quest14_HORDE_Prequest = Inst28Quest14_Prequest
Inst28Quest14_HORDE_Folgequest = Inst28Quest14_Folgequest
Inst28Quest14name1_HORDE = Inst28Quest14name1
Inst28Quest14name2_HORDE = Inst28Quest14name2
Inst28Quest14name3_HORDE = Inst28Quest14name3

--Quest 15 Horde
Inst28Quest15_HORDE = "15. Da Voodoo" -- 8413
Inst28Quest15_HORDE_Level = "52"
Inst28Quest15_HORDE_Attain = "50"
Inst28Quest15_HORDE_Aim = "Bring the voodoo feathers to Bath'rah the Windwatcher."
Inst28Quest15_HORDE_Location = "Bath'rah the Windwatcher (Alterac Mountains; "..YELLOW.."80,67"..WHITE..")"
Inst28Quest15_HORDE_Note = SHAMAN.."(Shaman only)"..WHITE.." Feather drops from each of the named trolls on the ledges overlooking the big room with the hole in the center."
Inst28Quest15_HORDE_Prequest = "Spirit Totem" -- 8412
Inst28Quest15_HORDE_Folgequest = "No"
Inst28Quest15name1_HORDE = "Azurite Fists"
Inst28Quest15name2_HORDE = "Enamored Water Spirit"
Inst28Quest15name3_HORDE = "Wildstaff"

--Quest 16 Horde (same as Quest 16 Alliance)
Inst28Quest16_HORDE = Inst28Quest16
Inst28Quest16_HORDE_Level = Inst28Quest16_Level
Inst28Quest16_HORDE_Attain = Inst28Quest16_Attain
Inst28Quest16_HORDE_Aim = Inst28Quest16_Aim
Inst28Quest16_HORDE_Location = Inst28Quest16_Location
Inst28Quest16_HORDE_Note = Inst28Quest16_Note
Inst28Quest16_HORDE_Prequest = Inst28Quest16_Prequest
Inst28Quest16_HORDE_Folgequest = Inst28Quest16_Folgequest
-- No Rewards for this quest

--Quest 17 Horde (same as Quest 17 Alliance)
Inst28Quest17_HORDE = Inst28Quest17
Inst28Quest17_HORDE_Level = Inst28Quest17_Level
Inst28Quest17_HORDE_Attain = Inst28Quest17_Attain
Inst28Quest17_HORDE_Aim = Inst28Quest17_Aim
Inst28Quest17_HORDE_Location = Inst28Quest17_Location
Inst28Quest17_HORDE_Note = Inst28Quest17_Note
Inst28Quest17_HORDE_Prequest = Inst28Quest17_Prequest
Inst28Quest17_HORDE_Folgequest = Inst28Quest17_Folgequest
Inst28Quest17name1_HORDE = Inst28Quest17name1

--Quest 18 Horde
Inst28Quest18_HORDE = "(TW)18. The Maul'ogg Crisis VII" -- 40270
Inst28Quest18_HORDE_Level = "54"
Inst28Quest18_HORDE_Attain = "45"
Inst28Quest18_HORDE_Aim = "Venture into the depths of the Temple of Atal'Hakkar and gather the Atal'ai Rod, bring it to Insom'ni to finish the spell."
Inst28Quest18_HORDE_Location = "Insom'ni <The Great Hermit> (Kazon Island, north of Gillijim Isle "..YELLOW.."57.2,10.1"..WHITE..")"
Inst28Quest18_HORDE_Note = "Atal'ai Rod from the little green wooden chest on the floor behind Jammal'an the Prophet "..YELLOW.."[4]"..WHITE..".\nQuestline starts at Haz'gorg the Great Seer (Stranglethorn Vale - Gillijim's Isle(west from Booty Bay) - Maul'Ogg Refuge, inside of the southeast cave "..YELLOW.."78.1,81"..WHITE..".)\nYou will get the reward finishing last quest in the questline."
Inst28Quest18_HORDE_Prequest = "The Maul'ogg Crisis VI" -- 40269
Inst28Quest18_HORDE_Folgequest = "The Maul'ogg Crisis VIII" -- 40271
Inst28Quest18name1_HORDE = "The Ogre Mantle" --60346
Inst28Quest18name2_HORDE = "Staff of the Ogre Seer" --60347
Inst28Quest18name3_HORDE = "Favor of Cruk'Zogg" --60348

--Quest 19 Horde (same as Quest 18 Alliance)
Inst28Quest19_HORDE = "(TW)19. Into the Dream III" -- 40959
Inst28Quest19_HORDE_Level = Inst28Quest18_Level
Inst28Quest19_HORDE_Attain = Inst28Quest18_Attain
Inst28Quest19_HORDE_Aim = Inst28Quest18_Aim
Inst28Quest19_HORDE_Location = Inst28Quest18_Location
Inst28Quest19_HORDE_Note = Inst28Quest18_Note
Inst28Quest19_HORDE_Prequest = Inst28Quest18_Prequest
Inst28Quest19_HORDE_Folgequest = Inst28Quest18_Folgequest
Inst28Quest19name1_HORDE = Inst28Quest18name1


--------------- INST29 - The Temple of Ahn'Qiraj (AQ40) ---------------
Inst29Story = "At the heart of Ahn'Qiraj lies an ancient temple complex. Built in the time before recorded history, it is both a monument to unspeakable gods and a massive breeding ground for the qiraji army. Since the War of the Shifting Sands ended a thousand years ago, the Twin Emperors of the qiraji empire have been trapped inside their temple, barely contained behind the magical barrier erected by the bronze dragon Anachronos and the night elves. Now that the Scepter of the Shifting Sands has been reassembled and the seal has been broken, the way into the inner sanctum of Ahn'Qiraj is open. Beyond the crawling madness of the hives, beneath the Temple of Ahn'Qiraj, legions of qiraji prepare for invasion. They must be stopped at all costs before they can unleash their voracious insectoid armies on Kalimdor once again, and a second War of the Shifting Sands breaks loose!"
Inst29Caption = "Temple of Ahn'Qiraj"
Inst29QAA = "2 Quests"
Inst29QAH = "2 Quests"

--Quest 1 Alliance
Inst29Quest1 = "1. C'Thun's Legacy" -- 8801
Inst29Quest1_Level = "60"
Inst29Quest1_Attain = "60"
Inst29Quest1_Aim = "Take the Eye of C'Thun to Caelastrasz in the Temple of Ahn'Qiraj."
Inst29Quest1_Location = "Eye of C'Thun (drops from C'Thun; "..YELLOW.."[9]"..WHITE..")"
Inst29Quest1_Note = "Caelestrasz (Temple of Ahn'Qiraj; "..YELLOW.."2'"..WHITE..")\nRewards listed are for the followup."
Inst29Quest1_Prequest = "No"
Inst29Quest1_Folgequest = "The Savior of Kalimdor" -- 8802
Inst29Quest1name1 = "Amulet of the Fallen God"
Inst29Quest1name2 = "Cloak of the Fallen God"
Inst29Quest1name3 = "Ring of the Fallen God"

--Quest 2 Alliance
Inst29Quest2 = "2. Secrets of the Qiraji" -- 8784
Inst29Quest2_Level = "60"
Inst29Quest2_Attain = "60"
Inst29Quest2_Aim = "Take the Ancient Qiraji Artifact to the dragons hiding near the entrance of the temple."
Inst29Quest2_Location = "Ancient Qiraji Artifact (random drop in Temple of Ahn'Qiraj)"
Inst29Quest2_Note = "Turns in to Andorgos (Temple of Ahn'Qiraj; "..YELLOW.."1'"..WHITE..")."
Inst29Quest2_Prequest = "No"
Inst29Quest2_Folgequest = "No"
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst29Quest1_HORDE = Inst29Quest1
Inst29Quest1_HORDE_Level = Inst29Quest1_Level
Inst29Quest1_HORDE_Attain = Inst29Quest1_Attain
Inst29Quest1_HORDE_Aim = Inst29Quest1_Aim
Inst29Quest1_HORDE_Location = Inst29Quest1_Location
Inst29Quest1_HORDE_Note = Inst29Quest1_Note
Inst29Quest1_HORDE_Prequest = Inst29Quest1_Prequest
Inst29Quest1_HORDE_Folgequest = Inst29Quest1_Folgequest
Inst29Quest1name1_HORDE = Inst29Quest1name1
Inst29Quest1name2_HORDE = Inst29Quest1name2
Inst29Quest1name3_HORDE = Inst29Quest1name3

--Quest 2 Horde (same as Quest 2 Alliance)
Inst29Quest2_HORDE = Inst29Quest2
Inst29Quest2_HORDE_Level = Inst29Quest2_Level
Inst29Quest2_HORDE_Attain = Inst29Quest2_Attain
Inst29Quest2_HORDE_Aim = Inst29Quest2_Aim
Inst29Quest2_HORDE_Location = Inst29Quest2_Location
Inst29Quest2_HORDE_Note = Inst29Quest2_Note
Inst29Quest2_HORDE_Prequest = Inst29Quest2_Prequest
Inst29Quest2_HORDE_Folgequest = Inst29Quest2_Folgequest
-- No Rewards for this quest



--------------- INST30 - Zul'Farrak (ZF) ---------------
Inst30Story = "This sun-blasted city is home to the Sandfury trolls, known for their particular ruthlessness and dark mysticism. Troll legends tell of a powerful sword called Sul'thraze the Lasher, a weapon capable of instilling fear and weakness in even the most formidable of foes. Long ago, the weapon was split in half. However, rumors have circulated that the two halves may be found somewhere within Zul'Farrak's walls. Reports have also suggested that a band of mercenaries fleeing Gadgetzan wandered into the city and became trapped. Their fate remains unknown. But perhaps most disturbing of all are the hushed whispers of an ancient creature sleeping within a sacred pool at the city's heart - a mighty demigod who will wreak untold destruction upon any adventurer foolish enough to awaken him."
Inst30Caption = "Zul'Farrak"
Inst30QAA = "8 Quests 1TW"
Inst30QAH = "9 Quests 2TW"

--Quest 1 Alliance
Inst30Quest1 = "1. Nekrum's Medallion" -- 2991
Inst30Quest1_Level = "47"
Inst30Quest1_Attain = "40"
Inst30Quest1_Aim = "Bring Nekrum's Medallion to Thadius Grimshade in the Blasted Lands."
Inst30Quest1_Location = "Thadius Grimshade (The Blasted Lands - Nethergarde Keep; "..YELLOW.."66,19"..WHITE..")"
Inst30Quest1_Note = "The Questline starts at Gryphon Master Talonaxe (The Hinterlands - Wildhammer Stronghold; "..YELLOW.."9,44"..WHITE..").\nNekrum spawns at "..YELLOW.."[4]"..WHITE.." with the final crowd you fight for the Temple event."
Inst30Quest1_Prequest = "Witherbark Cages -> Thadius Grimshade" -- 2988 -> 2990
Inst30Quest1_Folgequest = "The Divination" -- 2992
-- No Rewards for this quest

--Quest 2 Alliance
Inst30Quest2 = "2. Troll Temper" -- 3042
Inst30Quest2_Level = "45"
Inst30Quest2_Attain = "40"
Inst30Quest2_Aim = "Bring 20 Vials of Troll Temper to Trenton Lighthammer in Gadgetzan."
Inst30Quest2_Location = "Trenton Lighthammer (Tanaris - Gadgetzan; "..YELLOW.."51,28"..WHITE..")"
Inst30Quest2_Note = "Every Troll can drop the Tempers."
Inst30Quest2_Prequest = "No"
Inst30Quest2_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Alliance
Inst30Quest3 = "3. Scarab Shells" -- 2865
Inst30Quest3_Level = "45"
Inst30Quest3_Attain = "40"
Inst30Quest3_Aim = "Bring 5 Uncracked Scarab Shells to Tran'rek in Gadgetzan."
Inst30Quest3_Location = "Tran'rek (Tanaris - Gadgetzan; "..YELLOW.."51,26"..WHITE..")"
Inst30Quest3_Note = "The prequest starts at Krazek (Stranglethorn Vale - Booty Bay; "..YELLOW.."25,77"..WHITE..").\nEvery Scarab can drop the Shells. A lot of Scarabs are at "..YELLOW.."[2]"..WHITE.."."
Inst30Quest3_Prequest = "Tran'rek" -- 2864
Inst30Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst30Quest4 = "4. Tiara of the Deep" -- 2846
Inst30Quest4_Level = "46"
Inst30Quest4_Attain = "40"
Inst30Quest4_Aim = "Bring the Tiara of the Deep to Tabetha in Dustwallow Marsh."
Inst30Quest4_Location = "Tabetha (Dustwallow Marsh; "..YELLOW.."46,57"..WHITE..")"
Inst30Quest4_Note = "Hydromancer Velratha drops the Tiara of the Deep at "..YELLOW.."[6]"..WHITE.."."
Inst30Quest4_Prequest = "Tabetha's Task" -- 2861
Inst30Quest4_Folgequest = "No"
Inst30Quest4name1 = "Spellshifter Rod"
Inst30Quest4name2 = "Gemshale Pauldrons"

--Quest 5 Alliance
Inst30Quest5 = "5. The Prophecy of Mosh'aru" -- 3527
Inst30Quest5_Level = "47"
Inst30Quest5_Attain = "40"
Inst30Quest5_Aim = "Bring the First and Second Mosh'aru Tablets to Yeh'kinya in Tanaris."
Inst30Quest5_Location = "Yeh'kinya (Tanaris - Steamwheedle Port; "..YELLOW.."66,22"..WHITE..")"
Inst30Quest5_Note = "You get the prequest from the same NPC.\nThe Tablets drop from Theka the Martyr at "..YELLOW.."[2]"..WHITE.." and Hydromancer Velratha at "..YELLOW.."[6]"..WHITE.."."
Inst30Quest5_Prequest = "Screecher Spirits" -- 3520
Inst30Quest5_Folgequest = "The Ancient Egg" -- 4787
-- No Rewards for this quest

--Quest 6 Alliance
Inst30Quest6 = "6. Divino-matic Rod" -- 2768
Inst30Quest6_Level = "47"
Inst30Quest6_Attain = "40"
Inst30Quest6_Aim = "Bring the Divino-matic Rod to Chief Engineer Bilgewhizzle in Gadgetzan."
Inst30Quest6_Location = "Chief Engineer Bilgewhizzle (Tanaris - Gadgetzan; "..YELLOW.."52,28"..WHITE..")"
Inst30Quest6_Note = "You get the Rod from Sergeant Bly. You can find him at "..YELLOW.."[4]"..WHITE.." after the Temple event."
Inst30Quest6_Prequest = "No"
Inst30Quest6_Folgequest = "No"
Inst30Quest6name1 = "Masons Fraternity Ring"
Inst30Quest6name2 = "Engineer's Guild Headpiece"

--Quest 7 Alliance
Inst30Quest7 = "7. Gahz'rilla" -- 2770
Inst30Quest7_Level = "50"
Inst30Quest7_Attain = "40"
Inst30Quest7_Aim = "Bring Gahz'rilla's Electrified Scale to Wizzle Brassbolts in the Shimmering Flats."
Inst30Quest7_Location = "Wizzle Brassbolts (Thousands Needles - Mirage Raceway; "..YELLOW.."78,77"..WHITE..")"
Inst30Quest7_Note = "You get the prequest from Klockmort Spannerspan (Ironforge - Tinkertown; "..YELLOW.."68,46"..WHITE.."). It is not necessary to have the prequest to get the Gahz'rilla quest.\nYou summon Gahz'rilla at "..YELLOW.."[6]"..WHITE.." with the Mallet of Zul'Farrak.\nThe Sacred Mallet comes from Qiaga the Keeper (The Hinterlands - The Altar of Zul; "..YELLOW.."49,70"..WHITE..") and must be completed at the Altar in Jinta'Alor at "..YELLOW.."59,77"..WHITE.." before it can be used in Zul'Farrak."
Inst30Quest7_Prequest = "The Brassbolts Brothers" -- 2769
Inst30Quest7_Folgequest = "No"
Inst30Quest7name1 = "Carrot on a Stick"

--Quest 8 Alliance
Inst30Quest8 = "(TW)8. Drifting Across the Sand" -- 40519
Inst30Quest8_Level = "46"
Inst30Quest8_Attain = "40"
Inst30Quest8_Aim = "Venture into Zul'Farrak and find the Ancient Troll Remains, then return them to Hansu Go'sha at the Southmoon Ruins in Tanaris."
Inst30Quest8_Location = "Hansu Go'sha (Tanaris - Ogre camp near Uldum; "..YELLOW.."40.6,71.5"..WHITE.." or wandering around the ruins)."
Inst30Quest8_Note = "In the room with Witch Doctor Zum'Rah "..YELLOW.."[3]"..WHITE.." Ancient Burial Container (little green wooden box)."
Inst30Quest8_Prequest = "No"
Inst30Quest8_Folgequest = "No"
Inst30Quest8name1 = "Southmoon Pendant" --60759


--Quest 1 Horde
Inst30Quest1_HORDE = "1. The Spider God" -- 2936
Inst30Quest1_HORDE_Level = "45"
Inst30Quest1_HORDE_Attain = "40"
Inst30Quest1_HORDE_Aim = "Read from the Tablet of Theka to learn the name of the Witherbark spider god, then return to Master Gadrin."
Inst30Quest1_HORDE_Location = "Meister Gadrin (Durotar - Sen'jin Village; "..YELLOW.."55,74"..WHITE..")"
Inst30Quest1_HORDE_Note = "The Questline starts at a Venom Bottle, which is found on tables in Troll Villages in The Hinterlands.\nYou find the Tablet at "..YELLOW.."[2]"..WHITE.."."
Inst30Quest1_HORDE_Prequest = "Venom Bottles -> Consult Master Gadrin" -- 2933 -> 2935
Inst30Quest1_HORDE_Folgequest = "Summoning Shadra" -- 2937
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst30Quest2_HORDE = Inst30Quest2
Inst30Quest2_HORDE_Level = Inst30Quest2_Level
Inst30Quest2_HORDE_Attain = Inst30Quest2_Attain
Inst30Quest2_HORDE_Aim = Inst30Quest2_Aim
Inst30Quest2_HORDE_Location = Inst30Quest2_Location
Inst30Quest2_HORDE_Note = Inst30Quest2_Note
Inst30Quest2_HORDE_Prequest = Inst30Quest2_Prequest
Inst30Quest2_HORDE_Folgequest = Inst30Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst30Quest3_HORDE = Inst30Quest3
Inst30Quest3_HORDE_Level = Inst30Quest3_Level
Inst30Quest3_HORDE_Attain = Inst30Quest3_Attain
Inst30Quest3_HORDE_Aim = Inst30Quest3_Aim
Inst30Quest3_HORDE_Location = Inst30Quest3_Location
Inst30Quest3_HORDE_Note = Inst30Quest3_Note
Inst30Quest3_HORDE_Prequest = Inst30Quest3_Prequest
Inst30Quest3_HORDE_Folgequest = Inst30Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst30Quest4_HORDE = Inst30Quest4
Inst30Quest4_HORDE_Level = Inst30Quest4_Level
Inst30Quest4_HORDE_Attain = Inst30Quest4_Attain
Inst30Quest4_HORDE_Aim = Inst30Quest4_Aim
Inst30Quest4_HORDE_Location = Inst30Quest4_Location
Inst30Quest4_HORDE_Note = Inst30Quest4_Note
Inst30Quest4_HORDE_Prequest = Inst30Quest4_Prequest
Inst30Quest4_HORDE_Folgequest = Inst30Quest4_Folgequest
Inst30Quest4name1_HORDE = Inst30Quest4name1
Inst30Quest4name2_HORDE = Inst30Quest4name2

--Quest 5 Horde (same as Quest 5 Alliance)
Inst30Quest5_HORDE = Inst30Quest5
Inst30Quest5_HORDE_Level = Inst30Quest5_Level
Inst30Quest5_HORDE_Attain = Inst30Quest5_Attain
Inst30Quest5_HORDE_Aim = Inst30Quest5_Aim
Inst30Quest5_HORDE_Location = Inst30Quest5_Location
Inst30Quest5_HORDE_Note = Inst30Quest5_Note
Inst30Quest5_HORDE_Prequest = Inst30Quest5_Prequest
Inst30Quest5_HORDE_Folgequest = Inst30Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst30Quest6_HORDE = Inst30Quest6
Inst30Quest6_HORDE_Level = Inst30Quest6_Level
Inst30Quest6_HORDE_Attain = Inst30Quest6_Attain
Inst30Quest6_HORDE_Aim = Inst30Quest6_Aim
Inst30Quest6_HORDE_Location = Inst30Quest6_Location
Inst30Quest6_HORDE_Note = Inst30Quest6_Note
Inst30Quest6_HORDE_Prequest = Inst30Quest6_Prequest
Inst30Quest6_HORDE_Folgequest = Inst30Quest6_Folgequest
Inst30Quest6name1_HORDE = Inst30Quest6name1
Inst30Quest6name2_HORDE = Inst30Quest6name2

--Quest 7 Horde (same as Quest 7 Alliance)
Inst30Quest7_HORDE = Inst30Quest7
Inst30Quest7_HORDE_Level = Inst30Quest7_Level
Inst30Quest7_HORDE_Attain = Inst30Quest7_Attain
Inst30Quest7_HORDE_Aim = Inst30Quest7_Aim
Inst30Quest7_HORDE_Location = Inst30Quest7_Location
Inst30Quest7_HORDE_Note = Inst30Quest7_Note
Inst30Quest7_HORDE_Prequest = Inst30Quest7_Prequest
Inst30Quest7_HORDE_Folgequest = Inst30Quest7_Folgequest
Inst30Quest7name1_HORDE = Inst30Quest7name1

--Quest 8 Horde (same as Quest 8 Alliance)
Inst30Quest8_HORDE = Inst30Quest8
Inst30Quest8_HORDE_Level = Inst30Quest8_Level
Inst30Quest8_HORDE_Attain = Inst30Quest8_Attain
Inst30Quest8_HORDE_Aim = Inst30Quest8_Aim
Inst30Quest8_HORDE_Location = Inst30Quest8_Location
Inst30Quest8_HORDE_Note = Inst30Quest8_Note
Inst30Quest8_HORDE_Prequest = Inst30Quest8_Prequest
Inst30Quest8_HORDE_Folgequest = Inst30Quest8_Folgequest
Inst30Quest8name1_HORDE = Inst30Quest8name1

--Quest 9 Horde
Inst30Quest9_HORDE = "(TW)9. End Ukorz Sandscalp" -- 40527
Inst30Quest9_HORDE_Level = "48"
Inst30Quest9_HORDE_Attain = "40"
Inst30Quest9_HORDE_Aim = "Slay Ukorz Sandscalp and Ruuzlu "..YELLOW.."[7]"..WHITE.." within Zul'Farrak for Champion Taza'go at Sandmoon Village in Tanaris."
Inst30Quest9_HORDE_Location = "Champion Taza'go (Tanaris - Sandmoon Village; northeast corner of Tanaris, northwest from Steamwheedle Port)"
Inst30Quest9_HORDE_Note = "The Questline starts with quest 'Sandfury Redemption I' at Seer Maz'ek in Sandmoon Village(Tanaris) "..YELLOW.."59.1,17.1"..WHITE.."."
Inst30Quest9_HORDE_Prequest = "Plight of the Sandfury" -- 40526
Inst30Quest9_HORDE_Folgequest = "No"
Inst30Quest9name1_HORDE = "The Dune Blade" -- 60764
Inst30Quest9name2_HORDE = "Sandmoon Greaves" -- 60765


--------------- INST31 - Zul'Gurub (ZG) ---------------
Inst31Story = {
	["Page1"] = "Over a thousand years ago the powerful Gurubashi Empire was torn apart by a massive civil war. An influential group of troll priests, known as the Atal'ai, called forth the avatar of an ancient and terrible blood god named Hakkar the Soulflayer. Though the priests were defeated and ultimately exiled, the great troll empire collapsed upon itself. The exiled priests fled far to the north, into the Swamp of Sorrows, where they erected a great temple to Hakkar in order to prepare for his arrival into the physical world.",
	["Page2"] = "In time, the Atal'ai priests discovered that Hakkar's physical form could only be summoned within the ancient capital of the Gurubashi Empire, Zul'Gurub. Unfortunately, the priests have met with recent success in their quest to call forth Hakkar - reports confirm the presence of the dreaded Soulflayer in the heart of the Gurubashi ruins.\n\nIn order to quell the blood god, the trolls of the land banded together and sent a contingent of High Priests into the ancient city. Each priest was a powerful champion of the Primal Gods - Bat, Panther, Tiger, Spider, and Snake - but despite their best efforts, they fell under the sway of Hakkar. Now the champions and their Primal God aspects feed the awesome power of the Soulflayer. Any adventurers brave enough to venture into the foreboding ruins must overcome the High Priests if they are to have any hope of confronting the mighty blood god.",
	["MaxPages"] = "2",
};
Inst31Caption = "Zul'Gurub"
Inst31QAA = "4 Quests"
Inst31QAH = "4 Quests"

--Quest 1 Alliance
Inst31Quest1 = "1. A Collection of Heads" -- 8201
Inst31Quest1_Level = "60"
Inst31Quest1_Attain = "58"
Inst31Quest1_Aim = "String 5 Channeler's Heads, then return the Collection of Troll Heads to Exzhal on Yojamba Isle."
Inst31Quest1_Location = "Exzhal (Stranglethorn Vale - Yojamba Isle; "..YELLOW.."15,15"..WHITE..")"
Inst31Quest1_Note = "Make sure you loot all the priests."
Inst31Quest1_Prequest = "No"
Inst31Quest1_Folgequest = "No"
Inst31Quest1name1 = "Belt of Shrunken Heads"
Inst31Quest1name2 = "Belt of Shriveled Heads"
Inst31Quest1name3 = "Belt of Preserved Heads"
Inst31Quest1name4 = "Belt of Tiny Heads"

--Quest 2 Alliance
Inst31Quest2 = "2. The Heart of Hakkar" -- 8183
Inst31Quest2_Level = "60"
Inst31Quest2_Attain = "58"
Inst31Quest2_Aim = "Bring the Heart of Hakkar to Molthor on Yojamba Isle."
Inst31Quest2_Location = "Heart of Hakkar (drops from Hakkar; "..YELLOW.."[11]"..WHITE..")"
Inst31Quest2_Note = "Molthor (Stranglethorn Vale - Yojamba Isle; "..YELLOW.."15,15"..WHITE..")"
Inst31Quest2_Prequest = "No"
Inst31Quest2_Folgequest = "No"
Inst31Quest2name1 = "Zandalarian Hero Badge"
Inst31Quest2name2 = "Zandalarian Hero Charm"
Inst31Quest2name3 = "Zandalarian Hero Medallion"

--Quest 3 Alliance
Inst31Quest3 = "3. Nat's Measuring Tape" -- 8227
Inst31Quest3_Level = "60"
Inst31Quest3_Attain = "58"
Inst31Quest3_Aim = "Return Nat's Measuring Tape to Nat Pagle in Dustwallow Marsh."
Inst31Quest3_Location = "Battered Tackle Box (Zul'Gurub - Northeast by water from Hakkar's Island)"
Inst31Quest3_Note = "Nat Pagle is at Dustwallow Marsh ("..YELLOW.."59,60"..WHITE.."). Turning the quest in allows you to buy Mudskunk Lures from Nat Pagle to summon Gahz'ranka in Zul'Gurub."
Inst31Quest3_Prequest = "No"
Inst31Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst31Quest4 = "4. The Perfect Poison" -- 9023
Inst31Quest4_Level = "60"
Inst31Quest4_Attain = "60"
Inst31Quest4_Aim = "Dirk Thunderwood at Cenarion Hold wants you to bring him Venoxis's Venom Sac and Kurinnaxx's Venom Sac."
Inst31Quest4_Location = "Dirk Thunderwood (Silithus - Cenarion Hold; "..YELLOW.."52,39"..WHITE..")"
Inst31Quest4_Note = "Venoxis's Venom Sac drops from High priest Venoxis in "..YELLOW.."Zul'Gurub"..WHITE.." at "..YELLOW.."[2]"..WHITE..". Kurinnaxx's Venom Sac drops in the "..YELLOW.."Ruins of Ahn'Qiraj"..WHITE.." at "..YELLOW.."[1]"..WHITE.."."
Inst31Quest4_Prequest = "No"
Inst31Quest4_Folgequest = "No"
Inst31Quest4name1 = "Ravenholdt Slicer"
Inst31Quest4name2 = "Shivsprocket's Shiv"
Inst31Quest4name3 = "The Thunderwood Poker"
Inst31Quest4name4 = "Doomulus Prime"
Inst31Quest4name5 = "Fahrad's Reloading Repeater"
Inst31Quest4name6 = "Simone's Cultivating Hammer"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst31Quest1_HORDE = Inst31Quest1
Inst31Quest1_HORDE_Level = Inst31Quest1_Level
Inst31Quest1_HORDE_Attain = Inst31Quest1_Attain
Inst31Quest1_HORDE_Aim = Inst31Quest1_Aim
Inst31Quest1_HORDE_Location = Inst31Quest1_Location
Inst31Quest1_HORDE_Note = Inst31Quest1_Note
Inst31Quest1_HORDE_Prequest = Inst31Quest1_Prequest
Inst31Quest1_HORDE_Folgequest = Inst31Quest1_Folgequest
Inst31Quest1name1_HORDE = Inst31Quest1name1
Inst31Quest1name2_HORDE = Inst31Quest1name2
Inst31Quest1name3_HORDE = Inst31Quest1name3
Inst31Quest1name4_HORDE = Inst31Quest1name4

--Quest 2 Horde (same as Quest 2 Alliance)
Inst31Quest2_HORDE = Inst31Quest2
Inst31Quest2_HORDE_Level = Inst31Quest2_Level
Inst31Quest2_HORDE_Attain = Inst31Quest2_Attain
Inst31Quest2_HORDE_Aim = Inst31Quest2_Aim
Inst31Quest2_HORDE_Location = Inst31Quest2_Location
Inst31Quest2_HORDE_Note = Inst31Quest2_Note
Inst31Quest2_HORDE_Prequest = Inst31Quest2_Prequest
Inst31Quest2_HORDE_Folgequest = Inst31Quest2_Folgequest
Inst31Quest2name1_HORDE = Inst31Quest2name1
Inst31Quest2name2_HORDE = Inst31Quest2name2
Inst31Quest2name3_HORDE = Inst31Quest2name3

--Quest 3 Horde (same as Quest 3 Alliance)
Inst31Quest3_HORDE = Inst31Quest3
Inst31Quest3_HORDE_Level = Inst31Quest3_Level
Inst31Quest3_HORDE_Attain = Inst31Quest3_Attain
Inst31Quest3_HORDE_Aim = Inst31Quest3_Aim
Inst31Quest3_HORDE_Location = Inst31Quest3_Location
Inst31Quest3_HORDE_Note = Inst31Quest3_Note
Inst31Quest3_HORDE_Prequest = Inst31Quest3_Prequest
Inst31Quest3_HORDE_Folgequest = Inst31Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst31Quest4_HORDE = Inst31Quest4
Inst31Quest4_HORDE_Level = Inst31Quest4_Level
Inst31Quest4_HORDE_Attain = Inst31Quest4_Attain
Inst31Quest4_HORDE_Aim = Inst31Quest4_Aim
Inst31Quest4_HORDE_Location = Inst31Quest4_Location
Inst31Quest4_HORDE_Note = Inst31Quest4_Note
Inst31Quest4_HORDE_Prequest = Inst31Quest4_Prequest
Inst31Quest4_HORDE_Folgequest = Inst31Quest4_Folgequest
Inst31Quest4name1_HORDE = Inst31Quest4name1
Inst31Quest4name2_HORDE = Inst31Quest4name2
Inst31Quest4name3_HORDE = Inst31Quest4name3
Inst31Quest4name4_HORDE = Inst31Quest4name4
Inst31Quest4name5_HORDE = Inst31Quest4name5
Inst31Quest4name6_HORDE = Inst31Quest4name6



--------------- INST32 - Gnomeregan (Gnomer) ---------------
Inst32Story = "Located in Dun Morogh, the technological wonder known as Gnomeregan has been the gnomes' capital city for generations. Recently, a hostile race of mutant troggs infested several regions of Dun Morogh - including the great gnome city. In a desperate attempt to destroy the invading troggs, High Tinker Mekkatorque ordered the emergency venting of the city's radioactive waste tanks. Several gnomes sought shelter from the airborne pollutants as they waited for the troggs to die or flee. Unfortunately, though the troggs became irradiated from the toxic assault - their siege continued, unabated. Those gnomes who were not killed by noxious seepage were forced to flee, seeking refuge in the nearby dwarven city of Ironforge. There, High Tinker Mekkatorque set out to enlist brave souls to help his people reclaim their beloved city. It is rumored that Mekkatorque's once-trusted advisor, Mekgineer Thermaplugg, betrayed his people by allowing the invasion to happen. Now, his sanity shattered, Thermaplug remains in Gnomeregan - furthering his dark schemes and acting as the city's new techno-overlord."
Inst32Caption = "Gnomeregan"
Inst32QAA = "13 Quests 3TW"
Inst32QAH = "7 Quests 2TW"

--Quest 1 Alliance
Inst32Quest1 = "1. Save Techbot's Brain!" -- 2922
Inst32Quest1_Level = "26"
Inst32Quest1_Attain = "20"
Inst32Quest1_Aim = "Bring Techbot's Memory Core to Tinkmaster Overspark in Ironforge."
Inst32Quest1_Location = "Tinkmaster Overspark (Dun Morogh - Gnomeregan Reclamation Facility; "..YELLOW.."24.4,29.8"..WHITE..")"
Inst32Quest1_Note = "You get the prequest from Brother Sarno (Stormwind - Cathedral Square; "..YELLOW.."4030"..WHITE..").\nYou find Techbot before you enter the instance near the backdoor, at "..YELLOW.."[4] on Entrance Map"..WHITE.."."
Inst32Quest1_Prequest = "Tinkmaster Overspark" -- 2923
Inst32Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst32Quest2 = "2. Gnogaine" -- 2926
Inst32Quest2_Level = "27"
Inst32Quest2_Attain = "20"
Inst32Quest2_Aim = "Use the Empty Leaden Collection Phial on Irradiated Invaders or Irradiated Pillagers to collect radioactive fallout. Once it is full, take it back to Ozzie Togglevolt in Kharanos."
Inst32Quest2_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst32Quest2_Note = "You get the prequest from Gnoarn (Dun Morogh - Gnomeregan Reclamation Facility; "..YELLOW.."24.5,30.4"..WHITE..").\nTo get fallout you musst use the Phial on "..RED.."alive"..WHITE.." Irradiated Invaders or Irradiated Pillagers."
Inst32Quest2_Prequest = "The Day After" -- 2927
Inst32Quest2_Folgequest = "The Only Cure is More Green Glow" -- 2962
-- No Rewards for this quest

--Quest 3 Alliance
Inst32Quest3 = "3. The Only Cure is More Green Glow" -- 2962
Inst32Quest3_Level = "30"
Inst32Quest3_Attain = "20"
Inst32Quest3_Aim = "Travel to Gnomeregan and bring back High Potency Radioactive Fallout. Be warned, the fallout is unstable and will collapse rather quickly.\nOzzie will also require your Heavy Leaden Collection Phial when the task is complete."
Inst32Quest3_Location = "Ozzie Togglevolt (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst32Quest3_Note = "To get fallout you must use the Phial on "..RED.."alive"..WHITE.." Irradiated Slimes or Horrors."
Inst32Quest3_Prequest = "Gnogaine" -- 2926
Inst32Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst32Quest4 = "4. Gyrodrillmatic Excavationators" -- 2928
Inst32Quest4_Level = "30"
Inst32Quest4_Attain = "20"
Inst32Quest4_Aim = "Bring twenty-four Robo-mechanical Guts to Shoni in Stormwind."
Inst32Quest4_Location = "Shoni the Silent (Stormwind - Dwarven District; "..YELLOW.."55,12"..WHITE..")"
Inst32Quest4_Note = "All Robots can drop the Robo-mechanical Guts."
Inst32Quest4_Prequest = "No"
Inst32Quest4_Folgequest = "No"
Inst32Quest4name1 = "Shoni's Disarming Tool"
Inst32Quest4name2 = "Shilly Mitts"

--Quest 5 Alliance
Inst32Quest5 = "5. Essential Artificials" -- 2924
Inst32Quest5_Level = "30"
Inst32Quest5_Attain = "24"
Inst32Quest5_Aim = "Bring 12 Essential Artificials to Klockmort Spannerspan in Ironforge."
Inst32Quest5_Location = "Klockmort Spannerspan (Dun Morogh - Gnomeregan Reclamation Facility; "..YELLOW.."23.6,28"..WHITE..")"
Inst32Quest5_Note = "You get the prequest from Mathiel (Darnassus - Warrior's Terrace; "..YELLOW.."59,45"..WHITE.."). The prequest is only a pointer quest and is not required to get this quest.\nThe Essential Artificials come from machines scattered around the instance."
Inst32Quest5_Prequest = "Klockmort's Essentials" -- 2925
Inst32Quest5_Folgequest = "No"
-- No Rewards for this quest

--Quest 6 Alliance
Inst32Quest6 = "6. Data Rescue" -- 2930
Inst32Quest6_Level = "30"
Inst32Quest6_Attain = "25"
Inst32Quest6_Aim = "Bring a Prismatic Punch Card to Master Mechanic Castpipe in Ironforge."
Inst32Quest6_Location = "Master Mechanic Castpipe (Dun Morogh - Gnomeregan Reclamation Facility; "..YELLOW.."24.1,29.8"..WHITE..")"
Inst32Quest6_Note = "You get the prequest from Gaxim Rustfizzle (Stonetalon Mountains; "..YELLOW.."59,67"..WHITE.."). The prequest is only a pointer quest and is not required to get this quest.\nThe white card is a random drop. You find the first terminal next to the back entrance before you enter the instance at "..YELLOW.."[3] on Entrance Map"..WHITE..". The 3005-B is at "..YELLOW.."[3]"..WHITE..", the 3005-C at "..YELLOW.."[5]"..WHITE.." and the 3005-D is at "..YELLOW.."[6]"..WHITE.."."
Inst32Quest6_Prequest = "Castpipe's Task" -- 2931
Inst32Quest6_Folgequest = "No"
Inst32Quest6name1 = "Repairman's Cape"
Inst32Quest6name2 = "Mechanic's Pipehammer"

--Quest 7 Alliance
Inst32Quest7 = "7. A Fine Mess" -- 2904
Inst32Quest7_Level = "30"
Inst32Quest7_Attain = "24"
Inst32Quest7_Aim = "Escort Kernobee to the Clockwerk Run exit and then report to Scooty in Booty Bay."
Inst32Quest7_Location = "Kernobee (Gnomeregan; "..YELLOW.."[3]"..WHITE..")"
Inst32Quest7_Note = "Escort quest! You find Scooty in Stranglethorn Vale - Booty Bay ("..YELLOW.."27,77"..WHITE..")."
Inst32Quest7_Prequest = "No"
Inst32Quest7_Folgequest = "No"
Inst32Quest7name1 = "Fire-welded Bracers"
Inst32Quest7name2 = "Fairywing Mantle"

--Quest 8 Alliance
Inst32Quest8 = "8. The Grand Betrayal" -- 2929
Inst32Quest8_Level = "35"
Inst32Quest8_Attain = "25"
Inst32Quest8_Aim = "Venture to Gnomeregan and kill Mekgineer Thermaplugg. Return to High Tinker Mekkatorque when the task is complete."
Inst32Quest8_Location = "High Tinker Mekkatorque (Dun Morogh - Gnomeregan Reclamation Facility; "..YELLOW.."24.2,29.7"..WHITE..")"
Inst32Quest8_Note = "You find Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst32Quest8_Prequest = "No"
Inst32Quest8_Folgequest = "No"
Inst32Quest8name1 = "Civinad Robes"
Inst32Quest8name2 = "Triprunner Dungarees"
Inst32Quest8name3 = "Dual Reinforced Leggings"

--Quest 9 Alliance
Inst32Quest9 = "9. Grime-Encrusted Ring" -- 2945
Inst32Quest9_Level = "34"
Inst32Quest9_Attain = "28"
Inst32Quest9_Aim = "Figure out a way to remove the grime from the Grime-Encrusted Ring."
Inst32Quest9_Location = "Grime-Encrusted Ring (random drop from Gnomeregan)"
Inst32Quest9_Note = "The Ring can be cleaned off at the Sparklematic 5200 in the Clean Room at "..YELLOW.."[2]"..WHITE.."."
Inst32Quest9_Prequest = "No"
Inst32Quest9_Folgequest = "Return of the Ring" -- 2947
-- No Rewards for this quest

--Quest 10 Alliance
Inst32Quest10 = "10. Return of the Ring" -- 2947
Inst32Quest10_Level = "34"
Inst32Quest10_Attain = "28"
Inst32Quest10_Aim = "You may either keep the ring, or you may find the person responsible for the imprint and engravings on the inside of the band."
Inst32Quest10_Location = "Brilliant Gold Ring (obtained from Grime-Encrusted Ring quest)"
Inst32Quest10_Note = "Turns in to Talvash del Kissel (Ironforge - Mystic Ward; "..YELLOW.."36,3"..WHITE.."). The followup to enhance the ring is optional."
Inst32Quest10_Prequest = "Grime-Encrusted Ring" -- 2945
Inst32Quest10_Folgequest = "Gnome Improvement" -- 2948
Inst32Quest10name1 = "Brilliant Gold Ring"

--Quest 11 Alliance
Inst32Quest11 = "(TW)11. A Pounding Brain" -- 80398
Inst32Quest11_Level = "30"
Inst32Quest11_Attain = "30"
Inst32Quest11_Aim = "Find Someone who can figure out what to do with the Mainframe."
Inst32Quest11_Location = "Intact Pounder Mainframe"
Inst32Quest11_Note = "Intact Pounder Mainframe that starts the quest can drop from Crowd Pummeler 9-60 "..YELLOW.."[6]"..WHITE.." (low chance).\nAvailable for Engineers with 125+ skill."
Inst32Quest11_Prequest = "No"
Inst32Quest11_Folgequest = "To Build a Pounder" -- 80401
-- No Rewards for this quest

--Quest 12 Alliance
Inst32Quest12 = "(TW)12. High Energy Regulator" -- 40861
Inst32Quest12_Level = "33"
Inst32Quest12_Attain = "25"
Inst32Quest12_Aim = "Find the Schematic: High Energy Regulator within Gnomeregan and bring it to Weezan Littlegear at the Gnomeregan Reclamation Facility in Dun Morogh."
Inst32Quest12_Location = "Weezan Littlegear (Dun Morogh - Gnomeregan Reclamation Facility "..YELLOW.."[25.2,31.6]"..WHITE..")"
Inst32Quest12_Note = "Schematic: High Energy Regulator is on the table at "..YELLOW.."[3]"..WHITE.." southeastern corner lower south chamber "..YELLOW.."[a]"..WHITE.."."
Inst32Quest12_Prequest = "No"
Inst32Quest12_Folgequest = "No"
Inst32Quest12name1 = "Low Energy Regulator" --61393

--Quest 13 Alliance
Inst32Quest13 = "(TW)13. Backup System Activation" -- 40856
Inst32Quest13_Level = "33"
Inst32Quest13_Attain = "25"
Inst32Quest13_Aim = "Activate the Alpha Channel Valve "..YELLOW.."[6]"..WHITE.." and the Reserve Pump Channel Lever "..YELLOW.."[b]"..WHITE.." deep within Gnomeregan for Master Technician Wirespanner in Dun Morogh."
Inst32Quest13_Location = "Master Technician Wirespanner (Dun Morogh - Gnomeregan Reclamation Facility "..YELLOW.."[26.8,31.1]"..WHITE..")"
Inst32Quest13_Note = "Alpha Channel Valve is at "..YELLOW.."[6]"..WHITE..", use elevetaor to go down. south side of the central mechanism.\nReserve Pump Channel Lever is at "..YELLOW.."[b]"..WHITE.." on the floor."
Inst32Quest13_Prequest = "No"
Inst32Quest13_Folgequest = "No"
Inst32Quest13name1 = "Intricate Gnomish Blunderbuss" -- 61383
Inst32Quest13name2 = "Ionized Metal Grips" -- 61384
Inst32Quest13name3 = "Magnetic Band" -- 61385


--Quest 1 Horde
Inst32Quest1_HORDE = "1. Gnomer-gooooone!" -- 2843
Inst32Quest1_HORDE_Level = "35"
Inst32Quest1_HORDE_Attain = "20"
Inst32Quest1_HORDE_Aim = "Wait for Scooty to calibrate the Goblin Transponder."
Inst32Quest1_HORDE_Location = "Scooty (Stranglethorn Vale - Booty Bay; "..YELLOW.."27,77"..WHITE..")"
Inst32Quest1_HORDE_Note = "You get the prequest from Sovik (Orgrimmar - Valley of Honor; "..YELLOW.."75,25"..WHITE..").\nWhen you complete this quest you can use the transponder in Booty Bay."
Inst32Quest1_HORDE_Prequest = "Chief Engineer Scooty" -- 2842
Inst32Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 7 Alliance)
Inst32Quest2_HORDE = "2. A Fine Mess"
Inst32Quest2_HORDE_Level = Inst32Quest7_Level
Inst32Quest2_HORDE_Attain = Inst32Quest7_Attain
Inst32Quest2_HORDE_Aim = Inst32Quest7_Aim
Inst32Quest2_HORDE_Location = Inst32Quest7_Location
Inst32Quest2_HORDE_Note = Inst32Quest7_Note
Inst32Quest2_HORDE_Prequest = Inst32Quest7_Prequest
Inst32Quest2_HORDE_Folgequest = Inst32Quest7_Folgequest
Inst32Quest2name1_HORDE = Inst32Quest7name1
Inst32Quest2name2_HORDE = Inst32Quest7name2

--Quest 3 Horde
Inst32Quest3_HORDE = "3. Rig Wars" -- 2841
Inst32Quest3_HORDE_Level = "35"
Inst32Quest3_HORDE_Attain = "25"
Inst32Quest3_HORDE_Aim = "Retrieve the Rig Blueprints and Thermaplugg's Safe Combination from Gnomeregan and bring them to Nogg in Orgrimmar."
Inst32Quest3_HORDE_Location = "Nogg (Orgrimmar - Valley of Honor; "..YELLOW.."75,25"..WHITE..")"
Inst32Quest3_HORDE_Note = "You find Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst32Quest3_HORDE_Prequest = "No"
Inst32Quest3_HORDE_Folgequest = "No"
Inst32Quest3name1_HORDE = "Civinad Robes"
Inst32Quest3name2_HORDE = "Triprunner Dungarees"
Inst32Quest3name3_HORDE = "Dual Reinforced Leggings"

--Quest 4 Horde (same as Quest 9 Alliance)
Inst32Quest4_HORDE = "4. Grime-Encrusted Ring"
Inst32Quest4_HORDE_Level = Inst32Quest9_Level
Inst32Quest4_HORDE_Attain = Inst32Quest9_Attain
Inst32Quest4_HORDE_Aim = Inst32Quest9_Aim
Inst32Quest4_HORDE_Location = Inst32Quest9_Location
Inst32Quest4_HORDE_Note = Inst32Quest9_Note
Inst32Quest4_HORDE_Prequest = Inst32Quest9_Prequest
Inst32Quest4_HORDE_Folgequest = Inst32Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 10 Alliance)
Inst32Quest5_HORDE = "5. Return of the Ring" -- 2949
Inst32Quest5_HORDE_Level = Inst32Quest10_Level
Inst32Quest5_HORDE_Attain = Inst32Quest10_Attain
Inst32Quest5_HORDE_Aim = Inst32Quest10_Aim
Inst32Quest5_HORDE_Location = Inst32Quest10_Location
Inst32Quest5_HORDE_Note = "Turns in to Nogg (Orgrimmar - The Valley of Honor; "..YELLOW.."75,25"..WHITE.."). The followup to enhance the ring is optional."
Inst32Quest5_HORDE_Prequest = Inst32Quest10_Prequest
Inst32Quest5_HORDE_Folgequest = "Nogg's Ring Redo" -- 2950
Inst32Quest5name1_HORDE = "Brilliant Gold Ring"

--Quest 6 Horde
Inst32Quest6_HORDE = "(TW)6. A Pounding Brain" -- 80398
Inst32Quest6_HORDE_Level = Inst32Quest11_Level
Inst32Quest6_HORDE_Attain = Inst32Quest11_Attain
Inst32Quest6_HORDE_Aim = Inst32Quest11_Aim
Inst32Quest6_HORDE_Location = Inst32Quest11_Location
Inst32Quest6_HORDE_Note = Inst32Quest11_Note
Inst32Quest6_HORDE_Prequest = Inst32Quest11_Prequest
Inst32Quest6_HORDE_Folgequest = Inst32Quest11_Folgequest -- 80401
-- No Rewards for this quest

--Quest 7 Horde
Inst32Quest7_HORDE = "(TW)7. Backup Capacitor" -- 55006
Inst32Quest7_HORDE_Level = "34"
Inst32Quest7_HORDE_Attain = "29"
Inst32Quest7_HORDE_Aim = "Bring the Megaflux Capacitor to Technician Grimzlow."
Inst32Quest7_HORDE_Location = "Technician Grimzlow (Durotar - Sparkwater Port "..YELLOW.."57.4,25.7"..WHITE..")."
Inst32Quest7_HORDE_Note = "Prequest 'A New Power Source' starts at Technician Spuzzle(Durotar - Sparkwater Port "..YELLOW.."57.4,25.8"..WHITE..") at level 7 .\nMegaflux Capacitor drops from Mekgineer Thermaplugg. You find Mekgineer Thermaplugg at "..YELLOW.."[8]"..WHITE..". He is the last boss in Gnomeregan.\nDuring the fight you have to disable the columns through pushing the button on the side."
Inst32Quest7_HORDE_Prequest = "A New Power Source" -- 55003
Inst32Quest7_HORDE_Folgequest = "No"
Inst32Quest7name1_HORDE = "Razorblade Buckler" -- 81319
Inst32Quest7name2_HORDE = "Crackling Zapper" -- 81320

--------------- INST39 - The Crescent Grove (CG) ---------------
Inst39Story = "A hidden grove in southern Ashenvale overlooking Mystral Lake that was once a retreat for druids for several years, an evil presence has taken root in the region.\nOriginally a hidden grove that served as a calm retreat for druids, in recent times the Groveweald tribe has moved in while fleeing the madness of the Foulweald tribe, expelling several of the original inhabitants in the process. However, in spite of their attempts to escape the madness, they succumbed to it in time.\nKalanar Brightshine once lived here, before he was expelled from the Grove by the Groveweald furbolgs and his home was burned down.\nDemonic forces of the Burning Legion led by the doomguard Master Raxxieth have established themselves within the grove, beginning to corrupt the glade. Already, the Legion has left their mark in the form of the Vilethorn Scar, upsetting the balance and disturbing spirits."
Inst39Caption = "The Crescent Grove"
Inst39QAA = "4 Quests 4TW"
Inst39QAH = "3 Quests 3TW"

--Quest 1 Alliance
Inst39Quest1 = "(TW)1. The Unwise Elders" -- 40090
Inst39Quest1_Level = "34"
Inst39Quest1_Attain = "32"
Inst39Quest1_Aim = "Bring the paws of Elder 'One Eye' and Elder Blackmaw from within the Crescent Grove to Grol the Exile."
Inst39Quest1_Location = "Grol the Exile (Ashenvale, a bit north side the road between Astranaar and Felwood road T-Intersection, north from the furbolg camp; "..YELLOW.."56.1,59.2"..WHITE..")."
Inst39Quest1_Note = "Paw of Elder 'One Eye' and Paw of Elder Blackmaw drops from minions of the first boss Grovetender Engryss "..YELLOW.."[1]"..WHITE.." ."
Inst39Quest1_Prequest = "No"
Inst39Quest1_Folgequest = "No"
Inst39Quest1name1 = "Grol's Band" -- 60179

--Quest 2 Alliance
Inst39Quest2 = "(TW)2. The Rampant Groveweald" -- 40089
Inst39Quest2_Level = "33"
Inst39Quest2_Attain = "32"
Inst39Quest2_Aim = "Venture into the Crescent Grove and collect 8 Groveweald Badges from the furbolgs inside for Grol the Exile."
Inst39Quest2_Location = "Grol the Exile (Ashenvale, a bit north side the road between Astranaar and Felwood road T-Intersection, north from the furbolg camp; "..YELLOW.."56.1,59.2"..WHITE..")."
Inst39Quest2_Note = "Groveweald Badge dropes from any elite furbolg inside dungeon and in front of the entrance outside of dungeon."
Inst39Quest2_Prequest = "No"
Inst39Quest2_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Alliance
Inst39Quest3 = "(TW)3. Kalanar's Mallet" -- 40326
Inst39Quest3_Level = "33"
Inst39Quest3_Attain = "32"
Inst39Quest3_Aim = "Travel to the Crescent Grove and find the burned down home of Kalanar Brightshine. Then retrieve Kalanar's Mallet and return it to him in Astranaar."
Inst39Quest3_Location = "Kalanar Brightshine (Ashenvale - Astranaar; "..YELLOW.."35.9,51.6"..WHITE.." )."
Inst39Quest3_Note = "Kalanar's Mallet is in the box "..YELLOW.."[a]"..WHITE.." behind burned down house."
Inst39Quest3_Prequest = "No"
Inst39Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst39Quest4 = "(TW)4. The Crescent Grove" -- 40091
Inst39Quest4_Level = "37"
Inst39Quest4_Attain = "32"
Inst39Quest4_Aim = "Destroy the source of corruption inside Crescent Grove and return to Denatharion in Teldrassil."
Inst39Quest4_Location = "Denatharion <Druid Trainer> (Darnassus - Cenarion Enclave "..YELLOW.."34.6,7.5"..WHITE..")"
Inst39Quest4_Note = "Kill the final boss Master Raxxieth "..YELLOW.."[5]"..WHITE.."."
Inst39Quest4_Prequest = "No"
Inst39Quest4_Folgequest = "No"
Inst39Quest4name1 = "Chain of Denatharion" -- 60180
Inst39Quest4name2 = "Cloak of Denatharion" -- 60181
Inst39Quest4name3 = "Epaulets of Denatharion" -- 60182
Inst39Quest4name4 = "Mask of Denatharion" -- 60183

--Quest 1 Horde (same as Quest 1 Alliance)
Inst39Quest1_HORDE = Inst39Quest1 --40090
Inst39Quest1_HORDE_Level = Inst39Quest1_Level
Inst39Quest1_HORDE_Attain = Inst39Quest1_Attain
Inst39Quest1_HORDE_Aim = Inst39Quest1_Aim
Inst39Quest1_HORDE_Location = Inst39Quest1_Location
Inst39Quest1_HORDE_Note = Inst39Quest1_Note
Inst39Quest1_HORDE_Prequest = Inst39Quest1_Prequest
Inst39Quest1_HORDE_Folgequest = Inst39Quest1_Folgequest
Inst39Quest1name1_HORDE = Inst39Quest1name1 -- 60179

--Quest 2 Horde (same as Quest 2 Alliance)
Inst39Quest2_HORDE = Inst39Quest2 --40089
Inst39Quest2_HORDE_Level = Inst39Quest2_Level
Inst39Quest2_HORDE_Attain = Inst39Quest2_Attain
Inst39Quest2_HORDE_Aim = Inst39Quest2_Aim
Inst39Quest2_HORDE_Location = Inst39Quest2_Location
Inst39Quest2_HORDE_Note = Inst39Quest2_Note
Inst39Quest2_HORDE_Prequest = Inst39Quest2_Prequest
Inst39Quest2_HORDE_Folgequest = Inst39Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde
Inst39Quest3_HORDE = "(TW)3. Rooting Out Evil" -- 40147
Inst39Quest3_HORDE_Level = "37"
Inst39Quest3_HORDE_Attain = "26"
Inst39Quest3_HORDE_Aim = "Venture into the Crescent Grove and root out the evil inside."
Inst39Quest3_HORDE_Location = "Loruk Foreststrider (Ashenvale - Splintertree Post "..YELLOW.."73.3,59.3"..WHITE..")"
Inst39Quest3_HORDE_Note = "Kill the final boss Master Raxxieth "..YELLOW.."[5]"..WHITE..".\nQuestline starts at Loruk Foreststrider with quest 'Mysteries of the Grove'."
Inst39Quest3_HORDE_Prequest = "Mysteries of the Grove -> Feran's Report" -- 40145, 40146
Inst39Quest3_HORDE_Folgequest = "No"
Inst39Quest3name1_HORDE = "Chain of Loruk" -- 60213
Inst39Quest3name2_HORDE = "Cloak of Loruk" -- 60214
Inst39Quest3name3_HORDE = "Shoulders of Loruk" -- 60215
Inst39Quest3name4_HORDE = "Hat of Loruk" -- 60216


--------------- INST40 - Hateforge Quarry (HQ) ---------------
Inst40Story = "Hateforge Quarry is an instance dungeon located in the Burning Steppes. Hidden away at the southeastern walls of the Burning Steppes, the Hateforge Quarry is the Dark Iron dwarves' newest effort to find of a new weapon to use against their adversaries. The innocent-looking quarry hides an insidious cavern, where the Shadowforge dwarves plot new schemes against all those that oppose them."
Inst40Caption = "Hateforge Quarry"
Inst40QAA = "5 Quests 5TW"
Inst40QAH = "5 Quests 5TW"

--Quest 1 Alliance
Inst40Quest1 = "(TW)1. Rival Presence" -- 40458
Inst40Quest1_Level = "54"
Inst40Quest1_Attain = "47"
Inst40Quest1_Aim = "Find out what's being dug up in the Hateforge Quarry."
Inst40Quest1_Location = "Overseer Oilfist <The Thorium Brotherhood> (Searing Gorge - Thorium Point; "..YELLOW.."38.1,27.0"..WHITE..")."
Inst40Quest1_Note = "Hateforge Chemist mobs drop Hateforge Brew Filled Flask for quest."
Inst40Quest1_Prequest = "No"
Inst40Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst40Quest2 = "(TW)2. Miners Union Mutiny II" -- 40468
Inst40Quest2_Level = "50"
Inst40Quest2_Attain = "45"
Inst40Quest2_Aim = "Slay 20 Hateforge Miners at the Hateforge Quarry and return to Morgrim Firepike at Blackrock Pass in Burning Steppes."
Inst40Quest2_Location = "Morgrim Firepike (Burning Steppes - Blackrock Pass; "..YELLOW.."75.6,68.3"..WHITE..")."
Inst40Quest2_Note = "Questline starts at Radgan Deepblaze with quest 'Gaining Orvak's Trust' (Burning Steppes - Blackrock Pass; "..YELLOW.."76.1,67.6"..WHITE..")."
Inst40Quest2_Prequest = "Gaining Orvak's Trust -> Hearing Orvak's Story -> The Sternrock Stash -> Miners Union Mutiny"
Inst40Quest2_Folgequest = "No"
Inst40Quest2name1 = "Cuffs of Justice" -- 60673

--Quest 3 Alliance
Inst40Quest3 = "(TW)3. The True High Foreman" -- 40463
Inst40Quest3_Level = "51"
Inst40Quest3_Attain = "45"
Inst40Quest3_Aim = "Slay Bargul Blackhammer "..YELLOW.."[1]"..WHITE.." , and recover the Senate's Orders for Orvak Sternrock at the Blackrock Pass in Burning Steppes."
Inst40Quest3_Location = "Orvak Sternrock (Burning Steppes - Blackrock Pass; "..YELLOW.."75.9,68.2"..WHITE..")."
Inst40Quest3_Note = "Questline starts at Radgan Deepblaze with quest 'Gaining Orvak's Trust' (Burning Steppes - Blackrock Pass; "..YELLOW.."76.1,67.6"..WHITE..").\nKill Bargul Blackhammer and take Senate's Orders on the table next to the boss."
Inst40Quest3_Prequest = "Gaining Orvak's Trust -> Hearing Orvak's Story -> The Sternrock Stash"
Inst40Quest3_Folgequest = "No"
Inst40Quest3name1 = "Deepblaze Signet" -- 60665
Inst40Quest3name2 = "Sternrock Trudgers" -- 60666
Inst40Quest3name3 = "Firepike's Lucky Trousers" -- 60667

--Quest 4 Alliance
Inst40Quest4 = "(TW)4. Rumors of Hateforge Brew" -- 40458
Inst40Quest4_Level = "54"
Inst40Quest4_Attain = "45"
Inst40Quest4_Aim = "Delve into the Hateforge Quarry and recover a Dark Iron Vial, and the Hateforge Chemistry Documents, then return to Varlag Duskbeard at Morgan's Vigil in Burning Steppes."
Inst40Quest4_Location = "Varlag Duskbeard (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.1,67.6"..WHITE..")."
Inst40Quest4_Note = "Hateforge Chemist mobs drop Dark Iron Vial for quest, Hateforge Chemistry Documents is in the box at "..YELLOW.."[a]"..WHITE.."."
Inst40Quest4_Prequest = "No"
Inst40Quest4_Folgequest = "No"
Inst40Quest4name1 = "Thunder Ale" -- 2686
Inst40Quest4name2 = "Varlag's Clutches" -- 60699

--Quest 5 Alliance
Inst40Quest5 = "(TW)5. Assaulting Hateforge" -- 40489
Inst40Quest5_Level = "57"
Inst40Quest5_Attain = "45"
Inst40Quest5_Aim = "Venture into The Hateforge Quarry and remove the presence of the Twilight Hammer from deep within, when completed, return to King Magni Bronzebeard in Ironforge."
Inst40Quest5_Location = "Senator Granitebelt (Burning Steppes - Morgan's Vigil; "..YELLOW.."85.2,67.9"..WHITE..")."
Inst40Quest5_Note = "Kill the last boss Har'gesh Doomcaller "..YELLOW.."[5]"..WHITE..".\nQuestline starts with quest 'Investigating Hateforge' at the same questgiver."
Inst40Quest5_Prequest = "Investigating Hateforge -> The Hateforge Report -> The King's Response"
Inst40Quest5_Folgequest = "No"
Inst40Quest5name1 = "Crown of Grobi" -- 60694
Inst40Quest5name2 = "Sigil of Heritage" -- 60695
Inst40Quest5name3 = "Rubyheart Mallet" -- 60696

--Quest 6 Alliance
Inst40Quest6 = "(TW)6. Why Not Both?" -- 41052
Inst40Quest6_Level = "50"
Inst40Quest6_Attain = "40"
Inst40Quest6_Aim = "Obtain the Heart of Landslide from the depths of Maraudon, and the Essence of Corrosis from Hateforge Quarry for Frig Thunderforge at Aerie Peak"
Inst40Quest6_Location = "Frig Thunderforge (Hinterlands - Aerie Peak; "..YELLOW.."[10.0, 49.3]"..WHITE..")."
Inst40Quest6_Note = "Corrosis is at "..YELLOW.."[3]"..WHITE.."."
Inst40Quest6_Prequest = "Proving A Point -> I've Read It In A Book Once"
Inst40Quest6_Folgequest = "Thunderforge Mastery"
Inst40Quest6name1 = "Thunderforge Lance" -- 40080

--Quest 1 Horde
Inst40Quest1_HORDE = Inst40Quest1 -- 40458
Inst40Quest1_HORDE_Level = Inst40Quest1_Level
Inst40Quest1_HORDE_Attain = Inst40Quest1_Attain
Inst40Quest1_HORDE_Aim = Inst40Quest1_Aim
Inst40Quest1_HORDE_Location = Inst40Quest1_Location
Inst40Quest1_HORDE_Note = Inst40Quest1_Note
Inst40Quest1_HORDE_Prequest = Inst40Quest1_Prequest
Inst40Quest1_HORDE_Folgequest = Inst40Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst40Quest2_HORDE = Inst40Quest2 -- 40468
Inst40Quest2_HORDE_Level = Inst40Quest2_Level
Inst40Quest2_HORDE_Attain = Inst40Quest2_Attain
Inst40Quest2_HORDE_Aim = Inst40Quest2_Aim
Inst40Quest2_HORDE_Location = Inst40Quest2_Location
Inst40Quest2_HORDE_Note = Inst40Quest2_Note
Inst40Quest2_HORDE_Prequest = Inst40Quest2_Prequest
Inst40Quest2_HORDE_Folgequest = Inst40Quest2_Folgequest
Inst40Quest2name1_HORDE = Inst40Quest2name1 -- 60673

--Quest 3 Horde
Inst40Quest3_HORDE = Inst40Quest3 -- 40463
Inst40Quest3_HORDE_Level = Inst40Quest3_Level
Inst40Quest3_HORDE_Attain = Inst40Quest3_Attain
Inst40Quest3_HORDE_Aim = Inst40Quest3_Aim
Inst40Quest3_HORDE_Location = Inst40Quest3_Location
Inst40Quest3_HORDE_Note = Inst40Quest3_Note
Inst40Quest3_HORDE_Prequest = Inst40Quest3_Prequest
Inst40Quest3_HORDE_Folgequest = Inst40Quest3_Folgequest
Inst40Quest3name1_HORDE = Inst40Quest3name1 -- 60665
Inst40Quest3name2_HORDE = Inst40Quest3name2 -- 60666
Inst40Quest3name3_HORDE = Inst40Quest3name3 -- 60667

--Quest 4 Horde
Inst40Quest4_HORDE = "(TW)4. Hunting Engineer Figgles" -- 40539
Inst40Quest4_HORDE_Level = "55"
Inst40Quest4_HORDE_Attain = "48"
Inst40Quest4_HORDE_Aim = "Kill Engineer Figgles "..YELLOW.."[2]"..WHITE.." in Hateforge Quarry  for Worg Mistress Katalla."
Inst40Quest4_HORDE_Location = "Mistress Katalla (Burning Steppes - Karfang Hold; "..YELLOW.."89.4,24.5"..WHITE.." northeast corner of Burning Steppes)."
Inst40Quest4_HORDE_Note = ""
Inst40Quest4_HORDE_Prequest = "Peculiar Won't Even Cut It" -- 40538
Inst40Quest4_HORDE_Folgequest = "No"
Inst40Quest4name1_HORDE = "Pyrehand Gloves" -- 60771
Inst40Quest4name2_HORDE = "Fur of Navakesh" -- 60772
Inst40Quest4name3_HORDE = "Blackrock Authority" -- 60773
Inst40Quest4name4_HORDE = "Girdle of Galron" -- 60774

--Quest 5 Horde
Inst40Quest5_HORDE = "(TW)5. Of New and Old IV" -- 40504
Inst40Quest5_HORDE_Level = "57"
Inst40Quest5_HORDE_Attain = "45"
Inst40Quest5_HORDE_Aim = "Venture into the Hateforge Quarry, and remove the Twilight Hammer presence within for Karfang in Karfang Hold."
Inst40Quest5_HORDE_Location = "Karfang (Burning Steppes - Karfang Hold; "..YELLOW.."90.1,22.5"..WHITE.." northeast corner of Burning Steppes)."
Inst40Quest5_HORDE_Note = "Kill the last boss Har'gesh Doomcaller "..YELLOW.."[5]"..WHITE..".\nQuestline starts at Councilor Vargek (Burning Steppes - Karfang Hold; "..YELLOW.."90.0,22.7"..WHITE.." northeast corner of Burning Steppes) with quest 'Of New and Old'."
Inst40Quest5_HORDE_Prequest = "Of New and Old -> Of New and Old II -> Of New and Old III" -- 40501, 40502, 40503
Inst40Quest5_HORDE_Folgequest = "No"
Inst40Quest5name1_HORDE = "Blade of the Warleader" -- 60734
Inst40Quest5name2_HORDE = "Obsidian Gem Choker" -- 60735
Inst40Quest5name3_HORDE = "Battlemaster Helm" -- 60736

--------------- INST41 - Karazhan Crypt (KC) -------------
Inst41Story = "Karazhan Crypt is an instance dungeon located in the Burning Steppes. Something is twisting the dead back to life in the forlorn catacombs, find the source so the dead may rest again."
Inst41Caption = "Karazhan Crypt"
Inst41QAA = "1 Quest 1TW"
Inst41QAH = "1 Quest 1TW"

--Quest 1 Alliance
Inst41Quest1 = "(TW)1. The Mystery of Karazhan VII" -- 40317
Inst41Quest1_Level = "60"
Inst41Quest1_Attain = "58"
Inst41Quest1_Aim = "Venture forth into the Karazhan Crypts, once inside slay Alarus, the watcher of the Crypts for Magus Ariden Dusktower in Deadwind Pass."
Inst41Quest1_Location = "Magus Ariden Dusktower (Deadwind Pass "..YELLOW.."52.4,34.3"..WHITE..", northeast part of Deadwind Pass, north from eastern T-Intersection)."
Inst41Quest1_Note = "Kill the last boss Alarus "..YELLOW.."[7]"..WHITE..".\nQuestline starts at the same NPC Magus Ariden Dusktower in Deadwind Pass. You will get the key to open the entrance door finishing part 6 of the questline."
Inst41Quest1_Prequest = "The Mystery of Karazhan VI" -- 40316
Inst41Quest1_Folgequest = "No"
Inst41Quest1name1 = "Arcane Charged Pendant" -- 60463
Inst41Quest1name2 = "Orb of Kaladoon" -- 60464
Inst41Quest1name3 = "Arcane Strengthened Band" -- 60465


--Quest 1 Horde
Inst41Quest1_HORDE = "(TW)1. The Depths of Karazhan VII" -- 40310
Inst41Quest1_HORDE_Level = "60"
Inst41Quest1_HORDE_Attain = "58"
Inst41Quest1_HORDE_Aim = "Venture forth into the Karazhan Crypts, once inside slay Alarus, the watcher of the Crypts for Kor'gan in Stonard."
Inst41Quest1_HORDE_Location = "Kor'gan (Swamp of Sorrows - Stonard; "..YELLOW.."44,4,54.6"..WHITE..")."
Inst41Quest1_HORDE_Note = "Kill the last boss Alarus "..YELLOW.."[7]"..WHITE..".\nQuestline starts at the same NPC Kor'gan in Stonard. You will get the key to open the entrance door finishing part 6 of the questline."
Inst41Quest1_HORDE_Prequest = "The Depths of Karazhan VI" -- 40309
Inst41Quest1_HORDE_Folgequest = "No"
Inst41Quest1name1_HORDE = "Charged Arcane Ring" -- 60459
Inst41Quest1name2_HORDE = "Tusk of Gardon" -- 60460
Inst41Quest1name3_HORDE = "Blackfire Orb" -- 60461


--------------- INST42 - Black Morass (BM) ---------------
Inst42Story = "Black Morass is an instance dungeon located in Tanaris. Move through the timeways to stop the Infinite Dragonflight from changing the Opening of the Dark Portal and the past itself. "
Inst42Caption = "Black Morass"
Inst42QAA = "4 Quests 4TW"
Inst42QAH = "4 Quests 4TW"

--Quest 1 Alliance
Inst42Quest1 = "(TW)1. The First Opening of The Dark Portal" -- 80605
Inst42Quest1_Level = "60"
Inst42Quest1_Attain = "60"
Inst42Quest1_Aim = "Enter the Timeways into Black Morass's past and slay Antnormi. Bring her head to Kheyna."
Inst42Quest1_Location = "Chromie (Tanaris - Caverns of Time)"
Inst42Quest1_Note = "Antnormi is the last boss in Black Morass.\n1st questline starts at Lizzarik 'A Glittering Opportunity' (The Barrens. Goblin walks between Ratchet and Crossroads) you need to be level 13 to attain this quest."
Inst42Quest1_Prequest = "A Glittering Opportunity -> A Bloody Good Deed ->> A Letter From a Friend -> A Slaughter for Brains-> Return to Kheyna ->> A Timely Situation -> An Infinite Hunt -> A Journey Into The Caverns" -- 80395, 80396, 80407, 80408, 80409, 80410, 80411, 80604
Inst42Quest1_Folgequest = "No"
Inst42Quest1name1 = "X-51 Arcane Ocular Implants" -- 82950
Inst42Quest1name2 = "X-52 Stealth Ocular Implants" -- 82951
Inst42Quest1name3 = "X-53 Ranger Ocular Implants" -- 82952
Inst42Quest1name4 = "X-54 Guardian Ocular Implants" -- 82953

--Quest 2 Alliance
Inst42Quest2 = "(TW)2. The Bronze Betrayal" -- 40342
Inst42Quest2_Level = "60"
Inst42Quest2_Attain = "58"
Inst42Quest2_Aim = "Slay Chronar, and bring his head to Tyvadrius in the Caverns of Time."
Inst42Quest2_Location = "Tyvadrius (Tanaris - Caverns of Time)"
Inst42Quest2_Note = "Chronar "..YELLOW..""..WHITE.." is the first boss in Black Morass"
Inst42Quest2_Prequest = "No"
Inst42Quest2_Folgequest = "No"
Inst42Quest2name1 = "Pendant of Tyvadrius" -- 60497
Inst42Quest2name2 = "Halberd of the Bronze Defender" -- 60498
Inst42Quest2name3 = "Ring of Tyvadrius" -- 60499

--Quest 3 Alliance
Inst42Quest3 = "(TW)3. Corrupted Sand" -- 40340
Inst42Quest3_Level = "60"
Inst42Quest3_Attain = "58"
Inst42Quest3_Aim = "Collect a Corrupted Sand for Dronormu in the Caverns of Time."
Inst42Quest3_Location = "Dronormu (Tanaris - Caverns of Time)"
Inst42Quest3_Note = ""
Inst42Quest3_Prequest = "No"
Inst42Quest3_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Alliance
Inst42Quest4 = "(TW)4. Sand in Bulk" -- 40341
Inst42Quest4_Level = "60"
Inst42Quest4_Attain = "58"
Inst42Quest4_Aim = "Collect 10 Corrupted Sand for Dronormu in the Caverns of Time."
Inst42Quest4_Location = "Dronormu (Tanaris - Caverns of Time)"
Inst42Quest4_Note = ""
Inst42Quest4_Prequest = "No"
Inst42Quest4_Folgequest = "No"
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst42Quest1_HORDE = Inst42Quest1
Inst42Quest1_HORDE_Level = Inst42Quest1_Level
Inst42Quest1_HORDE_Attain = Inst42Quest1_Attain
Inst42Quest1_HORDE_Aim = Inst42Quest1_Aim
Inst42Quest1_HORDE_Location = Inst42Quest1_Location
Inst42Quest1_HORDE_Note = Inst42Quest1_Note
Inst42Quest1_HORDE_Prequest = Inst42Quest1_Prequest
Inst42Quest1_HORDE_Folgequest = Inst42Quest1_Folgequest
Inst42Quest1name1_HORDE = Inst42Quest1name1
Inst42Quest1name2_HORDE = Inst42Quest1name2
Inst42Quest1name3_HORDE = Inst42Quest1name3
Inst42Quest1name4_HORDE = Inst42Quest1name4

--Quest 2 Horde (same as Quest 2 Alliance)
Inst42Quest2_HORDE = Inst42Quest2
Inst42Quest2_HORDE_Level = Inst42Quest2_Level
Inst42Quest2_HORDE_Attain = Inst42Quest2_Attain
Inst42Quest2_HORDE_Aim = Inst42Quest2_Aim
Inst42Quest2_HORDE_Location = Inst42Quest2_Location
Inst42Quest2_HORDE_Note = Inst42Quest2_Note
Inst42Quest2_HORDE_Prequest = Inst42Quest2_Prequest
Inst42Quest2_HORDE_Folgequest = Inst42Quest2_Folgequest
Inst42Quest2name1_HORDE = Inst42Quest2name1
Inst42Quest2name2_HORDE = Inst42Quest2name2
Inst42Quest2name3_HORDE = Inst42Quest2name3

--Quest 3 Horde (same as Quest 3 Alliance)
Inst42Quest3_HORDE = Inst42Quest3
Inst42Quest3_HORDE_Level = Inst42Quest3_Level
Inst42Quest3_HORDE_Attain = Inst42Quest3_Attain
Inst42Quest3_HORDE_Aim = Inst42Quest3_Aim
Inst42Quest3_HORDE_Location = Inst42Quest3_Location
Inst42Quest3_HORDE_Note = Inst42Quest3_Note
Inst42Quest3_HORDE_Prequest = Inst42Quest3_Prequest
Inst42Quest3_HORDE_Folgequest = Inst42Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst42Quest4_HORDE = Inst42Quest4
Inst42Quest4_HORDE_Level = Inst42Quest4_Level
Inst42Quest4_HORDE_Attain = Inst42Quest4_Attain
Inst42Quest4_HORDE_Aim = Inst42Quest4_Aim
Inst42Quest4_HORDE_Location = Inst42Quest4_Location
Inst42Quest4_HORDE_Note = Inst42Quest4_Note
Inst42Quest4_HORDE_Prequest = Inst42Quest4_Prequest
Inst42Quest4_HORDE_Folgequest = Inst42Quest4_Folgequest
-- No Rewards for this quest

--------------- INST43 - Stormwind Vault (SWV) -----------
Inst43Story = "Stormwind Vault is an instance dungeon located in Stormwind. The Vault's runes of warding are weakening as the horrors within threaten Azeroth once again, you must venture down and stop these fiends once and for all."
Inst43Caption = "Stormwind Vault"
Inst43QAA = "3 Quests 3TW"
Inst43QAH = "2 Quests 2TW"

--Quest 1 Alliance
Inst43Quest1 = "(TW)1. Recovering Vault Shackles" -- 40426
Inst43Quest1_Level = "60"
Inst43Quest1_Attain = "55"
Inst43Quest1_Aim = "Within the Stormwind Vault, slay Runic Constructs for 2 Runic Shackles, return them to Koli Steamheart."
Inst43Quest1_Location = "Koli Steamheart (Stormwind City "..YELLOW.."54.5,47.1"..WHITE..")"
Inst43Quest1_Note = "You can find Koli Steamheart staying on the street of Stormwind in front of the dungeon."
Inst43Quest1_Prequest = "No"
Inst43Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst43Quest2 = "(TW)2. Ending Arc'Tiras" -- 40427
Inst43Quest2_Level = "60"
Inst43Quest2_Attain = "55"
Inst43Quest2_Aim = "Venture deep within The Stormwind Vault, find Arc'tiras, and slay him for the good of Stormwind. When done, return to Pepin Ainsworth."
Inst43Quest2_Location = "Pepin Ainsworth (Stormwind City "..YELLOW.."54.5,47.2"..WHITE..")"
Inst43Quest2_Note = "You can find Pepin Ainsworth staying on the street of Stormwind in front of the dungeon.\nArc'Tiras "..YELLOW.."[6]"..WHITE.." is the last fight in the dungeon with big blue crystal."
Inst43Quest2_Prequest = "No"
Inst43Quest2_Folgequest = "No"
Inst43Quest2name1 = "Goldplated Royal Crossbow" -- 60624
Inst43Quest2name2 = "Golden Gauntlets of Stormwind" -- 60625
Inst43Quest2name3 = "Regal Goldthreaded Sash" -- 60626

--Quest 3 Alliance
Inst43Quest3 = "(TW)3. The Tome of Arcane Intricacies and Magical Phenomenon IX" -- 40425
Inst43Quest3_Level = "60"
Inst43Quest3_Attain = "55"
Inst43Quest3_Aim = "Recover the Tome of Arcane Intricacies and Magical Phenomenon IX for Mazen Mac'Nadir in Stormwind."
Inst43Quest3_Location = "Mazen Mac'Nadir (Stormwind City "..YELLOW.."41.6,64.3"..WHITE..")"
Inst43Quest3_Note = "Tome of the Arcane Intricacies and Magical Phenomenon is at " ..YELLOW.."[3]"..WHITE..".\nMazen Mac'Nadir is in the southwestern building from Stockades entrance."
Inst43Quest3_Prequest = "No"
Inst43Quest3_Folgequest = "No"
Inst43Quest3name1 = "Ring of the Academy" -- 60622


--Quest 1 Horde (same as Quest 1 Alliance)
Inst43Quest1_HORDE = Inst43Quest1
Inst43Quest1_HORDE_Level = Inst43Quest1_Level
Inst43Quest1_HORDE_Attain = Inst43Quest1_Attain
Inst43Quest1_HORDE_Aim = Inst43Quest1_Aim
Inst43Quest1_HORDE_Location = Inst43Quest1_Location
Inst43Quest1_HORDE_Note = Inst43Quest1_Note
Inst43Quest1_HORDE_Prequest = Inst43Quest1_Prequest
Inst43Quest1_HORDE_Folgequest = Inst43Quest1_Folgequest
-- No Rewards for this quest


--Quest 2 Horde (same as Quest 2 Alliance)
Inst43Quest2_HORDE = Inst43Quest2
Inst43Quest2_HORDE_Level = Inst43Quest2_Level
Inst43Quest2_HORDE_Attain = Inst43Quest2_Attain
Inst43Quest2_HORDE_Aim = Inst43Quest2_Aim
Inst43Quest2_HORDE_Location = Inst43Quest2_Location
Inst43Quest2_HORDE_Note = Inst43Quest2_Note
Inst43Quest2_HORDE_Prequest = Inst43Quest2_Prequest
Inst43Quest2_HORDE_Folgequest = Inst43Quest2_Folgequest
Inst43Quest2name1_HORDE = Inst43Quest2name1
Inst43Quest2name2_HORDE = Inst43Quest2name2
Inst43Quest2name3_HORDE = Inst43Quest2name3


--------------- INST44 - Gilneas City (GC) -----------
Inst44Story = "Gilneas City is an instance dungeon located in Gilneas. Located at the heart of this once-isolated land, Gilneas City was once a bastion of hope for its people. Established after breaking free from the rule of the Arathorian lords, it stood as a symbol of resilience and prosperity. However, it is now a mere shell of its former beauty, with a dark presence casting a gripping shadow over Gilneas and serving as a reminder of its once glorious past. Distant howls echo through the city, haunting reminders of its new occupants. Yet, there is a possibility that not everyone is gone and that their accursed king may still live."
Inst44Caption = "Gilneas City"
Inst44QAA = "7 Quests 7TW"
Inst44QAH = "6 Quests 6TW"

--Quest 1 Alliance
Inst44Quest1 = "(TW)1. The Judge and the Phantom" -- 40975
Inst44Quest1_Level = "46"
Inst44Quest1_Attain = "35"
Inst44Quest1_Aim = "Slay Judge Sutherland "..YELLOW.."[3]"..WHITE.." within Gilneas City for the Angered Phantom at the Glaymore Stead in Gilneas."
Inst44Quest1_Location = "Angered Phantom (Gilneas -Glaymore Stead "..YELLOW.."52.9,27.9"..WHITE..")"
Inst44Quest1_Note = "You can find Angered Phantom inside building on the mountain. Entering Gilneas gates follow the mountain on your left(east), passing a field with windmills you will find a path to the sea, almost at the edge turn north follow the path(barely noticable)."
Inst44Quest1_Prequest = "No"
Inst44Quest1_Folgequest = "No"
Inst44Quest1name1 = "Glaymore Family Breastplate" -- 61620
Inst44Quest1name2 = "Ceremonial Gilnean Pike" -- 61621
Inst44Quest1name3 = "Glaymore Shawl" -- 61622

Inst44Quest2 = "(TW)2. Behind The Wall" -- 40841
Inst44Quest2_Level = "41"
Inst44Quest2_Attain = "36"
Inst44Quest2_Aim = "Venture into Gilneas City and recover the Dawnstone Plans for Therum Deepforge in Stormwind."
Inst44Quest2_Location = "Therum Deepforge <Expert Blacksmith> (Stormwind - Dwarven District"..YELLOW.."63.3,37"..WHITE..", can be walking around there)"
Inst44Quest2_Note = "The Dawnstone Plans in the building "..YELLOW.."[a]"..WHITE.." on the box."
Inst44Quest2_Prequest = "No"
Inst44Quest2_Folgequest = "No"
Inst44Quest2name1 = "Inlaid Plate Boots" -- 61348
Inst44Quest2name2 = "Dwarven Battle Bludgeon" -- 61349

Inst44Quest3 = "(TW)3. The Deed to Ravenshire" -- 40966
Inst44Quest3_Level = "45"
Inst44Quest3_Attain = "38"
Inst44Quest3_Aim = "Find the Deed to Ravenshire in Gilneas City and bring it back to Caliban Silverlaine."
Inst44Quest3_Location = "Baron Caliban Silverlaine (Gilneas - Ravenshire (main building) "..YELLOW.."58.4,67.8"..WHITE..")"
Inst44Quest3_Note = "The Deed to Ravenshire on the table behind Regent-Lady Celia Harlow and Regent-Lord Mortimer Harlow, next to the Harlow Family Chest"..YELLOW.."[7]"..WHITE.."."
Inst44Quest3_Prequest = "No"
Inst44Quest3_Folgequest = "No"
Inst44Quest3name1 = "Ebonmere Axe" -- 61601
Inst44Quest3name2 = "Gilneas Brigade Helmet" -- 61602
Inst44Quest3name3 = "Robes of Ravenshire" -- 61603
Inst44Quest3name4 = "Greyshire Pauldrons" -- 61604

Inst44Quest4 = "(TW)4. Ravencroft's Ambition" -- 40975
Inst44Quest4_Level = "45"
Inst44Quest4_Attain = "40"
Inst44Quest4_Aim = "Recover the Book of Ur : Volume Two from the library in Gilneas City and return to Ethan Ravencroft."
Inst44Quest4_Location = "Ethan Ravencroft (Gilneas - Hollow Web Cemetery - Crypt(southwest corner of Gilneas, east from the river)"..YELLOW.."33,76"..WHITE..")"
Inst44Quest4_Note = "The Book of Ur in the building "..YELLOW.."[b]"..WHITE..", go right, on the table (south side)."
Inst44Quest4_Prequest = "No"
Inst44Quest4_Folgequest = "No"
-- No Rewards for this quest

Inst44Quest5 = "(TW)5. Undoing Draconic Presence" -- 40943
Inst44Quest5_Level = "47"
Inst44Quest5_Attain = "35"
Inst44Quest5_Aim = "End the Draconic Influence over Gilneas by slaying Regent-Lady Celia Harlow and Regent-Lord Mortimer Harlow "..YELLOW.."[7]"..WHITE.." for Magus Orelius at Ravenshire in Gilneas."
Inst44Quest5_Location = "Magus Orelius <Kirin Tor> (Gilneas - Ravenshire (main building) "..YELLOW.."57.7,68.5"..WHITE..")"
Inst44Quest5_Note = "Bring 1 Large Glowing Shard you will need 1 for prequest. enchanters have them or auction house can help. it should be cheap."
Inst44Quest5_Prequest = "Font of Arcana -> Magical Presence -> Draconic Presence?" -- 40940, 40941, 40942
Inst44Quest5_Folgequest = "No"
Inst44Quest5name1 = "Violet Sash" -- 61486
Inst44Quest5name2 = "Gauntlets of Insight" -- 61487

Inst44Quest6 = "(TW)6. The Fall and Rise of Greymane" -- 40956
Inst44Quest6_Level = "42"
Inst44Quest6_Attain = "35"
Inst44Quest6_Aim = "Recover the Greymane Crown for Lord Darius Ravenwood at Ravenshire in Gilneas."
Inst44Quest6_Location = "Lord Darius Ravenwood (Gilneas - Ravenshire (main building) "..YELLOW.."58.4,67.6"..WHITE..")"
Inst44Quest6_Note = "Questline starts with quest 'Wolf Amongst Sheep' at Baron Caliban Silverlaine (Gilneas - Ravenshire (main building) "..YELLOW.."58.4,67.8"..WHITE..")\nThe Greymane Crown drops from Genn Greymane "..YELLOW.."[8]"..WHITE..", last boss on the top of the tower."
Inst44Quest6_Prequest = "Wolf Amongst Sheep -> One Chain at a Time -> On Legend's Trail -> Back to Ravenshire -> Dim Light in the Darkness -> Vilest of Men -> A Crossroads Deal -> Assaulting Freyshear Keep " -- 40948, 40949, 40950, 40951, 40952, 40953, 40954, 40955
Inst44Quest6_Folgequest = "No"
Inst44Quest6name1 = "Ravenwood Belt" -- 61497
Inst44Quest6name2 = "Signet of Gilneas" -- 61498
Inst44Quest6name3 = "Ravenshire Gloves" -- 61499
Inst44Quest6name4 = "Ravenshire Tabard" -- 61369

Inst44Quest7 = "(TW)7. Manuscript on Hydromancy II" -- 41114
Inst44Quest7_Level = "45"
Inst44Quest7_Attain = "38"
Inst44Quest7_Aim = "Recover the Manuscript on Hydromancy II for Magus Hallister at Theramore Isle in Dustwallow Marsh."
Inst44Quest7_Location = "Magus Hallister (Dustwallow Marsh - Theramore, central Tower)"
Inst44Quest7_Note = MAGE.."(Mage only)"..WHITE.." The Manuscript on Hydromancy II in the building "..YELLOW.."[b]"..WHITE..", go right, on the dresser (south side)."
Inst44Quest7_Prequest = "Mannoroc Demonic Sigil" -- 40407
Inst44Quest7_Folgequest = "No"
Inst44Quest7name1 = "Tome of Teleportation: Theramore" -- 92001


--Quest 1 Horde (same as Quest 1 Alliance)
Inst44Quest1_HORDE = Inst44Quest1
Inst44Quest1_HORDE_Level = Inst44Quest1_Level
Inst44Quest1_HORDE_Attain = Inst44Quest1_Attain
Inst44Quest1_HORDE_Aim = Inst44Quest1_Aim
Inst44Quest1_HORDE_Location = Inst44Quest1_Location
Inst44Quest1_HORDE_Note = Inst44Quest1_Note
Inst44Quest1_HORDE_Prequest = Inst44Quest1_Prequest
Inst44Quest1_HORDE_Folgequest = Inst44Quest1_Folgequest
Inst44Quest1name1_HORDE = Inst44Quest1name1
Inst44Quest1name2_HORDE = Inst44Quest1name2
Inst44Quest1name3_HORDE = Inst44Quest1name3

--Quest 2 Horde
Inst44Quest2_HORDE = "(TW)2. Ebonmere Affairs" -- 40979
Inst44Quest2_HORDE_Level = "45"
Inst44Quest2_HORDE_Attain = "35"
Inst44Quest2_HORDE_Aim = "Slay Dustivan Blackcowl "..YELLOW.."[4]"..WHITE.." and recover the Ebonmere Deed for Joshua Ebonmere at Ebonmere Farm in Gilneas"
Inst44Quest2_HORDE_Location = "Joshua Ebonmere (Gilneas - Ebonmere Farm "..YELLOW.."[49.5,31.1]"..WHITE.."). Entering Gilneas gates follow the mountain on your left(east), in the field with windmills you will find Joshua Ebonmere."
Inst44Quest2_HORDE_Note = "Prequest 'Ebonmere Bat Infestation' and 'Ebonmere Worgen Infestation'.\nDustivan Blackcowl "..YELLOW.."[4]"..WHITE.." drops the Ebonmere Deed"
Inst44Quest2_HORDE_Prequest = "Ebonmere Bat Infestation -> Ebonmere Worgen Infestation" -- 40977, 40978
Inst44Quest2_HORDE_Folgequest = "No"
Inst44Quest2name1_HORDE = "Ebonmere Reaver" -- 61627
Inst44Quest2name2_HORDE = "Clutch of Joshua" -- 61628
Inst44Quest2name3_HORDE = "Farmer's Musket" -- 61629
Inst44Quest2name4_HORDE = "Ebonmere Vambracers" -- 61630

--Quest 3 Horde
Inst44Quest3_HORDE = "(TW)3. A Royal Heist" -- 41113
Inst44Quest3_HORDE_Level = "45"
Inst44Quest3_HORDE_Attain = "40"
Inst44Quest3_HORDE_Aim = "Steal the painting from the library in Gilneas City and return to Luke Agamand at Blackthorn's Camp in Gilneas."
Inst44Quest3_HORDE_Location = "Luke Agamand (Gilneas - Blackthorn's Camp "..YELLOW.."[14.1,33.7]"..WHITE..", camp at northwest corner shore.)"
Inst44Quest3_HORDE_Note = "The portrait of Mia Greymane in the building "..YELLOW.."[b]"..WHITE..", go left, on the wall (northwest corner)."
Inst44Quest3_HORDE_Prequest = "No"
Inst44Quest3_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 4 Horde
Inst44Quest4_HORDE = "(TW)4. The Evil Made Me Do It" -- 40881
Inst44Quest4_HORDE_Level = "46"
Inst44Quest4_HORDE_Attain = "35"
Inst44Quest4_HORDE_Aim = "Find 'On the Powers of Blood' in Gilneas City, then return to Orvan Darkeye at the Ruins of Greyshire in Gilneas."
Inst44Quest4_HORDE_Location = "Orvan Darkeye (Gilneas - ruins of Greyshire "..YELLOW.."[31.3,47.0]"..WHITE..")"
Inst44Quest4_HORDE_Note = "Questline starts at Deathstalker Alynna (Gilneas Stillward Church "..YELLOW.."[57.3,39.6]"..WHITE..", inside) with quest 'Dead Until Dark'.\n'On the Powers of Blood' book on the table behind Regent-Lady Celia Harlow and Regent-Lord Mortimer Harlow, next to the Harlow Family Chest"..YELLOW.."[7]"..WHITE..".\nYou will get the reward finishing the next quest."
Inst44Quest4_HORDE_Prequest = "Dead Until Dark -> All We Need is Blood -> Last of the Living Dead -> We Take It From The Living" -- 40877, 40878, 40879, 40880
Inst44Quest4_HORDE_Folgequest = "Blood for Blood" -- 40882
Inst44Quest4name1_HORDE = "Pure Bloodvial Pendant" -- 61422

--Quest 5 Horde
Inst44Quest5_HORDE = "(TW)5. Genn Greymane Must Die!" -- 40849
Inst44Quest5_HORDE_Level = "49"
Inst44Quest5_HORDE_Attain = "40"
Inst44Quest5_HORDE_Aim = "Enter Gilneas City and slay Genn Greymane "..YELLOW.."[8]"..WHITE..", then bring his head to Blackthorn at Blackthorn's Camp in Gilneas."
Inst44Quest5_HORDE_Location = "Blackthorn (Gilneas - Blackthorn's Camp "..YELLOW.."[14.1,33.7]"..WHITE..", camp at northwest corner shore.)"
Inst44Quest5_HORDE_Note = "2 Questlines need to be finished to start this quest 'Report to Luke Agamand' and 'Report to Livia Strongarm' at Blackthorn.\n"
Inst44Quest5_HORDE_Prequest = "'Report to Luke Agamand'-> Heist in Dryrock Mine ->> Report to Livia Strongarm -> Rendezvous with the Infiltrator ->> Quality Time with Blackthorn" -- 40844, 40845, 40846, 40847, 40848, 
Inst44Quest5_HORDE_Folgequest = "No"
Inst44Quest5name1_HORDE = "Blackthorn Gauntlets" -- 61353
Inst44Quest5name2_HORDE = "Banshee's Tear" -- 61354
Inst44Quest5name3_HORDE = "Dark Footpad Belt" -- 61355

--Quest 6 Horde
Inst44Quest6_HORDE = "(TW)6. The Greymane Stone" -- 40996
Inst44Quest6_HORDE_Level = "47"
Inst44Quest6_HORDE_Attain = "38"
Inst44Quest6_HORDE_Aim = "Recover the Shard of Midnight for Dark Bishop Mordren in Stillward Church."
Inst44Quest6_HORDE_Location = "Dark Bishop Mordren (Gilneas - Stillward Church "..YELLOW.."57.7,39.6"..WHITE..")"
Inst44Quest6_HORDE_Note = "Questline starts with quest 'Through Greater Magic' at Dark Bishop Mordren.\nShard of Midnight is behind the last boss Genn Greymane "..YELLOW.."[8]"..WHITE.."\nYou will get the reward finishing the next quest."
Inst44Quest6_HORDE_Prequest = "Through Greater Magic -> The Ravenwood Scepter -> The Powers Beyond "..YELLOW.."[Razorfen Downs]"..WHITE.."." -- 40993, 40994, 40995
Inst44Quest6_HORDE_Folgequest = "Gift of the Dark Bishop" -- 40997
Inst44Quest6name1_HORDE = "Garalon's Might" -- 61660
Inst44Quest6name2_HORDE = "Varimathras' Cunning" -- 61661
Inst44Quest6name3_HORDE = "Stillward Amulet" -- 61662

--------------- INST45 - Lower Karazhan Halls (LKH) ----------- -- TurtleWOW
Inst45Story = ""
Inst45Caption = "Lower Karazhan Halls"
Inst45QAA = "17 Quests 17TW"
Inst45QAH = "17 Quests 17TW"

--Quest 1 Alliance
Inst45Quest1 = "(TW)1. Suitable Accomodations" -- 41083
Inst45Quest1_Level = "60"
Inst45Quest1_Attain = "55"
Inst45Quest1_Aim = "Find a Comfortable Pillow for Councilman Kyleson in Karazhan."
Inst45Quest1_Location = "Councilman Kyleson "..YELLOW.."[c]"..WHITE.."."
Inst45Quest1_Note = "You can find Comfortable Pillow at "..YELLOW.."[b]"..WHITE.." in the boxes."
Inst45Quest1_Prequest = "No"
Inst45Quest1_Folgequest = "A Drink to Sleep" -- 41084
-- No Rewards for this quest

--Quest 2 Alliance
Inst45Quest2 = "(TW)2. A Drink to Sleep" -- 41084
Inst45Quest2_Level = "60"
Inst45Quest2_Attain = "55"
Inst45Quest2_Aim = "Speak with someone who may know how to acquire wine for Councilman Kyleson."
Inst45Quest2_Location = "Councilman Kyleson "..YELLOW.."[c]"..WHITE.."."
Inst45Quest2_Note = "Turn the quest in to The Cook at "..YELLOW.."[d]"..WHITE.."."
Inst45Quest2_Prequest = "Suitable Accomodations" -- 41083
Inst45Quest2_Folgequest = "Spectral Wine" -- 41085
-- No Rewards for this quest

--Quest 3 Alliance
Inst45Quest3 = "(TW)3. Spectral Wine" -- 41085
Inst45Quest3_Level = "60"
Inst45Quest3_Attain = "55"
Inst45Quest3_Aim = "Gather 3 Essence of Undeath, 5 Flask of Port, and a Ghost Mushroom for The Cook in Karazhan."
Inst45Quest3_Location = "The Cook "..YELLOW.."[d]"..WHITE.."."
Inst45Quest3_Note = "Flask of Port sold by alcohol vendors. All items can be bought from Auction House."
Inst45Quest3_Prequest = "A Drink to Sleep" -- 41084
Inst45Quest3_Folgequest = "Wine for Kyleson" -- 41086
-- No Rewards for this quest

--Quest 4 Alliance
Inst45Quest4 = "(TW)4. Wine for Kyleson" -- 41086
Inst45Quest4_Level = "60"
Inst45Quest4_Attain = "55"
Inst45Quest4_Aim = "Deliver the Spectral Wine to Councilman Kyleson "..YELLOW.."[c]"..WHITE.." in Karazhan. "
Inst45Quest4_Location = "The Cook "..YELLOW.."[d]"..WHITE.."."
Inst45Quest4_Note = ""
Inst45Quest4_Prequest = "Spectral Wine" -- 41085
Inst45Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst45Quest5 = "(TW)5. The Key to Karazhan I" -- 40817
Inst45Quest5_Level = "60"
Inst45Quest5_Attain = "58"
Inst45Quest5_Aim = "Listen to the story of Lord Ebonlocke."
Inst45Quest5_Location = "Lord Ebonlocke "..YELLOW.."[d]"..WHITE.."."
Inst45Quest5_Note = ""
Inst45Quest5_Prequest = "No"
Inst45Quest5_Folgequest = "The Key to Karazhan II" -- 40818
-- No Rewards for this quest

--Quest 6 Alliance
Inst45Quest6 = "(TW)6. The Key to Karazhan II" -- 40818
Inst45Quest6_Level = "60"
Inst45Quest6_Attain = "58"
Inst45Quest6_Aim = "Kill Moroes "..YELLOW.."[6]"..WHITE.." and retrieve the Key to the Upper Chambers. Moroes resides in Lower Karazhan Halls. Bring back the key to Lord Ebonlocke."
Inst45Quest6_Location = "Lord Ebonlocke "..YELLOW.."[d]"..WHITE.."."
Inst45Quest6_Note = ""
Inst45Quest6_Prequest = "The Key to Karazhan I" -- 40817
Inst45Quest6_Folgequest = "The Key to Karazhan III" -- 40819
-- No Rewards for this quest

--Quest 7 Alliance
Inst45Quest7 = "(TW)7. The Key to Karazhan III" -- 40819
Inst45Quest7_Level = "60"
Inst45Quest7_Attain = "58"
Inst45Quest7_Aim = "Find someone from the Kirin Tor who might know something about Vandol. Dalaran could be a good place to start your search."
Inst45Quest7_Location = "The Cook "..YELLOW.."[d]"..WHITE.."."
Inst45Quest7_Note = "Turn in the quest to Archmage Ansirem Runeweaver <Kirin Tor> (Alterac Mountains - Dalaran "..YELLOW.."[18.9,78.5]"..WHITE..")"
Inst45Quest7_Prequest = "The Key to Karazhan II" -- 40818
Inst45Quest7_Folgequest = "The Key to Karazhan IV" -- 40820
-- No Rewards for this quest

--Quest 8 Alliance
Inst45Quest8 = "(TW)8. Scribbled Cooking Notes" -- 40998
Inst45Quest8_Level = "60"
Inst45Quest8_Attain = "55"
Inst45Quest8_Aim = "Find someone that may be know something about the Scribbled Cooking Notes."
Inst45Quest8_Location = "Scribbled Cooking Notes"
Inst45Quest8_Note = "Turn in the quest to Duke Rothlen "..YELLOW.."[f]"..WHITE.." on the balkon next to Clawlord Howlfang "..YELLOW.."[4]"..WHITE.."."
Inst45Quest8_Prequest = "No"
Inst45Quest8_Folgequest = "Lost and Found" -- 40999
-- No Rewards for this quest

--Quest 9 Alliance
Inst45Quest9 = "(TW)9. Lost and Found" -- 40999
Inst45Quest9_Level = "60"
Inst45Quest9_Attain = "55"
Inst45Quest9_Aim = "Recover the Engraved Golden Bracelet for Duke Rothlen in Karazhan."
Inst45Quest9_Location = "Duke Rothlen "..YELLOW.."[f]"..WHITE.."."
Inst45Quest9_Note = "You can find Engraved Golden Bracelet in the chest at "..YELLOW.."[a]"..WHITE.."."
Inst45Quest9_Prequest = "Scribbled Cooking Notes" -- 40998
Inst45Quest9_Folgequest = "Rothlen Family Brooch" -- 41000
-- No Rewards for this quest

--Quest 10 Alliance
Inst45Quest10 = "(TW)10. Rothlen Family Brooch" -- 41000
Inst45Quest10_Level = "60"
Inst45Quest10_Attain = "55"
Inst45Quest10_Aim = "Find someone from the Kirin Tor who might know something about Vandol. Dalaran could be a good place to start your search."
Inst45Quest10_Location = "Duke Rothlen "..YELLOW.."[f]"..WHITE.."."
Inst45Quest10_Note = "Rothlen Family Brooch is in the chest next to "..YELLOW.."[Stratholme]"..WHITE.." boss The Unforgiven."
Inst45Quest10_Prequest = "Lost and Found" -- 40999
Inst45Quest10_Folgequest = "The Secret Recipe" -- 41001
-- No Rewards for this quest

--Quest 11 Alliance
Inst45Quest11 = "(TW)11. The Secret Recipe" -- 41001
Inst45Quest11_Level = "60"
Inst45Quest11_Attain = "55"
Inst45Quest11_Aim = "Speak with The Cook "..YELLOW.."[d]"..WHITE.." in Karazhan."
Inst45Quest11_Location = "Duke Rothlen "..YELLOW.."[f]"..WHITE.."."
Inst45Quest11_Note = ""
Inst45Quest11_Prequest = "Rothlen Family Brooch" -- 41000
Inst45Quest11_Folgequest = "The Doorman of Karazhan" -- 41002
-- No Rewards for this quest

--Quest 12 Alliance
Inst45Quest12 = "(TW)12. The Doorman of Karazhan" -- 41002
Inst45Quest12_Level = "60"
Inst45Quest12_Attain = "55"
Inst45Quest12_Aim = "Speak with Doorman Montigue in Karazhan"
Inst45Quest12_Location = "The Cook "..YELLOW.."[d]"..WHITE.."."
Inst45Quest12_Note = "Doorman Montigue "..BLUE.."[A]"..WHITE.." at the beginning of the dungeon in front of the stairs."
Inst45Quest12_Prequest = "The Secret Recipe" -- 41001
Inst45Quest12_Folgequest = "Charge of Karazhan" -- 41003
-- No Rewards for this quest

--Quest 13 Alliance
Inst45Quest13 = "(TW)13. Charge of Karazhan" -- 41003
Inst45Quest13_Level = "60"
Inst45Quest13_Attain = "55"
Inst45Quest13_Aim = "Bring 10 Essence of Undeath, 10 Living Essence, and 25 Gold to Doorman Montique in Karazhan."
Inst45Quest13_Location = "Doorman Montigue "..BLUE.."[A]"..WHITE.."."
Inst45Quest13_Note = "All can be bought from Auction House."
Inst45Quest13_Prequest = "The Doorman of Karazhan" -- 41002
Inst45Quest13_Folgequest = "Le Fishe Au Chocolat" -- 41004
-- No Rewards for this quest

--Quest 14 Alliance
Inst45Quest14 = "(TW)14. Le Fishe Au Chocolat" -- 41004
Inst45Quest14_Level = "60"
Inst45Quest14_Attain = "55"
Inst45Quest14_Aim = "Bring the Charge of Karazhan to The Cook "..YELLOW.."[d]"..WHITE.."."
Inst45Quest14_Location = "Doorman Montigue "..BLUE.."[A]"..WHITE.."."
Inst45Quest14_Note = ""
Inst45Quest14_Prequest = "Charge of Karazhan" -- 41003
Inst45Quest14_Folgequest = ""
Inst45Quest14name1 = "Recipe: Le Fishe Au Chocolat" -- 61666
Inst45Quest14name2 = "Le Fishe Au Chocolat" -- 84040

--Quest 15 Alliance
Inst45Quest15 = "(TW)15. Scythe of the Goddess" -- 41062
Inst45Quest15_Level = "60"
Inst45Quest15_Attain = "60"
Inst45Quest15_Aim = "Slay Clawlord Howlfang "..YELLOW.."[4]"..WHITE.." and report to Lord Ebonlocke "..YELLOW.."[d]"..WHITE.."."
Inst45Quest15_Location = "The Scythe of Elune"
Inst45Quest15_Note = "Questline starts with legendary item 'The Scythe of Elune' that drops from Lord Blackwald II "..YELLOW.."[5]"..WHITE.."."
Inst45Quest15_Prequest = "No"
Inst45Quest15_Folgequest = "Scythe of the Goddess" -- 41063
-- No Rewards for this quest

--Quest 16 Alliance
Inst45Quest16 = "(TW)16. Scythe of the Goddess" -- 41063
Inst45Quest16_Level = "60"
Inst45Quest16_Attain = "60"
Inst45Quest16_Aim = "Find someone in Duskwood who might know more about the Scythe of Elune."
Inst45Quest16_Location = "Lord Ebonlocke "..YELLOW.."[d]"..WHITE.."."
Inst45Quest16_Note = "Turn it in to Jitters (Duskwood - Raven Hill"..YELLOW.." [18.4,56.4]"..WHITE..")."
Inst45Quest16_Prequest = "Scythe of the Goddess" -- 41062
Inst45Quest16_Folgequest = "Scythe of the Goddess" -- 41064
-- No Rewards for this quest

--Quest 17 Alliance
Inst45Quest17 = "(TW)17. Contribution to the Church" -- 41078
Inst45Quest17_Level = "60"
Inst45Quest17_Attain = "55"
Inst45Quest17_Aim = "Gather 15 Arcane Essence, 20 Illusion Dust, and 10 Greater Eternal Essence for Heirophant Nerseus at the church outside Karazhan."
Inst45Quest17_Location = "Heirophant Nerseus (Deadwind Pass, in front of the church next to Karazhan"..YELLOW.." [40.3,77.2]"..WHITE..")."
Inst45Quest17_Note = "After finishing this quest you will be able to get a quest for head/leg enchants. For each of them you will need:\n1x Overcharged Ley Energy - random rare item loot from trash/boss in Karazhan\n6x Arcane Essence - random trash loot."
Inst45Quest17_Prequest = "No"
Inst45Quest17_Folgequest = "Invocation of Shattering, Invocation of Greater Protection, Invocation of Expansive Mind, Invocation of Greater Arcane Fortitude"
Inst45Quest17name1 = "Invocation of Shattering" -- 92005
Inst45Quest17name2 = "Invocation of Greater Protection" -- 92006
Inst45Quest17name3 = "Invocation of Expansive Mind" -- 92007
Inst45Quest17name4 = "Invocation of Greater Arcane Fortitude" -- 92008

--Quest 1 Horde (same as Quest 1 Alliance)
Inst45Quest1_HORDE = Inst45Quest1
Inst45Quest1_HORDE_Level = Inst45Quest1_Level
Inst45Quest1_HORDE_Attain = Inst45Quest1_Attain
Inst45Quest1_HORDE_Aim = Inst45Quest1_Aim
Inst45Quest1_HORDE_Location = Inst45Quest1_Location
Inst45Quest1_HORDE_Note = Inst45Quest1_Note
Inst45Quest1_HORDE_Prequest = Inst45Quest1_Prequest
Inst45Quest1_HORDE_Folgequest = Inst45Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 2 Alliance)
Inst45Quest2_HORDE = Inst45Quest2
Inst45Quest2_HORDE_Level = Inst45Quest2_Level
Inst45Quest2_HORDE_Attain = Inst45Quest2_Attain
Inst45Quest2_HORDE_Aim = Inst45Quest2_Aim
Inst45Quest2_HORDE_Location = Inst45Quest2_Location
Inst45Quest2_HORDE_Note = Inst45Quest2_Note
Inst45Quest2_HORDE_Prequest = Inst45Quest2_Prequest
Inst45Quest2_HORDE_Folgequest = Inst45Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde (same as Quest 3 Alliance)
Inst45Quest3_HORDE = Inst45Quest3
Inst45Quest3_HORDE_Level = Inst45Quest3_Level
Inst45Quest3_HORDE_Attain = Inst45Quest3_Attain
Inst45Quest3_HORDE_Aim = Inst45Quest3_Aim
Inst45Quest3_HORDE_Location = Inst45Quest3_Location
Inst45Quest3_HORDE_Note = Inst45Quest3_Note
Inst45Quest3_HORDE_Prequest = Inst45Quest3_Prequest
Inst45Quest3_HORDE_Folgequest = Inst45Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde (same as Quest 4 Alliance)
Inst45Quest4_HORDE = Inst45Quest4
Inst45Quest4_HORDE_Level = Inst45Quest4_Level
Inst45Quest4_HORDE_Attain = Inst45Quest4_Attain
Inst45Quest4_HORDE_Aim = Inst45Quest4_Aim
Inst45Quest4_HORDE_Location = Inst45Quest4_Location
Inst45Quest4_HORDE_Note = Inst45Quest4_Note
Inst45Quest4_HORDE_Prequest = Inst45Quest4_Prequest
Inst45Quest4_HORDE_Folgequest = Inst45Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 5 Alliance)
Inst45Quest5_HORDE = Inst45Quest5
Inst45Quest5_HORDE_Level = Inst45Quest5_Level
Inst45Quest5_HORDE_Attain = Inst45Quest5_Attain
Inst45Quest5_HORDE_Aim = Inst45Quest5_Aim
Inst45Quest5_HORDE_Location = Inst45Quest5_Location
Inst45Quest5_HORDE_Note = Inst45Quest5_Note
Inst45Quest5_HORDE_Prequest = Inst45Quest5_Prequest
Inst45Quest5_HORDE_Folgequest = Inst45Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde (same as Quest 6 Alliance)
Inst45Quest6_HORDE = Inst45Quest6
Inst45Quest6_HORDE_Level = Inst45Quest6_Level
Inst45Quest6_HORDE_Attain = Inst45Quest6_Attain
Inst45Quest6_HORDE_Aim = Inst45Quest6_Aim
Inst45Quest6_HORDE_Location = Inst45Quest6_Location
Inst45Quest6_HORDE_Note = Inst45Quest6_Note
Inst45Quest6_HORDE_Prequest = Inst45Quest6_Prequest
Inst45Quest6_HORDE_Folgequest = Inst45Quest6_Folgequest
-- No Rewards for this quest

--Quest 7 Horde
Inst45Quest7_HORDE = "(TW)7. The Key to Karazhan III" -- 40822
Inst45Quest7_HORDE_Level = "60"
Inst45Quest7_HORDE_Attain = "58"
Inst45Quest7_HORDE_Aim = "Find someone from Kirin Tor who might know something about Vandol. Undercity could be a good place to start your search."
Inst45Quest7_HORDE_Location = "The Cook ("..YELLOW.."[Karazhan - d]"..WHITE..")"
Inst45Quest7_HORDE_Note = "Turn in the quest to Bethor Iceshard (Undercity - The Magic Quarter"..YELLOW.."[84.1,17.5]"..WHITE..", mage trainer zone.)"
Inst45Quest7_HORDE_Prequest = "The Key to Karazhan II" -- 40818
Inst45Quest7_HORDE_Folgequest = "The Key to Karazhan IV" -- 40823
-- No Rewards for this quest

--Quest 8 Horde (same as Quest 8 Alliance)
Inst45Quest8_HORDE = Inst45Quest8
Inst45Quest8_HORDE_Level = Inst45Quest8_Level
Inst45Quest8_HORDE_Attain = Inst45Quest8_Attain
Inst45Quest8_HORDE_Aim = Inst45Quest8_Aim
Inst45Quest8_HORDE_Location = Inst45Quest8_Location
Inst45Quest8_HORDE_Note = Inst45Quest8_Note
Inst45Quest8_HORDE_Prequest = Inst45Quest8_Prequest
Inst45Quest8_HORDE_Folgequest = Inst45Quest8_Folgequest
-- No Rewards for this quest

--Quest 9 Horde (same as Quest 9 Alliance)
Inst45Quest9_HORDE = Inst45Quest9
Inst45Quest9_HORDE_Level = Inst45Quest9_Level
Inst45Quest9_HORDE_Attain = Inst45Quest9_Attain
Inst45Quest9_HORDE_Aim = Inst45Quest9_Aim
Inst45Quest9_HORDE_Location = Inst45Quest9_Location
Inst45Quest9_HORDE_Note = Inst45Quest9_Note
Inst45Quest9_HORDE_Prequest = Inst45Quest9_Prequest
Inst45Quest9_HORDE_Folgequest = Inst45Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde (same as Quest 10 Alliance)
Inst45Quest10_HORDE = Inst45Quest10
Inst45Quest10_HORDE_Level = Inst45Quest10_Level
Inst45Quest10_HORDE_Attain = Inst45Quest10_Attain
Inst45Quest10_HORDE_Aim = Inst45Quest10_Aim
Inst45Quest10_HORDE_Location = Inst45Quest10_Location
Inst45Quest10_HORDE_Note = Inst45Quest10_Note
Inst45Quest10_HORDE_Prequest = Inst45Quest10_Prequest
Inst45Quest10_HORDE_Folgequest = Inst45Quest10_Folgequest
-- No Rewards for this quest

--Quest 11 Horde (same as Quest 11 Alliance)
Inst45Quest11_HORDE = Inst45Quest11
Inst45Quest11_HORDE_Level = Inst45Quest11_Level
Inst45Quest11_HORDE_Attain = Inst45Quest11_Attain
Inst45Quest11_HORDE_Aim = Inst45Quest11_Aim
Inst45Quest11_HORDE_Location = Inst45Quest11_Location
Inst45Quest11_HORDE_Note = Inst45Quest11_Note
Inst45Quest11_HORDE_Prequest = Inst45Quest11_Prequest
Inst45Quest11_HORDE_Folgequest = Inst45Quest11_Folgequest
-- No Rewards for this quest

--Quest 12 Horde (same as Quest 12 Alliance)
Inst45Quest12_HORDE = Inst45Quest12
Inst45Quest12_HORDE_Level = Inst45Quest12_Level
Inst45Quest12_HORDE_Attain = Inst45Quest12_Attain
Inst45Quest12_HORDE_Aim = Inst45Quest12_Aim
Inst45Quest12_HORDE_Location = Inst45Quest12_Location
Inst45Quest12_HORDE_Note = Inst45Quest12_Note
Inst45Quest12_HORDE_Prequest = Inst45Quest12_Prequest
Inst45Quest12_HORDE_Folgequest = Inst45Quest12_Folgequest
-- No Rewards for this quest

--Quest 13 Horde (same as Quest 13 Alliance)
Inst45Quest13_HORDE = Inst45Quest13
Inst45Quest13_HORDE_Level = Inst45Quest13_Level
Inst45Quest13_HORDE_Attain = Inst45Quest13_Attain
Inst45Quest13_HORDE_Aim = Inst45Quest13_Aim
Inst45Quest13_HORDE_Location = Inst45Quest13_Location
Inst45Quest13_HORDE_Note = Inst45Quest13_Note
Inst45Quest13_HORDE_Prequest = Inst45Quest13_Prequest
Inst45Quest13_HORDE_Folgequest = Inst45Quest13_Folgequest
-- No Rewards for this quest

--Quest 14 Horde (same as Quest 14 Alliance)
Inst45Quest14_HORDE = Inst45Quest14
Inst45Quest14_HORDE_Level = Inst45Quest14_Level
Inst45Quest14_HORDE_Attain = Inst45Quest14_Attain
Inst45Quest14_HORDE_Aim = Inst45Quest14_Aim
Inst45Quest14_HORDE_Location = Inst45Quest14_Location
Inst45Quest14_HORDE_Note = Inst45Quest14_Note
Inst45Quest14_HORDE_Prequest = Inst45Quest14_Prequest
Inst45Quest14_HORDE_Folgequest = Inst45Quest14_Folgequest
Inst45Quest14name1_HORDE = Inst45Quest14name1
Inst45Quest14name2_HORDE = Inst45Quest14name2

--Quest 15 Horde (same as Quest 15 Alliance)
Inst45Quest15_HORDE = Inst45Quest15
Inst45Quest15_HORDE_Level = Inst45Quest15_Level
Inst45Quest15_HORDE_Attain = Inst45Quest15_Attain
Inst45Quest15_HORDE_Aim = Inst45Quest15_Aim
Inst45Quest15_HORDE_Location = Inst45Quest15_Location
Inst45Quest15_HORDE_Note = Inst45Quest15_Note
Inst45Quest15_HORDE_Prequest = Inst45Quest15_Prequest
Inst45Quest15_HORDE_Folgequest = Inst45Quest15_Folgequest
-- No Rewards for this quest

--Quest 16 Horde (same as Quest 16 Alliance)
Inst45Quest16_HORDE = Inst45Quest16
Inst45Quest16_HORDE_Level = Inst45Quest16_Level
Inst45Quest16_HORDE_Attain = Inst45Quest16_Attain
Inst45Quest16_HORDE_Aim = Inst45Quest16_Aim
Inst45Quest16_HORDE_Location = Inst45Quest16_Location
Inst45Quest16_HORDE_Note = Inst45Quest16_Note
Inst45Quest16_HORDE_Prequest = Inst45Quest16_Prequest
Inst45Quest16_HORDE_Folgequest = Inst45Quest16_Folgequest
-- No Rewards for this quest

--Quest 17 Horde (same as Quest 17 Alliance)
Inst45Quest17_HORDE = Inst45Quest17
Inst45Quest17_HORDE_Level = Inst45Quest17_Level
Inst45Quest17_HORDE_Attain = Inst45Quest17_Attain
Inst45Quest17_HORDE_Aim = Inst45Quest17_Aim
Inst45Quest17_HORDE_Location = Inst45Quest17_Location
Inst45Quest17_HORDE_Note = Inst45Quest17_Note
Inst45Quest17_HORDE_Prequest = Inst45Quest17_Prequest
Inst45Quest17_HORDE_Folgequest = Inst45Quest17_Folgequest
Inst45Quest17name1_HORDE = Inst45Quest17name1
Inst45Quest17name2_HORDE = Inst45Quest17name2
Inst45Quest17name3_HORDE = Inst45Quest17name3
Inst45Quest17name4_HORDE = Inst45Quest17name4

--------------- INST46 - Emerald Sanctum (ES) ----------- -- TurtleWOW
Inst46Story = "Emerald Sanctum is an instance raid located in Hyjal. A fog of corruption has descended upon the Emerald Dream, twisting the morals and intentions of even the noblest and purest. The corrupted Wakener is preparing to send a premature call of awakening; if not stopped, his kin will arise and go on a frenzied rampage across Azeroth."
Inst46Caption = "Emerald Sanctum"
Inst46QAA = "2 Quests 2TW"
Inst46QAH = "2 Quests 2TW"

--Quest 1 Alliance
Inst46Quest1 = "(TW)1. Head of Solnius" -- 40963
Inst46Quest1_Level = "60"
Inst46Quest1_Attain = "58"
Inst46Quest1_Aim = "Bring the Head of Solnius to Ralathius at Nordanaar in Hyjal"
Inst46Quest1_Location = "Head of Solnius drops from Solnius <The Awakener>"
Inst46Quest1_Note = ""
Inst46Quest1_Prequest = "No"
Inst46Quest1_Folgequest = "No"
Inst46Quest1name1 = "Ring of Nordrassil" -- 61195
Inst46Quest1name2 = "The Heart of Dreams" -- 61194
Inst46Quest1name3 = "Verdant Eye Necklace" -- 61193

--Quest 2 Alliance
Inst46Quest2 = "(TW)2. Smoldering Dream Essence" -- 40905
Inst46Quest2_Level = "60"
Inst46Quest2_Attain = "55"
Inst46Quest2_Aim = "Bring the Smoldering Dream Essence to Arch Druid Dreamwind at Nordanaar in Hyjal."
Inst46Quest2_Location = "Smoldering Dream Essence drops from Solnius <The Awakener>"
Inst46Quest2_Note = "You will get the reward finishing follow up quest."
Inst46Quest2_Prequest = "No"
Inst46Quest2_Folgequest = "Purified Dream Essence" -- 40906
Inst46Quest2name1 = "Purified Emerald Essence" -- 61445

--Quest 1 Horde (same as Quest 1 Alliance)
Inst46Quest1_HORDE = Inst46Quest1
Inst46Quest1_HORDE_Level = Inst46Quest1_Level
Inst46Quest1_HORDE_Attain = Inst46Quest1_Attain
Inst46Quest1_HORDE_Aim = Inst46Quest1_Aim
Inst46Quest1_HORDE_Location = Inst46Quest1_Location
Inst46Quest1_HORDE_Note = Inst46Quest1_Note
Inst46Quest1_HORDE_Prequest = Inst46Quest1_Prequest
Inst46Quest1_HORDE_Folgequest = Inst46Quest1_Folgequest
Inst46Quest1name1_HORDE = Inst46Quest1name1
Inst46Quest1name2_HORDE = Inst46Quest1name2
Inst46Quest1name3_HORDE = Inst46Quest1name3

--Quest 2 Horde (same as Quest 2 Alliance)
Inst46Quest2_HORDE = Inst46Quest2
Inst46Quest2_HORDE_Level = Inst46Quest2_Level
Inst46Quest2_HORDE_Attain = Inst46Quest2_Attain
Inst46Quest2_HORDE_Aim = Inst46Quest2_Aim
Inst46Quest2_HORDE_Location = Inst46Quest2_Location
Inst46Quest2_HORDE_Note = Inst46Quest2_Note
Inst46Quest2_HORDE_Prequest = Inst46Quest2_Prequest
Inst46Quest2_HORDE_Folgequest = Inst46Quest2_Folgequest
Inst46Quest2name1_HORDE = Inst46Quest2name1
---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------

--------------- INST33 - Dragons of Nightmare ---------------
Inst33Story = {
	["Page1"] = "There is a disturbance at the Great Trees. A new threat menaces these secluded areas found in Ashenvale, Duskwood, Feralas, and Hinterlands. Four great guardians of the Green Dragonflight have arrived from the Dream, but these once-proud protectors now seek only destruction and death. Take arms with your fellows and march to these hidden groves -- only you can defend Azeroth from the corruption they bring.",
	["Page2"] = "Ysera, the great Dreaming dragon Aspect rules over the enigmatic green dragonflight. Her domain is the fantastic, mystical realm of the Emerald Dream - and it is said that from there she guides the evolutionary path of the world itself. She is the protector of nature and imagination, and it is the charge of her flight to guard all of the Great Trees across the world, which only druids use to enter the Dream itself. In recent times, Ysera's most trusted lieutenants have been warped by a dark new power within the Emerald Dream. Now these wayward sentinels have passed through the Great Trees into Azeroth, intending to spread madness and terror throughout the mortal kingdoms. Even the mightiest of adventurers would be well advised to give the dragons a wide berth, or suffer the consequences of their misguided wrath.",
	["Page3"] = "Lethon's exposure to the aberration within the Emerald Dream not only darkened the hue of the mighty dragon's scales, but also empowered him with the ability to extract malevolent shades from his enemies. Once joined with their master, the shades imbue the dragon with healing energies. It should come as no surprise, then, that Lethon is considered to be among the most formidable of Ysera's wayward lieutenants",
	["Page4"] = "A  mysterious dark power within the Emerald Dream has transformed the once-majestic Emeriss into a rotting, diseased monstrosity. Reports from the few who have survived encounters with the dragon have told horrifying tales of putrid mushrooms erupting from the corpses of their dead companions. Emeriss is truly the most gruesome and appalling of Ysera's estranged green dragons.",
	["Page5"] = "Taerar was perhaps the most affected of Ysera's rogue lieutenants. His interaction with the dark force within the Emerald Dream shattered Taerar's sanity as well as his corporeal form. The dragon now exists as a specter with the ability to split into multiple entities, each of which possesses destructive magical powers. Taerar is a cunning and relentless foe who is intent on turning the madness of his existence into reality for the inhabitants of Azeroth.",
	["Page6"] = "Once one of Ysera's most trusted lieutenants, Ysondre has now gone rogue, sewing terror and chaos across the land of Azeroth. Her formerly beneficent healing powers have given way to dark magics, enabling her to cast smoldering lightning waves and summon the aid of fiendish druids. Ysondre and her kin also possess the ability to induce sleep, sending her unfortunate mortal foes to the realm of their most terrifying nightmares.",
	["MaxPages"] = "6",
};
Inst33Caption = "Dragons of Nightmare"
Inst33Caption2 = "Ysera and the Green Dragonflight"
Inst33Caption3 = "Lethon"
Inst33Caption4 = "Emeriss"
Inst33Caption5 = "Taerar"
Inst33Caption6 = "Ysondre"
Inst33QAA = "1 Quest"
Inst33QAH = "1 Quest"

--Quest 1 Alliance
Inst33Quest1 = "1. Shrouded in Nightmare" -- 8446
Inst33Quest1_Level = "60"
Inst33Quest1_Attain = "60"
Inst33Quest1_Aim = "Find someone capable of deciphering the meaning behind the Nightmare Engulfed Object.\n\nPerhaps a druid of great power could assist you."
Inst33Quest1_Location = "Nightmare Engulfed Object (drops from Emeriss, Taerar, Lethon or Ysondre)"
Inst33Quest1_Note = "Quest turns in to Keeper Remulos at (Moonglade - Shrine of Remulos; "..YELLOW.."36,41"..WHITE.."). Reward listed is for the followup."
Inst33Quest1_Prequest = "No"
Inst33Quest1_Folgequest = "Waking Legends" -- 8447
Inst33Quest1name1 = "Malfurion's Signet Ring"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst33Quest1_HORDE = Inst33Quest1
Inst33Quest1_HORDE_Level = Inst33Quest1_Level
Inst33Quest1_HORDE_Attain = Inst33Quest1_Attain
Inst33Quest1_HORDE_Aim = Inst33Quest1_Aim
Inst33Quest1_HORDE_Location = Inst33Quest1_Location
Inst33Quest1_HORDE_Note = Inst33Quest1_Note
Inst33Quest1_HORDE_Prequest = Inst33Quest1_Prequest
Inst33Quest1_HORDE_Folgequest = Inst33Quest1_Folgequest
Inst33Quest1name1_HORDE = Inst33Quest1name1



--------------- INST34 - Azuregos ---------------
Inst34Story = "Before the Great Sundering, the night elf city of Eldarath flourished in the land that is now known as Azshara. It is believed that many ancient and powerful Highborne artifacts may be found among the ruins of the once-mighty stronghold. For countless generations, the Blue Dragon Flight has safeguarded powerful artifacts and magical lore, ensuring that they do not fall into mortal hands. The presence of Azuregos, the blue dragon, seems to suggest that items of extreme significance, perhaps the fabled Vials of Eternity themselves, may be found in the wilderness of Azshara. Whatever Azuregos seeks, one thing is certain: he will fight to the death to defend Azshara's magical treasures."
Inst34Caption = "Azuregos"
Inst34QAA = "2 Quests"
Inst34QAH = "2 Quests"

--Quest 1 Alliance
Inst34Quest1 = "1. Ancient Sinew Wrapped Lamina" -- 7634
Inst34Quest1_Level = "60"
Inst34Quest1_Attain = "60"
Inst34Quest1_Aim = "Hastat the Ancient has asked that you bring him a Mature Blue Dragon Sinew. Should you find this sinew, return it to Hastat in Felwood."
Inst34Quest1_Location = "Hastat the Ancient (Felwood - Irontree Woods; "..YELLOW.."48,24"..WHITE..")"
Inst34Quest1_Note = HUNTER.."(Hunter only)"..WHITE.." Kill Azuregos to get the Mature Blue Dragon Sinew. He walks around the middle of the southern peninsula in Azshara near "..YELLOW.."[1]"..WHITE.."."
Inst34Quest1_Prequest = "The Ancient Leaf ("..YELLOW.."Molten Core"..WHITE..")" -- 7632
Inst34Quest1_Folgequest = "No"
Inst34Quest1name1 = "Ancient Sinew Wrapped Lamina"

--Quest 2 Alliance
Inst34Quest2 = "2. Azuregos's Magical Ledger" -- 8575
Inst34Quest2_Level = "60"
Inst34Quest2_Attain = "60"
Inst34Quest2_Aim = "Deliver Azuregos's Magical Ledger to Narain Soothfancy in Tanaris."
Inst34Quest2_Location = "Spirit of Azuregos (Azshara; "..YELLOW.."56,83"..WHITE..")"
Inst34Quest2_Note = "You can find Narain Soothfancy in Tanaris at "..YELLOW.."65.17"..WHITE.."."
Inst34Quest2_Prequest = "The Charge of the Dragonflights" -- 8555
Inst34Quest2_Folgequest = "Translating the Ledger" -- 8576
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
Inst34Quest1_HORDE = Inst34Quest1
Inst34Quest1_HORDE_Level = Inst34Quest1_Level
Inst34Quest1_HORDE_Attain = Inst34Quest1_Attain
Inst34Quest1_HORDE_Aim = Inst34Quest1_Aim
Inst34Quest1_HORDE_Location = Inst34Quest1_Location
Inst34Quest1_HORDE_Note = Inst34Quest1_Note
Inst34Quest1_HORDE_Prequest = Inst34Quest1_Prequest
Inst34Quest1_HORDE_Folgequest = Inst34Quest1_Folgequest
Inst34Quest1name1_HORDE = Inst34Quest1name1


--Quest 2 Horde (same as Quest 2 Alliance)
Inst34Quest2_HORDE = Inst34Quest2
Inst34Quest2_HORDE_Level = Inst34Quest2_Level
Inst34Quest2_HORDE_Attain = Inst34Quest2_Attain
Inst34Quest2_HORDE_Aim = Inst34Quest2_Aim
Inst34Quest2_HORDE_Location = Inst34Quest2_Location
Inst34Quest2_HORDE_Note = Inst34Quest2_Note
Inst34Quest2_HORDE_Prequest = Inst34Quest2_Prequest
Inst34Quest2_HORDE_Folgequest = Inst34Quest2_Folgequest
-- No Rewards for this quest



--------------- INST35 - Lord Kazzak ---------------
Inst35Story = "Following the defeat of the Burning Legion at the end of the Third War, the remaining enemy forces, led by the colossal demon Lord Kazzak, pulled back to the Blasted Lands. They continue to dwell there to this day in an area called the Tainted Scar, awaiting the reopening of the Dark Portal. It is rumored that once the Portal is reopened, Kazzak will travel with his remaining forces to Outland. Once the orc homeworld of Draenor, Outland was ripped apart by the simultaneous activation of several portals created by the orc shaman Ner'zhul, and now exists as a shattered world occupied by legions of demonic agents under command of the night elf betrayer, Illidan."
Inst35Caption = "Lord Kazzak"
Inst35QAA = "No Quests"
Inst35QAH = "No Quests"

--------------- INST47 - Ostarius of Uldum ---------------

Inst47Story = ""
Inst47Caption = "Ostarius of Uldum"
Inst47QAA = "1 Quest 1TW"
Inst47QAH = "1 Quest 1TW"

--Quest 1 Alliance
Inst47Quest1 = "(TW)1. Gate Keeper" -- 40107
Inst47Quest1_Level = "60"
Inst47Quest1_Attain = "58"
Inst47Quest1_Aim = "Defeat Ostarius. Return to the Hall of Explorers and inform High Explorer Magellas about the events that occurred at the gate."
Inst47Quest1_Location = "Uldum Pedestal (Tanaris - Uldum "..YELLOW.."[37.6,81.4]"..WHITE..")"
Inst47Quest1_Note = "Questline starts with quest 'Unusual Partnership' at High Explorer Magellas <Explorers' League> (Ironforge - Hall of Explorers; "..YELLOW.."[69.9,18.5]"..WHITE..")."
Inst47Quest1_Prequest = "Unusual Partnership -> Original Owner -> What Lurks in the Dark -> The Race -> The Missing Expedition -> Pride of the Dwarves -> Gates of Uldum" -- 40100, 40101, 40102, 40103, 40104, 40105, 40106
Inst47Quest1_Folgequest = "No"
-- No Rewards for this quest


--Quest 1 Horde
Inst47Quest1_HORDE = "(TW)1. Guardian of the Gate" -- 40115
Inst47Quest1_HORDE_Level = "60"
Inst47Quest1_HORDE_Attain = "58"
Inst47Quest1_HORDE_Aim = "Defeat Ostarius. Return to the Thunder Bluff and inform Sage Truthseeker about the events that occurred at the gate."
Inst47Quest1_HORDE_Location = "Uldum Pedestal (Tanaris - Uldum "..YELLOW.."[37.6,81.4]"..WHITE..")"
Inst47Quest1_HORDE_Note = "Questline starts with quest 'The Lone Wolf' at Sage Truthseeker (Thunder Bluff "..YELLOW.."[34.5,47.2]"..WHITE..") in the brdige building next to auctioneers."
Inst47Quest1_HORDE_Prequest = "The Lone Wolf -> Scars of the Past -> Unseen Enemy -> In a Rush-> Disturbing Silence -> Might of the Horde -> Uldum Awaits" -- 40108, 40109, 40110, 40111, 40112, 40113, 40114
Inst47Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest



---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------

--------------- INST36 - Alterac Valley (AV) ---------------
Inst36Story = "Long ago, before the First War, the warlock Gul'dan exiled a clan of orcs called the Frostwolves to a hidden valley deep in the heart of the Alterac Mountains. It is here in the valley's southern reaches that the Frostwolves eked out a living until the coming of Thrall.\nAfter Thrall's triumphant uniting of the clans, the Frostwolves, now led by the Orc Shaman Drek'Thar, chose to remain in the valley they had for so long called their home. In recent times, however, the relative peace of the Frostwolves has been challenged by the arrival of the Dwarven Stormpike Expedition.\nThe Stormpikes have set up residence in the valley to search for natural resources and ancient relics. Despite their intentions, the Dwarven presence has sparked heated conflict with the Frostwolf Orcs to the south, who have vowed to drive the interlopers from their lands. "
Inst36Caption = "Alterac Valley"
Inst36QAA = "17 Quests"
Inst36QAH = "17 Quests"

--Quest 1 Alliance
Inst36Quest1 = "1. The Sovereign Imperative" -- 7261
Inst36Quest1_Level = "60"
Inst36Quest1_Attain = "51"
Inst36Quest1_Aim = "Travel to Alterac Valley in the Hillsbrad Foothills. Outside of the entrance tunnel, find and speak with Lieutenant Haggerdin."
Inst36Quest1_Location = "Lieutenant Rotimer (Ironforge - The Commons; "..YELLOW.."30,62"..WHITE..")"
Inst36Quest1_Note = "Lieutenant Haggerdin is at (Alterac Mountains; "..YELLOW.."39,81"..WHITE..")."
Inst36Quest1_Prequest = "No"
Inst36Quest1_Folgequest = "Proving Grounds" -- 7162
-- No Rewards for this quest

--Quest 2 Alliance
Inst36Quest2 = "2. Proving Grounds" -- 7162
Inst36Quest2_Level = "60"
Inst36Quest2_Attain = "51"
Inst36Quest2_Aim = "Travel to the Icewing Caverns located southwest of Dun Baldar in Alterac Valley and recover the Stormpike Banner. Return the Stormpike Banner to Lieutenant Haggerdin in the Alterac Mountains."
Inst36Quest2_Location = "Lieutenant Haggerdin (Alterac Mountains; "..YELLOW.."39,81"..WHITE..")"
Inst36Quest2_Note = "The Stormpike Banner is in the Icewing Cavern at "..YELLOW.."[11]"..WHITE.." on the Alterac Valley - North map. Talk to the same NPC each time you gain a new Reputation level for an upgraded Insignia.\n\nThe prequest is not necessary to obtain this quest, but it does yield about 9550 experience."
Inst36Quest2_Prequest = "The Sovereign Imperative" -- 7261
Inst36Quest2_Folgequest = "Rise and Be Recognized -> The Eye of Command" -- 7168 -> 7172
Inst36Quest2name1 = "Stormpike Insignia Rank 1"
Inst36Quest2name2 = "The Frostwolf Artichoke"

--Quest 3 Alliance
Inst36Quest3 = "3. The Battle of Alterac" -- 7141
Inst36Quest3_Level = "60"
Inst36Quest3_Attain = "51"
Inst36Quest3_Aim = "Enter Alterac Valley, defeat the Horde general Drek'thar, and then return to Prospector Stonehewer in the Alterac Mountains."
Inst36Quest3_Location = "Prospector Stonehewer (Alterac Mountains; "..YELLOW.."41,80"..WHITE..") and\n(Alterac Valley - North; "..YELLOW.."[B]"..WHITE..")"
Inst36Quest3_Note = "Drek'thar is at (Alterac Valley - South; "..YELLOW.."[B]"..WHITE.."). He does not actually need to be killed to complete the quest. The battleground just has to be won by your side in any manner.\nAfter turning this quest in, talk to the NPC again for the reward."
Inst36Quest3_Prequest = "No"
Inst36Quest3_Folgequest = "Hero of the Stormpike" -- 8271
Inst36Quest3name1 = "Bloodseeker"
Inst36Quest3name2 = "Ice Barbed Spear"
Inst36Quest3name3 = "Wand of Biting Cold"
Inst36Quest3name4 = "Cold Forged Hammer"

--Quest 4 Alliance
Inst36Quest4 = "4. The Quartermaster" -- 7121
Inst36Quest4_Level = "60"
Inst36Quest4_Attain = "51"
Inst36Quest4_Aim = "Speak with the Stormpike Quartermaster."
Inst36Quest4_Location = "Mountaineer Boombellow (Alterac Valley - North; "..YELLOW.."Near [3] Before Bridge"..WHITE..")"
Inst36Quest4_Note = "The Stormpike Quartermaster is at (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..") and provides more quests."
Inst36Quest4_Prequest = "No"
Inst36Quest4_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Alliance
Inst36Quest5 = "5. Coldtooth Supplies" -- 6982
Inst36Quest5_Level = "60"
Inst36Quest5_Attain = "51"
Inst36Quest5_Aim = "Bring 10 Coldtooth Supplies to the Alliance Quartermaster in Dun Baldar."
Inst36Quest5_Location = "Stormpike Quartermaster (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest5_Note = "The supplies can be found in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest5_Prequest = "No"
Inst36Quest5_Folgequest = "No"
-- No Rewards for this quest

--Quest 6 Alliance
Inst36Quest6 = "6. Irondeep Supplies" -- 5892
Inst36Quest6_Level = "60"
Inst36Quest6_Attain = "51"
Inst36Quest6_Aim = "Bring 10 Irondeep Supplies to the Alliance Quartermaster in Dun Baldar."
Inst36Quest6_Location = "Stormpike Quartermaster (Alterac Valley - North; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest6_Note = "The supplies can be found in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest6_Prequest = "No"
Inst36Quest6_Folgequest = "No"
-- No Rewards for this quest

--Quest 7 Alliance
Inst36Quest7 = "7. Armor Scraps" -- 7223
Inst36Quest7_Level = "60"
Inst36Quest7_Attain = "51"
Inst36Quest7_Aim = "Bring 20 Armor Scraps to Murgot Deepforge in Dun Baldar."
Inst36Quest7_Location = "Murgot Deepforge (Alterac Valley - North; "..YELLOW.."[4]"..WHITE..")"
Inst36Quest7_Note = "Loot the corpse of enemy players for scraps. The followup is just the same, quest, but repeatable."
Inst36Quest7_Prequest = "No"
Inst36Quest7_Folgequest = "More Armor Scraps" -- 6781
-- No Rewards for this quest

--Quest 8 Alliance
Inst36Quest8 = "8. Capture a Mine" -- 7122
Inst36Quest8_Level = "60"
Inst36Quest8_Attain = "51"
Inst36Quest8_Aim = "Capture a mine that the Stormpike does not control, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst36Quest8_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest8_Note = "To complete the quest, you must kill either Morloch in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..") or Taskmaster Snivvle in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..") while the Horde control it."
Inst36Quest8_Prequest = "No"
Inst36Quest8_Folgequest = "No"
-- No Rewards for this quest

--Quest 9 Alliance
Inst36Quest9 = "9. Towers and Bunkers" -- 7102
Inst36Quest9_Level = "60"
Inst36Quest9_Attain = "51"
Inst36Quest9_Aim = "Destroy the banner at an enemy tower or bunker, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst36Quest9_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest9_Note = "Reportedly, the Tower or Bunker need not actually be destroyed to complete the quest, just assaulted."
Inst36Quest9_Prequest = "No"
Inst36Quest9_Folgequest = "No"
-- No Rewards for this quest

--Quest 10 Alliance
Inst36Quest10 = "10. Alterac Valley Graveyards" -- 7081
Inst36Quest10_Level = "60"
Inst36Quest10_Attain = "51"
Inst36Quest10_Aim = "Assault a graveyard, then return to Sergeant Durgen Stormpike in the Alterac Mountains."
Inst36Quest10_Location = "Sergeant Durgen Stormpike (Alterac Mountains; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest10_Note = "Reportedly you do not need to do anything but be near a graveyard when the Alliance assaults it. It does not need to be captured, just assaulted."
Inst36Quest10_Prequest = "No"
Inst36Quest10_Folgequest = "No"
-- No Rewards for this quest

--Quest 11 Alliance
Inst36Quest11 = "11. Empty Stables" -- 7027
Inst36Quest11_Level = "60"
Inst36Quest11_Attain = "51"
Inst36Quest11_Aim = "Locate an Alterac Ram in Alterac Valley. Use the Stormpike Training Collar when you are near the Alterac Ram to 'tame' the beast. Once tamed, the Alterac Ram will follow you back to the Stable Master. Speak with the Stable Master to earn credit for the capture."
Inst36Quest11_Location = "Stormpike Stable Master (Alterac Valley - North; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest11_Note = "You can find a Ram outside the base. The taming process is just like that of a Hunter taming a pet. The quest is repeatable up to a total of 25 times per battleground by the same player or players. After 25 Rams have been tamed, the Stormpike Cavalry will arrive to assist in the battle."
Inst36Quest11_Prequest = "No"
Inst36Quest11_Folgequest = "No"
-- No Rewards for this quest

--Quest 12 Alliance
Inst36Quest12 = "12. Ram Riding Harnesses" -- 7026
Inst36Quest12_Level = "60"
Inst36Quest12_Attain = "51"
Inst36Quest12_Aim = "You must strike at our enemy's base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go!"
Inst36Quest12_Location = "Stormpike Ram Rider Commander (Alterac Valley - North; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest12_Note = "Frostwolves can be found in the southern area of Alterac Valley."
Inst36Quest12_Prequest = "No"
Inst36Quest12_Folgequest = "No"
-- No Rewards for this quest

--Quest 13 Alliance
Inst36Quest13 = "13. Crystal Cluster" -- 7386
Inst36Quest13_Level = "60"
Inst36Quest13_Attain = "51"
Inst36Quest13_Aim = "There are times which you may be entrenched in battle for days or weeks on end. During those longer periods of activity you may end up collecting large clusters of the Frostwolf's storm crystals.\n\nThe Circle accepts such offerings."
Inst36Quest13_Location = "Arch Druid Renferal (Alterac Valley - North; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest13_Note = "After turning in 200 or so crystals, Arch Druid Renferal will begin walking towards (Alterac Valley - North; "..YELLOW.."[19]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Ivus the Forest Lord will be summoned to help the battle."
Inst36Quest13_Prequest = "No"
Inst36Quest13_Folgequest = "No"
-- No Rewards for this quest

--Quest 14 Alliance
Inst36Quest14 = "14. Ivus the Forest Lord" -- 6881
Inst36Quest14_Level = "60"
Inst36Quest14_Attain = "51"
Inst36Quest14_Aim = "The Frostwolf Clan is protected by a taint of elemental energy. Their shaman meddle in powers that will surely destroy us all if left unchecked.\n\nThe Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals."
Inst36Quest14_Location = "Arch Druid Renferal (Alterac Valley - North; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest14_Note = "After turning in 200 or so crystals, Arch Druid Renferal will begin walking towards (Alterac Valley - North; "..YELLOW.."[19]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Ivus the Forest Lord will be summoned to help the battle."
Inst36Quest14_Prequest = "No"
Inst36Quest14_Folgequest = "No"
-- No Rewards for this quest

--Quest 15 Alliance
Inst36Quest15 = "15. Call of Air - Slidore's Fleet" -- 6942
Inst36Quest15_Level = "60"
Inst36Quest15_Attain = "51"
Inst36Quest15_Aim = "My gryphons are poised to strike at the front lines but cannot make the attack until the lines are thinned out.\n\nThe Frostwolf warriors charged with holding the front lines wear medals of service proudly upon their chests. Rip those medals off their rotten corpses and bring them back here.\n\nOnce the front line is sufficiently thinned out, I will make the call to air! Death from above!"
Inst36Quest15_Location = "Wing Commander Slidore (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest15_Note = "Kill Horde NPCs for the Frostwolf Soldier's Medal."
Inst36Quest15_Prequest = "No"
Inst36Quest15_Folgequest = "No"
-- No Rewards for this quest

--Quest 16 Alliance
Inst36Quest16 = "16. Call of Air - Vipore's Fleet" -- 6941
Inst36Quest16_Level = "60"
Inst36Quest16_Attain = "51"
Inst36Quest16_Aim = "The elite Frostwolf units that guard the lines must be dealt with, soldier! I'm tasking you with thinning out that herd of savages. Return to me with medals from their lieutenants and legionnaires. When I feel that enough of the riff-raff has been dealt with, I'll deploy the air strike."
Inst36Quest16_Location = "Wing Commander Vipore (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest16_Note = "Kill Horde NPCs for the Frostwolf Lieutenant's Medal."
Inst36Quest16_Prequest = "No"
Inst36Quest16_Folgequest = "No"
-- No Rewards for this quest

--Quest 17 Alliance
Inst36Quest17 = "17. Call of Air - Ichman's Fleet" -- 6943
Inst36Quest17_Level = "60"
Inst36Quest17_Attain = "51"
Inst36Quest17_Aim = "Return to the battlefield and strike at the heart of the Frostwolf's command. Take down their commanders and guardians. Return to me with as many of their medals as you can stuff in your pack! I promise you, when my gryphons see the bounty and smell the blood of our enemies, they will fly again! Go now!"
Inst36Quest17_Location = "Wing Commander Ichman (Alterac Valley - North; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest17_Note = "Kill Horde NPCs for the Frostwolf Commander's Medals. After turning in 50, Wing Commander Ichman will either send a gryphon to attack the Horde base or give you a beacon to plant in the Snowfall Graveyard. If the beacon is protected long enough a gryphon will come to defend it."
Inst36Quest17_Prequest = "No"
Inst36Quest17_Folgequest = "No"
-- No Rewards for this quest


--Quest 1 Horde
Inst36Quest1_HORDE = "1. In Defense of Frostwolf" -- 7241
Inst36Quest1_HORDE_Level = "60"
Inst36Quest1_HORDE_Attain = "51"
Inst36Quest1_HORDE_Aim = "Venture to Alterac Valley, located in the Alterac Mountains. Find and speak with Warmaster Laggrond - who stands outside the tunnel entrance - to begin your career as a soldier of Frostwolf. You will find Alterac Valley north of Tarren Mill at the base of the Alterac Mountains."
Inst36Quest1_HORDE_Location = "Frostwolf Ambassador Rokhstrom (Orgrimmar - Valley of Strength; "..YELLOW.."50,71"..WHITE..")"
Inst36Quest1_HORDE_Note = "Warmaster Laggrond is at (Alterac Mountains; "..YELLOW.."62,59"..WHITE..")."
Inst36Quest1_HORDE_Prequest = "No"
Inst36Quest1_HORDE_Folgequest = "Proving Grounds" -- 7161
-- No Rewards for this quest

--Quest 2 Horde
Inst36Quest2_HORDE = "2. Proving Grounds" -- 7161
Inst36Quest2_HORDE_Level = "60"
Inst36Quest2_HORDE_Attain = "51"
Inst36Quest2_HORDE_Aim = "Travel to the Wildpaw cavern located southeast of the main base in Alterac Valley and find the Frostwolf Banner. Return the Frostwolf Banner to Warmaster Laggrond."
Inst36Quest2_HORDE_Location = "Warmaster Laggrond (Alterac Mountains; "..YELLOW.."62,59"..WHITE..")"
Inst36Quest2_HORDE_Note = "The Frostwolf Banner is in the Wildpaw Cavern at (Alterac Valley - South; "..YELLOW.."[9]"..WHITE.."). Talk to the same NPC each time you gain a new Reputation level for an upgraded Insignia.\n\nThe prequest is not necessary to obtain this quest, but it does yield about 9550 experience."
Inst36Quest2_HORDE_Prequest = "In Defense of Frostwolf" -- 7241
Inst36Quest2_HORDE_Folgequest = "Rise and Be Recognized -> The Eye of Command" -- 7163 -> 7167
Inst36Quest2name1_HORDE = "Frostwolf Insignia Rank 1"
Inst36Quest2name2_HORDE = "Peeling the Onion"

--Quest 3 Horde
Inst36Quest3_HORDE = "3. The Battle for Alterac" -- 7142
Inst36Quest3_HORDE_Level = "60"
Inst36Quest3_HORDE_Attain = "51"
Inst36Quest3_HORDE_Aim = "Enter Alterac Valley and defeat the dwarven general, Vanndar Stormpike. Then, return to Voggah Deathgrip in the Alterac Mountains."
Inst36Quest3_HORDE_Location = "Voggah Deathgrip (Alterac Mountains; "..YELLOW.."64,60"..WHITE..")"
Inst36Quest3_HORDE_Note = "Vanndar Stormpike is at (Alterac Valley - North; "..YELLOW.."[B]"..WHITE.."). He does not actually need to be killed to complete the quest. The battleground just has to be won by your side in any manner.\nAfter turning this quest in, talk to the NPC again for the reward."
Inst36Quest3_HORDE_Prequest = "No"
Inst36Quest3_HORDE_Folgequest = "Hero of the Frostwolf" -- 8272
Inst36Quest3name1_HORDE = "Bloodseeker"
Inst36Quest3name2_HORDE = "Ice Barbed Spear"
Inst36Quest3name3_HORDE = "Wand of Biting Cold"
Inst36Quest3name4_HORDE = "Cold Forged Hammer"

--Quest 4 Horde
Inst36Quest4_HORDE = "4. Speak with our Quartermaster" -- 7123
Inst36Quest4_HORDE_Level = "60"
Inst36Quest4_HORDE_Attain = "51"
Inst36Quest4_HORDE_Aim = "Speak with the Frostwolf Quartermaster."
Inst36Quest4_HORDE_Location = "Jotek (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest4_HORDE_Note = "The Frostwolf Quartermaster is at "..YELLOW.."[10]"..WHITE.." and provides more quests."
Inst36Quest4_HORDE_Prequest = "No"
Inst36Quest4_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 5 Horde
Inst36Quest5_HORDE = "5. Coldtooth Supplies" -- 5893
Inst36Quest5_HORDE_Level = "60"
Inst36Quest5_HORDE_Attain = "51"
Inst36Quest5_HORDE_Aim = "Bring 10 Coldtooth Supplies to the Horde Quatermaster in Frostwolf Keep."
Inst36Quest5_HORDE_Location = "Frostwolf Quartermaster (Alterac Valley - South; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest5_HORDE_Note = "The supplies can be found in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest5_HORDE_Prequest = "No"
Inst36Quest5_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 6 Horde
Inst36Quest6_HORDE = "6. Irondeep Supplies" -- 6985
Inst36Quest6_HORDE_Level = "60"
Inst36Quest6_HORDE_Attain = "51"
Inst36Quest6_HORDE_Aim = "Bring 10 Irondeep Supplies to the Horde Quartermaster in Frostwolf Keep."
Inst36Quest6_HORDE_Location = "Frostwolf Quartermaster (Alterac Valley - South; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest6_HORDE_Note = "The supplies can be found in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest6_HORDE_Prequest = "No"
Inst36Quest6_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 7 Horde
Inst36Quest7_HORDE = "7. Enemy Booty" -- 7224
Inst36Quest7_HORDE_Level = "60"
Inst36Quest7_HORDE_Attain = "51"
Inst36Quest7_HORDE_Aim = "Bring 20 Armor Scraps to Smith Regzar in Frostwolf Village."
Inst36Quest7_HORDE_Location = "Smith Regzar (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest7_HORDE_Note = "Loot the corpse of enemy players for scraps. The followup is just the same, quest, but repeatable."
Inst36Quest7_HORDE_Prequest = "No"
Inst36Quest7_HORDE_Folgequest = "More Booty!" -- 6741
-- No Rewards for this quest

--Quest 8 Horde
Inst36Quest8_HORDE = "8. Capture a Mine" -- 7124
Inst36Quest8_HORDE_Level = "60"
Inst36Quest8_HORDE_Attain = "51"
Inst36Quest8_HORDE_Aim = "Capture a mine, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst36Quest8_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest8_HORDE_Note = "To complete the quest, you must kill either Morloch in the Irondeep Mine at (Alterac Valley - North; "..YELLOW.."[1]"..WHITE..") or Taskmaster Snivvle in the Coldtooth Mine at (Alterac Valley - South; "..YELLOW.."[6]"..WHITE..") while the Alliance control it."
Inst36Quest8_HORDE_Prequest = "No"
Inst36Quest8_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 9 Horde
Inst36Quest9_HORDE = "9. Towers and Bunkers" -- 7101
Inst36Quest9_HORDE_Level = "60"
Inst36Quest9_HORDE_Attain = "51"
Inst36Quest9_HORDE_Aim = "Capture an enemy tower, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst36Quest9_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest9_HORDE_Note = "Reportedly, the Tower or Bunker need not actually be destroyed to complete the quest, just assaulted."
Inst36Quest9_HORDE_Prequest = "No"
Inst36Quest9_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 10 Horde
Inst36Quest10_HORDE = "10. The Graveyards of Alterac" -- 7082
Inst36Quest10_HORDE_Level = "60"
Inst36Quest10_HORDE_Attain = "51"
Inst36Quest10_HORDE_Aim = "Assault a graveyard, then return to Corporal Teeka Bloodsnarl in the Alterac Mountains."
Inst36Quest10_HORDE_Location = "Corporal Teeka Bloodsnarl (Alterac Mountains; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest10_HORDE_Note = "Reportedly you do not need to do anything but be near a graveyard when the Horde assaults it. It does not need to be captured, just assaulted."
Inst36Quest10_HORDE_Prequest = "No"
Inst36Quest10_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 11 Horde
Inst36Quest11_HORDE = "11. Empty Stables" -- 7001
Inst36Quest11_HORDE_Level = "60"
Inst36Quest11_HORDE_Attain = "51"
Inst36Quest11_HORDE_Aim = "Locate a Frostwolf in Alterac Valley. Use the Frostwolf Muzzle when you are near the Frostwolf to 'tame' the beast. Once tamed, the Frostwolf will follow you back to the Frostwolf Stable Master. Speak with the Frostwolf Stable Master to earn credit for the capture."
Inst36Quest11_HORDE_Location = "Frostwolf Stable Master (Alterac Valley - South; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest11_HORDE_Note = "You can find a Frostwolf outside the base. The taming process is just like that of a Hunter taming a pet. The quest is repeatable up to a total of 25 times per battleground by the same player or players. After 25 Rams have been tamed, the Frostwolf Cavalry will arrive to assist in the battle."
Inst36Quest11_HORDE_Prequest = "No"
Inst36Quest11_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 12 Horde
Inst36Quest12_HORDE = "12. Ram Hide Harnesses" -- 7002
Inst36Quest12_HORDE_Level = "60"
Inst36Quest12_HORDE_Attain = "51"
Inst36Quest12_HORDE_Aim = "You must strike at the indigenous rams of the region. The very same rams that the Stormpike cavalry uses as mounts!\n\nSlay them and return to me with their hides. Once we have gathered enough hides, we will fashion harnesses for the riders. The Frostwolf Wolf Riders will ride once more!"
Inst36Quest12_HORDE_Location = "Frostwolf Wolf Rider Commander (Alterac Valley - South; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest12_HORDE_Note = "The Rams can be found in the northern area of Alterac Valley."
Inst36Quest12_HORDE_Prequest = "No"
Inst36Quest12_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 13 Horde
Inst36Quest13_HORDE = "13. A Gallon of Blood" -- 7385
Inst36Quest13_HORDE_Level = "60"
Inst36Quest13_HORDE_Attain = "51"
Inst36Quest13_HORDE_Aim = "You have the option of offering larger quantities of the blood taken from our enemies. I will be glad to accept gallon sized offerings."
Inst36Quest13_HORDE_Location = "Primalist Thurloga (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest13_HORDE_Note = "After turning in 150 or so Blood, Primalist Thurloga will begin walking towards (Alterac Valley - South; "..YELLOW.."[14]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Lokholar the Ice Lord will be summoned to kill Alliance players."
Inst36Quest13_HORDE_Prequest = "No"
Inst36Quest13_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 14 Horde
Inst36Quest14_HORDE = "14. Lokholar the Ice Lord" -- 6801
Inst36Quest14_HORDE_Level = "60"
Inst36Quest14_HORDE_Attain = "51"
Inst36Quest14_HORDE_Aim = "You must strike down our enemies and bring to me their blood. Once enough blood has been gathered, the ritual of summoning may begin.\n\nVictory will be assured when the elemental lord is loosed upon the Stormpike army."
Inst36Quest14_HORDE_Location = "Primalist Thurloga (Alterac Valley - South; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest14_HORDE_Note = "After turning in 150 or so Blood, Primalist Thurloga will begin walking towards (Alterac Valley - South; "..YELLOW.."[14]"..WHITE.."). Once there, she will begin a summoning ritual which will require 10 people to assist. If successful, Lokholar the Ice Lord will be summoned to kill Alliance players."
Inst36Quest14_HORDE_Prequest = "No"
Inst36Quest14_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 15 Horde
Inst36Quest15_HORDE = "15. Call of Air - Guse's Fleet" -- 6825
Inst36Quest15_HORDE_Level = "60"
Inst36Quest15_HORDE_Attain = "51"
Inst36Quest15_HORDE_Aim = "My riders are set to make a strike on the central battlefield; but first, I must wet their appetites - preparing them for the assault.\n\nI need enough Stormpike Soldier Flesh to feed a fleet! Hundreds of pounds! Surely you can handle that, yes? Get going!"
Inst36Quest15_HORDE_Location = "Wing Commander Guse (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest15_HORDE_Note = "Kill Horde NPCs for the Stormpike Soldier's Flesh. Reportedly 90 flesh are needed to make the Wing Commander do whatever she does."
Inst36Quest15_HORDE_Prequest = "No"
Inst36Quest15_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 16 Horde
Inst36Quest16_HORDE = "16. Call of Air - Jeztor's Fleet" -- 6826
Inst36Quest16_HORDE_Level = "60"
Inst36Quest16_HORDE_Attain = "51"
Inst36Quest16_HORDE_Aim = "My War Riders must taste in the flesh of their targets. This will ensure a surgical strike against our enemies!\n\nMy fleet is the second most powerful in our air command. Thusly, they will strike at the more powerful of our adversaries. For this, then, they need the flesh of the Stormpike Lieutenants."
Inst36Quest16_HORDE_Location = "Wing Commander Jeztor (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest16_HORDE_Note = "Kill Alliance NPCs for the Stormpike Lieutenant's Flesh."
Inst36Quest16_HORDE_Prequest = "No"
Inst36Quest16_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 17 Horde
Inst36Quest17_HORDE = "17. Call of Air - Mulverick's Fleet" -- 6827
Inst36Quest17_HORDE_Level = "60"
Inst36Quest17_HORDE_Attain = "51"
Inst36Quest17_HORDE_Aim = "First, my war riders need targets to gun for - high priority targets. I'm going to need to feed them the flesh of Stormpike Commanders. Unfortunately, those little buggers are entrenched deep behind enemy lines! You've definitely got your work cut out for you."
Inst36Quest17_HORDE_Location = "Wing Commander Mulverick (Alterac Valley - South; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest17_HORDE_Note = "Kill Alliance NPCs for the Stormpike Commander's Flesh."
Inst36Quest17_HORDE_Prequest = "No"
Inst36Quest17_HORDE_Folgequest = "No"
-- No Rewards for this quest



--------------- INST37 - Arathi Basin (AB) ---------------
Inst37Story = "Arathi Basin, located in Arathi Highlands, is a fast and exciting Battleground. The Basin itself is rich with resources and coveted by both the Horde and the Alliance. The Forsaken Defilers and the League of Arathor have arrived at Arathi Basin to wage war over these natural resources and claim them on behalf of their respective sides."
Inst37Caption = "Arathi Basin"
Inst37QAA = "3 Quests"
Inst37QAH = "3 Quests"

--Quest 1 Alliance
Inst37Quest1 = "1. The Battle for Arathi Basin!" -- 8105
Inst37Quest1_Level = "55"
Inst37Quest1_Attain = "50"
Inst37Quest1_Aim = "Assault the mine, the lumber mill, the blacksmith and the farm, then return to Field Marshal Oslight in Refuge Pointe."
Inst37Quest1_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest1_Note = "The locations to be assaulted are marked on the map as 2 through 5."
Inst37Quest1_Prequest = "No"
Inst37Quest1_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Alliance
Inst37Quest2 = "2. Control Four Bases" -- 8114
Inst37Quest2_Level = "60"
Inst37Quest2_Attain = "60"
Inst37Quest2_Aim = "Enter Arathi Basin, capture and control four bases at the same time, and then return to Field Marshal Oslight at Refuge Pointe."
Inst37Quest2_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest2_Note = "You need to be Friendly with the League of Arathor to get this quest."
Inst37Quest2_Prequest = "No"
Inst37Quest2_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Alliance
Inst37Quest3 = "3. Control Five Bases" -- 8115
Inst37Quest3_Level = "60"
Inst37Quest3_Attain = "60"
Inst37Quest3_Aim = "Control 5 bases in Arathi Basin at the same time, then return to Field Marshal Oslight at Refuge Pointe."
Inst37Quest3_Location = "Field Marshal Oslight (Arathi Highlands - Refuge Pointe; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest3_Note = "You need to be Exalted with the League of Arathor to get this quest."
Inst37Quest3_Prequest = "No"
Inst37Quest3_Folgequest = "No"
Inst37Quest3name1 = "Arathor Battle Tabard"


--Quest 1 Horde
Inst37Quest1_HORDE = "1. The Battle for Arathi Basin!" -- 8120
Inst37Quest1_HORDE_Level = "25"
Inst37Quest1_HORDE_Attain = "25"
Inst37Quest1_HORDE_Aim = "Assault the Arathi Basin mine, lumber mill, blacksmith and stable, and then return to Deathmaster Dwire in Hammerfall."
Inst37Quest1_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest1_HORDE_Note = "The locations to be assaulted are marked on the map as 1 through 4."
Inst37Quest1_HORDE_Prequest = "No"
Inst37Quest1_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 2 Horde
Inst37Quest2_HORDE = "2. Take Four Bases" -- 8121
Inst37Quest2_HORDE_Level = "60"
Inst37Quest2_HORDE_Attain = "60"
Inst37Quest2_HORDE_Aim = "Hold four bases at the same time in Arathi Basin, and then return to Deathmaster Dwire in Hammerfall."
Inst37Quest2_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest2_HORDE_Note = "You need to be Friendly with The Defilers to get this quest."
Inst37Quest2_HORDE_Prequest = "No"
Inst37Quest2_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Horde
Inst37Quest3_HORDE = "3. Take Five Bases" -- 8122
Inst37Quest3_HORDE_Level = "60"
Inst37Quest3_HORDE_Attain = "60"
Inst37Quest3_HORDE_Aim = "Hold five bases in Arathi Basin at the same time, then return to Deathmaster Dwire in Hammerfall."
Inst37Quest3_HORDE_Location = "Deathmaster Dwire (Arathi Highlands - Hammerfall; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest3_HORDE_Note = "You need to be Exalted with The Defilers to get this quest."
Inst37Quest3_HORDE_Prequest = "No"
Inst37Quest3_HORDE_Folgequest = "No"
Inst37Quest3name1_HORDE = "Battle Tabard of the Defilers"



--------------- INST38 - Warsong Gulch (WSG) ---------------
Inst38Story = "Nestled in the southern region of Ashenvale forest, Warsong Gulch is near the area where Grom Hellscream and his Orcs chopped away huge swaths of forest during the events of the Third War. Some orcs have remained in the vicinity, continuing their deforestation to fuel the Horde's expansion. They call themselves the Warsong Outriders.\nThe Night Elves, who have begun a massive push to retake the forests of Ashenvale, are now focusing their attention on ridding their land of the Outriders once and for all. And so, the Silverwing Sentinels have answered the call and sworn that they will not rest until every last Orc is defeated and cast out of Warsong Gulch. "
Inst38Caption = "Warsong Gulch"
Inst38QAA = "No Quests"
Inst38QAH = "No Quests"




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
-- 39 = The Crescent Grove (CG) -- TurtleWOW
-- 40 = Hateforge Quarry (HQ) -- TurtleWOW
-- 41 - Karazhan Crypt (KC) -- TurtleWOW
-- 42 - Black Morass (BM) -- TurtleWOW
-- 43 - Stormwind Vault (SWV) -- TurtleWOW
-- 44 - Gilneas City (GC) -- TurtleWOW 1.17.0
-- 45 - Lower Karazhan Halls (LKH) -- TurtleWOW
-- 46 - Emerald Sanctum (ES) -- TurtleWOW
-- 47 - Ostarius of Uldum (Ostarius) -- TurtleWOW World Boss
-- 99 =  default "rest"

-----------------------------------------------------------
-----------------   TURTLE-WOW quests     -----------------
-- this was my main source for information about quests  --
--   https://forum.turtle-wow.org/viewtopic.php?t=4932   --
-----------------------------------------------------------

--1. Deadmines          INST1 - Deadmines (DM)
	--The Harvest Golem Mystery IX (A) 40478
	--Captain Grayson's Revenge (AH) 40396
	--Prototype Thievery (H) 55005

--2. Wailing Caverns    INST2 - Wailing Caverns (WC)
	--Serpentbloom (A) 60125
	--Trapped in the Nightmare (A) 60124

--3. Shadowfang Keep 	INST24 - Shadowfang Keep (SFK)
	--Arugal's Folly (A) 60108
	--The Missing Sorcerer (A) 60109
	--Into The Jaws (H) 40281

--4. Stockades			INST27 - The Stockade (Stocks)
	--The Stockade's Search (A) 55221

--5. Crescent Grove 	INST39 - The Crescent Grove (CG)
	--Kalanar's Mallet (A) 40326
	--The Crescent Grove (A) 40091
	--The Unwise Elders (AH) 40090
	--The Rampant Groveweald (AH) 40089
	--Rooting Out Evil (H) 40147

--6. Scarlet Monastery 	INST21 - SM: Cathedral (SM Cath)
					  --INST22 - SM: Graveyard (SM GY)
	--The Orb of Kaladus (A) 40233 (SM Cath)
	--Paint the Roses Red (H) 60116 (SM GY)

--7. Zul'Farrak			INST30 - Zul'Farrak (ZF)
	--Drifting Across the Sand (AH) 40519
	--End Ukorz Sandscalp (H) 40527

--8. Hateforge Quarry	INST40 - Hateforge Quarry (HQ)
	--Rival Presence (AH) 40458
	--Miners Union Mutiny II (AH) 40468
	--The True High Foreman (AH) 40463
	--Rumors of Hateforge Brew (A) 40490
	--Assaulting Hateforge (A) 40489
	--Hunting Engineer Figgles (H) 40539
	--Of New and Old IV (H) 40504

--9. Sunken temple 		INST28 - Sunken Temple (ST)
	--By Any Means Necessary IV (AH) 40400
	--The Maul'ogg Crisis VII (H) 40270

--10. Blackrock Depths		INST5 - Blackrock Depths (BRD)
	--Senatorial Revenge (AH) 40464
	--The Arcane Golem Core (AH) 40467
	--Operation Help Jabbey (AH) 40757
	--The Dark Iron Desecrator (AH) 40762
	-- To Build a Pounder (AH) 80401 Engineer 125
	-- Winter Veil Brew (AH) 40748 Feast of Winter Veil

--11. Lower Blackrock Spire 	INST8 - Lower Blackrock Spire (LBRS)
	--The Dark Iron Desecrator (AH) 40762
	--The Final Crack (H) 40509
	--Raider's Raid (H) 40498
	--Forest Troll Scum (H) 40495
	
--12. Scholomance		INST23 - Scholomance (Scholo)
	--A Favor for Farsan (AH) 40237

--13. Dire Maul West 	INST12 - Dire Maul West (DM)
	--Keeping Secrets (AH) 40254

--14. Karazhan Crypt	INST41 - Karazhan Crypt (KC)
	--The Mystery of Karazhan VII (A) 40317
	--The Depths of Karazhan VII (H) 40310

--15. Black Morass		INST42 - Black Morass (BM) -- CavernsOfTimeBlackMorass
	--A Timely Situation (AH) -- 80410
	--The Bronze Betrayal (AH) -- 40342
	--Corrupted Sand (AH) -- 40340
	--Sand in Bulk (AH) -- 40341

--16. Stormwind Vault	INST43 - Stormwind Vault (SWV)
	--Recovering Vault Shackles (AH) -- 40426
	--Ending Arc'Tiras (AH) -- 40427
	--The Tome of Arcane Intricacies and Magical Phenomenon IX (A) -- 40425

--17. Uldaman			INST4 - Uldaman (Ulda)
	--Stealing a Core (A) 40129
	--Requisitioning a Core (H) 40131

--18. Gnomeregan 		INST32 - Gnomeregan (Gnomer)
	-- A Pounding Brain (AH) 80398
	--Backup Capacitor (H) 55006

-- 19. Stratholme		INST25 - Stratholme (Strat)
	-- To Build a Pounder (AH) 80401
	-- To Wake The Ashbringer (AH) 20002




--------------- INST1 - Deadmines (DM) ---------------
--------------- INST2 - Wailing Caverns (WC) ---------------
--------------- INST3 - Ragefire Chasm (RFC) ---------------
--------------- INST4 - Uldaman (Ulda) ---------------
--------------- INST5 - Blackrock Depths (BRD) ---------------
--------------- INST6 - Blackwing Lair (BWL) ---------------
--------------- INST7 - Blackfathom Deeps (BFD) ---------------
--------------- INST8 - Lower Blackrock Spire (LBRS) ------------
--------------- INST9 - Upper Blackrock Spire (UBRS) ------------
--------------- INST10 - Dire Maul East (DM) ---------------
--------------- INST11 - Dire Maul North (DM) ---------------
--------------- INST12 - Dire Maul West (DM) ---------------
--------------- INST13 - Maraudon (Mara) ---------------
--------------- INST14 - Molten Core (MC) ---------------
--------------- INST15 - Naxxramas (Naxx) ---------------
--------------- INST16 - Onyxia's Lair (Ony) ---------------
--------------- INST17 - Razorfen Downs (RFD) ---------------
--------------- INST18 - Razorfen Kraul (RFK) ---------------
--------------- INST19 - SM: Library (SM Lib) ---------------
--------------- INST20 - SM: Armory (SM Arm) ---------------
--------------- INST21 - SM: Cathedral (SM Cath) ---------------
--------------- INST22 - SM: Graveyard (SM GY) ---------------
--------------- INST23 - Scholomance (Scholo) ---------------
--------------- INST24 - Shadowfang Keep (SFK) ---------------
--------------- INST25 - Stratholme (Strat) ---------------
--------------- INST26 - The Ruins of Ahn'Qiraj (AQ20) ----------
--------------- INST27 - The Stockade (Stocks) ---------------
--------------- INST28 - Sunken Temple (ST) ---------------
--------------- INST29 - The Temple of Ahn'Qiraj (AQ40) ---------
--------------- INST30 - Zul'Farrak (ZF) ---------------
--------------- INST31 - Zul'Gurub (ZG) ---------------
--------------- INST32 - Gnomeregan (Gnomer) ---------------
--------------- INST39 - The Crescent Grove (CG) ------------- -- TurtleWOW
--------------- INST40 - Hateforge Quarry (HQ) ------------- -- TurtleWOW
--------------- INST41 - Karazhan Crypt (KC) ------------- -- TurtleWOW
--------------- INST42 - Black Morass (BM) --------------- -- TurtleWOW (CavernsOfTimeBlackMorass)
--------------- INST43 - Stormwind Vault (SWV) ----------- -- TurtleWOW
--------------- INST44 - Gilneas City (GC) ----------- -- TurtleWOW 1.17.0
--------------- INST45 - Lower Karazhan Halls (LKH) ----------- -- TurtleWOW 1.17.0
--------------- INST46 - Emerald Sanctum (ES) ----------- -- TurtleWOW 1.17.0
--------------- INST47 - Ostarius of Uldum (Ostarius) ----------- -- TurtleWOW World Boss