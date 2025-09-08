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


-- Localization for CTBC by yeachan(6区 阿拉希 “缘玥”公会 Ahunter）
-- Email：zhengguo@live.com
-- Rebuilt by Ananhaid（2区 伊利丹“紫雪之都”公会 NovaLOG）
-- Email：ananhaid[at]gmail.com
-- Last update: 2008-07-12

-- if ( GetLocale() == "zhCN" ) then
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


---------------
--- OPTIONS ---
---------------

AQHelpText = ""..WHITE.."命令格式为： /aq or atlasquest "..YELLOW.."[命令参数]"..WHITE.."\n命令参数有：help; option/config; show/hide; left/right; colour; autoshow"..RED.."（仅 Atlas）"
--
AQOptionsCaptionTEXT = "AtlasQuest 选项";
AQ_OK = "确定"

-- Autoshow
AQOptionsAutoshowTEXT = ""..WHITE.."伴随"..RED.."Atlas"..WHITE.."打开 AtlasQuest 面板。";
AQAtlasAutoON = "当你打开 Atlas 时，AtlasQuest 面板现在会自动显示"..GREEN.."（默认）"
AQAtlasAutoOFF = "当你打开 Atlas 时，AtlasQuest 面板"..RED.."不会"..WHITE.."自动显示"

-- Right/Left
AQOptionsLEFTTEXT = ""..WHITE.."AtlasQuest 面板显示位置在"..RED.."左"..WHITE..".";
AQOptionsRIGHTTEXT = ""..WHITE.."AtlasQuest 面板显示位置在"..RED.."右"..WHITE..".";
AQShowRight = "现在在"..RED.."右侧"..WHITE.."显示 AtlasQuest 面板";
AQShowLeft = "现在在"..RED.."左侧"..WHITE.."显示 AtlasQuest 面板"..GREEN.."（默认）";

-- Colour Check
AQOptionsCCTEXT = ""..WHITE.."根据任务等级显示任务颜色。"
AQCCON = "AtlasQuest 现在根据任务等级显示任务颜色。"
AQCCOFF = "AtlasQuest 现在不根据任务等级显示任务颜色。"

-- QuestLog Colour Check
AQQLColourChange = ""..WHITE.."将你任务日志里有的的任务染成"..BLUE.."蓝色。"

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = ""..WHITE.."在服务器中自动搜索任务奖励中你未见过的物品。"

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = ""..WHITE.."禁用服务器自动搜索。"

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = ""..WHITE.."将任务奖励物品与你自身装备物品进行比较。"


AQAbilities = BLUE .. "功能：" .. WHITE;
AQSERVERASKInformation = " 按右键察看物品窗口。"
AQSERVERASKAuto = " 尝试鼠标指向物品时搜寻。"
AQSERVERASK = "在服务器上搜寻："
AQERRORNOTSHOWN = "此物品不安全！"
AQERRORASKSERVER = "要按右键在服务器上查询吗？你可能会掉线。"
AQOptionB = "选项"
AQStoryB = "副本背景"
AQNoReward = ""..BLUE.." 没有奖励物品"
AQDiscription_OR = ""..GREY.." 或 "..WHITE..""
AQDiscription_AND = ""..GREY.." 和 "..WHITE..""
AQDiscription_REWARD = ""..BLUE.." 任务奖励："
AQDiscription_ATTAIN = "任务可接受等级："
AQDiscription_LEVEL = "任务等级："
AQDiscription_START = "开始地点：\n"
AQDiscription_AIM = "任务目标：\n"
AQDiscription_NOTE = "任务注释：\n"
AQDiscription_PREQUEST= "前导任务："
AQDiscription_FOLGEQUEST = "后续任务："
AQFinishedTEXT = "已完成的任务：";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = "匕首"
AQITEM_POLEARM = "长柄武器"
AQITEM_SWORD = "剑"
AQITEM_AXE = "斧"
AQITEM_WAND = "魔杖"
AQITEM_STAFF = "法杖"
AQITEM_MACE = "锤"
AQITEM_SHIELD = "盾"
AQITEM_GUN = "枪"
AQITEM_BOW = "弓"
AQITEM_CROSSBOW = "弩"
AQITEM_THROWN = "投掷武器"

AQITEM_WAIST = "腰带"
AQITEM_SHOULDER = "肩"
AQITEM_CHEST = "胸甲"
AQITEM_LEGS = "腿"
AQITEM_HANDS = "手"
AQITEM_FEET = "脚"
AQITEM_WRIST = "护腕"
AQITEM_HEAD = "头盔"
AQITEM_BACK = "背部"
AQITEM_TABARD = "衬衣"

AQITEM_CLOTH = "布甲"
AQITEM_LEATHER = "皮甲"
AQITEM_MAIL = "锁甲"
AQITEM_PLATE = "板甲"

AQITEM_OFFHAND = "副手"
AQITEM_MAINHAND = "主手"
AQITEM_ONEHAND = "单手"
AQITEM_TWOHAND = "双手"

AQITEM_ITEM = "物品"
AQITEM_TRINKET = "饰品"
AQITEM_RELIC = "圣物"
AQITEM_POTION = "药水"
AQITEM_OFFHAND = "副手物品"
AQITEM_NECK = "颈部"
AQITEM_PATTERN = "图样"
AQITEM_BAG = "背包"
AQITEM_RING = "戒指"
AQITEM_KEY = "钥匙"
AQITEM_GEM = "宝石"
AQITEM_QUIVER = "箭袋"
AQITEM_AMMOPOUCH = "弹药包"
AQITEM_ENCHANT = "附魔"



----------------------------------------------
---------------- DUNGEONS --------------------
----------------------------------------------



--------------- INST1 - Deadmines (VC) ---------------

Inst1Story = "这里曾经是人类最主要的产金地，希望矿井在部落第一次大战期间席卷暴风城的时候被废弃。现在迪菲亚兄弟会的人占据了那里并将这个黑暗的通道转变成他们的避难所。据说那些盗贼已经劝说了聪明的地精帮助他们在矿井的深处建造一些可怕的东西——但是没有人知道这是真的还是假的。有传言说，死亡矿井的入口在安宁的月溪镇中。"
Inst1Caption = "死亡矿井"
Inst1QAA = "7 个任务" -- how many quests for alliance
Inst1QAH = "无任务" -- for horde

--Quest 1 Alliance
Inst1Quest1 = "1. 红色丝质面罩"
Inst1Quest1_Level = "17"
Inst1Quest1_Attain = "14"
Inst1Quest1_Aim = "给哨兵岭哨塔的哨兵瑞尔带回10条红色丝质面罩。"
Inst1Quest1_Location = "哨兵瑞尔（西部荒野 - 哨兵岭; "..YELLOW.."56, 47"..WHITE.."）"
Inst1Quest1_Note = "你可以在副本内外的矿工身上找到红色丝质面罩。当你完成护送迪菲亚叛徒任务后才能接到这个任务。"
Inst1Quest1_Prequest = "有，（请见注释）"
Inst1Quest1_Folgequest = "无"
Inst1Quest1PreQuest = "true"
--
Inst1Quest1name1 = "结实的短剑"
Inst1Quest1name2 = "贝雕匕首"
Inst1Quest1name3 = "破甲之斧"

--Quest 2 Alliance
Inst1Quest2 = "2. 收集记忆"
Inst1Quest2_Level = "18"
Inst1Quest2_Attain = "14"
Inst1Quest2_Aim = "给暴风城的维尔德·蓟草带回4张矿业工会会员卡。"
Inst1Quest2_Location = "维尔德·蓟草（暴风城 - 矮人区; "..YELLOW.."65, 21"..WHITE.."）"
Inst1Quest2_Note = "就在你刚要进入副本之前的亡灵"..YELLOW.."副本入口地图[3]"..WHITE.."掉落矿工工会会员卡。"
Inst1Quest2_Prequest = "无"
Inst1Quest2_Folgequest = "无"
--
Inst1Quest2name1 = "掘地工之靴"
Inst1Quest2name2 = "陈旧的矿工手套"

--Quest 3 Alliance
Inst1Quest3 = "3. 我的兄弟……"
Inst1Quest3_Level = "20"
Inst1Quest3_Attain = "15"
Inst1Quest3_Aim = "将工头希斯耐特的探险者协会徽章交给暴风城的维尔德·蓟草。"
Inst1Quest3_Location = "维尔德·蓟草（暴风城 - 矮人区; "..YELLOW.."65,21"..WHITE.."）"
Inst1Quest3_Note = "就在你刚要进入副本之前的工头希斯奈特"..YELLOW.."副本入口地图[3]"..WHITE.."掉落矿探险者协会徽章。"
Inst1Quest3_Prequest = "无"
Inst1Quest3_Folgequest = "无"
--
Inst1Quest3name1 = "矿工的报复"

--Quest 4 Alliance
Inst1Quest4 = "4. 地底突袭"
Inst1Quest4_Level = "20"
Inst1Quest4_Attain = "15"
Inst1Quest4_Aim = "从死亡矿井中带回小型高能发动机，将其带给暴风城矮人区中的沉默的舒尼。"
Inst1Quest4_Location = "沉默的舒尼（暴风城 - 矮人区; "..YELLOW.."55,12"..WHITE.."）"
Inst1Quest4_Note = "你可以直接接到这个任务，你也可以从诺恩那里接到此任务的引导任务（铁炉堡 - 侏儒区; "..YELLOW.."69,50"..WHITE.."）。\n斯尼德的伐木机掉落小型高能发动机，位置在"..YELLOW.."[3]"..WHITE.."。"
Inst1Quest4_Prequest = "有，沉默的舒尼"
Inst1Quest4_Folgequest = "无"
Inst1Quest4PreQuest = "true"
--
Inst1Quest4name1 = "极地护手"
Inst1Quest4name2 = "紫貂魔杖"

--Quest 5 Alliance
Inst1Quest5 = "5. 迪菲亚兄弟会（系列任务）"
Inst1Quest5_Level = "22"
Inst1Quest5_Attain = "14"
Inst1Quest5_Aim = "杀死艾德温·范克里夫，把他的头交给格里安·斯托曼。"
Inst1Quest5_Location = "格里安·斯托曼（西部荒野 - 哨兵岭 "..YELLOW.."56,47 "..WHITE.."）"
Inst1Quest5_Note = "此系列任务开始于格里安·斯托曼（西部荒野 - 哨兵岭; "..YELLOW.."56,47"..WHITE.."）。\n艾德温·范克里夫是死亡矿井的最后一个 Boss。你可以在他的船的最上层找到他，位置在"..YELLOW.."[6]"..WHITE.."。"
Inst1Quest5_Prequest = "有，迪菲亚兄弟会"
Inst1Quest5_Folgequest = "有，未寄出的信"
Inst1Quest5PreQuest = "true"
--
Inst1Quest5name1 = "西部荒野马裤"
Inst1Quest5name2 = "西部荒野外套"
Inst1Quest5name3 = "西部荒野法杖"

--Quest 6 Alliance
Inst1Quest6 = "6. 正义试炼（圣骑士任务）"
Inst1Quest6_Level = "22"
Inst1Quest6_Attain = "20"
Inst1Quest6_Aim = "按照乔丹的武器材料单上的说明去寻找一些白石橡木、精炼矿石、乔丹的铁锤和一块科尔宝石，然后回到铁炉堡去见乔丹·斯迪威尔。"
Inst1Quest6_Location = "乔丹·斯迪威尔（丹莫罗 - 铁炉堡 "..YELLOW.."52,36 "..WHITE.."）"
Inst1Quest6_Note = "点击"..YELLOW.."[乔丹的武器材料单]"..WHITE.."查看乔丹的武器材料单。"
Inst1Quest6_Page = { "只有圣骑士们才能接到这个任务！\n\n1. 你可以从"..YELLOW.."[死亡矿井]"..WHITE.."地精木匠"..YELLOW.."[3]"..WHITE.."那儿得到白石橡木。\n\n2. 要得到精炼矿石，你必须先与白洛尔·石手交谈（洛克莫丹 - 塞尔萨玛; "..YELLOW.."35,44"..WHITE.."）。他会给你《白洛尔的矿石》任务。 你在一棵树后面找到乔丹的矿石"..YELLOW.."71,21"..WHITE.."。\n\n3. 你可以在"..YELLOW.."[影牙城堡]"..WHITE.."紧靠"..YELLOW.."[3]"..WHITE.."的地方找到乔丹的铁锤（安全地点）。\n\n4. 要得到科尔宝石，你必须去找桑迪斯·织风（黑海岸 - 奥伯丁; "..YELLOW.."37,40"..WHITE.."）并且做完《寻找科尔宝石》任务。为了完成这个任务，你必须杀掉"..YELLOW.."[黑暗深渊]"..WHITE.."前的黑暗深渊智者或者黑暗深渊海潮祭司。他们会掉落被污染的科尔宝石。桑迪斯·织风会为你清洁它的。", };
Inst1Quest6_Prequest = "有，勇气之书 > 正义试炼"
Inst1Quest6_Folgequest = "有，正义试炼"
Inst1Quest6PreQuest = "true"
--
Inst1Quest6name1 = "维里甘之拳 "

--Quest 7 Alliance
Inst1Quest7 = "7. 未寄出的信"
Inst1Quest7_Level = "22"
Inst1Quest7_Attain = "16"
Inst1Quest7_Aim = "搜查艾德温·范克里夫的尸体时，你从一堆杂乱的物品中找到了一封还未来得及发出的信。地址一栏上写着巴隆斯·阿历克斯顿，暴风城石工协会，城市大厅，教堂广场。"
Inst1Quest7_Location = "未寄出的信（范克里夫掉落 "..YELLOW.."[6]"..WHITE.."）"
Inst1Quest7_Note = "巴隆斯·阿历克斯顿在暴风城光明大教堂旁边"..YELLOW.."49,30"..WHITE.."。"
Inst1Quest7_Prequest = "无"
Inst1Quest7_Folgequest = "有，巴基尔·斯瑞德"
-- No Rewards for this quest



--------------- INST2 - Wailing Caverns (WC) ---------------

Inst2Story = "最近一个名叫纳拉雷克斯的暗夜精灵德鲁伊在贫瘠之地中的地下发现了一个错综复杂的洞穴网。这个被称作“哀嚎洞穴”的地方有很多的蒸汽缝隙，所以当蒸气喷射的时候发出的声音就犹如哀嚎一般，其因此而得名。纳拉雷克斯可以利用洞穴中的温泉来恢复贫瘠之地的生态，让这里重新获得生机——但是这样做需要吸收传说中的翡翠梦境的能量。一旦和翡翠梦境相连接，德鲁伊的视线中就变成了一场噩梦。不久之后，哀嚎洞穴开始变化——洞中的水开始腐化——曾经温顺的生物开始变成狂暴，致命的捕食者。据说纳拉雷克斯自己还居住在这个迷宫的最深处，他被翡翠梦境的边缘所困扰着。即使他以前的随从也被他们的主人所经历的噩梦所腐化——他们都变成了邪恶的尖牙德鲁伊。"
Inst2Caption = "哀嚎洞穴"
Inst2QAA = "5 个任务"
Inst2QAH = "7 个任务"

--Quest 1 Alliance
Inst2Quest1 = "1. 变异皮革"
Inst2Quest1_Level = "17"
Inst2Quest1_Attain = "13"
Inst2Quest1_Aim = "哀嚎洞穴的纳尔帕克想要20张变异皮革。"
Inst2Quest1_Location = "纳尔帕克（贫瘠之地 - 哀嚎洞穴; "..YELLOW.."47,36 "..WHITE.."）"
Inst2Quest1_Note = "每个副本前面或里面的变异的怪都可能掉落变异皮革。纳尔帕克在入口上方的山顶洞穴里。"
Inst2Quest1_Prequest = "无"
Inst2Quest1_Folgequest = "无"
--
Inst2Quest1name1 = "光滑的蛇鳞护腿"
Inst2Quest1name2 = "变异皮包"

--Quest 2 Alliance
Inst2Quest2 = "2. 港口的麻烦"
Inst2Quest2_Level = "18"
Inst2Quest2_Attain = "14"
Inst2Quest2_Aim = "棘齿城的起重机操作员比戈弗兹让你从疯狂的马格利什那儿取回一瓶99年波尔多陈酿，疯狂的马格利什就藏在哀嚎洞穴里。"
Inst2Quest2_Location = "起重机操作员比戈弗兹（贫瘠之地 - 棘齿城; "..YELLOW.."63,37 "..WHITE.."）"
Inst2Quest2_Note = "你进入副本杀死疯狂的马格利什，拿到酒瓶。当你进入洞穴后向右转，他就在一个凹进去的洞里"..YELLOW.."副本入口地图[2]"..WHITE.."。"
Inst2Quest2_Prequest = "无"
Inst2Quest2_Folgequest = "无"
-- No Rewards for this quest

--Quest 3 Alliance
Inst2Quest3 = "3. 智慧饮料"
Inst2Quest3_Level = "18"
Inst2Quest3_Attain = "14"
Inst2Quest3_Aim = "收集6份哀嚎香精，把它们交给棘齿城的麦伯克·米希瑞克斯。"
Inst2Quest3_Location = "麦伯克·米希瑞克斯（贫瘠之地 - 棘齿城; "..YELLOW.."62,37 "..WHITE.."）"
Inst2Quest3_Note = "此任务的前导任务也是在麦伯克·米希瑞克斯这儿接到的。\n软浆怪掉落香精。"
Inst2Quest3_Prequest = "有，迅猛龙角"
Inst2Quest3_Folgequest = "无"
Inst2Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst2Quest4 = "4. 清除变异者"
Inst2Quest4_Level = "21"
Inst2Quest4_Attain = "15"
Inst2Quest4_Aim = "哀嚎洞穴的厄布鲁要求你杀掉7只变异破坏者、7只剧毒飞蛇、7只变异蹒跚者和7只变异尖牙风蛇。"
Inst2Quest4_Location = "厄布鲁（贫瘠之地 - 哀嚎洞穴; "..YELLOW.."47,36 "..WHITE.."）"
Inst2Quest4_Note = "厄布鲁在入口上方山顶的洞穴里。"
Inst2Quest4_Prequest = "无"
Inst2Quest4_Folgequest = "无"
--
Inst2Quest4name1 = "图样：蛇鳞腰带"
Inst2Quest4name2 = "烧灼之棒"
Inst2Quest4name3 = "达格米尔护手   "

--Quest 5 Alliance
Inst2Quest5 = "5. 发光的碎片"
Inst2Quest5_Level = "25"
Inst2Quest5_Attain = "21"
Inst2Quest5_Aim = "去棘齿城寻找更多有关这块噩梦碎片的信息。"
Inst2Quest5_Location = "发光的碎片（掉落）（哀嚎洞穴"..YELLOW.."[9]"..WHITE.."）"
Inst2Quest5_Note = "当你杀死了最后的 Boss 吞噬者穆坦努斯后，你就会得到发光的碎片。而只有当你杀死了4个德鲁伊，并完成护送德鲁伊任务后，吞噬者穆坦努斯才会出现。\n当你拿到碎片后，你必须把它带回棘齿城，然后返回哀嚎洞穴外面山顶找到菲拉·古风。注意：去棘齿城找个地精说话，（就是做《什么什么平衡器》那个任务的地精），他头上是没有问号的，要自己去点他。"
Inst2Quest5_Prequest = "无"
Inst2Quest5_Folgequest = "有，在噩梦中"
--
Inst2Quest5name1 = "塔巴尔护肩   "
Inst2Quest5name2 = "泥潭沼泽长靴"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst2Quest1_HORDE = Inst2Quest1
Inst2Quest1_HORDE_Level = Inst2Quest1_Level
Inst2Quest1_HORDE_Attain = Inst2Quest1_Attain
Inst2Quest1_HORDE_Aim = Inst2Quest1_Aim
Inst2Quest1_HORDE_Location = Inst2Quest1_Location
Inst2Quest1_HORDE_Note = Inst2Quest1_Note
Inst2Quest1_HORDE_Prequest = Inst2Quest1_Prequest
Inst2Quest1_HORDE_Folgequest = Inst2Quest1_Folgequest
--
Inst2Quest1name1_HORDE = Inst2Quest1name1
Inst2Quest1name2_HORDE = Inst2Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
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
Inst2Quest3_HORDE = "3. 毒蛇花"
Inst2Quest3_HORDE_Level = "18"
Inst2Quest3_HORDE_Attain = "14"
Inst2Quest3_HORDE_Aim = "为雷霆崖的药剂师扎玛收集10朵毒蛇花。"
Inst2Quest3_HORDE_Location = "药剂师扎玛（雷霆崖 -灵魂高地; "..YELLOW.."22,20 "..WHITE.."）"
Inst2Quest3_HORDE_Note = "你可以在药剂师赫布瑞姆处领取前导任务（贫瘠之地 - 十字路口; "..YELLOW.."51,30"..WHITE.."）。\n你可以在山洞里副本前或副本内采到毒蛇花。学习草药学的玩家打开寻找草药技能就可以在自己的小地图上看到毒蛇花的位置。"
Inst2Quest3_HORDE_Prequest = "有，菌类孢子 -> 药剂师扎玛"
Inst2Quest3_HORDE_Folgequest = "无"
Inst2Quest3PreQuest_HORDE = "true"
--
Inst2Quest3name1_HORDE = "药剂师手套"

--Quest 4 Horde  (same as Quest 3 Alliance)
Inst2Quest4_HORDE = "4. 智慧饮料"
Inst2Quest4_HORDE_Level = Inst2Quest3_Level
Inst2Quest4_HORDE_Attain = Inst2Quest3_Attain
Inst2Quest4_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest4_HORDE_Location = Inst2Quest3_Location
Inst2Quest4_HORDE_Note = Inst2Quest3_Note
Inst2Quest4_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest4_HORDE_Folgequest = Inst2Quest3_Folgequest
Inst2Quest4PreQuest_HORDE = Inst2Quest3PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 4 Alliance)
Inst2Quest5_HORDE = "5. 清除变异者"
Inst2Quest5_HORDE_Level = Inst2Quest4_Level
Inst2Quest5_HORDE_Attain = Inst2Quest4_Attain
Inst2Quest5_HORDE_Aim = Inst2Quest4_Aim
Inst2Quest5_HORDE_Location = Inst2Quest4_Location
Inst2Quest5_HORDE_Note = Inst2Quest4_Note
Inst2Quest5_HORDE_Prequest = Inst2Quest4_Prequest
Inst2Quest5_HORDE_Folgequest = Inst2Quest4_Folgequest
--
Inst2Quest5name1_HORDE = Inst2Quest4name1
Inst2Quest5name2_HORDE = Inst2Quest4name2
Inst2Quest5name3_HORDE = Inst2Quest4name3

--Quest 6 Horde
Inst2Quest6_HORDE = "6. 尖牙德鲁伊（连续任务）"
Inst2Quest6_HORDE_Level = "22"
Inst2Quest6_HORDE_Attain = "18"
Inst2Quest6_HORDE_Aim = "将考布莱恩宝石、安娜科德拉宝石、皮萨斯宝石和瑟芬迪斯宝石交给雷霆崖的纳拉·蛮鬃。"
Inst2Quest6_HORDE_Location = "纳拉·蛮鬃（雷霆崖; "..YELLOW.."75,31 "..WHITE.."）"
Inst2Quest6_HORDE_Note = "系列任务始于哈缪尔·符文图腾（雷霆崖 - 长者高地; "..YELLOW.."78,28"..WHITE.."）\n掉落宝石的4个德鲁伊位于"..YELLOW.."[2]"..WHITE..", "..YELLOW.."[3]"..WHITE..", "..YELLOW.."[5]"..WHITE..", "..YELLOW.."[7]"..WHITE.."。"
Inst2Quest6_HORDE_Prequest = "有，哈缪尔·符文图腾 > 纳拉·蛮鬃 > 尖牙德鲁伊"
Inst2Quest6_HORDE_Folgequest = "无"
Inst2Quest6PreQuest_HORDE = "true"
--
Inst2Quest6name1_HORDE = "新月法杖"
Inst2Quest6name2_HORDE = "翼刃"

--Quest 7 Horde  (same as Quest 5 Alliance)
Inst2Quest7_HORDE = "7. 发光的碎片"
Inst2Quest7_HORDE_Level = Inst2Quest5_Level
Inst2Quest7_HORDE_Attain = Inst2Quest5_Attain
Inst2Quest7_HORDE_Aim = Inst2Quest5_Aim
Inst2Quest7_HORDE_Location = Inst2Quest5_Location
Inst2Quest7_HORDE_Note = Inst2Quest5_Note
Inst2Quest7_HORDE_Prequest = Inst2Quest5_Prequest
Inst2Quest7_HORDE_Folgequest = Inst2Quest5_Folgequest
--
Inst2Quest7name1_HORDE = Inst2Quest5name1
Inst2Quest7name2_HORDE = Inst2Quest5name2



--------------- INST3 - Ragefire Chasm (RFC) ---------------

Inst3Story = "怒焰裂谷是一个错综复杂的火焰洞穴，它位于兽人的新都城奥格瑞玛中。最近，有传言说一批崇拜恶魔阴影教的信徒占据了怒焰裂谷。这个被称为火刃的组织对杜隆塔尔的安全。许多人认为兽人的酋长萨尔已经意识到了火刃的存在并不打算摧毁他们，因为萨尔希望能够将他引到阴影议会那里。不管怎么样，黑暗的力量从怒焰裂谷散发出来，它们可能毁了兽人所有的一切。"
Inst3Caption = "怒焰裂谷"
Inst3QAA = "无任务"
Inst3QAH = "5 个任务"

--Quest 1 Horde
Inst3Quest1_HORDE = "1. 试探敌人"
Inst3Quest1_HORDE_Level = "15"
Inst3Quest1_HORDE_Attain = "9"
Inst3Quest1_HORDE_Aim = "在奥格瑞玛找到怒焰裂谷，杀掉8个怒焰穴居人和8个怒焰萨满祭司，然后向雷霆崖的拉哈罗复命。"
Inst3Quest1_HORDE_Location = "拉哈罗（雷霆崖 - 长者高地; "..YELLOW.."70,29 "..WHITE.."）"
Inst3Quest1_HORDE_Note = "你一开始就能找到穴居人。"
Inst3Quest1_HORDE_Prequest = "无"
Inst3Quest1_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Horde
Inst3Quest2_HORDE = "2. 毁灭之力"
Inst3Quest2_HORDE_Level = "16"
Inst3Quest2_HORDE_Attain = "9"
Inst3Quest2_HORDE_Aim = "将《暗影法术研究》和《扭曲虚空的魔法》这两本书交给幽暗城的瓦里玛萨斯。"
Inst3Quest2_HORDE_Location = "瓦里玛萨斯（幽暗城 - 皇家区; "..YELLOW.."56,92 "..WHITE.."）"
Inst3Quest2_HORDE_Note = "燃刃信徒和燃刃术士掉落这两本书。"
Inst3Quest2_HORDE_Prequest = "无"
Inst3Quest2_HORDE_Folgequest = "无"
--
Inst3Quest2name1_HORDE = "苍白长裤"
Inst3Quest2name2_HORDE = "泥泞护腿"
Inst3Quest2name3_HORDE = "石像鬼护腿"

--Quest 3 Horde
Inst3Quest3_HORDE = "3. 寻找背包"
Inst3Quest3_HORDE_Level = "16"
Inst3Quest3_HORDE_Attain = "9"
Inst3Quest3_HORDE_Aim = "在怒焰裂谷搜寻玛尔·恐怖图腾的尸体以及他留下的东西。"
Inst3Quest3_HORDE_Location = "拉哈罗（雷霆崖 - 长者高地; "..YELLOW.."70,29 "..WHITE.."）"
Inst3Quest3_HORDE_Note = "你会在"..YELLOW.."[1]"..WHITE.."发现玛尔·恐怖图腾。得到背包后你需要把它交回给雷霆崖的拉哈罗。"
Inst3Quest3_HORDE_Prequest = "无"
Inst3Quest3_HORDE_Folgequest = "有，归还背包"
--
Inst3Quest3name1_HORDE = "羽珠护腕"
Inst3Quest3name2_HORDE = "草原狮护腕"

--Quest 4 Horde
Inst3Quest4_HORDE = "4. 隐藏的敌人"
Inst3Quest4_HORDE_Level = "16"
Inst3Quest4_HORDE_Attain = "9"
Inst3Quest4_HORDE_Aim = "杀死巴扎兰和祈求者耶戈什，然后返回奥格瑞玛见萨尔。"
Inst3Quest4_HORDE_Location = "萨尔（奥格瑞玛 - 智慧谷; "..YELLOW.."31,37 "..WHITE.."）"
Inst3Quest4_HORDE_Note = "你会在"..YELLOW.."[4]"..WHITE.."发现巴扎兰，在"..YELLOW.."[3]"..WHITE.."发现祈求者耶戈什。"
Inst3Quest4_HORDE_Prequest = "有，隐藏的敌人"
Inst3Quest4_HORDE_Folgequest = "有，隐藏的敌人"
Inst3Quest4PreQuest_HORDE = "true"
--
Inst3Quest4name1_HORDE = "奥格瑞玛之剑"
Inst3Quest4name2_HORDE = "奥格瑞玛之锤"
Inst3Quest4name3_HORDE = "奥格瑞玛之斧"
Inst3Quest4name4_HORDE = "奥格瑞玛法杖"

--Quest 5 Horde
Inst3Quest5_HORDE = "5. 饥饿者塔拉加曼"
Inst3Quest5_HORDE_Level = "16"
Inst3Quest5_HORDE_Attain = "9"
Inst3Quest5_HORDE_Aim = "进入怒焰裂谷，杀死饥饿者塔拉加曼，然后把他的心脏交给奥格瑞玛的尼尔鲁·火刃。"
Inst3Quest5_HORDE_Location = "尼尔鲁·火刃（奥格瑞玛 - 暗影裂口; "..YELLOW.."49,50 "..WHITE.."）"
Inst3Quest5_HORDE_Note = "你会在"..YELLOW.."[2]"..WHITE.."找到塔拉加曼。"
Inst3Quest5_HORDE_Prequest = "无"
Inst3Quest5_HORDE_Folgequest = "无"
-- No Rewards for this quest



--------------- INST4 - Uldaman (Ulda) ---------------

Inst4Story = "奥达曼是古代泰坦创世之时所留下的深埋于地下的城市。矮人探险队最近发觉到了这块被遗忘的城市，将泰坦一款失败的创造物：食腭怪唤醒了。传说说泰坦是从石头中创造了食腭怪。当实施证明这次试验很失败的时候，泰坦把食腭怪锁了起来并进行了第二次的尝试——最终创造了矮人这个种族。矮人创造的秘密被记录在精密的白金圆盘中——那是位于古代城市最底部的大型泰坦遗迹。最近，黑铁矮人在奥达曼进行了一系列的侵入活动，希望为他们的火焰之主拉格纳罗斯获得圆盘。然而，在这个地下城市中，有一些巨大的石头守卫会攻击任何入侵者。而白金圆盘是由一名巨大的石头守卫阿扎达斯。有传言说矮人的一些石头皮肤的祖先，土灵还居住在城市的隐蔽之处。"
Inst4Caption = "奥达曼"
Inst4QAA = "16 个任务"
Inst4QAH = "10 个任务"

--Quest 1 Alliance
Inst4Quest1 = "1. 一线希望"
Inst4Quest1_Level = "35"
Inst4Quest1_Attain = "35"
Inst4Quest1_Aim = "在奥达曼找到铁趾格雷兹。"
Inst4Quest1_Location = "勘察员雷杜尔（荒芜之地; "..YELLOW.."53,43 "..WHITE.."）"
Inst4Quest1_Note = "前导任务始于弄皱的地图（荒芜之地; "..YELLOW.."53,33"..WHITE.."）。\n你可以在进入"..YELLOW.."副本入口地图[1]"..WHITE.."找到铁趾格雷兹。"
Inst4Quest1_Prequest = "有，一线希望"
Inst4Quest1_Folgequest = "有，铁趾的护符"
Inst4Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. 铁趾的护符"
Inst4Quest2_Level = "40"
Inst4Quest2_Attain = "36"
Inst4Quest2_Aim = "找到铁趾的护符，把它交给奥达曼的铁趾。"
Inst4Quest2_Location = "铁趾格雷兹（奥达曼; "..YELLOW.."副本入口地图[1]"..WHITE.."）。"
Inst4Quest2_Note = "马格雷甘·深影掉落铁趾的护符"..YELLOW.."副本入口地图[2]"..WHITE.."。"
Inst4Quest2_Prequest = "有，一线希望"
Inst4Quest2_Folgequest = "有，铁趾的遗愿"
Inst4Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. 意志石板"
Inst4Quest3_Level = "45"
Inst4Quest3_Attain = "38"
Inst4Quest3_Aim = "找到意志石板，把它们交给铁炉堡的顾问贝尔格拉姆。"
Inst4Quest3_Location = "顾问贝尔格拉姆（铁炉堡 - 探险者大厅; "..YELLOW.."77,10 "..WHITE.."）"
Inst4Quest3_Note = "石板位置在"..YELLOW.."[8]"..WHITE.."。"
Inst4Quest3_Prequest = "有，铁趾的遗愿 -> 邪恶的使者"
Inst4Quest3_Folgequest = "无"
Inst4Quest3FQuest = "true"
--
Inst4Quest3name1 = "勇气勋章 "

--Quest 4 Alliance
Inst4Quest4 = "4. 能量石"
Inst4Quest4_Level = "36"
Inst4Quest4_Attain = "31"
Inst4Quest4_Aim = "给荒芜之地的里格弗兹带去8块德提亚姆能量石和8块安纳洛姆能量石。"
Inst4Quest4_Location = "里格弗兹（荒芜之地; "..YELLOW.."42,52 "..WHITE.."）"
Inst4Quest4_Note = "能量石可以在副本内外的暗炉敌人身上找到。"
Inst4Quest4_Prequest = "无"
Inst4Quest4_Folgequest = "无"
--
Inst4Quest4name1 = "能量石环"
Inst4Quest4name2 = "杜拉辛护腕"
Inst4Quest4name3 = "持久长靴"

--Quest 5 Alliance
Inst4Quest5 = "5. 阿戈莫德的命运"
Inst4Quest5_Level = "38"
Inst4Quest5_Attain = "33"
Inst4Quest5_Aim = "收集4个雕纹石罐，把它们交给洛克莫丹的勘察员基恩萨·铁环。"
Inst4Quest5_Location = "勘察员基恩萨·铁环（洛克莫丹 - 铁环挖掘场; "..YELLOW.."65,65 "..WHITE.."）"
Inst4Quest5_Note = "前导任务始于勘察员塔伯斯·雷矛（铁炉堡 - 探险者大厅; "..YELLOW.."74,12"..WHITE.."）。\n雕纹石罐散布于副本前的山洞里。"
Inst4Quest5_Prequest = "有，铁环挖掘场需要你！ -> 莫达洛克"
Inst4Quest5_Folgequest = "无"
Inst4Quest5PreQuest = "true"
--
Inst4Quest5name1 = "勘察者手套"

--Quest 6 Alliance
Inst4Quest6 = "6. 化解灾难"
Inst4Quest6_Level = "40"
Inst4Quest6_Attain = "32"
Inst4Quest6_Aim = "把雷乌纳石板带给迷失者塞尔杜林。"
Inst4Quest6_Location = "迷失者塞尔杜林（荒芜之地; "..YELLOW.."51,76 "..WHITE.."）"
Inst4Quest6_Note = "石板在洞穴北部，通道的东部尽头"..YELLOW.."副本入口地图[3]"..WHITE.."。"
Inst4Quest6_Prequest = "无"
Inst4Quest6_Folgequest = "有，远赴铁炉堡"
--
Inst4Quest6name1 = "末日预言者长袍"

--Quest 7 Alliance
Inst4Quest7 = "7. 失踪的矮人"
Inst4Quest7_Level = "40"
Inst4Quest7_Attain = "35"
Inst4Quest7_Aim = "在奥达曼找到巴尔洛戈。"
Inst4Quest7_Location = "勘察员塔伯斯·雷矛（铁炉堡 - 探险者大厅; "..YELLOW.."75,12 "..WHITE.."）"
Inst4Quest7_Note = "巴尔洛戈在"..YELLOW.."[1]"..WHITE.."。"
Inst4Quest7_Prequest = "无"
Inst4Quest7_Folgequest = "有，密室"
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. 密室"
Inst4Quest8_Level = "40"
Inst4Quest8_Attain = "35"
Inst4Quest8_Aim = "阅读巴尔洛戈的日记，探索密室，然后向铁炉堡的勘察员塔伯斯·雷矛汇报。"
Inst4Quest8_Location = "巴尔洛戈（奥达曼;"..YELLOW.."[1]"..WHITE.."）"
Inst4Quest8_Note = "密室在"..YELLOW.."[4]"..WHITE.."。"
Inst4Quest8_Prequest = "有，失踪的矮人"
Inst4Quest8_Folgequest = "无"
Inst4Quest8FQuest = "true"
--
Inst4Quest8name1 = "矮人冲锋斧"
Inst4Quest8name2 = "探险者联盟徽章"

--Quest 9 Alliance
Inst4Quest9 = "9. 破碎的项链"
Inst4Quest9_Level = "41"
Inst4Quest9_Attain = "37"
Inst4Quest9_Aim = "找到破碎的项链的来源，从而了解其潜在的价值。"
Inst4Quest9_Location = "破碎的项链（随机掉落）（奥达曼）"
Inst4Quest9_Note = "把项链带给铁炉堡的塔瓦斯德·基瑟尔（铁炉堡 - 秘法区; "..YELLOW.."36,3"..WHITE.."）。"
Inst4Quest9_Prequest = "无"
Inst4Quest9_Folgequest = "有，昂贵的知识"
-- No Rewards for this quest

--Quest 10 Alliance
Inst4Quest10 = "10. 回到奥达曼"
Inst4Quest10_Level = "42"
Inst4Quest10_Attain = "37"
Inst4Quest10_Aim = "去奥达曼寻找塔瓦斯的魔法项链，被杀的圣骑士是最后一个拿着它的人。"
Inst4Quest10_Location = "塔瓦斯德·基瑟尔（铁炉堡 - 秘法区; "..YELLOW.."36,3 "..WHITE.."）"
Inst4Quest10_Note = "圣骑士在"..YELLOW.."[2]"..WHITE.."。"
Inst4Quest10_Prequest = "有，昂贵的知识"
Inst4Quest10_Folgequest = "有，寻找宝石"
-- No Rewards for this quest

--Quest 11 Alliance
Inst4Quest11 = "11. 寻找宝石"
Inst4Quest11_Level = "43"
Inst4Quest11_Attain = "38"
Inst4Quest11_Aim = "在奥达曼寻找红宝石、蓝宝石和黄宝石的下落。找到它们之后，通过塔瓦斯德给你的占卜之瓶和他进行联系。"
Inst4Quest11_Location = "圣骑士的遗体（奥达曼; "..YELLOW.."[2]"..WHITE.."）"
Inst4Quest11_Note = "宝石在"..YELLOW.."[1]"..WHITE.."，"..YELLOW.."[8]"..WHITE.."和"..YELLOW.."[9]"..WHITE.."。"
Inst4Quest11_Prequest = "有，回到奥达曼"
Inst4Quest11_Folgequest = "有，修复项链"
Inst4Quest11FQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst4Quest12 = "12. 修复项链"
Inst4Quest12_Level = "44"
Inst4Quest12_Attain = "38"
Inst4Quest12_Aim = "从奥达曼最强大的石人身上获得能量源，然后将其交给铁炉堡的塔瓦斯德。"
Inst4Quest12_Location = "塔瓦斯德的占卜之碗"
Inst4Quest12_Note = "破碎项链的能量源在阿扎达斯掉落"..YELLOW.."[10]"..WHITE.."。"
Inst4Quest12_Prequest = "有，寻找宝石"
Inst4Quest12_Folgequest = "无"
--
Inst4Quest12name1 = "塔瓦斯德的魔法项链"
Inst4Quest12FQuest = "true"

--Quest 13 Alliance
Inst4Quest13 = "13. 奥达曼的蘑菇"
Inst4Quest13_Level = "42"
Inst4Quest13_Attain = "38"
Inst4Quest13_Aim = "收集12颗紫色蘑菇，把它们交给塞尔萨玛的加克。"
Inst4Quest13_Location = "加克（洛克莫丹 - 塞尔萨玛; "..YELLOW.."37,49 "..WHITE.."）"
Inst4Quest13_Note = "蘑菇散布于副本各处。"
Inst4Quest13_Prequest = "有，荒芜之地的材料"
Inst4Quest13_Folgequest = "无"
Inst4Quest13PreQuest = "true"
--
Inst4Quest13name1 = "滋补药剂"

--Quest 14 Alliance
Inst4Quest14 = "14. 失而复得"
Inst4Quest14_Level = "43"
Inst4Quest14_Attain = "33"
Inst4Quest14_Aim = "到奥达曼的北部大厅去找到克罗姆·粗臂的箱子，从里面拿出他的宝贵财产，然后回到铁炉堡把东西交给他。"
Inst4Quest14_Location = "克罗姆·粗臂（铁炉堡 - 探险者大厅; "..YELLOW.."74,9 "..WHITE.."）"
Inst4Quest14_Note = "你在进入副本前就找到克罗姆·粗臂的财产。它就在洞穴的北部，第一个通道的东南角尽头"..YELLOW.."副本入口地图[4]"..WHITE.."。"
Inst4Quest14_Prequest = "无"
Inst4Quest14_Folgequest = "无"
-- No Rewards for this quest

--Quest 15 Alliance
Inst4Quest15 = "15. 白金圆盘"
Inst4Quest15_Level = "47"
Inst4Quest15_Attain = "40"
Inst4Quest15_Aim = "和石头守护者交谈，从他那里了解更多古代的知识。一旦你了解到了所有的内容之后就激活诺甘农圆盘。 -> 把迷你版的诺甘农圆盘带到铁炉堡的探险者协会去。"
Inst4Quest15_Location = "诺甘农圆盘（奥达曼; "..YELLOW.."[11]"..WHITE.."）"
Inst4Quest15_Note = "接到任务后，和石头守护者交谈左边的盘子。然后再次使用白金圆盘，取得缩小版的圆盘， 并把缩小版的白金圆盘带给铁炉堡的资深探险家麦格拉斯（铁炉堡 - 探险者大厅; "..YELLOW.."69,18"..WHITE.."）。"
Inst4Quest15_Prequest = "无"
Inst4Quest15_Folgequest = "无"
--
Inst4Quest15name1 = "软皮袋"
Inst4Quest15name2 = "超强治疗药水"
Inst4Quest15name3 = "强效法力药水 "

--Quest 16 Alliance
Inst4Quest16 = "16. 奥达曼的能量源（法师任务）"
Inst4Quest16_Level = "40"
Inst4Quest16_Attain = "35"
Inst4Quest16_Aim = "找到一个黑曜石能量源，将其交给尘泥沼泽的塔贝萨。"
Inst4Quest16_Location = "塔贝萨（尘泥沼泽; "..YELLOW.."46,57 "..WHITE.."）"
Inst4Quest16_Note = "这个任务只能法师做！\n黑曜石哨兵"..YELLOW.."[5]"..WHITE.."掉落黑曜石能量源。"
Inst4Quest16_Prequest = "有，驱除魔鬼"
Inst4Quest16_Folgequest = "有，法力怒灵"
Inst4Quest16PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 4 Alliance)
Inst4Quest1_HORDE = "1. 能量石"
Inst4Quest1_HORDE_Level = Inst4Quest4_Level
Inst4Quest1_HORDE_Attain = Inst4Quest4_Attain
Inst4Quest1_HORDE_Aim = Inst4Quest4_Aim
Inst4Quest1_HORDE_Location = Inst4Quest4_Location
Inst4Quest1_HORDE_Note = Inst4Quest4_Note
Inst4Quest1_HORDE_Prequest = Inst4Quest4_Prequest
Inst4Quest1_HORDE_Folgequest = Inst4Quest4_Folgequest
--
Inst4Quest1name1_HORDE = Inst4Quest4name1
Inst4Quest1name2_HORDE = Inst4Quest4name2
Inst4Quest1name3_HORDE = Inst4Quest4name3

--Quest 2 Horde  (same as Quest 6 Alliance - different followup)
Inst4Quest2_HORDE = "2. 化解灾难"
Inst4Quest2_HORDE_Level = Inst4Quest6_Level
Inst4Quest2_HORDE_Attain = Inst4Quest6_Attain
Inst4Quest2_HORDE_Aim = Inst4Quest6_Aim
Inst4Quest2_HORDE_Location = Inst4Quest6_Location
Inst4Quest2_HORDE_Note = Inst4Quest6_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest6_Prequest
Inst4Quest2_HORDE_Folgequest = "有，远赴幽暗城"
--
Inst4Quest2name1_HORDE = Inst4Quest6name1

--Quest 3 Horde
Inst4Quest3_HORDE = "3. 搜寻项链"
Inst4Quest3_HORDE_Level = "41"
Inst4Quest3_HORDE_Attain = "37"
Inst4Quest3_HORDE_Aim = "在奥达曼挖掘场中寻找一条珍贵的项链，然后将其交给奥格瑞玛的德兰·杜佛斯。项链有可能已经损坏。 "
Inst4Quest3_HORDE_Location = "德兰·杜佛斯（奥格瑞玛 - 暗巷区; "..YELLOW.."59,36 "..WHITE.."）"
Inst4Quest3_HORDE_Note = "项链在副本里是随机掉落的。"
Inst4Quest3_HORDE_Prequest = "无"
Inst4Quest3_HORDE_Folgequest = "有，搜寻项链，再来一次"
-- No Rewards for this quest

--Quest 4 Horde
Inst4Quest4_HORDE = "4. 搜寻项链，再来一次"
Inst4Quest4_HORDE_Level = "41"
Inst4Quest4_HORDE_Attain = "37"
Inst4Quest4_HORDE_Aim = "在奥达曼里找寻宝石的线索。"
Inst4Quest4_HORDE_Location = "德兰·杜佛斯（奥格瑞玛 - 暗巷区; "..YELLOW.."59,36 "..WHITE.."）"
Inst4Quest4_HORDE_Note = "圣骑士在"..YELLOW.."[2]"..WHITE.."。"
Inst4Quest4_HORDE_Prequest = "有，搜寻项链"
Inst4Quest4_HORDE_Folgequest = "有，翻译日记"
Inst4Quest4FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. 翻译日记"
Inst4Quest5_HORDE_Level = "42"
Inst4Quest5_HORDE_Attain = "39"
Inst4Quest5_HORDE_Aim = "在荒芜之地的卡加斯哨所里寻找一个可以帮你翻译圣骑士日记的人。"
Inst4Quest5_HORDE_Location = "圣骑士的遗体（奥达曼; "..YELLOW.."[2]"..WHITE.."）"
Inst4Quest5_HORDE_Note = "翻译圣骑士日记的人加卡尔（荒芜之地 - 卡加斯; "..YELLOW.."2,46"..WHITE.."） -> 将项链借给加卡尔，他帮你翻译日记。"
Inst4Quest5_HORDE_Prequest = "有，搜寻项链，再来一次"
Inst4Quest5_HORDE_Folgequest = "有，寻找宝贝"
Inst4Quest5FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 6 Horde
Inst4Quest6_HORDE = "6. 寻找宝贝"
Inst4Quest6_HORDE_Level = "44"
Inst4Quest6_HORDE_Attain = "37"
Inst4Quest6_HORDE_Aim = "从奥达曼找回项链上的所有三块宝石和能量源，然后把它们交给卡加斯的加卡尔。\n红宝石被藏在暗影矮人层层设防的地区。\n黄宝石藏在石腭怪活动地区的一个瓮中。\n蓝宝石在格瑞姆洛克手中，他是石腭怪的领袖。\n能量源可能在奥达曼的某个最强生物的手中。"
Inst4Quest6_HORDE_Location = "加卡尔（荒芜之地 - 卡加斯; "..YELLOW.."2,46 "..WHITE.."）"
Inst4Quest6_HORDE_Note = "红宝石在暗炉矮人手里，黄宝石在石腭怪手里，而蓝宝石则在一个名叫格瑞姆洛克的石腭怪那里"..YELLOW.."[1]"..WHITE.."，"..YELLOW.."[8]"..WHITE.."和"..YELLOW.."[9]"..WHITE.."。  破碎项链的能量源从阿扎达斯身上掉落"..YELLOW.."[10]"..WHITE.."。"
Inst4Quest6_HORDE_Prequest = "有，翻译日记"
Inst4Quest6_HORDE_Folgequest = "有，交付宝石"
Inst4Quest6FQuest_HORDE = "true"
--
Inst4Quest6name1_HORDE = "加卡尔的强化项链"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. 奥达曼的蘑菇"
Inst4Quest7_HORDE_Level = "42"
Inst4Quest7_HORDE_Attain = "36"
Inst4Quest7_HORDE_Aim = "收集12颗紫色蘑菇，把它们交给卡加斯的加卡尔。"
Inst4Quest7_HORDE_Location = "加卡尔（荒芜之地 - 卡加斯; "..YELLOW.."2,69 "..WHITE.."）"
Inst4Quest7_HORDE_Note = "前导任务也是在加卡尔这儿领取。\n蘑菇散布于副本内各处。"
Inst4Quest7_HORDE_Prequest = "有，荒芜之地的材料"
Inst4Quest7_HORDE_Folgequest = "有，荒芜之地的材料 II"
Inst4Quest7PreQuest_HORDE = "true"
--
Inst4Quest7name1_HORDE = "滋补药剂"

--Quest 8 Horde
Inst4Quest8_HORDE = "8. 寻找宝藏"
Inst4Quest8_HORDE_Level = "43"
Inst4Quest8_HORDE_Attain = "33"
Inst4Quest8_HORDE_Aim = "从奥达曼南部大厅的箱子中找到加勒特的家族宝藏，然后把它交给幽暗城的帕特里克·加瑞特。"
Inst4Quest8_HORDE_Location = "帕特里克·加瑞特（幽暗城; "..YELLOW.."72,48 "..WHITE.."）"
Inst4Quest8_HORDE_Note = "你在进入副本之前就会找到加勒特的家族宝藏。它就在南部通道的尽头"..YELLOW.."副本入口ditu[5]"..WHITE.."。"
Inst4Quest8_HORDE_Prequest = "无"
Inst4Quest8_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 9 Horde
Inst4Quest9_HORDE = "9. 白金圆盘"
Inst4Quest9_HORDE_Level = "47"
Inst4Quest9_HORDE_Attain = "40"
Inst4Quest9_HORDE_Aim = "和石头守护者交谈，从他那里了解更多古代的知识。一旦你了解到了所有的内容之后就激活诺甘农圆盘。 -> 把迷你版的诺甘农圆盘带到雷霆崖的贤者（圣者图希克）那里。"
Inst4Quest9_HORDE_Location = "诺甘农圆盘（奥达曼; "..YELLOW.."[11]"..WHITE.."）"
Inst4Quest9_HORDE_Note = "你领取到任务后，和石头守护着交谈盘子的左边。然后再次使用白金圆盘得到迷你版的圆盘，带着它去雷霆崖找圣者图希克（"..YELLOW.."34,46"..WHITE.."）。"
Inst4Quest9_HORDE_Prequest = "无"
Inst4Quest9_HORDE_Folgequest = "无"
--
Inst4Quest9name1_HORDE = "软皮袋"
Inst4Quest9name2_HORDE = "超强治疗药水"
Inst4Quest9name3_HORDE = "强效法力药水"

--Quest 10 Horde  (same as Quest 4 Alliance)
Inst4Quest10_HORDE = "10. 奥达曼的能量源（法师任务）"
Inst4Quest10_HORDE_Level = Inst4Quest16_Level
Inst4Quest10_HORDE_Attain = Inst4Quest16_Attain
Inst4Quest10_HORDE_Aim = Inst4Quest16_Aim
Inst4Quest10_HORDE_Location = Inst4Quest16_Location
Inst4Quest10_HORDE_Note = Inst4Quest16_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest16_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest16_Folgequest
Inst4Quest10PreQuest_HORDE = Inst4Quest16PreQuest
-- No Rewards for this quest



--------------- INST5 - Blackrock Depths (BRD) ---------------

Inst5Story = "黑石深渊曾经是黑铁矮人的伟大都城，这个火山中的迷宫现在成为拉格纳罗斯火焰领主的王座所在地。拉格纳罗斯找到了使用石头和设计图来创造一支无敌石头人均对来帮助它征服黑石深渊。即使是需要打败奈法利安和他的龙子龙孙，拉格纳罗斯会不惜一切代价来达到最后的胜利。"
Inst5Caption = "黑石深渊"
Inst5QAA = "18 个任务"
Inst5QAH = "18 个任务"

--Quest 1 Alliance
Inst5Quest1 = "1. 黑铁的遗产"
Inst5Quest1_Level = "52"
Inst5Quest1_Attain = "48"
Inst5Quest1_Aim = "杀掉弗诺斯·达克维尔并拿回战锤铁胆。把铁胆之锤拿到索瑞森神殿去，将其放在弗兰克罗恩·铸铁的雕像上。"
Inst5Quest1_Location = "弗兰克罗恩·铸铁（黑石山; "..YELLOW.."副本入口地图[3]"..WHITE.."）"
Inst5Quest1_Note = "弗兰克罗恩在黑石的中心，在他的墓上方。你必须死亡后才能见到他！和他交谈2次，激活任务。\n弗诺斯·达克维尔在"..YELLOW.."[9]"..WHITE.."区。你会在"..YELLOW.."[7]"..WHITE.."区找到神殿。"
Inst5Quest1_Prequest = "无"
Inst5Quest1_Folgequest = "无"
--
Inst5Quest1name1 = "暗炉钥匙"

--Quest 2 Alliance
Inst5Quest2 = "2. 雷布里·斯库比格特"
Inst5Quest2_Level = "53"
Inst5Quest2_Attain = "48"
Inst5Quest2_Aim = "把雷布里的头颅交给燃烧平原的尤卡·斯库比格特。"
Inst5Quest2_Location = "尤卡·斯库比格特（燃烧平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst5Quest2_Note = "可以直接接到任务，也可以接到前导任务从尤卡·斯库比格特（塔纳利斯 - 热砂港; "..YELLOW.."67,23"..WHITE.."）那儿得到。\n雷布里位于"..YELLOW.."[15]"..WHITE.."。"
Inst5Quest2_Prequest = "有，尤卡·斯库比格特"
Inst5Quest2_Folgequest = "无"
Inst5Quest2PreQuest = "true"
--
Inst5Quest2name1 = "怨恨之靴"
Inst5Quest2name2 = "忏悔肩铠 "
Inst5Quest2name3 = "钢条护甲"

--Quest 3 Alliance
Inst5Quest3 = "3. 爱情药水"
Inst5Quest3_Level = "54"
Inst5Quest3_Attain = "50"
Inst5Quest3_Aim = "将4份格罗姆之血、10块巨型银矿和装满水的娜玛拉之瓶交给黑石深渊的娜玛拉小姐。"
Inst5Quest3_Location = "娜玛拉小姐（黑石深渊; "..YELLOW.."[15]"..WHITE.."）"
Inst5Quest3_Note = "巨型银矿可从艾萨拉的巨人们那里得到。格罗姆之血可以请学习了草药学的玩家帮助寻找。 你可以在（安戈洛环形山 - 葛拉卡温泉; "..YELLOW.."31,50"..WHITE.."）为瓶子装满水。\n完成任务后，你可以使用后门而不必杀死法拉克斯。"
Inst5Quest3_Prequest = "无"
Inst5Quest3_Folgequest = "无"
--
Inst5Quest3name1 = "镣铐护腕 "
Inst5Quest3name2 = "娜玛拉的腰带"

--Quest 4 Alliance
Inst5Quest4 = "4. 霍尔雷·黑须"
Inst5Quest4_Level = "55"
Inst5Quest4_Attain = "50"
Inst5Quest4_Aim = "把遗失的雷酒秘方带给卡拉诺斯的拉格纳·雷酒。"
Inst5Quest4_Location = "拉格纳·雷酒（丹莫罗 - 卡拉诺斯; "..YELLOW.."46,52"..WHITE.."）"
Inst5Quest4_Note = "前导任务从 恩诺哈尔·雷酒（诅咒之地 - 守望堡; "..YELLOW.."61,18"..WHITE.."）处获得。\n如果你在"..YELLOW.."[15]"..WHITE.."区摧毁装有雷霆啤酒的桶，守卫就会出现。秘方就在这其中一个守卫身上。"
Inst5Quest4_Prequest = "有，拉格纳·雷酒"
Inst5Quest4_Folgequest = "无"
Inst5Quest4PreQuest = "true"
--
Inst5Quest4name1 = "矮人黑啤酒"
Inst5Quest4name2 = "迅捷木槌"
Inst5Quest4name3 = "叉刃巨斧"

--Quest 5 Alliance 
Inst5Quest5 = "5. 征服者派隆"
Inst5Quest5_Level = "52"
Inst5Quest5_Attain = "48"
Inst5Quest5_Aim = "杀掉征服者派隆，然后向加琳达复命。"
Inst5Quest5_Location = "加琳达（燃烧平原 - 摩根的岗哨; "..YELLOW.."85,69"..WHITE.."）"
Inst5Quest5_Note = "征服者派隆是副本门口外面的一个火元素精英。在黑石深渊地图的"..YELLOW.."[24]"..WHITE.."，黑石深渊副本入口地图的"..YELLOW.."[1]"..WHITE.."。"
Inst5Quest5_Prequest = "无"
Inst5Quest5_Folgequest = "有，伊森迪奥斯"
-- No Rewards for this quest

--Quest 6 Alliance
Inst5Quest6 = "6. 伊森迪奥斯！"
Inst5Quest6_Level = "56"
Inst5Quest6_Attain = "48"
Inst5Quest6_Aim = "在黑石深渊里找到伊森迪奥斯，然后把他干掉！"
Inst5Quest6_Location = "加琳达（燃烧平原 - 摩根的岗哨; "..YELLOW.."85,69"..WHITE.."）"
Inst5Quest6_Note = "伊森迪奥斯在"..YELLOW.."[10]"..WHITE.."。"
Inst5Quest6_Prequest = "有，征服者派隆"
Inst5Quest6_Folgequest = "无"
Inst5Quest6FQuest = "true"
--
Inst5Quest6name1 = "阳焰斗篷"
Inst5Quest6name2 = "夜暮手套"
Inst5Quest6name3 = "地穴恶魔护腕"
Inst5Quest6name4 = "坚定手套"

--Quest 7 Alliance
Inst5Quest7 = "7. 山脉之心"
Inst5Quest7_Level = "55"
Inst5Quest7_Attain = "50"
Inst5Quest7_Aim = "把山脉之心交给燃烧平原的麦克斯沃特·尤博格林。"
Inst5Quest7_Location = "麦克斯沃特·尤博格林（燃烧平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）"
Inst5Quest7_Note = "你可以从"..YELLOW.."[8]"..WHITE.."的宝箱里找到山脉之心。你必须打开黑色宝库所有的小宝箱出来 Boss 之后才能拿到钥匙。"
Inst5Quest7_Prequest = "无"
Inst5Quest7_Folgequest = "无"
-- No Rewards for this quest

--Quest 8 Alliance
Inst5Quest8 = "8. 好东西"
Inst5Quest8_Level = "56"
Inst5Quest8_Attain = "50"
Inst5Quest8_Aim = "到黑石深渊去找到20个黑铁挎包。当你完成任务之后，回到奥拉留斯那里复命。你认为黑石深渊里的黑铁矮人应该会有这些黑铁挎包。"
Inst5Quest8_Location = "奥拉留斯（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,68"..WHITE.."）"
Inst5Quest8_Note = "所有矮人都可能掉落挎包。"
Inst5Quest8_Prequest = "无"
Inst5Quest8_Folgequest = "无"
--
Inst5Quest8name1 = "肮脏的背包"

--Quest 9 Alliance
Inst5Quest9 = "9. 温德索尔元帅（奥妮克希亚系列任务）"
Inst5Quest9_Level = "54"
Inst5Quest9_Attain = "48"
Inst5Quest9_Aim = "到西北部的黑石山脉去，在黑石深渊中找到温德索尔元帅的下落。\n狼狈不堪的约翰曾告诉你说温德索尔被关进了一个监狱。"
Inst5Quest9_Location = "麦克斯韦尔元帅（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,68"..WHITE.."）"
Inst5Quest9_Note = "此系列任务始于赫林迪斯·河角（燃烧平原 - 摩根的岗哨"..YELLOW.."85,68"..WHITE.."）。\n温德索尔元帅在"..YELLOW.."[4]"..WHITE.."。完成这个任务后，你要回到麦克斯韦尔元帅那里."
Inst5Quest9_Prequest = "有，黑龙的威胁 -> 真正的主人"
Inst5Quest9_Folgequest = "有，被遗弃的希望 -> 弄皱的便笺"
Inst5Quest9PreQuest = "true"
--
Inst5Quest9name1 = "监督官头盔"
Inst5Quest9name2 = "盾甲铁靴"
Inst5Quest9name3 = "风剪护腿"

--Quest 10 Alliance
Inst5Quest10 = "10. 弄皱的便笺（奥妮克希亚系列任务）"
Inst5Quest10_Level = "58"
Inst5Quest10_Attain = "50"
Inst5Quest10_Aim = "温德索尔元帅也许会对你手中的东西感兴趣。毕竟，希望还没有被完全扼杀。"
Inst5Quest10_Location = "弄皱的便笺（掉落）（黑石深渊）"
Inst5Quest10_Note = "这个任务是弄皱的便笺触发的。温德索尔元帅在"..YELLOW.."[4]"..WHITE.."。副本里和外的所有黑铁矮人都有很大几率掉落便笺。"
Inst5Quest10_Prequest = "有，温德索尔元帅"
Inst5Quest10_Folgequest = "有，一丝希望"
Inst5Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst5Quest11 = "11. 一丝希望（奥妮克希亚系列任务）"
Inst5Quest11_Level = "58"
Inst5Quest11_Attain = "52"
Inst5Quest11_Aim = "找回温德索尔元帅遗失的情报。\n温德索尔元帅确信那些情报在安格弗将军和傀儡统帅阿格曼奇的手里。"
Inst5Quest11_Location = "温德索尔元帅（黑石深渊; "..YELLOW.."[4]"..WHITE.."）"
Inst5Quest11_Note = "温德索尔元帅在"..YELLOW.."[4]"..WHITE.."。\n傀儡统帅阿格曼奇在"..YELLOW.."[14]"..WHITE.."，安格弗将军在"..YELLOW.."[13]"..WHITE.."。"
Inst5Quest11_Prequest = "有，弄皱的便笺"
Inst5Quest11_Folgequest = "有，冲破牢笼！"
Inst5Quest11FQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst5Quest12 = "12. 冲破牢笼！（奥妮克希亚系列任务）"
Inst5Quest12_Level = "58"
Inst5Quest12_Attain = "52"
Inst5Quest12_Aim = "帮助温德索尔元帅拿回他的装备并救出他的朋友。当你成功之后就回去向麦克斯韦尔元帅复命。"
Inst5Quest12_Location = "温德索尔元帅（黑石深渊; "..YELLOW.."[4]"..WHITE.."）"
Inst5Quest12_Note = "温德索尔元帅在"..YELLOW.."[4]"..WHITE.."。\n如果你清掉法律之环一圈的怪（"..YELLOW.."[6]"..WHITE.."）和通向副本门口的怪的话会轻松很多。护送完成后去找麦克斯韦尔元帅（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,68"..WHITE.."）。"
Inst5Quest12_Prequest = "有，一丝希望"
Inst5Quest12_Folgequest = "有，集合在暴风城"
Inst5Quest12FQuest = "true"
--
Inst5Quest12name1 = "元素屏障"
Inst5Quest12name2 = "清算之刃"
Inst5Quest12name3 = "作战之刃"

--Quest 13 Alliance
Inst5Quest13 = "13. 烈焰精华"
Inst5Quest13_Level = "58"
Inst5Quest13_Attain = "52"
Inst5Quest13_Aim = "到黑石深渊去杀掉贝尔加。\n你只知道这个巨型怪物住在黑石深渊的最深处。记住你要使用特殊的黑龙皮从贝尔加的尸体上采集烈焰精华。\n将你采集到的烈焰精华交给塞勒斯·萨雷芬图斯。"
Inst5Quest13_Location = "塞勒斯·萨雷芬图斯（燃烧平原; "..YELLOW.."94,31"..WHITE.."）"
Inst5Quest13_Note = "此系列任务始于卡拉然·温布雷（灼热峡谷; "..YELLOW.."39,38"..WHITE.."）。\n 贝尔加在"..YELLOW.."[11]"..WHITE.."。"
Inst5Quest13_Prequest = "有，无瑕之焰 -> 烈焰精华"
Inst5Quest13_Folgequest = "无"
Inst5Quest13PreQuest = "true"
--
Inst5Quest13name1 = "页岩斗篷"
Inst5Quest13name2 = "龙皮肩铠"
Inst5Quest13name3 = "火山腰带"

--Quest 14 Alliance
Inst5Quest14 = "14. 卡兰·巨锤"
Inst5Quest14_Level = "59"
Inst5Quest14_Attain = "50"
Inst5Quest14_Aim = " 去黑石深渊找到卡兰·巨锤。\n国王提到卡兰在那里负责看守囚犯——也许你应该在监狱附近寻找他。"
Inst5Quest14_Location = "国王麦格尼·铜须（铁炉堡; "..YELLOW.."39,55"..WHITE.."）"
Inst5Quest14_Note = "前导任务始于皇家历史学家阿克瑟努斯（铁炉堡; "..YELLOW.."38,55"..WHITE.."）。卡兰·巨锤位于"..YELLOW.."[2]"..WHITE.."。"
Inst5Quest14_Prequest =  "有，索瑞森废墟"
Inst5Quest14_Folgequest = "有，卡兰的故事 - > 糟糕的消息 - > 王国的命运 - > 语出惊人的公主"
Inst5Quest14PreQuest = "true"
-- No Rewards for this quest

--Quest 15 Alliance
Inst5Quest15 = "15. 王国的命运"
Inst5Quest15_Level = "59"
Inst5Quest15_Attain = "51"
Inst5Quest15_Aim = "回到黑石深渊，从达格兰·索瑞森大帝的魔掌中救出铁炉堡公主茉艾拉·铜须。"
Inst5Quest15_Location = "国王麦格尼·铜须（铁炉堡; "..YELLOW.."39,55"..WHITE.."）"
Inst5Quest15_Note = "公主茉艾拉·铜须 位于"..YELLOW.."[21]"..WHITE.."。战斗中她可能会治疗达格兰。试着尽可能打断她。但是一定不能让她死掉，否则你的任务将会失败！与她交谈过后，你还要回到麦格尼·铜须那儿去。"
Inst5Quest15_Prequest = "有，糟糕的消息"
Inst5Quest15_Folgequest = "有，语出惊人的公主"
Inst5Quest15FQuest = "true"
--
Inst5Quest15name1 = "麦格尼的意志"
Inst5Quest15name2 = "铁炉堡歌唱石"

--Quest 16 Alliance
Inst5Quest16 = "16. 熔火之心的传送门"
Inst5Quest16_Level = "60"
Inst5Quest16_Attain = "55"
Inst5Quest16_Aim = "进入黑石深渊，在通往熔火之心的传送门附近找到一块熔火碎片，然后回到黑石山脉的洛索斯·天痕那里。"
Inst5Quest16_Location = "洛索斯·天痕（黑石山; "..YELLOW.."副本入口地图[2]"..WHITE.."）"
Inst5Quest16_Note = "完成这个任务之后你就可以从洛索斯·天痕旁边的传送石进入熔火之心。\n熔火碎片在"..YELLOW.."[23]"..WHITE.."。"
Inst5Quest16_Prequest = "无"
Inst5Quest16_Folgequest = "无"
-- No Rewards for this quest

--Quest 17 Alliance
Inst5Quest17 = "17. 挑战（T0.5升级任务）"
Inst5Quest17_Level = "60"
Inst5Quest17_Attain = "60"
Inst5Quest17_Aim = "前往黑石深渊竞技场并在你被裁决者格里斯通宣判时将挑衅旗帜放在它的中央。杀死瑟尔伦和他的战士们，再带着第一块瓦萨拉克护符回到东瘟疫之地的安希恩·哈莫那里。"
Inst5Quest17_Location = "法尔林·树影（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）"
Inst5Quest17_Note = "对于不同的职业后续任务是不同的。"
Inst5Quest17_Prequest = "无"
Inst5Quest17_Folgequest = "有，各个职业的职业任务（T0.5升级任务）"
-- No Rewards for this quest

--Quest 18 Alliance
Inst5Quest18 = "18. 鬼魂之杯（采矿任务）"
Inst5Quest18_Level = "55"
Inst5Quest18_Attain = "55"
Inst5Quest18_Aim = "鬼魂之杯的塞娜尼·雷心要你找到他想要的材料。"
Inst5Quest18_Location = "塞娜尼·雷心（黑石深渊; "..YELLOW.."[18]"..WHITE.."）"
Inst5Quest18_Note = "只有采矿技能大于230才能接到此任务，这个任务会是你学会如何熔炼黑铁矿石。材料如下：2个[红宝石]，20个[金锭]，10个[真银锭]。完成之后，如果你有[黑铁矿石]你可以在黑熔炉"..YELLOW.."[22]"..WHITE.."熔炼黑铁。"
Inst5Quest18_Prequest = "无"
Inst5Quest18_Folgequest = "无"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst5Quest1_HORDE = Inst5Quest1
Inst5Quest1_HORDE_Level = Inst5Quest1_Level
Inst5Quest1_HORDE_Attain = Inst5Quest1_Attain
Inst5Quest1_HORDE_Aim = Inst5Quest1_Aim
Inst5Quest1_HORDE_Location = Inst5Quest1_Location
Inst5Quest1_HORDE_Note = Inst5Quest1_Note
Inst5Quest1_HORDE_Prequest = Inst5Quest1_Prequest
Inst5Quest1_HORDE_Folgequest = Inst5Quest1_Folgequest
--
Inst5Quest1name1_HORDE = Inst5Quest1name1

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst5Quest2_HORDE = Inst5Quest2
Inst5Quest2_HORDE_Level = Inst5Quest2_Level
Inst5Quest2_HORDE_Attain = Inst5Quest2_Attain
Inst5Quest2_HORDE_Aim = Inst5Quest2_Aim
Inst5Quest2_HORDE_Location = Inst5Quest2_Location
Inst5Quest2_HORDE_Note = Inst5Quest2_Note
Inst5Quest2_HORDE_Prequest = Inst5Quest2_Prequest
Inst5Quest2_HORDE_Folgequest = Inst5Quest2_Folgequest
Inst5Quest2PreQuest_HORDE = Inst5Quest2PreQuest
--
Inst5Quest2name1_HORDE = Inst5Quest2name1
Inst5Quest2name2_HORDE = Inst5Quest2name2
Inst5Quest2name3_HORDE = Inst5Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst5Quest3_HORDE = Inst5Quest3
Inst5Quest3_HORDE_Level = Inst5Quest3_Level
Inst5Quest3_HORDE_Attain = Inst5Quest3_Attain
Inst5Quest3_HORDE_Aim = Inst5Quest3_Aim
Inst5Quest3_HORDE_Location = Inst5Quest3_Location
Inst5Quest3_HORDE_Note = Inst5Quest3_Note
Inst5Quest3_HORDE_Prequest = Inst5Quest3_Prequest
Inst5Quest3_HORDE_Folgequest = Inst5Quest3_Folgequest
--
Inst5Quest3name1_HORDE = Inst5Quest3name1
Inst5Quest3name2_HORDE = Inst5Quest3name2

--Quest 4 Horde
Inst5Quest4_HORDE = "4. 遗失的雷酒秘方"
Inst5Quest4_HORDE_Level = "55"
Inst5Quest4_HORDE_Attain = "50"
Inst5Quest4_HORDE_Aim = "把遗失的雷酒秘方交给卡加斯的薇薇安·拉格雷。"
Inst5Quest4_HORDE_Location = "暗法师薇薇安·拉格雷（荒芜之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst5Quest4_HORDE_Note = "前导任务由药剂师金格（幽暗城 - 炼金房; "..YELLOW.."50,68"..WHITE.."）给予。\n秘方在某个守卫身上，只要你破坏"..YELLOW.."[15]"..WHITE.."的酒桶这些守卫就会出现。"
Inst5Quest4_HORDE_Prequest = "有，薇薇安·拉格雷"
Inst5Quest4_HORDE_Folgequest = "无"
Inst5Quest4PreQuest_HORDE = "true"
--
Inst5Quest4name1_HORDE = "超强治疗药水"
Inst5Quest4name2_HORDE = "强效法力药水"
Inst5Quest4name3_HORDE = "迅捷木槌"
Inst5Quest4name4_HORDE = "叉刃巨斧"

--Quest 5 Horde  (same as Quest 6 Alliance)
Inst5Quest5_HORDE = "5. 山脉之心"
Inst5Quest5_HORDE_Level = Inst5Quest6_Level
Inst5Quest5_HORDE_Attain = Inst5Quest6_Attain
Inst5Quest5_HORDE_Aim = Inst5Quest6_Aim
Inst5Quest5_HORDE_Location = Inst5Quest6_Location
Inst5Quest5_HORDE_Note = Inst5Quest6_Note
Inst5Quest5_HORDE_Prequest = Inst5Quest6_Prequest
Inst5Quest5_HORDE_Folgequest = Inst5Quest6_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst5Quest6_HORDE = "6. 格杀勿论：黑铁矮人"
Inst5Quest6_HORDE_Level = "52"
Inst5Quest6_HORDE_Attain = "48"
Inst5Quest6_HORDE_Aim = "到黑石深渊去消灭那些邪恶的侵略者！军官高图斯要你去杀死15个铁怒卫士、10个铁怒狱卒和5个铁怒步兵。完成任务之后回去向他复命。"
Inst5Quest6_HORDE_Location = "通缉（荒芜之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）"
Inst5Quest6_HORDE_Note = "矮人可在黑石深渊第一部分找到。\n卡加斯的高图斯在瞭望塔顶（荒芜之地; "..YELLOW.."5,47"..WHITE.."）。"
Inst5Quest6_HORDE_Prequest = "无"
Inst5Quest6_HORDE_Folgequest = "有，格杀勿论：高阶黑铁军官"
-- No Rewards for this quest

--Quest 7 Horde
Inst5Quest7_HORDE = "7. 格杀勿论：高阶黑铁军官"
Inst5Quest7_HORDE_Level = "54"
Inst5Quest7_HORDE_Attain = "49"
Inst5Quest7_HORDE_Aim = "到黑石深渊去消灭那些邪恶的侵略者！高图斯军阀要你杀死10个铁怒医师、10个铁怒士兵和10个铁怒军官。完成任务之后回去向他复命。"
Inst5Quest7_HORDE_Location = "通缉（荒芜之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）"
Inst5Quest7_HORDE_Note = "矮人可以在"..YELLOW.."[11]"..WHITE.."贝尔加附近被找到。卡加斯的高图斯在瞭望塔顶（荒芜之地; "..YELLOW.."5,47"..WHITE.."）。\n任务开始于雷克斯洛特（荒芜之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）。 格拉克·洛克鲁布位置在燃烧平原（"..YELLOW.."38,35"..WHITE.."）。 要绑定他并开始护送任务（精英），他的生命需要减少到低于50%。"
Inst5Quest7_HORDE_Prequest = "有，格杀勿论：黑铁矮人"
Inst5Quest7_HORDE_Folgequest = "有，格拉克·洛克鲁布 -> 押送囚徒（护送任务）"
Inst5Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 8 Horde
Inst5Quest8_HORDE = "8. 行动：杀死安格弗将军"
Inst5Quest8_HORDE_Level = "58"
Inst5Quest8_HORDE_Attain = "54"
Inst5Quest8_HORDE_Aim = "到黑石深渊去杀掉安格弗将军！当任务完成之后向军官高图斯复命。"
Inst5Quest8_HORDE_Location = "军官高图斯（荒芜之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst5Quest8_HORDE_Note = "安格弗将军位置在"..YELLOW.."[13]"..WHITE.."。注意：当他生命低于30%时，他会召唤帮手！"
Inst5Quest8_HORDE_Prequest = "有，押送囚徒"
Inst5Quest8_HORDE_Folgequest = "无"
Inst5Quest8FQuest_HORDE = "true"
--
Inst5Quest8name1_HORDE = "征服者勋章"

--Quest 9 Horde
Inst5Quest9_HORDE = "9. 机器的崛起"
Inst5Quest9_HORDE_Level = "58"
Inst5Quest9_HORDE_Attain = "52"
Inst5Quest9_HORDE_Aim = "找到并杀掉傀儡统帅阿格曼奇，将他的头交给鲁特维尔。你还需要从守卫着阿格曼奇的狂怒傀儡和战斗傀儡身上收集10块完整的元素核心。"
Inst5Quest9_HORDE_Location = "鲁特维尔·沃拉图斯（荒芜之地; "..YELLOW.."25,44"..WHITE.."）"
Inst5Quest9_HORDE_Note = "前导任务来自圣者塞朵拉·穆瓦丹尼（荒芜之地 - 卡加斯; "..YELLOW.."3,47"..WHITE.."）。\n你可以在"..YELLOW.."[14]"..WHITE.."发现阿格曼奇。"
Inst5Quest9_HORDE_Prequest = "有，机器的崛起"
Inst5Quest9_HORDE_Folgequest = "无"
Inst5Quest9PreQuest_HORDE = "true"
--
Inst5Quest9name1_HORDE = "蓝月披肩"
Inst5Quest9name2_HORDE = "雨法师斗篷"
Inst5Quest9name3_HORDE = "黑陶鳞片护甲"
Inst5Quest9name4_HORDE = "熔岩护手"

--Quest 10 Horde  (same as Quest 12 Alliance)
Inst5Quest10_HORDE = "10. 烈焰精华"
Inst5Quest10_HORDE_Level = Inst5Quest12_Level
Inst5Quest10_HORDE_Attain = Inst5Quest12_Attain
Inst5Quest10_HORDE_Aim = Inst5Quest12_Aim
Inst5Quest10_HORDE_Location = Inst5Quest12_Location
Inst5Quest10_HORDE_Note = Inst5Quest12_Note
Inst5Quest10_HORDE_Prequest = Inst5Quest12_Prequest
Inst5Quest10_HORDE_Folgequest = Inst5Quest12_Folgequest
Inst5Quest10PreQuest_HORDE = Inst5Quest12PreQuest
--
Inst5Quest10name1_HORDE = Inst5Quest12name1
Inst5Quest10name2_HORDE = Inst5Quest12name2
Inst5Quest10name3_HORDE = Inst5Quest12name3

--Quest 11 Horde
Inst5Quest11_HORDE = "11. 不和谐的烈焰"
Inst5Quest11_HORDE_Level = "52"
Inst5Quest11_HORDE_Attain = "48"
Inst5Quest11_HORDE_Aim = "到黑石山脉的采石场去干掉征服者派隆，然后向桑德哈特回报。"
Inst5Quest11_HORDE_Location = "桑德哈特（荒芜之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）"
Inst5Quest11_HORDE_Note = "征服者派隆是副本门口外面的一个火元素精英。在黑石深渊"..YELLOW.."副本入口地图[1]"..WHITE.."。"
Inst5Quest11_HORDE_Prequest = "无"
Inst5Quest11_HORDE_Folgequest = "有，不和谐的火焰"
-- No Rewards for this quest

--Quest 12 Horde
Inst5Quest12_HORDE = "12. 不和谐的火焰"
Inst5Quest12_HORDE_Level = "56"
Inst5Quest12_HORDE_Attain = "48"
Inst5Quest12_HORDE_Aim = "进入黑石深渊并找到伊森迪奥斯。杀掉它，然后把你找到的信息汇报给桑德哈特。"
Inst5Quest12_HORDE_Location = "桑德哈特（荒芜之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）"
Inst5Quest12_HORDE_Note = "伊森迪奥斯在"..YELLOW.."[10]"..WHITE.."。"
Inst5Quest12_HORDE_Prequest = "有，不和谐的烈焰"
Inst5Quest12_HORDE_Folgequest = "无"
Inst5Quest12FQuest_HORDE = "true"
--
Inst5Quest12name1_HORDE = "阳焰斗篷"
Inst5Quest12name2_HORDE = "夜暮手套"
Inst5Quest12name3_HORDE = "地穴恶魔护腕"
Inst5Quest12name4_HORDE = "坚定手套"

--Quest 13 Horde
Inst5Quest13_HORDE = "13. 最后的元素"
Inst5Quest13_HORDE_Level = "54"
Inst5Quest13_HORDE_Attain = "48"
Inst5Quest13_HORDE_Aim = "到黑石深渊去取得10份元素精华。你应该在那些作战傀儡和傀儡制造者身上找找，另外，薇薇安·拉格雷也提到了一些有关元素生物的话题……"
Inst5Quest13_HORDE_Location = "暗法师薇薇安·拉格雷（荒芜之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst5Quest13_HORDE_Note = "前导任务来自桑德哈特（荒芜之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）。派隆就在副本入口处前。\n 每个元素生物都可能会掉落精华。"
Inst5Quest13_HORDE_Prequest = "有，不和谐的烈焰"
Inst5Quest13_HORDE_Folgequest = "无"
Inst5Quest13PreQuest_HORDE = "true"
--
Inst5Quest13name1_HORDE = "拉格雷的徽记之戒"

--Quest 14 Horde
Inst5Quest14_HORDE = "14. 指挥官哥沙克"
Inst5Quest14_HORDE_Level = "52"
Inst5Quest14_HORDE_Attain = "48"
Inst5Quest14_HORDE_Aim = "在黑石深渊里找到指挥官哥沙克。\n在那幅草图上画着的是一个铁栏后面的兽人，也许你应该到某个类似监狱的地方去找找看。"
Inst5Quest14_HORDE_Location = "神射手贾拉玛弗（荒芜之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst5Quest14_HORDE_Note = "前导任务来自桑德哈特（荒芜之地 - 卡加斯; "..YELLOW.."3,48"..WHITE.."）。派隆就在副本入口处前。\n你能在"..YELLOW.."[3]"..WHITE.."找到指挥官哥沙克。位于"..YELLOW.."[5]"..WHITE.."的审讯官格斯塔恩掉落打开监狱的钥匙。如果你跟他交谈并开始下一个任务，敌人便会出现。"
Inst5Quest14_HORDE_Prequest = "有，不和谐的烈焰"
Inst5Quest14_HORDE_Folgequest = "有，出了什么事？"
Inst5Quest14PreQuest_HORDE = "true"

--Quest 15 Horde
Inst5Quest15_HORDE = "15. 拯救公主"
Inst5Quest15_HORDE_Level = "59"
Inst5Quest15_HORDE_Attain = "50"
Inst5Quest15_HORDE_Aim = "杀掉达格兰·索瑞森大帝，然后将铁炉堡公主茉艾拉·铜须从他的邪恶诅咒中拯救出来。"
Inst5Quest15_HORDE_Location = "萨尔（奥格瑞玛; "..YELLOW.."31,37"..WHITE.."）"
Inst5Quest15_HORDE_Note = "与卡兰·巨锤和萨尔交谈后，你将得到这个任务。\n达格兰·索瑞森大帝在"..YELLOW.."[21]"..WHITE.."。虽然公主会治疗达格兰，但是如果想完成任务，就一定不要杀死公主。切记，切记！！！尝试打断公主的治疗施法。"
Inst5Quest15_HORDE_Prequest = "有，指挥官哥沙克"
Inst5Quest15_HORDE_Folgequest = "有，拯救公主？"
Inst5Quest15FQuest_HORDE = "true"
--
Inst5Quest15name1_HORDE = "萨尔的决心"
Inst5Quest15name2_HORDE = "奥格瑞玛之眼"

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst5Quest16_HORDE = Inst5Quest16
Inst5Quest16_HORDE_Level = Inst5Quest16_Level
Inst5Quest16_HORDE_Attain = Inst5Quest16_Attain
Inst5Quest16_HORDE_Aim = Inst5Quest16_Aim
Inst5Quest16_HORDE_Location = Inst5Quest16_Location
Inst5Quest16_HORDE_Note = Inst5Quest16_Note
Inst5Quest16_HORDE_Prequest = Inst5Quest16_Prequest
Inst5Quest16_HORDE_Folgequest = Inst5Quest16_Folgequest
-- No Rewards for this quest

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst5Quest17_HORDE = Inst5Quest17
Inst5Quest17_HORDE_Level = Inst5Quest17_Level
Inst5Quest17_HORDE_Attain = Inst5Quest17_Attain
Inst5Quest17_HORDE_Aim = Inst5Quest17_Aim
Inst5Quest17_HORDE_Location = Inst5Quest17_Location
Inst5Quest17_HORDE_Note = Inst5Quest17_Note
Inst5Quest17_HORDE_Prequest = Inst5Quest17_Prequest
Inst5Quest17_HORDE_Folgequest = Inst5Quest17_Folgequest
-- No Rewards for this quest

--Quest 18 Horde  (same as Quest 18 Alliance)
Inst5Quest18_HORDE = Inst5Quest18
Inst5Quest18_HORDE_Level = Inst5Quest18_Level
Inst5Quest18_HORDE_Attain = Inst5Quest18_Attain
Inst5Quest18_HORDE_Aim = Inst5Quest18_Aim
Inst5Quest18_HORDE_Location = Inst5Quest18_Location
Inst5Quest18_HORDE_Note = Inst5Quest18_Note
Inst5Quest18_HORDE_Prequest = Inst5Quest18_Prequest
Inst5Quest18_HORDE_Folgequest = Inst5Quest18_Folgequest
-- No Rewards for this quest



--------------- INST6 - Blackwing Lair (BWL) ---------------

Inst6Story = {
  [1] = "黑翼之巢，它位于黑石塔的最顶端。奈法利安就在那里进行着他的秘密计划的最后步骤，并准备摧毁拉格纳罗斯的势力，最终统治整个艾泽拉斯。",
  [2] = "座落在黑石山脉中的巨型要塞是由矮人建筑大师弗兰克罗恩·铸铁设计的，作为力量和实力的象征，这座要塞被邪恶的黑铁矮人占据了数个世纪之久。但是，黑龙死亡之翼的儿子奈法利安对这座要塞有着别的打算。他和他的黑龙军团占据了黑石塔的上层区域，并与黑石深渊中的那些侍奉火焰之王拉格纳罗斯的黑铁矮人不断交战。拉格纳罗斯找到了为岩石赋予生命的方法，并准备制造一支无坚不摧的傀儡大军，以此来帮助他实施征服整个黑石山的计划。",
  [3] = "而奈法利安则发誓要毁灭拉格纳罗斯，因此他近期以来加速了扩张军队的步伐，就像他的父亲死亡之翼曾经尝试过的那样。虽然死亡之翼最终失败了，但看起来奈法利安很有希望获得成功。他对于权力的疯狂渴求甚至引起了红龙军团的警觉——他们一直是黑龙最强大的敌人。不过，即便奈法利安的目标非常明显，他所采用的手段却不为人知。但是据信他正在尝试杂交各种颜色的龙以制造出最强大的战士。\n \n奈法利安的藏身之所被称为黑翼之巢，它位于黑石塔的最顶端。奈法利安就在那里进行着他的秘密计划的最后步骤，并准备摧毁拉格纳罗斯的势力，最终统治整个艾泽拉斯。",
  
};
Inst6Caption = "黑翼之巢"
Inst6Caption2 = "黑翼之巢（故事背景 第1部分）"
Inst6Caption3 = "黑翼之巢（故事背景 第2部分）"

Inst6QAA = "3 个任务"
Inst6QAH = "3 个任务"

--Quest 1 Alliance
Inst6Quest1 = "1. 奈法里奥斯的腐蚀"
Inst6Quest1_Level = "60"
Inst6Quest1_Attain = "60"
Inst6Quest1_Aim = "干掉奈法利安并拿到红色节杖碎片。把红色节杖碎片带给塔纳利斯时光之穴门口的阿纳克洛斯。你必须在5小时之内完成这个任务。"
Inst6Quest1_Location = "堕落的瓦拉斯塔兹（黑翼之巢; "..YELLOW.."[2]"..WHITE.."）"
Inst6Quest1_Note = "只有一人能拾取碎片。阿纳克洛斯（塔纳利斯 - 时光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst6Quest1_Prequest = "无"
Inst6Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst6Quest2 = "2. 黑石之王"
Inst6Quest2_Level = "60"
Inst6Quest2_Attain = "60"
Inst6Quest2_Aim = "将奈法利安的头颅交给暴风城的伯瓦尔·弗塔根公爵。 "
Inst6Quest2_Location = "奈法利安的头颅（奈法利安掉落; "..YELLOW.."[9]"..WHITE.."）"
Inst6Quest2_Note = "伯瓦尔·弗塔根公爵（暴风城 - 暴风要塞; "..YELLOW.."78,20"..WHITE.."）。接下来前往艾法希比元帅（暴风城 - 英雄谷; "..YELLOW.."67,72"..WHITE.."）领取奖励。"
Inst6Quest2_Prequest = "无"
Inst6Quest2_Folgequest = "有，黑石之王"
--
Inst6Quest2name1 = "屠龙大师勋章"
Inst6Quest2name2 = "屠龙大师宝珠"
Inst6Quest2name3 = "屠龙大师之戒"

--Quest 3 Alliance
Inst6Quest3 = "3. 唯一的领袖"
Inst6Quest3_Level = "60"
Inst6Quest3_Attain = "60"
Inst6Quest3_Aim = "将勒什雷尔的头颅交给希利苏斯塞纳里奥要塞的流沙守望者巴里斯托尔斯。 "
Inst6Quest3_Location = "勒什雷尔的头颅（勒什雷尔掉落; "..YELLOW.."[3]"..WHITE.."）"
Inst6Quest3_Note = "只有一人能拾取头颅。（现版本不再限一人）"
Inst6Quest3_Prequest = "无"
Inst6Quest3_Folgequest = "有，正义之路"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst6Quest1_HORDE = Inst6Quest1
Inst6Quest1_HORDE_Level = Inst6Quest1_Level
Inst6Quest1_HORDE_Attain = Inst6Quest1_Attain
Inst6Quest1_HORDE_Aim = Inst6Quest1_Aim
Inst6Quest1_HORDE_Location = Inst6Quest1_Location
Inst6Quest1_HORDE_Note = Inst6Quest1_Note
Inst6Quest1_HORDE_Prequest = Inst6Quest1_Prequest
Inst6Quest1_HORDE_Folgequest = Inst6Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde
Inst6Quest2_HORDE = "2. 黑石之王"
Inst6Quest2_HORDE_Level = "60"
Inst6Quest2_HORDE_Attain = "60"
Inst6Quest2_HORDE_Aim = "将奈法利安的头颅交给奥格瑞玛的萨尔。"
Inst6Quest2_HORDE_Location = "奈法利安的头颅（奈法利安掉落; "..YELLOW.."[9]"..WHITE.."）"
Inst6Quest2_HORDE_Note = "下一步前往萨鲁法尔大王（奥格瑞玛 - 力量谷; "..YELLOW.."51,76"..WHITE.."）领取奖励。"
Inst6Quest2_HORDE_Prequest = "无"
Inst6Quest2_HORDE_Folgequest = "有，黑石之王"
--
Inst6Quest2name1_HORDE = "屠龙大师勋章"
Inst6Quest2name2_HORDE = "屠龙大师宝珠"
Inst6Quest2name3_HORDE = "屠龙大师之戒"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst6Quest3_HORDE = Inst6Quest3
Inst6Quest3_HORDE_Level = Inst6Quest3_Level
Inst6Quest3_HORDE_Attain = Inst6Quest3_Attain
Inst6Quest3_HORDE_Aim = Inst6Quest3_Aim
Inst6Quest3_HORDE_Location = Inst6Quest3_Location
Inst6Quest3_HORDE_Note = Inst6Quest3_Note
Inst6Quest3_HORDE_Prequest = Inst6Quest3_Prequest
Inst6Quest3_HORDE_Folgequest = Inst6Quest3_Folgequest
-- No Rewards for this quest



--------------- INST7 - Blackfathom Deeps (BFD) ---------------

Inst7Story = "位于灰谷佐拉姆海岸的黑暗深渊曾经是为供奉暗夜精灵月神艾露尼尔建造的。然而，在大爆炸中，神庙受到极大的冲击然后沉入了海中。它一直保持着原样——直到，其蕴含的古老的力量吸引来了纳迦和萨特。传说，古代怪兽阿库麦尔就居住在神庙遗迹中。作为古代之神最喜欢的宠物之一，阿库麦尔就一直生活在这个地区进行捕食。在阿库麦尔的吸引下，一群被称作幕光之锤的教徒也聚集在这里从事邪恶的勾当。"
Inst7Caption = "黑暗深渊"
Inst7QAA = "6 个任务"
Inst7QAH = "5 个任务"

--Quest 1 Alliance
Inst7Quest1 = "1. 深渊中的知识"
Inst7Quest1_Level = "23"
Inst7Quest1_Attain = "10"
Inst7Quest1_Aim = "把洛迦里斯手稿带给铁炉堡的葛利·硬骨。"
Inst7Quest1_Location = "葛利·硬骨（铁炉堡 - 荒弃的洞穴; "..YELLOW.."50,5"..WHITE.."）"
Inst7Quest1_Note = "你可以在靠近"..YELLOW.."[2]"..WHITE.."的水中找到手稿。"
Inst7Quest1_Prequest = "无"
Inst7Quest1_Folgequest = "无"
--
Inst7Quest1name1 = "鼓励之戒"

--Quest 2 Alliance
Inst7Quest2 = "2. 研究堕落"
Inst7Quest2_Level = "24"
Inst7Quest2_Attain = "18"
Inst7Quest2_Aim = "奥伯丁的戈沙拉·夜语需要8块堕落者的脑干。"
Inst7Quest2_Location = "戈沙拉·夜语（黑海岸 - 奥伯丁; "..YELLOW.."38,43"..WHITE.."）"
Inst7Quest2_Note = "前导任务可以从阿古斯·夜语（暴风城 - 花园; "..YELLOW.."21,55"..WHITE.."）处得到。 黑暗深渊副本里面和门前的所有纳迦都可能掉落脑干。"
Inst7Quest2_Prequest = "有，遥远的旅途"
Inst7Quest2_Folgequest = "无"
Inst7Quest2PreQuest = "true"
--
Inst7Quest2name1 = "虫壳护腕"
Inst7Quest2name2 = "教士斗篷"

--Quest 3 Alliance
Inst7Quest3 = "3. 寻找塞尔瑞德"
Inst7Quest3_Level = "24"
Inst7Quest3_Attain = "18"
Inst7Quest3_Aim = "到黑色深渊去找到银月守卫塞尔瑞德。"
Inst7Quest3_Location = "哨兵山德拉斯（达纳苏斯 - 工匠区; "..YELLOW.."55,24"..WHITE.."）"
Inst7Quest3_Note = "你可以在"..YELLOW.."[4]"..WHITE.."找到银月守卫塞尔瑞德。"
Inst7Quest3_Prequest = "无"
Inst7Quest3_Folgequest = "有，黑暗深渊中的恶魔"
-- No Rewards for this quest

--Quest 4 Alliance
Inst7Quest4 = "4. 黑暗深渊中的恶魔"
Inst7Quest4_Level = "27"
Inst7Quest4_Attain = "18"
Inst7Quest4_Aim = "把梦游者克尔里斯的头颅交给达纳苏斯的哨兵塞尔高姆。"
Inst7Quest4_Location = "哨兵塞尔瑞德（黑暗深渊; "..YELLOW.."[4]"..WHITE.."）"
Inst7Quest4_Note = "克尔里斯在"..YELLOW.."[8]"..WHITE.."。你可以哨兵找到塞尔高姆（达纳苏斯 - 工匠区; "..YELLOW.."55,24"..WHITE.."）。注意！如果你点燃了克尔里斯旁边的火焰，敌人会出现并攻击你。"
Inst7Quest4_Prequest = "有，寻找塞尔瑞德"
Inst7Quest4_Folgequest = "无"
Inst7Quest4FQuest = "true"
--
Inst7Quest4name1 = "墓碑节杖"
Inst7Quest4name2 = "极光圆盾"

--Quest 5 Alliance
Inst7Quest5 = "5. 暮光之锤的末日"
Inst7Quest5_Level = "25"
Inst7Quest5_Attain = "20"
Inst7Quest5_Aim = "收集10个暮光坠饰，把它们交给达纳苏斯的银月守卫玛纳杜斯。"
Inst7Quest5_Location = "银月守卫玛纳杜斯（达纳苏斯 - 工匠区; "..YELLOW.."55,23"..WHITE.."）"
Inst7Quest5_Note = "每个暮光敌人都会掉落坠饰。"
Inst7Quest5_Prequest = "无"
Inst7Quest5_Folgequest = "无"
--
Inst7Quest5name1 = "云光长靴"
Inst7Quest5name2 = "赤木束带"

--Quest 6 Alliance
Inst7Quest6 = "6. 索兰鲁克宝珠（术士任务）"
Inst7Quest6_Level = "25"
Inst7Quest6_Attain = "20"
Inst7Quest6_Aim = "找到3块索兰鲁克宝珠的碎片和1块索兰鲁克宝珠的大碎片，把它们交给贫瘠之地的杜安·卡汉。"
Inst7Quest6_Location = "杜安·卡汉（贫瘠之地; "..YELLOW.."49,57"..WHITE.."）"
Inst7Quest6_Note = "只有术士才能得到这个任务！3块索兰鲁克宝珠的碎片，你可以从"..YELLOW.."[黑暗深渊]"..WHITE.."的暮光侍僧那里得到。那块索兰鲁克宝珠的大碎片，你要去"..YELLOW.."[影牙城堡]"..WHITE.."找影牙魔魂狼人。"
Inst7Quest6_Prequest = "无"
Inst7Quest6_Folgequest = "无"
--
Inst7Quest6name1 = "索兰鲁克宝珠"
Inst7Quest6name2 = "索拉鲁克法杖"


--Quest 1 Horde
Inst7Quest1_HORDE = "1. 阿库麦尔水晶"
Inst7Quest1_HORDE_Level = "22"
Inst7Quest1_HORDE_Attain = "17"
Inst7Quest1_HORDE_Aim = "收集20颗阿库麦尔蓝宝石，把它们交给灰谷的耶努萨克雷。"
Inst7Quest1_HORDE_Location = "耶努萨克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）"
Inst7Quest1_HORDE_Note = "前导任务《帮助耶努萨克雷》可以在苏纳曼（石爪山脉 - 烈日石居; "..YELLOW.."47,64"..WHITE.."）接到。蓝宝石多生长在通往黑暗深渊入口的那条通道的洞穴墙壁上。"
Inst7Quest1_HORDE_Prequest = "有，帮助耶努萨克雷"
Inst7Quest1_HORDE_Folgequest = "无"
Inst7Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. 上古之神的仆从"
Inst7Quest2_HORDE_Level = "26"
Inst7Quest2_HORDE_Attain = "18"
Inst7Quest2_HORDE_Aim = "把潮湿的便笺交给灰谷的耶努萨克雷。 -> 杀掉黑暗深渊里的洛古斯·杰特，然后向灰谷的耶努萨克雷复命。"
Inst7Quest2_HORDE_Location = "潮湿的便笺（掉落）（请见注释）"
Inst7Quest2_HORDE_Note = "潮湿的便笺可从黑暗深渊海潮祭司处得到（5% 掉落几率）。然后去耶努萨克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）。洛古斯·杰特在"..YELLOW.."[6]"..WHITE.."。"
Inst7Quest2_HORDE_Prequest = "无"
Inst7Quest2_HORDE_Folgequest = "无"
--
Inst7Quest2name1_HORDE = "巨拳指环 "
Inst7Quest2name2_HORDE = "栗壳衬肩"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. 废墟之间"
Inst7Quest3_HORDE_Level = "27"
Inst7Quest3_HORDE_Attain = "21"
Inst7Quest3_HORDE_Aim = "把深渊之核交给灰谷佐拉姆加前哨站里的耶努萨克雷。"
Inst7Quest3_HORDE_Location = "耶努萨克雷（灰谷 - 佐拉姆加前哨站; "..YELLOW.."11,33"..WHITE.."）"
Inst7Quest3_HORDE_Note = "深渊之核在"..YELLOW.."[7]"..WHITE.."区水域里。当你得到深远之核后，阿奎尼斯男爵会出现并攻击你。他会掉落一件任务物品，你要把它带给耶努萨克雷。"
Inst7Quest3_HORDE_Prequest = "无"
Inst7Quest3_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Horde
Inst7Quest4_HORDE = "4. 黑暗深渊中的恶魔"
Inst7Quest4_HORDE_Level = "27"
Inst7Quest4_HORDE_Attain = "19"
Inst7Quest4_HORDE_Aim = "把梦游者克尔里斯的头颅带回雷霆崖交给巴珊娜·符文图腾 。"
Inst7Quest4_HORDE_Location = "银月守卫塞尔瑞德（黑暗深渊; "..YELLOW.."[4]"..WHITE.."）"
Inst7Quest4_HORDE_Note = "克尔里斯在"..YELLOW.."[8]"..WHITE.."。巴珊娜·符文图腾可以在（雷霆崖 - 长者高地 "..YELLOW.."70,33"..WHITE.."）处找到。注意！如果你点燃了克尔里斯身旁的火焰，会出现敌人攻击你。"
Inst7Quest4_HORDE_Prequest = "无"
Inst7Quest4_HORDE_Folgequest = "无"
--
Inst7Quest4name1_HORDE = "墓碑节杖"
Inst7Quest4name2_HORDE = "极光圆盾"

--Quest 5 Horde  (same as Quest 6 Alliance)
Inst7Quest5_HORDE = "5. 索兰鲁克宝珠（术士任务）"
Inst7Quest5_HORDE_Level = "25"
Inst7Quest5_HORDE_Attain = "20"
Inst7Quest5_HORDE_Aim = Inst7Quest6_Aim
Inst7Quest5_HORDE_Location = Inst7Quest6_Location
Inst7Quest5_HORDE_Note = Inst7Quest6_Note
Inst7Quest5_HORDE_Prequest = Inst7Quest6_Prequest
Inst7Quest5_HORDE_Folgequest = Inst7Quest6_Folgequest
--
Inst7Quest5name1_HORDE = Inst7Quest6name1
Inst7Quest5name2_HORDE = Inst7Quest6name2



--------------- INST8 - Lower Blackrock Spire (LBRS) ---------------

Inst8Story = "黑石深渊深处的巨大堡垒是由矮人建筑大师弗兰克罗恩·铸铁所设计的。这个堡垒是矮人力量的象征并被邪恶的黑铁矮人占据了数个世纪。然而，奈法利安——死亡之翼狡猾的儿子——对这个巨大的堡垒别有意图。他和他的黑龙军团占据了上层黑石塔并向占据着黑石深渊的黑铁矮人宣战。奈法利安知道矮人是由强大的火元素拉格纳罗斯所领导的，所以他立志要摧毁他的敌人并将黑石深渊全都占为己有。"
Inst8Caption = "黑石塔下层"
Inst8QAA = "14 个任务"
Inst8QAH = "14 个任务"

--Quest 1 Alliance
Inst8Quest1 = "1. 最后的石板"
Inst8Quest1_Level = "58"
Inst8Quest1_Attain = "55"
Inst8Quest1_Aim = "将第五块和第六块摩沙鲁石板交给塔纳利斯的勘查员詹斯·铁靴。"
Inst8Quest1_Location = "勘查员詹斯·铁靴（塔纳利斯 - 热砂港; "..YELLOW.."66,23"..WHITE.."）"
Inst8Quest1_Note = "你可以在"..YELLOW.."[7]"..WHITE.."和"..YELLOW.."[9]"..WHITE.."附近找到石板。\n任务奖励来自《面对叶基亚》。 你可以在勘查员詹斯·铁靴旁边找到叶基亚。"
Inst8Quest1_Prequest = "有，失落的摩沙鲁石板"
Inst8Quest1_Folgequest = "有，面对叶基亚"
Inst8Quest1PreQuest = "true"
--
Inst8Quest1name1 = "褪色的哈卡莱披风"
Inst8Quest1name2 = "破碎的哈卡莱披风"

--Quest 2 Alliance
Inst8Quest2 = "2. 基布雷尔的特殊宠物"
Inst8Quest2_Level = "59"
Inst8Quest2_Attain = "55"
Inst8Quest2_Aim = "到黑石塔去找到血斧座狼幼崽。使用笼子来捕捉这些凶猛的小野兽，然后把笼中的座狼幼崽交给基布雷尔。"
Inst8Quest2_Location = "基布雷尔（燃烧平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst8Quest2_Note = "你可以在"..YELLOW.."[17]"..WHITE.."找到座狼幼崽。"
Inst8Quest2_Prequest = "无"
Inst8Quest2_Folgequest = "无"
--
Inst8Quest2name1 = "座狼笼"

--Quest 3 Alliance
Inst8Quest3 = "3. 蜘蛛卵"
Inst8Quest3_Level = "59"
Inst8Quest3_Attain = "55"
Inst8Quest3_Aim = "到黑石塔去为基布雷尔收集15枚尖塔蜘蛛卵。"
Inst8Quest3_Location = "基布雷尔（燃烧平原 - 烈焰峰; "..YELLOW.."65,22"..WHITE.."）"
Inst8Quest3_Note = "你可以在"..YELLOW.."[13]"..WHITE.."附近找到蜘蛛卵。"
Inst8Quest3_Prequest = "无"
Inst8Quest3_Folgequest = "无"
--
Inst8Quest3name1 = "烟网蜘蛛笼"

--Quest 4 Alliance
Inst8Quest4 = "4. 蛛后的乳汁"
Inst8Quest4_Level = "60"
Inst8Quest4_Attain = "55"
Inst8Quest4_Aim = "你可以在黑石塔的中心地带找到烟网蛛后。与她战斗，让她在你体内注入毒汁。如果你有能力的话，就杀死她吧。当你中毒之后，回到狼狈不堪的约翰那儿，他会从你的身体里抽取这些‘蛛后的乳汁’。 "
Inst8Quest4_Location = "狼狈不堪的约翰（燃烧平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）"
Inst8Quest4_Note = "烟网蛛后在"..YELLOW.."[13]"..WHITE..".如果中毒后解除，那么任务就会失败。"
Inst8Quest4_Prequest = "无"
Inst8Quest4_Folgequest = "无"
--
Inst8Quest4name1 = "约翰的无尽之杯"

--Quest 5 Alliance
Inst8Quest5 = "5. 座狼之源"
Inst8Quest5_Level = "59"
Inst8Quest5_Attain = "55"
Inst8Quest5_Aim = "到黑石塔去摧毁那里的座狼源头。当你离开的时候，赫林迪斯喊出了一个名字：哈雷肯。这个词就是兽人语中‘座狼’的意思。"
Inst8Quest5_Location = "赫林迪斯·河角（燃烧平原 - 摩根的岗哨; "..YELLOW.."5,47"..WHITE.."）"
Inst8Quest5_Note = "哈雷肯在"..YELLOW.."[17]"..WHITE.."。"
Inst8Quest5_Prequest = "无"
Inst8Quest5_Folgequest = "无"
--
Inst8Quest5name1 = "阿斯托里长袍"
Inst8Quest5name2 = "吊钩外套"
Inst8Quest5name3 = "碧鳞胸甲"

--Quest 6 Alliance
Inst8Quest6 = "6. 乌洛克"
Inst8Quest6_Level = "60"
Inst8Quest6_Attain = "55"
Inst8Quest6_Aim = "阅读瓦罗什的卷轴。将瓦罗什的蟑螂交给他。"
Inst8Quest6_Location = "瓦罗什（黑石塔下层; "..YELLOW.."[2]"..WHITE.."）"
Inst8Quest6_Note = "要得到瓦罗什的蟑螂，你必须首先杀死乌洛克"..YELLOW.."[15]"..WHITE.."。要完成召唤，你需要长矛和 欧莫克大王的头颅"..YELLOW.."[5]"..WHITE.."。长矛在"..YELLOW.."[3]"..WHITE.."。在召唤出乌洛克之前，会出现几群食人魔，你可以用长矛来伤害它们。"
Inst8Quest6_Prequest = "无"
Inst8Quest6_Folgequest = "无"
--
Inst8Quest6name1 = "棱石护符"

--Quest 7 Alliance
Inst8Quest7 = "7. 比修的装置"
Inst8Quest7_Level = "59"
Inst8Quest7_Attain = "55"
Inst8Quest7_Aim = "找到比修的装置并把它们还给她。祝你好运！"
Inst8Quest7_Location = "比修（黑石塔下层; "..YELLOW.."[3]"..WHITE.."）"
Inst8Quest7_Note = "你可以在前往烟网蛛后的路上找到比修的装置"..YELLOW.."[13]"..WHITE.."。\n麦克斯韦元帅（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,58"..WHITE.."）。"
Inst8Quest7_Prequest = "无"
Inst8Quest7_Folgequest = "有，给麦克斯韦尔的消息"
-- No Rewards for this quest

--Quest 8 Alliance
Inst8Quest8 = "8. 麦克斯韦尔的任务"
Inst8Quest8_Level = "59"
Inst8Quest8_Attain = "57"
Inst8Quest8_Aim = "到黑石塔去消灭指挥官沃恩、欧莫克大王和维姆萨拉克。完成任务之后回到麦克斯韦尔元帅处复命。"
Inst8Quest8_Location = "麦克斯韦尔（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,58"..WHITE.."）"
Inst8Quest8_Note = "指挥官沃恩在"..YELLOW.."[9]"..WHITE.."，欧莫克大王在"..YELLOW.."[5]"..WHITE.."，维姆萨拉克在"..YELLOW.."[19]"..WHITE.."。"
Inst8Quest8_Prequest = "有，给麦克斯韦尔的消息"
Inst8Quest8_Folgequest = "无"
Inst8Quest8FQuest = "true"
--
Inst8Quest8name1 = "维姆萨拉克的镣铐"
Inst8Quest8name2 = "欧莫克的瘦身腰带"
Inst8Quest8name3 = "哈雷肯的笼口"
Inst8Quest8name4 = "沃什加斯的绳索"
Inst8Quest8name5 = "沃恩的邪恶之握"

--Quest 9 Alliance
Inst8Quest9 = "9. 晋升印章"
Inst8Quest9_Level = "60"
Inst8Quest9_Attain = "57"
Inst8Quest9_Aim = "找到三块命令宝石：燃棘宝钻、尖石宝钻和血斧宝钻。把它们和原始晋升印章一起交给维埃兰."
Inst8Quest9_Location = "维埃兰（黑石塔下层; "..YELLOW.."[1]"..WHITE.."）"
Inst8Quest9_Note = "燃棘宝钻从欧莫克大王"..YELLOW.."[5]"..WHITE.."，尖石宝钻从指挥官沃恩"..YELLOW.."[9]"..WHITE.."，血斧宝钻从维姆萨拉克"..YELLOW.."[19]"..WHITE.."。原始晋升印章是黑石塔所有小怪掉落，完成这个之后你就能得到黑石塔上层的钥匙。"
Inst8Quest9_Prequest = "无"
Inst8Quest9_Folgequest = "有，晋升印章"
-- No Rewards for this quest

--Quest 10 Alliance
Inst8Quest10 = "10. 达基萨斯将军的命令"
Inst8Quest10_Level = "60"
Inst8Quest10_Attain = "55"
Inst8Quest10_Aim = "把达基萨斯将军的命令交给燃烧平原的麦克斯韦尔元帅。"
Inst8Quest10_Location = "达基萨斯将军的命令（维姆萨拉克掉落; "..YELLOW.."[19]"..WHITE.."）"
Inst8Quest10_Note = "麦克斯韦尔元帅（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,58"..WHITE.."）"
Inst8Quest10_Prequest = "无"
Inst8Quest10_Folgequest = "有，达基萨斯将军之死（"..YELLOW.."黑石塔上层"..WHITE.."）"
-- No Rewards for this quest

--Quest 11 Alliance
Inst8Quest11 = "11. 瓦塔拉克饰品的左瓣"
Inst8Quest11_Level = "60"
Inst8Quest11_Attain = "60"
Inst8Quest11_Aim = "使用召唤火盆召唤出莫尔·灰蹄的灵魂，然后杀掉他。完成之后，将召唤火盆与瓦塔拉克饰品的左瓣还给黑石山的伯德雷。"
Inst8Quest11_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst8Quest11_Note = "你需要超维度幽灵显形器才能看到伯德雷，你可以从《寻找安泰恩》任务得到它。\n\n莫尔·灰蹄在"..YELLOW.."[9]"..WHITE.."召唤。"
Inst8Quest11_Prequest = "有，重要的材料"
Inst8Quest11_Folgequest = "有，奥卡兹岛在你前方……"
Inst8Quest11PreQuest = "true"
-- No Rewards for this quest

--Quest 12 Alliance
Inst8Quest12 = "12. 瓦塔拉克饰品的右瓣"
Inst8Quest12_Level = "60"
Inst8Quest12_Attain = "60"
Inst8Quest12_Aim = "在比斯巨兽的房间里使用召唤火盆，召唤瓦塔拉克公爵。杀死他，对尸体使用瓦塔拉克的饰品。然后将瓦塔拉克的饰品还给瓦塔拉克公爵之魂。"
Inst8Quest12_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst8Quest12_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。\n\n莫尔·灰蹄在"..YELLOW.."[9]"..WHITE.."召唤。"
Inst8Quest12_Prequest = "有，更多重要的材料"
Inst8Quest12_Folgequest = "有，最后的准备（"..YELLOW.."黑石塔上层"..WHITE.."）"
Inst8Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst8Quest13 = "13. 沃什加斯的蛇石（锻造-铸剑大师任务）"
Inst8Quest13_Level = "60"
Inst8Quest13_Attain = "51"
Inst8Quest13_Aim = "到黑石塔去杀死暗影猎手沃什加斯，将沃什加斯的蛇石交给基尔拉姆。"
Inst8Quest13_Location = "基尔拉姆（冬泉谷 - 永望镇; "..YELLOW.."61,37"..WHITE.."）"
Inst8Quest13_Note = "暗影猎手沃什加斯在"..YELLOW.."[7]"..WHITE.."。"
Inst8Quest13_Prequest = "无"
Inst8Quest13_Folgequest = "无"
--
Inst8Quest13name1 = "设计图：黎明之刃"

--Quest 14 Alliance
Inst8Quest14 = "14. 火热的死亡"
Inst8Quest14_Level = "60"
Inst8Quest14_Attain = "58"
Inst8Quest14_Aim = "世界上一定有人知道关于这副手套的事情，祝你好运！"
Inst8Quest14_Location = "人类的残骸（黑石塔下层; "..YELLOW.."[9]"..WHITE.."）"
Inst8Quest14_Note = "煅造任务。确保从人类残骸"..YELLOW.."[11]"..WHITE.."附近拿到这个板甲手套，交给玛雷弗斯·暗锤（冬泉谷 - 永望镇; "..YELLOW.."61,39"..WHITE.."）。 "
Inst8Quest14_Prequest = "无"
Inst8Quest14_Folgequest = "有，炽热板甲护手"
--
Inst8Quest14name1 = "设计图：炽热板甲护手 "
Inst8Quest14name2 = "炽热板甲护手"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst8Quest1_HORDE = Inst8Quest1
Inst8Quest1_HORDE_Level = Inst8Quest1_Level
Inst8Quest1_HORDE_Attain = Inst8Quest1_Attain
Inst8Quest1_HORDE_Aim = Inst8Quest1_Aim
Inst8Quest1_HORDE_Location = Inst8Quest1_Location
Inst8Quest1_HORDE_Note = Inst8Quest1_Note
Inst8Quest1_HORDE_Prequest = Inst8Quest1_Prequest
Inst8Quest1_HORDE_Folgequest = Inst8Quest1_Folgequest
Inst8Quest1PreQuest_HORDE = Inst8Quest1PreQuest
--
Inst8Quest1name1_HORDE = Inst8Quest1name1
Inst8Quest1name2_HORDE = Inst8Quest1name2

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst8Quest2_HORDE = Inst8Quest2
Inst8Quest2_HORDE_Level = Inst8Quest2_Level
Inst8Quest2_HORDE_Attain = Inst8Quest2_Attain
Inst8Quest2_HORDE_Aim = Inst8Quest2_Aim
Inst8Quest2_HORDE_Location = Inst8Quest2_Location
Inst8Quest2_HORDE_Note = Inst8Quest2_Note
Inst8Quest2_HORDE_Prequest = Inst8Quest2_Prequest
Inst8Quest2_HORDE_Folgequest = Inst8Quest2_Folgequest
--
Inst8Quest2name1_HORDE = Inst8Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst8Quest3_HORDE = Inst8Quest3
Inst8Quest3_HORDE_Level = Inst8Quest3_Level
Inst8Quest3_HORDE_Attain = Inst8Quest3_Attain
Inst8Quest3_HORDE_Aim = Inst8Quest3_Aim
Inst8Quest3_HORDE_Location = Inst8Quest3_Location
Inst8Quest3_HORDE_Note = Inst8Quest3_Note
Inst8Quest3_HORDE_Prequest = Inst8Quest3_Prequest
Inst8Quest3_HORDE_Folgequest = Inst8Quest3_Folgequest
--
Inst8Quest3name1_HORDE = Inst8Quest3name1

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst8Quest4_HORDE = Inst8Quest4
Inst8Quest4_HORDE_Level = Inst8Quest4_Level
Inst8Quest4_HORDE_Attain = Inst8Quest4_Attain
Inst8Quest4_HORDE_Aim = Inst8Quest4_Aim
Inst8Quest4_HORDE_Location = Inst8Quest4_Location
Inst8Quest4_HORDE_Note = Inst8Quest4_Note
Inst8Quest4_HORDE_Prequest = Inst8Quest4_Prequest
Inst8Quest4_HORDE_Folgequest = Inst8Quest4_Folgequest
--
Inst8Quest4name1_HORDE = Inst8Quest4name1

--Quest 5 Horde
Inst8Quest5_HORDE = "5. 座狼的首领"
Inst8Quest5_HORDE_Level = "59"
Inst8Quest5_HORDE_Attain = "55"
Inst8Quest5_HORDE_Aim = "杀死血斧座狼的领袖，哈雷肯。"
Inst8Quest5_HORDE_Location = "神射手贾拉玛弗（荒芜之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst8Quest5_HORDE_Note = "哈雷肯在"..YELLOW.."[17]"..WHITE.."。"
Inst8Quest5_HORDE_Prequest = "无"
Inst8Quest5_HORDE_Folgequest = "无"
--
Inst8Quest5name1_HORDE = "阿斯托里长袍"
Inst8Quest5name2_HORDE = "吊钩外套"
Inst8Quest5name3_HORDE = "碧鳞胸甲"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst8Quest6_HORDE = Inst8Quest6
Inst8Quest6_HORDE_Level = Inst8Quest6_Level
Inst8Quest6_HORDE_Attain = Inst8Quest6_Attain
Inst8Quest6_HORDE_Aim = Inst8Quest6_Aim
Inst8Quest6_HORDE_Location = Inst8Quest6_Location
Inst8Quest6_HORDE_Note = Inst8Quest6_Note
Inst8Quest6_HORDE_Prequest = Inst8Quest6_Prequest
Inst8Quest6_HORDE_Folgequest = Inst8Quest6_Folgequest
--
Inst8Quest6name1_HORDE = Inst8Quest6name1

--Quest 7 Horde
Inst8Quest7_HORDE = "7. 狡猾的比修"
Inst8Quest7_HORDE_Level = "59"
Inst8Quest7_HORDE_Attain = "55"
Inst8Quest7_HORDE_Aim = "到黑石塔去查明比修的下落。"
Inst8Quest7_HORDE_Location = "雷克斯洛特（荒芜之地 - 卡加斯; "..YELLOW.."5,47"..WHITE.."）"
Inst8Quest7_HORDE_Note = "比修在"..YELLOW.."[8]"..WHITE.."。"
Inst8Quest7_HORDE_Prequest = "无"
Inst8Quest7_HORDE_Folgequest = "有，比修的装置"
-- No Rewards for this quest

--Quest 8 Horde
Inst8Quest8_HORDE = "8. 比修的装置"
Inst8Quest8_HORDE_Level = "59"
Inst8Quest8_HORDE_Attain = "55"
Inst8Quest8_HORDE_Aim = "找到比修的装置并把它们还给她。你记得她说过她把装置藏在城市的最底层。"
Inst8Quest8_HORDE_Location = "比修（黑石塔下层; "..YELLOW.."[3]"..WHITE.."）"
Inst8Quest8_HORDE_Note = "你可以在在通往烟网蛛后的路上找到比修的装置"..YELLOW.."[13]"..WHITE.."。"
Inst8Quest8_HORDE_Prequest = "有，狡猾的比修"
Inst8Quest8_HORDE_Folgequest = "有，比修的侦查报告"
Inst8Quest8FQuest_HORDE = "true"
--
Inst8Quest8name1_HORDE = "乱风手套"
Inst8Quest8name2_HORDE = "海港束带"

--Quest 9 Horde  (same as Quest 9 Alliance)
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
Inst8Quest10_HORDE = "10. 高图斯的命令"
Inst8Quest10_HORDE_Level = "60"
Inst8Quest10_HORDE_Attain = "55"
Inst8Quest10_HORDE_Aim = "杀死欧莫克大王、指挥官沃恩和维姆萨拉克。找到重要的黑石文件，然后向卡加斯的军官高图斯汇报。"
Inst8Quest10_HORDE_Location = "高图斯（荒芜之地 - 卡加斯; "..YELLOW.."65,22"..WHITE.."）"
Inst8Quest10_HORDE_Note = "奥妮克希亚钥匙前导任务。指挥官沃恩在"..YELLOW.."[9]"..WHITE.."，欧莫克大王在 "..YELLOW.."[5]"..WHITE.."，维姆萨拉克在 "..YELLOW.."[19]"..WHITE.."。黑石文件在3个 Boss 的其中一个边上。"
Inst8Quest10_HORDE_Prequest = "无"
Inst8Quest10_HORDE_Folgequest = "有，伊崔格的智慧  -> 为部落而战（"..YELLOW.."黑石塔上层"..WHITE.."）"
--
Inst8Quest10name1_HORDE = "Wyrmthalak's Shackles"
Inst8Quest10name2_HORDE = "Omokk's Girth Restrainer"
Inst8Quest10name3_HORDE = "Halycon's Muzzle"
Inst8Quest10name4_HORDE = "Vosh'gajin's Strand"
Inst8Quest10name5_HORDE = "Voone's Vice Grips"

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst8Quest11_HORDE = Inst8Quest11
Inst8Quest11_HORDE_Level = Inst8Quest11_Level
Inst8Quest11_HORDE_Attain = Inst8Quest11_Attain
Inst8Quest11_HORDE_Aim = Inst8Quest11_Aim
Inst8Quest11_HORDE_Location = Inst8Quest11_Location
Inst8Quest11_HORDE_Note = Inst8Quest11_Note
Inst8Quest11_HORDE_Prequest = Inst8Quest11_Prequest
Inst8Quest11_HORDE_Folgequest = Inst8Quest11_Folgequest
Inst8Quest11PreQuest_HORDE = Inst8Quest11PreQuest
-- No Rewards for this quest

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst8Quest12_HORDE = Inst8Quest12
Inst8Quest12_HORDE_Level = Inst8Quest12_Level
Inst8Quest12_HORDE_Attain = Inst8Quest12_Attain
Inst8Quest12_HORDE_Aim = Inst8Quest12_Aim
Inst8Quest12_HORDE_Location = Inst8Quest12_Location
Inst8Quest12_HORDE_Note = Inst8Quest12_Note
Inst8Quest12_HORDE_Prequest = Inst8Quest12_Prequest
Inst8Quest12_HORDE_Folgequest = Inst8Quest12_Folgequest
Inst8Quest12PreQuest_HORDE = Inst8Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst8Quest13_HORDE = Inst8Quest13
Inst8Quest13_HORDE_Level = Inst8Quest13_Level
Inst8Quest13_HORDE_Attain = Inst8Quest13_Attain
Inst8Quest13_HORDE_Aim = Inst8Quest13_Aim
Inst8Quest13_HORDE_Location = Inst8Quest13_Location
Inst8Quest13_HORDE_Note = Inst8Quest13_Note
Inst8Quest13_HORDE_Prequest = Inst8Quest13_Prequest
Inst8Quest13_HORDE_Folgequest = Inst8Quest13_Folgequest
--
Inst8Quest13name1_HORDE = Inst8Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst8Quest14_HORDE = Inst8Quest14
Inst8Quest14_HORDE_Level = Inst8Quest14_Level
Inst8Quest14_HORDE_Attain = Inst8Quest14_Attain
Inst8Quest14_HORDE_Aim = Inst8Quest14_Aim
Inst8Quest14_HORDE_Location = Inst8Quest14_Location
Inst8Quest14_HORDE_Note = Inst8Quest14_Note
Inst8Quest14_HORDE_Prequest = Inst8Quest14_Prequest
Inst8Quest14_HORDE_Folgequest = Inst8Quest14_Folgequest
--
Inst8Quest14name1_HORDE = Inst8Quest14name1
Inst8Quest14name2_HORDE = Inst8Quest14name2



--------------- INST9 - Upper Blackrock Spire (UBRS) ---------------

Inst9Story = "黑石深渊深处的巨大堡垒是由矮人建筑大师弗兰克罗恩·铸铁所设计的。这个堡垒是矮人力量的象征并被邪恶的黑铁矮人占据了数个世纪。然而，奈法利安——死亡之翼狡猾的儿子——对这个巨大的堡垒别有意图。他和他的黑龙军团占据了上层黑石塔并向占据着黑石深渊的黑铁矮人宣战。奈法利安知道矮人是由强大的火元素拉格纳罗斯所领导的，所以他立志要摧毁他的敌人并将黑石深渊全都占为己有。"
Inst9Caption = "黑石塔上层"
Inst9QAA = "11 个任务"
Inst9QAH = "12 个任务"

--Quest 1 Alliance
Inst9Quest1 = "1. 监护者"
Inst9Quest1_Level = "60"
Inst9Quest1_Attain = "57"
Inst9Quest1_Aim = "到冬泉谷去找到哈尔琳，把奥比的鳞片交给她。"
Inst9Quest1_Location = "奥比（黑石塔上层; "..YELLOW.."[7]"..WHITE.."）"
Inst9Quest1_Note = "你可以在竞技场边上的房间找到奥比"..YELLOW.."[7]"..WHITE.."。它呆在一个突出物上面。\n哈尔琳在冬泉谷（"..YELLOW.."54,51"..WHITE.."）。在冬泉谷的洞里的最里面通过站在传送符文上从而到她身边。"
Inst9Quest1_Prequest = "无"
Inst9Quest1_Folgequest = "有，蓝龙之怒"
-- No Rewards for this quest

--Quest 2 Alliance
Inst9Quest2 = "2. 芬克·恩霍尔，为您效劳！"
Inst9Quest2_Level = "60"
Inst9Quest2_Attain = "58"
Inst9Quest2_Aim = "与永望镇的玛雷弗斯·暗锤谈一谈。"
Inst9Quest2_Location = "芬克·恩霍尔（黑石塔上层; "..YELLOW.."[8]"..WHITE.."）"
Inst9Quest2_Note = "芬克·恩霍尔会在拨完比斯巨兽的皮后出现。玛雷弗斯·暗锤在（冬泉谷 - 永望镇; "..YELLOW.."61,38"..WHITE.."）。"
Inst9Quest2_Prequest = "无"
Inst9Quest2_Folgequest = "有，阿卡纳护腿，血色学者之帽，嗜血胸甲"
-- No Rewards for this quest

--Quest 3 Alliance
Inst9Quest3 = "3. 冷冻龙蛋"
Inst9Quest3_Level = "60"
Inst9Quest3_Attain = "57"
Inst9Quest3_Aim = "在孵化间对着某颗龙蛋使用龙蛋冷冻器初号机。"
Inst9Quest3_Location = "丁奇·斯迪波尔（燃烧平原 - 烈焰峰; "..YELLOW.."65,24"..WHITE.."）"
Inst9Quest3_Note = "你可以在烈焰之父的房间找到龙蛋"..YELLOW.."[2]"..WHITE.."。"
Inst9Quest3_Prequest = "有，冰风奇美拉角 -> 返回丁奇身边"
Inst9Quest3_Folgequest = "有，莱尼德·巴萨罗梅 -> 贝蒂娜·比格辛克（"..YELLOW.."通灵学院"..WHITE.."）"
Inst9Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst9Quest4 = "4. 艾博希尔之眼"
Inst9Quest4_Level = "60"
Inst9Quest4_Attain = "55"
Inst9Quest4_Aim = "将艾博希尔之眼交给艾萨拉的海达克西斯公爵。"
Inst9Quest4_Location = "海达克西斯公爵（艾萨拉; "..YELLOW.."79,73"..WHITE.."）"
Inst9Quest4_Note = "你可以找到艾博希尔在"..YELLOW.."[1]"..WHITE.."。"
Inst9Quest4_Prequest = "有，雷暴和磐石"
Inst9Quest4_Folgequest = "有，熔火之心"
Inst9Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst9Quest5 = "5. 达基萨斯将军之死"
Inst9Quest5_Level = "60"
Inst9Quest5_Attain = "55"
Inst9Quest5_Aim = "到黑石塔去杀掉达基萨斯将军，完成任务之后就回到麦克斯韦尔元帅那里复命。"
Inst9Quest5_Location = "麦克斯韦尔元帅（燃烧平原 - 摩根的岗哨; "..YELLOW.."82,68"..WHITE.."）"
Inst9Quest5_Note = "达基萨斯将军在"..YELLOW.."[9]"..WHITE.."。"
Inst9Quest5_Prequest = "有，达基萨斯将军的命令（"..YELLOW.."黑石塔下层"..WHITE.."）"
Inst9Quest5_Folgequest = "无"
Inst9Quest5PreQuest = "true"
--
Inst9Quest5name1 = "暴君印记"
Inst9Quest5name2 = "比斯巨兽之眼"
Inst9Quest5name3 = "黑手饰物"

--Quest6 Alliance
Inst9Quest6 = "6. 末日扣环"
Inst9Quest6_Level = "60"
Inst9Quest6_Attain = "57"
Inst9Quest6_Aim = "将末日扣环交给燃烧平原的玛亚拉·布莱特文。"
Inst9Quest6_Location = "玛亚拉·布莱特文（燃烧平原 - 摩根的岗哨; "..YELLOW.."84,69"..WHITE.."）"
Inst9Quest6_Note = "你可以接到这个任务的前续任务，从雷明顿·瑞治维尔伯爵（暴风城 - 暴风要塞; "..YELLOW.."74,30"..WHITE.."）。 末日扣环在烈焰之父的房间"..YELLOW.."[3]"..WHITE.."的一个箱子里。"
Inst9Quest6_Prequest = "有，玛亚拉·布莱特文"
Inst9Quest6_Folgequest = "有，瑞治维尔的箱子"
Inst9Quest6PreQuest = "true"
--
Inst9Quest6name1 = "迅捷皮靴"
Inst9Quest6name2 = "瞬击护臂"

--Quest7 Alliance
Inst9Quest7 = "7. 龙火护符"
Inst9Quest7_Level = "60"
Inst9Quest7_Attain = "52"
Inst9Quest7_Aim = "你必须从达基萨斯将军身上取回黑龙勇士之血，你可以在黑石塔的晋升大厅后面的房间里找到他。"
Inst9Quest7_Location = "哈尔琳（冬泉谷; "..YELLOW.."54,51"..WHITE.."）"
Inst9Quest7_Note = "联盟奥妮克希亚钥匙系列任务的最后一步。达基萨斯将军在"..YELLOW.."[9]"..WHITE.."。"
Inst9Quest7_Prequest = "有，巨龙之眼"
Inst9Quest7_Folgequest = "无"
Inst9Quest7PreQuest = "true"
--
Inst9Quest7name1 = "龙火护符"

--Quest8 Alliance
Inst9Quest8 = "8. 黑手的命令"
Inst9Quest8_Level = "60"
Inst9Quest8_Attain = "55"
Inst9Quest8_Aim = "真是个愚蠢的兽人。看来你需要找到那枚烙印并获得达基萨斯徽记才可以使用命令宝珠。"
Inst9Quest8_Location = "黑手的命令（裂盾军需官掉落; "..YELLOW.."副本入口地图[7]"..WHITE.."）"
Inst9Quest8_Note = "黑翼之巢的进门任务。你可以在黑石塔副本的门口右侧附近找到裂盾军需官，宝珠就在达基萨斯将军"..YELLOW.."[9]"..WHITE.."身后。 "
Inst9Quest8_Prequest = "无"
Inst9Quest8_Folgequest = "无"
-- No Rewards for this quest

--Quest 9 Alliance
Inst9Quest9 = "9. 最后的准备"
Inst9Quest9_Level = "60"
Inst9Quest9_Attain = "60"
Inst9Quest9_Aim = "从黑石塔的兽人那儿收集40副黑石护腕，把它们和一瓶超级能量合剂一起交给黑石山的伯德雷。"
Inst9Quest9_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst9Quest9_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。黑石塔的兽人掉落黑石护腕。超级能量合剂是炼金制造。"
Inst9Quest9_Prequest = "有，瓦塔拉克护符的右瓣（"..YELLOW.."黑石塔下层"..WHITE.."）"
Inst9Quest9_Folgequest = "有，瓦塔拉克公爵"
Inst9Quest9PreQuest = "true"
-- No Rewards for this quest

--Quest 10 Alliance
Inst9Quest10 = "10. 瓦塔拉克公爵"
Inst9Quest10_Level = "60"
Inst9Quest10_Attain = "60"
Inst9Quest10_Aim = "在比斯巨兽的房间里使用召唤火盆，召唤瓦塔拉克公爵。杀死他，对尸体使用瓦塔拉克的饰品。然后将瓦塔拉克的饰品还给瓦塔拉克公爵之魂。"
Inst9Quest10_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst9Quest10_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。召唤瓦塔拉克公爵在 "..YELLOW.."[8]"..WHITE.."。向伯德雷回复领取奖励。"
Inst9Quest10_Prequest = "有，最后的准备"
Inst9Quest10_Folgequest = "有，向伯德雷回复 "
Inst9Quest10FQuest = "true"
--
Inst9Quest10name1 = "符咒火盆"
Inst9Quest10name2 = "符咒火盆用户手册"

--Quest 11 Alliance
Inst9Quest11 = "11. 恶魔熔炉（煅造-铸甲大师任务）"
Inst9Quest11_Level = "60"
Inst9Quest11_Attain = "58"
Inst9Quest11_Aim = "到黑石塔去找到古拉鲁克。杀死他，然后用血污长矛刺入他的尸体。当他的灵魂被吸干后，这支矛就会成为穿魂长矛。你还必须找到未铸造的符文覆饰胸甲。将穿魂长矛和未铸造的符文覆饰胸甲都交给冬泉谷的罗拉克斯。"
Inst9Quest11_Location = "罗拉克斯（冬泉谷; "..YELLOW.."64,74"..WHITE.."）"
Inst9Quest11_Note = "煅造任务。古拉鲁克在"..YELLOW.."[5]"..WHITE.."。"
Inst9Quest11_Prequest = "无"
Inst9Quest11_Folgequest = "无"
--
Inst9Quest11name1 = "设计图-魔铸胸甲"
Inst9Quest11name2 = "屠魔药剂"
Inst9Quest11name3 = "魔吻背包"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst9Quest1_HORDE = Inst9Quest1
Inst9Quest1_HORDE_Level = Inst9Quest1_Level
Inst9Quest1_HORDE_Attain = Inst9Quest1_Attain
Inst9Quest1_HORDE_Aim = Inst9Quest1_Aim
Inst9Quest1_HORDE_Location = Inst9Quest1_Location
Inst9Quest1_HORDE_Note = Inst9Quest1_Note
Inst9Quest1_HORDE_Prequest = Inst9Quest1_Prequest
Inst9Quest1_HORDE_Folgequest = Inst9Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst9Quest2_HORDE = Inst9Quest2
Inst9Quest2_HORDE_Level = Inst9Quest2_Level
Inst9Quest2_HORDE_Attain = Inst9Quest2_Attain
Inst9Quest2_HORDE_Aim = Inst9Quest2_Aim
Inst9Quest2_HORDE_Location = Inst9Quest2_Location
Inst9Quest2_HORDE_Note = Inst9Quest2_Note
Inst9Quest2_HORDE_Prequest = Inst9Quest2_Prequest
Inst9Quest2_HORDE_Folgequest = Inst9Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst9Quest3_HORDE = Inst9Quest3
Inst9Quest3_HORDE_Level = Inst9Quest3_Level
Inst9Quest3_HORDE_Attain = Inst9Quest3_Attain
Inst9Quest3_HORDE_Aim = Inst9Quest3_Aim
Inst9Quest3_HORDE_Location = Inst9Quest3_Location
Inst9Quest3_HORDE_Note = Inst9Quest3_Note
Inst9Quest3_HORDE_Prequest = Inst9Quest3_Prequest
Inst9Quest3_HORDE_Folgequest = Inst9Quest3_Folgequest
Inst9Quest3PreQuest_HORDE = Inst9Quest3PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst9Quest4_HORDE = Inst9Quest4
Inst9Quest4_HORDE_Level = Inst9Quest4_Level
Inst9Quest4_HORDE_Attain = Inst9Quest4_Attain
Inst9Quest4_HORDE_Aim = Inst9Quest4_Aim
Inst9Quest4_HORDE_Location = Inst9Quest4_Location
Inst9Quest4_HORDE_Note = Inst9Quest4_Note
Inst9Quest4_HORDE_Prequest = Inst9Quest4_Prequest
Inst9Quest4_HORDE_Folgequest = Inst9Quest4_Folgequest
Inst9Quest4PreQuest_HORDE = Inst9Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde
Inst9Quest5_HORDE = "5. 黑暗石板"
Inst9Quest5_HORDE_Level = "60"
Inst9Quest5_HORDE_Attain = "57"
Inst9Quest5_HORDE_Aim = "将黑暗石板交给卡加斯的暗法师薇薇安·拉格雷。"
Inst9Quest5_HORDE_Location = "薇薇安·拉格雷（荒芜之地 - 卡加斯; "..YELLOW.."2,47"..WHITE.."）"
Inst9Quest5_HORDE_Note = "你可以接到前续任务从药剂师金格（幽暗城 - 炼金房; "..YELLOW.."50,68"..WHITE.."）。黑暗石板在烈焰之父的房间（"..YELLOW.."[3]"..WHITE.."）。"
Inst9Quest5_HORDE_Prequest = "有，薇薇安·拉格雷和黑暗石板"
Inst9Quest5_HORDE_Folgequest = "无"
Inst9Quest5PreQuest_HORDE = "true"
--
Inst9Quest5name1_HORDE = "迅捷皮靴"
Inst9Quest5name2_HORDE = "瞬击护臂"

--Quest6 Horde
Inst9Quest6_HORDE = "6. 为部落而战！"
Inst9Quest6_HORDE_Level = "60"
Inst9Quest6_HORDE_Attain = "55"
Inst9Quest6_HORDE_Aim = "去黑石塔杀死大酋长雷德·黑手，带着他的头颅返回奥格瑞玛。"
Inst9Quest6_HORDE_Location = "萨尔（奥格瑞玛; "..YELLOW.."31,38"..WHITE.."）"
Inst9Quest6_HORDE_Note = "奥妮克希亚钥匙任务。大酋长雷德·黑手在 "..YELLOW.."[6]"..WHITE.."。"
Inst9Quest6_HORDE_Prequest = "有，高图斯的命令 -> 伊崔格的智慧"
Inst9Quest6_HORDE_Folgequest = "有，部落的勇士"
Inst9Quest6PreQuest_HORDE = "true"
--
Inst9Quest6name1_HORDE = "暴君印记"
Inst9Quest6name2_HORDE = "比斯巨兽之眼"
Inst9Quest6name3_HORDE = "黑手饰物"

--Quest7 Horde
Inst9Quest7_HORDE = "7. 黑龙幻像"
Inst9Quest7_HORDE_Level = "60"
Inst9Quest7_HORDE_Attain = "57"
Inst9Quest7_HORDE_Aim = "到黑石塔去收集20颗黑色龙人的眼球，完成任务之后回到巫女麦兰达那里。"
Inst9Quest7_HORDE_Location = "巫女麦兰达（西瘟疫之地; "..YELLOW.."50,77"..WHITE.."）"
Inst9Quest7_HORDE_Note = "黑色的龙会掉落眼球。"
Inst9Quest7_HORDE_Prequest = "有，部落的勇士 -> 雷克萨的证明"
Inst9Quest7_HORDE_Folgequest = "有，埃博斯塔夫"
Inst9Quest7FQuest_HORDE = "true"
-- No Rewards for this quest

--Quest8 Horde
Inst9Quest8_HORDE = "8. 黑龙勇士之血"
Inst9Quest8_HORDE_Level = "60"
Inst9Quest8_HORDE_Attain = "56"
Inst9Quest8_HORDE_Aim = "到黑石塔去杀掉达基萨斯将军，把它的血交给罗卡鲁。"
Inst9Quest8_HORDE_Location = "罗卡鲁（凄凉之地 - 葬影村; "..YELLOW.."25,71"..WHITE.."）"
Inst9Quest8_HORDE_Note = "部落奥妮克希亚钥匙系列任务的最后一步。达基萨斯将军在"..YELLOW.."[9]"..WHITE.."。"
Inst9Quest8_HORDE_Prequest = "有，埃博斯塔夫 -> 龙骨试炼……"
Inst9Quest8_HORDE_Folgequest = "无"
Inst9Quest8FQuest_HORDE = "true"
--
Inst9Quest8name1_HORDE = "龙火护符"

--Quest 9 Horde  (same as Quest 8 Alliance)
Inst9Quest9_HORDE = "9. 黑手的命令"
Inst9Quest9_HORDE_Level = Inst9Quest8_Level
Inst9Quest9_HORDE_Attain = Inst9Quest8_Attain
Inst9Quest9_HORDE_Aim = Inst9Quest8_Aim
Inst9Quest9_HORDE_Location = Inst9Quest8_Location
Inst9Quest9_HORDE_Note = Inst9Quest8_Note
Inst9Quest9_HORDE_Prequest = Inst9Quest8_Prequest
Inst9Quest9_HORDE_Folgequest = Inst9Quest8_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 9 Alliance)
Inst9Quest10_HORDE = "10. 最后的准备"
Inst9Quest10_HORDE_Level = Inst9Quest9_Level
Inst9Quest10_HORDE_Attain = Inst9Quest9_Attain
Inst9Quest10_HORDE_Aim = Inst9Quest9_Aim
Inst9Quest10_HORDE_Location = Inst9Quest9_Location
Inst9Quest10_HORDE_Note = Inst9Quest9_Note
Inst9Quest10_HORDE_Prequest = Inst9Quest9_Prequest
Inst9Quest10_HORDE_Folgequest = Inst9Quest9_Folgequest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 10 Alliance)
Inst9Quest11_HORDE = "11. 瓦塔拉克公爵"
Inst9Quest11_HORDE_Level = Inst9Quest10_Level
Inst9Quest11_HORDE_Attain = Inst9Quest10_Attain
Inst9Quest11_HORDE_Aim = Inst9Quest10_Aim
Inst9Quest11_HORDE_Location = Inst9Quest10_Location
Inst9Quest11_HORDE_Note = Inst9Quest10_Note
Inst9Quest11_HORDE_Prequest = Inst9Quest10_Prequest
Inst9Quest11_HORDE_Folgequest = Inst9Quest10_Folgequest
--
Inst9Quest11name1_HORDE = Inst9Quest10name1
Inst9Quest11name2_HORDE = Inst9Quest10name2

--Quest 12 Horde  (same as Quest 11 Alliance)
Inst9Quest12_HORDE = "12. 恶魔熔炉"
Inst9Quest12_HORDE_Level = Inst9Quest11_Level
Inst9Quest12_HORDE_Attain = Inst9Quest11_Attain
Inst9Quest12_HORDE_Aim = Inst9Quest11_Aim
Inst9Quest12_HORDE_Location = Inst9Quest11_Location
Inst9Quest12_HORDE_Note = Inst9Quest11_Note
Inst9Quest12_HORDE_Prequest = Inst9Quest11_Prequest
Inst9Quest12_HORDE_Folgequest = Inst9Quest11_Folgequest
--
Inst9Quest12name1_HORDE = Inst9Quest11name1
Inst9Quest12name2_HORDE = Inst9Quest11name2
Inst9Quest12name3_HORDE = Inst9Quest11name3



--------------- INST10 - Dire Maul East (DM) ---------------

Inst10Story = "埃雷萨拉斯古城是在一万二千年前由当时的一批暗夜精灵法师秘密地建造的，它被用于保护艾莎拉皇后最宝贵的奥法秘密。虽然受到了世界大震动的影响，这座伟大的城市基本屹立在那里，现在其被称为厄运之槌。这座遗迹城市分为三个部分，分别被不同的生物所占据——包括幽灵般的高等精灵，邪恶的萨特和鲁莽的食人魔。只有最勇敢的冒险队伍才敢进入这个破碎的城市并面对远古大厅中邪恶力量。"
Inst10Caption = "厄运之槌（东）"
Inst10QAA = "6 个任务"
Inst10QAH = "6 个任务"

--Quest 1 Alliance
Inst10Quest1 = "1. 普希林和埃斯托尔迪"
Inst10Quest1_Level = "58"
Inst10Quest1_Attain = "54"
Inst10Quest1_Aim = "到厄运之槌去找到小鬼普希林。你可以使用任何手段从小鬼那里得到埃斯托尔迪的咒术之书。"
Inst10Quest1_Location = "埃斯托尔迪（菲拉斯 - 拉瑞斯小亭; "..YELLOW.."76,37"..WHITE.."）"
Inst10Quest1_Note = "普希林在厄运之槌"..YELLOW.."东"..WHITE.."的"..YELLOW.."[1]"..WHITE.."。你一和它说话它就跑，但是最后会停下并可以被攻击在"..YELLOW.."[2]"..WHITE.."。它还会掉落月牙钥匙，也就是厄运之槌北和西的钥匙。"
Inst10Quest1_Prequest = "无"
Inst10Quest1_Folgequest = "无"
--
Inst10Quest1name1 = "活跃之靴"
Inst10Quest1name2 = "奔行者之剑"

--Quest 2 Alliance
Inst10Quest2 = "2. 蕾瑟塔蒂丝的网"
Inst10Quest2_Level = "57"
Inst10Quest2_Attain = "54"
Inst10Quest2_Aim = "把蕾瑟塔蒂丝的网交给菲拉斯羽月要塞的拉托尼库斯·月矛。"
Inst10Quest2_Location = "拉托尼库斯·月矛（菲拉斯 - 羽月要塞; "..YELLOW.."30,46"..WHITE.."）"
Inst10Quest2_Note = "蕾瑟塔蒂丝在厄运之槌"..YELLOW.."东"..WHITE.."的"..YELLOW.."[3]"..WHITE.."。前续任务可以从铁炉堡的信使考雷·落锤接到。"
Inst10Quest2_Prequest = "有，羽月要塞"
Inst10Quest2_Folgequest = "无"
Inst10Quest2PreQuest = "true"
--
Inst10Quest2name1 = "学识匕首"

--Quest 3 Alliance
Inst10Quest3 = "3. 魔藤碎片"
Inst10Quest3_Level = "60"
Inst10Quest3_Attain = "59"
Inst10Quest3_Aim = "在厄运之槌中找到魔藤，然后从它上面采集一块碎片。只有干掉了奥兹恩之后，你才能进行采集工作。使用净化之匣安全地封印碎片，然后将其交给月光林地永夜港的拉比恩·萨图纳。"
Inst10Quest3_Location = "拉比恩·萨图纳（月光林地; "..YELLOW.."51,44"..WHITE.."）"
Inst10Quest3_Note = "奥兹恩在厄运之槌"..YELLOW.."东"..WHITE.."的"..YELLOW.."[5]"..WHITE.."。净化之匣在希利苏斯"..YELLOW.."62,54"..WHITE.."。前续任务同样来自拉比恩·萨图纳。"
Inst10Quest3_Prequest = "有，净化之匣"
Inst10Quest3_Folgequest = "无"
Inst10Quest3PreQuest = "true"
--
Inst10Quest3name1 = "米利的盾牌"
Inst10Quest3name2 = "米利的词典"

--Quest 4 Alliance
Inst10Quest4 = "4. 瓦塔拉克饰品的左瓣"
Inst10Quest4_Level = "60"
Inst10Quest4_Attain = "60"
Inst10Quest4_Aim = "使用召唤火盆召唤出伊萨利恩的灵魂，然后杀掉她。完成之后，将召唤火盆与瓦塔拉克饰品的左瓣还给伯德雷。"
Inst10Quest4_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst10Quest4_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。召唤伊萨利恩在"..YELLOW.."[5]"..WHITE.."。"
Inst10Quest4_Prequest = "有，重要的材料"
Inst10Quest4_Folgequest = "有，奥卡兹岛在你前方……"
Inst10Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst10Quest5 = "5. 瓦塔拉克饰品的右瓣"
Inst10Quest5_Level = "60"
Inst10Quest5_Attain = "60"
Inst10Quest5_Aim = "使用召唤火盆召唤出伊萨莉恩的灵魂，然后杀掉他。完成之后，将召唤火盆与瓦塔拉克公爵的饰品还给伯德雷。"
Inst10Quest5_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D]"..WHITE.."）"
Inst10Quest5_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。召唤伊萨利恩在"..YELLOW.."[5]"..WHITE.."。"
Inst10Quest5_Prequest = "有，更多重要的材料"
Inst10Quest5_Folgequest = "有，最后的准备（"..YELLOW.."黑石塔上层"..WHITE.."）"
Inst10Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst10Quest6 = "6. 监牢之链（术士任务）"
Inst10Quest6_Level = "60"
Inst10Quest6_Attain = "60"
Inst10Quest6_Aim = "到菲拉斯的厄运之槌去，从扭木广场的荒野萨特身上找到15份萨特之血，然后把它们交给腐烂之痕的戴奥。"
Inst10Quest6_Location = "衰老的戴奥（诅咒之地 - 腐烂之痕; "..YELLOW.."34,50"..WHITE.."）"
Inst10Quest6_Note = "术士召唤末日守卫任务，你可以从衰老的戴奥那里接到相关的其他任务。最容易找到荒野萨特是从厄运之槌东的“后门”进入（菲拉斯 - 拉瑞斯小亭; "..YELLOW.."77,37"..WHITE.."）。 你需要有月牙钥匙才能开门。"
Inst10Quest6_Prequest = "无"
Inst10Quest6_Folgequest = "无"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst10Quest1_HORDE = Inst10Quest1
Inst10Quest1_HORDE_Level = Inst10Quest1_Level
Inst10Quest1_HORDE_Attain = Inst10Quest1_Attain
Inst10Quest1_HORDE_Aim = Inst10Quest1_Aim
Inst10Quest1_HORDE_Location = Inst10Quest1_Location
Inst10Quest1_HORDE_Note = Inst10Quest1_Note
Inst10Quest1_HORDE_Prequest = Inst10Quest1_Prequest
Inst10Quest1_HORDE_Folgequest = Inst10Quest1_Folgequest
--
Inst10Quest1name1_HORDE = Inst10Quest1name1
Inst10Quest1name2_HORDE = Inst10Quest1name2

--Quest 2 Horde
Inst10Quest2_HORDE = "2. 蕾瑟塔蒂丝的网"
Inst10Quest2_HORDE_Level = "57"
Inst10Quest2_HORDE_Attain = "54"
Inst10Quest2_HORDE_Aim = "把蕾瑟塔蒂丝的网交给非拉斯莫沙彻营地的塔罗·刺蹄。"
Inst10Quest2_HORDE_Location = "塔罗·刺蹄（菲拉斯 - 莫沙彻营地; "..YELLOW.."76,43"..WHITE.."）"
Inst10Quest2_HORDE_Note = "蕾瑟塔蒂丝在厄运之槌"..YELLOW.."东"..WHITE.."的"..YELLOW.."[3]"..WHITE.."。前续任务接自奥格瑞玛的公告员高拉克。"
Inst10Quest2_HORDE_Prequest = "有，莫沙彻营地"
Inst10Quest2_HORDE_Folgequest = "无"
Inst10Quest2PreQuest_HORDE = "true"
--
Inst10Quest2name1_HORDE = "学识匕首"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst10Quest3_HORDE = Inst10Quest3
Inst10Quest3_HORDE_Level = Inst10Quest3_Level
Inst10Quest3_HORDE_Attain = Inst10Quest3_Attain
Inst10Quest3_HORDE_Aim = Inst10Quest3_Aim
Inst10Quest3_HORDE_Location = Inst10Quest3_Location
Inst10Quest3_HORDE_Note = Inst10Quest3_Note
Inst10Quest3_HORDE_Prequest = Inst10Quest3_Prequest
Inst10Quest3_HORDE_Folgequest = Inst10Quest3_Folgequest
--
Inst10Quest3name1_HORDE = Inst10Quest3name1
Inst10Quest3name2_HORDE = Inst10Quest3name2

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst10Quest4_HORDE = Inst10Quest4
Inst10Quest4_HORDE_Level = Inst10Quest4_Level
Inst10Quest4_HORDE_Attain = Inst10Quest4_Attain
Inst10Quest4_HORDE_Aim = Inst10Quest4_Aim
Inst10Quest4_HORDE_Location = Inst10Quest4_Location
Inst10Quest4_HORDE_Note = Inst10Quest4_Note
Inst10Quest4_HORDE_Prequest = Inst10Quest4_Prequest
Inst10Quest4_HORDE_Folgequest = Inst10Quest4_Folgequest
Inst10Quest4PreQuest_HORDE = Inst10Quest4PreQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst10Quest5_HORDE = Inst10Quest5
Inst10Quest5_HORDE_Level = Inst10Quest5_Level
Inst10Quest5_HORDE_Attain = Inst10Quest5_Attain
Inst10Quest5_HORDE_Aim = Inst10Quest5_Aim
Inst10Quest5_HORDE_Location = Inst10Quest5_Location
Inst10Quest5_HORDE_Note = Inst10Quest5_Note
Inst10Quest5_HORDE_Prequest = Inst10Quest5_Prequest
Inst10Quest5_HORDE_Folgequest = Inst10Quest5_Folgequest
Inst10Quest5PreQuest_HORDE = Inst10Quest5PreQuest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst10Quest6_HORDE = Inst10Quest6
Inst10Quest6_HORDE_Level = Inst10Quest6_Level
Inst10Quest6_HORDE_Attain = Inst10Quest6_Attain
Inst10Quest6_HORDE_Aim = Inst10Quest6_Aim
Inst10Quest6_HORDE_Location = Inst10Quest6_Location
Inst10Quest6_HORDE_Note = Inst10Quest6_Note
Inst10Quest6_HORDE_Prequest = Inst10Quest6_Prequest
Inst10Quest6_HORDE_Folgequest = Inst10Quest6_Folgequest
-- No Rewards for this quest



--------------- INST11 - Dire Maul North (DM) ---------------

Inst11Story = "埃雷萨拉斯古城是在一万二千年前由当时的一批暗夜精灵法师秘密地建造的，它被用于保护艾莎拉皇后最宝贵的奥法秘密。虽然受到了世界大震动的影响，这座伟大的城市基本屹立在那里，现在其被称为厄运之槌。这座遗迹城市分为三个部分，分别被不同的生物所占据——包括幽灵般的高等精灵，邪恶的萨特和鲁莽的食人魔。只有最勇敢的冒险队伍才敢进入这个破碎的城市并面对远古大厅中邪恶力量。"
Inst11Caption = "厄运之槌（北）"
Inst11QAA = "4 个任务"
Inst11QAH = "4 个任务"

--Quest 1 Alliance
Inst11Quest1 = "1. 破碎的陷阱 "
Inst11Quest1_Level = "60"
Inst11Quest1_Attain = "60"
Inst11Quest1_Aim = "修复这个陷阱。"
Inst11Quest1_Location = "破碎的陷阱（厄运之槌; "..YELLOW.."北"..WHITE.."）"
Inst11Quest1_Note = "可重复任务。修好陷阱你必须有[瑟银零件]和一瓶[冰霜之油]。"
Inst11Quest1_Prequest = "无"
Inst11Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst11Quest2 = "2. 戈多克食人魔装"
Inst11Quest2_Level = "60"
Inst11Quest2_Attain = "57"
Inst11Quest2_Aim = "把4份符文布卷、8块硬甲皮、2卷符文线和一份食人魔鞣酸交给诺特·希姆加克。他现在被拴在厄运之槌的戈多克食人魔那边。"
Inst11Quest2_Location = "诺特·希姆加克（厄运之槌; "..YELLOW.."北，[4]"..WHITE.."）"
Inst11Quest2_Note = "可重复任务，食人魔鞣酸可以从"..YELLOW.."（上层）[4]"..WHITE.."附近得到。"
Inst11Quest2_Prequest = "无"
Inst11Quest2_Folgequest = "无"
--
Inst11Quest2name1 = "戈多克食人魔装"

--Quest 3 Alliance
Inst11Quest3 = "3. 救诺特出去！"
Inst11Quest3_Level = "60"
Inst11Quest3_Attain = "60"
Inst11Quest3_Aim = "为诺特找到食人魔镣铐钥匙。"
Inst11Quest3_Location = "诺特·希姆加克（厄运之槌; "..YELLOW.."北，[4]"..WHITE.."）"
Inst11Quest3_Note = "可重复任务，副本里任何食人魔都可能掉落镣铐钥匙。"
Inst11Quest3_Prequest = "无"
Inst11Quest3_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Alliance
Inst11Quest4 = "4. 戈多克食人魔的事务"
Inst11Quest4_Level = "60"
Inst11Quest4_Attain = "56"
Inst11Quest4_Aim = "找到戈多克力量护手，并将它交给厄运之槌的克罗卡斯。"
Inst11Quest4_Location = "克罗卡斯（厄运之槌; "..YELLOW.."北，[5]"..WHITE.."）"
Inst11Quest4_Note = "王子在厄运之槌"..YELLOW.."西"..WHITE.."的"..YELLOW.."[7]"..WHITE.."。力量护手在王子附近的一个箱子里，交任务时你也必须确保你有“当国王真好”这个状态。"
Inst11Quest4_Prequest = "无"
Inst11Quest4_Folgequest = "无"
--
Inst11Quest4name1 = "戈多克裹手"
Inst11Quest4name2 = "戈多克手套"
Inst11Quest4name3 = "戈多克手甲"
Inst11Quest4name4 = "戈多克护手"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst11Quest1_HORDE = Inst11Quest1
Inst11Quest1_HORDE_Level = Inst11Quest1_Level
Inst11Quest1_HORDE_Attain = Inst11Quest1_Attain
Inst11Quest1_HORDE_Aim = Inst11Quest1_Aim
Inst11Quest1_HORDE_Location = Inst11Quest1_Location
Inst11Quest1_HORDE_Note = Inst11Quest1_Note
Inst11Quest1_HORDE_Prequest = Inst11Quest1_Prequest
Inst11Quest1_HORDE_Folgequest = Inst11Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst11Quest2_HORDE = Inst11Quest2
Inst11Quest2_HORDE_Level = Inst11Quest2_Level
Inst11Quest2_HORDE_Attain = Inst11Quest2_Attain
Inst11Quest2_HORDE_Aim = Inst11Quest2_Aim
Inst11Quest2_HORDE_Location = Inst11Quest2_Location
Inst11Quest2_HORDE_Note = Inst11Quest2_Note
Inst11Quest2_HORDE_Prequest = Inst11Quest2_Prequest
Inst11Quest2_HORDE_Folgequest = Inst11Quest2_Folgequest
--
Inst11Quest2name1_HORDE = Inst11Quest2name1

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst11Quest3_HORDE = Inst11Quest3
Inst11Quest3_HORDE_Level = Inst11Quest3_Level
Inst11Quest3_HORDE_Attain = Inst11Quest3_Attain
Inst11Quest3_HORDE_Aim = Inst11Quest3_Aim
Inst11Quest3_HORDE_Location = Inst11Quest3_Location
Inst11Quest3_HORDE_Note = Inst11Quest3_Note
Inst11Quest3_HORDE_Prequest = Inst11Quest3_Prequest
Inst11Quest3_HORDE_Folgequest = Inst11Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst11Quest4_HORDE = Inst11Quest4
Inst11Quest4_HORDE_Level = Inst11Quest4_Level
Inst11Quest4_HORDE_Attain = Inst11Quest4_Attain
Inst11Quest4_HORDE_Aim = Inst11Quest4_Aim
Inst11Quest4_HORDE_Location = Inst11Quest4_Location
Inst11Quest4_HORDE_Note = Inst11Quest4_Note
Inst11Quest4_HORDE_Prequest = Inst11Quest4_Prequest
Inst11Quest4_HORDE_Folgequest = Inst11Quest4_Folgequest
--
Inst11Quest4name1_HORDE = Inst11Quest4name1
Inst11Quest4name2_HORDE = Inst11Quest4name2
Inst11Quest4name3_HORDE = Inst11Quest4name3
Inst11Quest4name4_HORDE = Inst11Quest4name4



--------------- INST12 - Dire Maul West (DM) ---------------

Inst12Story = "埃雷萨拉斯古城是在一万二千年前由当时的一批暗夜精灵法师秘密地建造的，它被用于保护艾莎拉皇后最宝贵的奥法秘密。虽然受到了世界大震动的影响，这座伟大的城市基本屹立在那里，现在其被称为厄运之槌。这座遗迹城市分为三个部分，分别被不同的生物所占据——包括幽灵般的高等精灵，邪恶的萨特和鲁莽的食人魔。只有最勇敢的冒险队伍才敢进入这个破碎的城市并面对远古大厅中邪恶力量。"
Inst12Caption = "厄运之槌（西）"
Inst12QAA = "17 个任务"
Inst12QAH = "17 个任务"

--Quest 1 Alliance
Inst12Quest1 = "1. 精灵的传说"
Inst12Quest1_Level = "60"
Inst12Quest1_Attain = "54"
Inst12Quest1_Aim = "到厄运之槌去寻找卡里尔·温萨鲁斯。向羽月要塞的学者卢索恩·纹角报告你所找到的信息。"
Inst12Quest1_Location = "学者卢索恩·纹角（菲拉斯 - 羽月要塞; "..YELLOW.."31,43"..WHITE.."）"
Inst12Quest1_Note = "卡里尔·温萨鲁斯在厄运之槌"..YELLOW.."图书馆（西）"..WHITE.."。"
Inst12Quest1_Prequest = "无"
Inst12Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst12Quest2 = "2. 伊莫塔尔的疯狂"
Inst12Quest2_Level = "60"
Inst12Quest2_Attain = "56"
Inst12Quest2_Aim = "你必须干掉5座水晶塔周围的守卫，那5座水晶塔维持着关押伊莫塔尔的监狱。一旦水晶塔的能量被削弱，伊莫塔尔周围的能量力场就会消散。\n 进入伊莫塔尔的监狱，干掉站在中间的那个恶魔。最后，在图书馆挑战托塞德林王子。当任务完成之后，到庭院中去找辛德拉古灵。"
Inst12Quest2_Location = "辛德拉古灵（厄运之槌; "..YELLOW.."西，（上层）[1]"..WHITE.."）"
Inst12Quest2_Note = "水晶塔被标记为"..BLUE.."[B]"..WHITE.."。伊莫塔尔在"..YELLOW.."[6]"..WHITE.."，托塞德林王子在"..YELLOW.."[7]"..WHITE.."。"
Inst12Quest2_Prequest = "无"
Inst12Quest2_Folgequest = "有，辛德拉的宝藏"
-- No Rewards for this quest

--Quest 3 Alliance
Inst12Quest3 = "3. 辛德拉的宝藏"
Inst12Quest3_Level = "60"
Inst12Quest3_Attain = "57"
Inst12Quest3_Aim = "返回图书馆去找到辛德拉的宝藏。拿取你的奖励吧！"
Inst12Quest3_Location = "辛德拉古灵（厄运之槌; "..YELLOW.."西，（上层）[1]"..WHITE.."）"
Inst12Quest3_Note = "你可以在图书馆的梯子下面找到宝藏"..YELLOW.."[7]"..WHITE.."。"
Inst12Quest3_Prequest = "有，伊莫塔尔的疯狂"
Inst12Quest3_Folgequest = "无"
Inst12Quest3FQuest = "true"
--
Inst12Quest3name1 = "莎草长靴"
Inst12Quest3name2 = "密林头盔"
Inst12Quest3name3 = "碾骨者"

--Quest 4 Alliance
Inst12Quest4 = "4. 克索诺斯恐惧战马（术士任务）"
Inst12Quest4_Level = "60"
Inst12Quest4_Attain = "60"
Inst12Quest4_Aim = "阅读莫苏尔的指南，并召唤出一匹克索诺斯恐惧战马，击败它，然后控制它的灵魂。."
Inst12Quest4_Location = "莫苏尔（燃烧平原; "..YELLOW.."12,31"..WHITE.."）"
Inst12Quest4_Note = "术士的史诗战马任务的最后一步。首先必须关闭水晶塔"..BLUE.."[B]"..WHITE.."。和需要杀掉伊莫塔尔"..YELLOW.."[6]"..WHITE.."。然后你可以召唤。准备20个以上的灵魂碎片是必须的，你必须消耗碎片才能维持法阵。杀死恐惧战马后，和马的灵魂对话即可完成任务。"
Inst12Quest4_Prequest = "有，末日蜡烛（"..YELLOW.."通灵学院"..WHITE.."）"
Inst12Quest4_Folgequest = "无"
Inst12Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst12Quest5 = "5. 翡翠梦境（德鲁伊饰品任务）"
Inst12Quest5_Level = "60"
Inst12Quest5_Attain = "59"
Inst12Quest5_Aim = "将这本典籍交给它的主人。"
Inst12Quest5_Location = "翡翠梦境（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest5_Note = "奖励德鲁伊的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest5_Prequest = "无"
Inst12Quest5_Folgequest = "无"
--
Inst12Quest5name1 = "埃雷萨拉斯皇家徽记"

--Quest 6 Alliance
Inst12Quest6 = "6. 最伟大的猎手（猎人饰品任务）"
Inst12Quest6_Level = "60"
Inst12Quest6_Attain = "54"
Inst12Quest6_Aim = "将这本典籍交给它的主人。"
Inst12Quest6_Location = "最伟大的猎手（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest6_Note = "奖励猎人的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest6_Prequest = "无"
Inst12Quest6_Folgequest = "无"
--
Inst12Quest6name1 = "埃雷萨拉斯皇家徽记"

--Quest 7 Alliance
Inst12Quest7 = "7. 奥法师的食谱（法师饰品任务）"
Inst12Quest7_Level = "60"
Inst12Quest7_Attain = "54"
Inst12Quest7_Aim = "将这本典籍交给它的主人。"
Inst12Quest7_Location = "奥法师的食谱（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest7_Note = "奖励法师的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest7_Prequest = "无"
Inst12Quest7_Folgequest = "无"
--
Inst12Quest7name1 = "埃雷萨拉斯皇家徽记"

--Quest 8 Alliance
Inst12Quest8 = "8. 圣光之力（圣骑士饰品任务）"
Inst12Quest8_Level = "60"
Inst12Quest8_Attain = "54"
Inst12Quest8_Aim = "将这本典籍交给它的主人。"
Inst12Quest8_Location = "圣光之力（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest8_Note = "奖励圣骑士的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest8_Prequest = "无"
Inst12Quest8_Folgequest = "无"
--
Inst12Quest8name1 = "埃雷萨拉斯皇家徽记"

--Quest 9 Alliance
Inst12Quest9 = "9. 光明不会告诉你的事情（牧师饰品任务）"
Inst12Quest9_Level = "60"
Inst12Quest9_Attain = "56"
Inst12Quest9_Aim = "将这本典籍交给它的主人。"
Inst12Quest9_Location = "光明不会告诉你的事情（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest9_Note = "奖励牧师的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest9_Prequest = "无"
Inst12Quest9_Folgequest = "无"
--
Inst12Quest9name1 = "埃雷萨拉斯皇家徽记"

--Quest 10 Alliance
Inst12Quest10 = "10. 迦罗娜：潜行与诡计研究（盗贼饰品任务）"
Inst12Quest10_Level = "60"
Inst12Quest10_Attain = "54"
Inst12Quest10_Aim = "将这本典籍交给它的主人。"
Inst12Quest10_Location = "迦罗娜：潜行与诡计研究（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest10_Note = "奖励盗贼的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest10_Prequest = "无"
Inst12Quest10_Folgequest = "无"
--
Inst12Quest10name1 = "埃雷萨拉斯皇家徽记"

--Quest 11 Alliance
Inst12Quest11 = "11. 你与冰霜震击（萨满祭司饰品任务）"
Inst12Quest11_Level = "60"
Inst12Quest11_Attain = "59"
Inst12Quest11_Aim = "将这本典籍交给它的主人。"
Inst12Quest11_Location = "你与冰霜震击（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest11_Note = "奖励萨满祭司的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest11_Prequest = "无"
Inst12Quest11_Folgequest = "无"
--
Inst12Quest11name1 = "埃雷萨拉斯皇家徽记"

--Quest 12 Alliance
Inst12Quest12 = "12. 束缚之影（术士饰品任务）"
Inst12Quest12_Level = "60"
Inst12Quest12_Attain = "54"
Inst12Quest12_Aim = "将这本典籍交给它的主人。"
Inst12Quest12_Location = "束缚之影（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest12_Note = "奖励术士的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest12_Prequest = "无"
Inst12Quest12_Folgequest = "无"
--
Inst12Quest12name1 = "埃雷萨拉斯皇家徽记"

--Quest 13 Alliance
Inst12Quest13 = "13. 防御宝典（战士饰品任务）"
Inst12Quest13_Level = "60"
Inst12Quest13_Attain = "57"
Inst12Quest13_Aim = "将这本典籍交给它的主人。"
Inst12Quest13_Location = "防御宝典（厄运之槌的所有几个副本的 Boss 都可能掉落）"
Inst12Quest13_Note = "奖励战士的职业饰品。把书交给博学者基尔达斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest13_Prequest = "无"
Inst12Quest13_Folgequest = "无"
--
Inst12Quest13name1 = "埃雷萨拉斯皇家徽记"

--Quest 14 Alliance
Inst12Quest14 = "14. 专注圣典"
Inst12Quest14_Level = "60"
Inst12Quest14_Attain = "60"
Inst12Quest14_Aim = "将专注圣典、1块原始黑钻石、4份大块魔光碎片和2张暗影之皮交给厄运之槌的博学者莱德罗斯，以换取一份专注秘药。"
Inst12Quest14_Location = "博学者莱德罗斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）"
Inst12Quest14_Note = "没有前续任务，但是 精灵的传说任务必须完成后才能接到这个任务。"
Inst12Quest14_Prequest = "无"
Inst12Quest14_Folgequest = "无"
--
Inst12Quest14name1 = "专注秘药"

--Quest 15 Alliance
Inst12Quest15 = "15. 防护圣典"
Inst12Quest15_Level = "60"
Inst12Quest15_Attain = "60"
Inst12Quest15_Aim = "将防护圣典、1块原始黑钻石、2份大块魔光碎片和1份磨损的憎恶缝合线交给厄运之槌的博学者莱德罗斯，以换取一份防护秘药。"
Inst12Quest15_Location = "博学者莱德罗斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）"
Inst12Quest15_Note = "没有前续任务，但是 精灵的传说任务必须完成后才能接到这个任务。"
Inst12Quest15_Prequest = "无"
Inst12Quest15_Folgequest = "无"
--
Inst12Quest15name1 = "防护秘药"

--Quest 16 Alliance
Inst12Quest16 = "16. 急速圣典"
Inst12Quest16_Level = "60"
Inst12Quest16_Attain = "60"
Inst12Quest16_Aim = "将急速圣典、1块原始黑钻石、2份大块魔光碎片和2份英雄之血交给厄运之槌的博学者莱德罗斯，以换取一份急速秘药。"
Inst12Quest16_Location = "博学者莱德罗斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）"
Inst12Quest16_Note = "没有前续任务，但是 精灵的传说任务必须完成后才能接到这个任务。"
Inst12Quest16_Prequest = "无"
Inst12Quest16_Folgequest = "无"
--
Inst12Quest16name1 = "急速秘药"

--Quest 17 Alliance
Inst12Quest17 = "17. 弗洛尔的屠龙技术纲要（战士，圣骑士）"
Inst12Quest17_Level = "60"
Inst12Quest17_Attain = "60"
Inst12Quest17_Aim = "将《弗洛尔的屠龙技术纲要》还回图书馆。"
Inst12Quest17_Location = "弗洛尔的屠龙技术纲要（"..YELLOW.."厄运之槌"..WHITE.."的 Boss 都可能掉落）"
Inst12Quest17_Note = "战士和圣骑士才能接此任务。把书交给博学者莱德罗斯（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。完成后开始奎尔塞拉任务。"
Inst12Quest17_Prequest = "无"
Inst12Quest17_Folgequest = "有，煅造奎尔塞拉"
-- No Rewards for this quest


--Quest 1 Horde
Inst12Quest1_HORDE = "1. 精灵的传说"
Inst12Quest1_HORDE_Level = "60"
Inst12Quest1_HORDE_Attain = "54"
Inst12Quest1_HORDE_Aim = "到厄运之槌去寻找卡里尔·温萨鲁斯。向莫沙彻营地的先知科鲁拉克报告你所找到的信息。"
Inst12Quest1_HORDE_Location = "先知科鲁拉克（菲拉斯 - 莫沙彻营地; "..YELLOW.."74,43"..WHITE.."）"
Inst12Quest1_HORDE_Note = "卡里尔·温萨鲁斯在（厄运之槌; "..YELLOW.."西，"..GREEN.."图书馆[1']"..WHITE.."）。"
Inst12Quest1_HORDE_Prequest = "无"
Inst12Quest1_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst12Quest2_HORDE = Inst12Quest2
Inst12Quest2_HORDE_Level = Inst12Quest2_Level
Inst12Quest2_HORDE_Attain = Inst12Quest2_Attain
Inst12Quest2_HORDE_Aim = Inst12Quest2_Aim
Inst12Quest2_HORDE_Location = Inst12Quest2_Location
Inst12Quest2_HORDE_Note = Inst12Quest2_Note
Inst12Quest2_HORDE_Prequest = Inst12Quest2_Prequest
Inst12Quest2_HORDE_Folgequest = Inst12Quest2_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst12Quest3_HORDE = Inst12Quest3
Inst12Quest3_HORDE_Level = Inst12Quest3_Level
Inst12Quest3_HORDE_Attain = Inst12Quest3_Attain
Inst12Quest3_HORDE_Aim = Inst12Quest3_Aim
Inst12Quest3_HORDE_Location = Inst12Quest3_Location
Inst12Quest3_HORDE_Note = Inst12Quest3_Note
Inst12Quest3_HORDE_Prequest = Inst12Quest3_Prequest
Inst12Quest3_HORDE_Folgequest = Inst12Quest3_Folgequest
Inst12Quest3FQuest_HORDE = "true"
--
Inst12Quest3name1_HORDE = Inst12Quest3name1
Inst12Quest3name2_HORDE = Inst12Quest3name2
Inst12Quest3name3_HORDE = Inst12Quest3name3

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst12Quest4_HORDE = Inst12Quest4
Inst12Quest4_HORDE_Level = Inst12Quest4_Level
Inst12Quest4_HORDE_Attain = Inst12Quest4_Attain
Inst12Quest4_HORDE_Aim = Inst12Quest4_Aim
Inst12Quest4_HORDE_Location = Inst12Quest4_Location
Inst12Quest4_HORDE_Note = Inst12Quest4_Note
Inst12Quest4_HORDE_Prequest = Inst12Quest4_Prequest
Inst12Quest4_HORDE_Folgequest = Inst12Quest4_Folgequest
Inst12Quest4PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst12Quest5_HORDE = Inst12Quest5
Inst12Quest5_HORDE_Level = Inst12Quest5_Level
Inst12Quest5_HORDE_Attain = Inst12Quest5_Attain
Inst12Quest5_HORDE_Aim = Inst12Quest5_Aim
Inst12Quest5_HORDE_Location = Inst12Quest5_Location
Inst12Quest5_HORDE_Note = Inst12Quest5_Note
Inst12Quest5_HORDE_Prequest = Inst12Quest5_Prequest
Inst12Quest5_HORDE_Folgequest = Inst12Quest5_Folgequest
--
Inst12Quest5name1_HORDE = Inst12Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst12Quest6_HORDE = Inst12Quest6
Inst12Quest6_HORDE_Level = Inst12Quest6_Level
Inst12Quest6_HORDE_Attain = Inst12Quest6_Attain
Inst12Quest6_HORDE_Aim = Inst12Quest6_Aim
Inst12Quest6_HORDE_Location = Inst12Quest6_Location
Inst12Quest6_HORDE_Note = Inst12Quest6_Note
Inst12Quest6_HORDE_Prequest = Inst12Quest6_Prequest
Inst12Quest6_HORDE_Folgequest = Inst12Quest6_Folgequest
--
Inst12Quest6name1_HORDE = Inst12Quest6name1

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst12Quest7_HORDE = Inst12Quest7
Inst12Quest7_HORDE_Level = Inst12Quest7_Level
Inst12Quest7_HORDE_Attain = Inst12Quest7_Attain
Inst12Quest7_HORDE_Aim = Inst12Quest7_Aim
Inst12Quest7_HORDE_Location = Inst12Quest7_Location
Inst12Quest7_HORDE_Note = Inst12Quest7_Note
Inst12Quest7_HORDE_Prequest = Inst12Quest7_Prequest
Inst12Quest7_HORDE_Folgequest = Inst12Quest7_Folgequest
--
Inst12Quest7name1_HORDE = Inst12Quest7name1

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst12Quest8_HORDE = Inst12Quest8
Inst12Quest8_HORDE_Level = Inst12Quest8_Level
Inst12Quest8_HORDE_Attain = Inst12Quest8_Attain
Inst12Quest8_HORDE_Aim = Inst12Quest8_Aim
Inst12Quest8_HORDE_Location = Inst12Quest8_Location
Inst12Quest8_HORDE_Note = Inst12Quest8_Note
Inst12Quest8_HORDE_Prequest = Inst12Quest8_Prequest
Inst12Quest8_HORDE_Folgequest = Inst12Quest8_Folgequest
--
Inst12Quest8name1_HORDE = Inst12Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst12Quest9_HORDE = Inst12Quest9
Inst12Quest9_HORDE_Level = Inst12Quest9_Level
Inst12Quest9_HORDE_Attain = Inst12Quest9_Attain
Inst12Quest9_HORDE_Aim = Inst12Quest9_Aim
Inst12Quest9_HORDE_Location = Inst12Quest9_Location
Inst12Quest9_HORDE_Note = Inst12Quest9_Note
Inst12Quest9_HORDE_Prequest = Inst12Quest9_Prequest
Inst12Quest9_HORDE_Folgequest = Inst12Quest9_Folgequest
--
Inst12Quest9name1_HORDE = Inst12Quest9name1

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst12Quest10_HORDE = Inst12Quest10
Inst12Quest10_HORDE_Level = Inst12Quest10_Level
Inst12Quest10_HORDE_Attain = Inst12Quest10_Attain
Inst12Quest10_HORDE_Aim = Inst12Quest10_Aim
Inst12Quest10_HORDE_Location = Inst12Quest10_Location
Inst12Quest10_HORDE_Note = Inst12Quest10_Note
Inst12Quest10_HORDE_Prequest = Inst12Quest10_Prequest
Inst12Quest10_HORDE_Folgequest = Inst12Quest10_Folgequest
--
Inst12Quest10name1_HORDE = Inst12Quest10name1

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst12Quest11_HORDE = Inst12Quest11
Inst12Quest11_HORDE_Level = Inst12Quest11_Level
Inst12Quest11_HORDE_Attain = Inst12Quest11_Attain
Inst12Quest11_HORDE_Aim = Inst12Quest11_Aim
Inst12Quest11_HORDE_Location = Inst12Quest11_Location
Inst12Quest11_HORDE_Note = Inst12Quest11_Note
Inst12Quest11_HORDE_Prequest = Inst12Quest11_Prequest
Inst12Quest11_HORDE_Folgequest = Inst12Quest11_Folgequest
--
Inst12Quest11name1_HORDE = Inst12Quest11name1

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst12Quest12_HORDE = Inst12Quest12
Inst12Quest12_HORDE_Level = Inst12Quest12_Level
Inst12Quest12_HORDE_Attain = Inst12Quest12_Attain
Inst12Quest12_HORDE_Aim = Inst12Quest12_Aim
Inst12Quest12_HORDE_Location = Inst12Quest12_Location
Inst12Quest12_HORDE_Note = Inst12Quest12_Note
Inst12Quest12_HORDE_Prequest = Inst12Quest12_Prequest
Inst12Quest12_HORDE_Folgequest = Inst12Quest12_Folgequest
--
Inst12Quest12name1_HORDE = Inst12Quest12name1

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst12Quest13_HORDE = Inst12Quest13
Inst12Quest13_HORDE_Level = Inst12Quest13_Level
Inst12Quest13_HORDE_Attain = Inst12Quest13_Attain
Inst12Quest13_HORDE_Aim = Inst12Quest13_Aim
Inst12Quest13_HORDE_Location = Inst12Quest13_Location
Inst12Quest13_HORDE_Note = Inst12Quest13_Note
Inst12Quest13_HORDE_Prequest = Inst12Quest13_Prequest
Inst12Quest13_HORDE_Folgequest = Inst12Quest13_Folgequest
--
Inst12Quest13name1_HORDE = Inst12Quest13name1

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst12Quest14_HORDE = Inst12Quest14
Inst12Quest14_HORDE_Level = Inst12Quest14_Level
Inst12Quest14_HORDE_Attain = Inst12Quest14_Attain
Inst12Quest14_HORDE_Aim = Inst12Quest14_Aim
Inst12Quest14_HORDE_Location = Inst12Quest14_Location
Inst12Quest14_HORDE_Note = Inst12Quest14_Note
Inst12Quest14_HORDE_Prequest = Inst12Quest14_Prequest
Inst12Quest14_HORDE_Folgequest = Inst12Quest14_Folgequest
--
Inst12Quest14name1_HORDE = Inst12Quest14name1

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst12Quest15_HORDE = Inst12Quest15
Inst12Quest15_HORDE_Level = Inst12Quest15_Level
Inst12Quest15_HORDE_Attain = Inst12Quest15_Attain
Inst12Quest15_HORDE_Aim = Inst12Quest15_Aim
Inst12Quest15_HORDE_Location = Inst12Quest15_Location
Inst12Quest15_HORDE_Note = Inst12Quest15_Note
Inst12Quest15_HORDE_Prequest = Inst12Quest15_Prequest
Inst12Quest15_HORDE_Folgequest = Inst12Quest15_Folgequest
--
Inst12Quest15name1_HORDE = Inst12Quest15name1

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst12Quest16_HORDE = Inst12Quest16
Inst12Quest16_HORDE_Level = Inst12Quest16_Level
Inst12Quest16_HORDE_Attain = Inst12Quest16_Attain
Inst12Quest16_HORDE_Aim = Inst12Quest16_Aim
Inst12Quest16_HORDE_Location = Inst12Quest16_Location
Inst12Quest16_HORDE_Note = Inst12Quest16_Note
Inst12Quest16_HORDE_Prequest = Inst12Quest16_Prequest
Inst12Quest16_HORDE_Folgequest = Inst12Quest16_Folgequest
--
Inst12Quest16name1_HORDE = Inst12Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst12Quest17_HORDE = Inst12Quest17
Inst12Quest17_HORDE_Level = Inst12Quest17_Level
Inst12Quest17_HORDE_Attain = Inst12Quest17_Attain
Inst12Quest17_HORDE_Aim = Inst12Quest17_Aim
Inst12Quest17_HORDE_Location = Inst12Quest17_Location
Inst12Quest17_HORDE_Note = Inst12Quest17_Note
Inst12Quest17_HORDE_Prequest = Inst12Quest17_Prequest
Inst12Quest17_HORDE_Folgequest = Inst12Quest17_Folgequest
-- No Rewards for this quest



--------------- INST13 - Maraudon (Mara) ---------------

Inst13Story = "玛拉顿被狂暴的玛拉顿半人马所保护，那是凄凉之地最神圣的地方。玛拉顿是扎尔塔的伟大神庙，扎尔塔使半神塞纳留斯不朽的儿子之一。传说说扎尔塔和瑟莱德丝大地元素公主的私生子成为了半人马种族。据说半人马这个野蛮的种族在其出生了之后就开始转向他们的父亲并将其杀死。有些人则相信瑟莱德丝在悲伤中将扎尔塔的灵魂困了起来，并将其藏在洞中——利用它的能量来达到一些不可告人的目的。在玛拉顿错综复杂的地下通道中到处都是邪恶的半人马可汗灵魂和瑟莱德丝的元素爪牙。"
Inst13Caption = "玛拉顿"
Inst13QAA = "8 个任务"
Inst13QAH = "8 个任务"

--Quest 1 Alliance
Inst13Quest1 = "1. 暗影残片"
Inst13Quest1_Level = "42"
Inst13Quest1_Attain = "39"
Inst13Quest1_Aim = "从玛拉顿收集10块暗影残片，然后把它们交给尘泥沼泽塞拉摩岛上的大法师特沃什。"
Inst13Quest1_Location = "大法师特沃什（尘泥沼泽 - 塞拉摩岛; "..YELLOW.."66,49"..WHITE.."）"
Inst13Quest1_Note = "暗影残片可以从“暗影碎片巡游者”或者“暗影碎片击碎者”身上找到。"
Inst13Quest1_Prequest = "无"
Inst13Quest1_Folgequest = "无"
--
Inst13Quest1name1 = "热情暗影残片坠饰"
Inst13Quest1name2 = "巨型暗影碎片坠饰"

--Quest 2 Alliance
Inst13Quest2 = "2. 维利塔恩的污染"
Inst13Quest2_Level = "47"
Inst13Quest2_Attain = "41"
Inst13Quest2_Aim = "在玛拉顿里用天蓝水瓶在橙色水晶池中装满水。\n在维利斯塔姆藤蔓上使用装满水的天蓝水瓶，使堕落的诺克赛恩幼体出现。\n治疗8株植物并杀死那些诺克赛恩幼体，然后向尼耶尔前哨站的塔琳德莉亚复命。"
Inst13Quest2_Location = "塔琳德莉亚（凄凉之地 - 尼耶尔前哨站; "..YELLOW.."68,8"..WHITE.."）"
Inst13Quest2_Note = "你可以在玛拉顿里任何一个橙色的水池装水。藤蔓生长在橙色或紫色区域。"
Inst13Quest2_Prequest = "无"
Inst13Quest2_Folgequest = "无"
--
Inst13Quest2name1 = "树种之环"
Inst13Quest2name2 = "山艾束腰"
Inst13Quest2name3 = "枝爪护手"

--Quest 3 Alliance
Inst13Quest3 = "3. 扭曲的邪恶"
Inst13Quest3_Level = "47"
Inst13Quest3_Attain = "41"
Inst13Quest3_Aim = "为凄凉之地的维洛收集25个瑟莱德丝水晶雕像。"
Inst13Quest3_Location = "维洛（凄凉之地; "..YELLOW.."62,39"..WHITE.."）"
Inst13Quest3_Note = "大多数玛拉顿里的敌人都掉落雕像。"
Inst13Quest3_Prequest = "无"
Inst13Quest3_Folgequest = "无"
--
Inst13Quest3name1 = "聪颖长袍"
Inst13Quest3name2 = "轻环头盔"
Inst13Quest3name3 = "无情链甲"
Inst13Quest3name4 = "巨石肩铠"

--Quest 4 Alliance
Inst13Quest4 = "4. 贱民的指引"
Inst13Quest4_Level = "48"
Inst13Quest4_Attain = "39"
Inst13Quest4_Aim = "阅读贱民的指引，然后从玛拉顿得到联合坠饰，将其交给凄凉之地南部的半人马贱民。"
Inst13Quest4_Location = "半人马贱民（凄凉之地; "..YELLOW.."45,86"..WHITE.."）"
Inst13Quest4_Note = "5个可汗（《贱民的指引》的描述）"
Inst13Quest4_Page = { "你会在凄凉之地的南部找到半人马贱民。他在 "..YELLOW.."44,85"..WHITE.." 和  "..YELLOW.."50,87"..WHITE.."  之间来回走动。\n首先，你必须杀死无名预言者（"..YELLOW.."副本入口地图[A]"..WHITE.."）。你可以在进入副本之前找到它，就在你选择进紫色入口还是橙色入口那里。杀了它后，你还要杀死5个可汗。如果你选择中间的路，你会找到第一可汗（"..YELLOW.."副本入口地图[1]"..WHITE.."）。第二可汗在玛拉顿进入副本之前的紫色部分（"..YELLOW.."副本入口地图[2]"..WHITE.."）。第三可汗在进入副本之前的橙色部分（"..YELLOW.."副本入口地图[3]"..WHITE.."）。 第四可汗在"..YELLOW.."[4]"..WHITE.."附近。第五可汗在"..YELLOW.."[1]"..WHITE.."附近。", };
Inst13Quest4_Prequest = "无"
Inst13Quest4_Folgequest = "无"
--
Inst13Quest4name1 = "天选者印记"

--Quest 5 Alliance
Inst13Quest5 = "5. 玛拉顿的传说"
Inst13Quest5_Level = "49"
Inst13Quest5_Attain = "41"
Inst13Quest5_Aim = "找回塞雷布拉斯节杖的两个部分：塞雷布拉斯魔棒和塞雷布拉斯钻石。\n然后设法和塞雷布拉斯对话。"
Inst13Quest5_Location = "凯雯德拉（凄凉之地 - 玛拉顿; "..YELLOW.."副本入口地图[4]"..WHITE.."）"
Inst13Quest5_Note = "凯雯德拉就在进入副本之前的橙色部分的开始处。\n你可以从诺克塞恩那里得到塞雷布拉斯魔棒"..YELLOW.."[2]"..WHITE.."，从维利塔恩那里得到塞雷布拉斯钻石"..YELLOW.."[5]"..WHITE.."。塞雷布拉斯在"..YELLOW.."[7]"..WHITE.."。你需要打败他才能和他说话。"
Inst13Quest5_Prequest = "无"
Inst13Quest5_Folgequest = "有，塞雷布拉斯节杖"
-- No Rewards for this quest

--Quest 6 Alliance
Inst13Quest6 = "6. 塞雷布拉斯节杖"
Inst13Quest6_Level = "49"
Inst13Quest6_Attain = "41"
Inst13Quest6_Aim = "帮助赎罪的塞雷布拉斯制作塞雷布拉斯节杖。\n当仪式完成之后再和他谈谈。"
Inst13Quest6_Location = "赎罪的塞雷布拉斯（玛拉顿 "..YELLOW.."[7]"..WHITE.."）"
Inst13Quest6_Note = "塞雷布拉斯制造节杖。当仪式完成之后，和他对话。"
Inst13Quest6_Prequest = "有，玛拉顿的传说"
Inst13Quest6_Folgequest = "无"
Inst13Quest6FQuest = "true"
--
Inst13Quest6name1 = "塞雷布拉斯节杖"

--Quest 7 Alliance
Inst13Quest7 = "7. 大地的污染"
Inst13Quest7_Level = "51"
Inst13Quest7_Attain = "45"
Inst13Quest7_Aim = "杀死瑟莱德丝公主，然后回到凄凉之地尼耶尔前哨站的守护者玛兰迪斯那里复命。"
Inst13Quest7_Location = "守护者玛兰迪斯（凄凉之地 - 尼耶尔前哨站; "..YELLOW.."63,10"..WHITE.."）"
Inst13Quest7_Note = "瑟莱德丝公主在"..YELLOW.."[11]"..WHITE.."。"
Inst13Quest7_Prequest = "无"
Inst13Quest7_Folgequest = "有，生命之种"
--
Inst13Quest7name1 = "痛击之刃"
Inst13Quest7name2 = "苏醒之杖"
Inst13Quest7name3 = "绿色守护者之弓"

--Quest 8 Alliance
Inst13Quest8 = "8. 生命之种"
Inst13Quest8_Level = "51"
Inst13Quest8_Attain = "39"
Inst13Quest8_Aim = "到月光林地去找到雷姆洛斯，将生命之种交给他。"
Inst13Quest8_Location = "扎尔塔的灵魂（玛拉顿 "..YELLOW.."[11]"..WHITE.."）"
Inst13Quest8_Note = "杀死公主后，扎尔塔的灵魂就会出现（"..YELLOW.."[11]"..WHITE.."）。守护者雷姆洛斯在（月光林地 - 雷姆洛斯神殿; "..YELLOW.."36,41"..WHITE.."）。"
Inst13Quest8_Prequest = "有，大地的污染"
Inst13Quest8_Folgequest = "无"
Inst13Quest8FQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde
Inst13Quest1_HORDE = "1. 暗影残片"
Inst13Quest1_HORDE_Level = "42"
Inst13Quest1_HORDE_Attain = "39"
Inst13Quest1_HORDE_Aim = "从玛拉顿收集10块暗影残片，然后把它们交给奥格瑞玛的尤塞尔奈。"
Inst13Quest1_HORDE_Location = "尤塞尔奈（奥格瑞玛 - 精神谷; "..YELLOW.."39,86"..WHITE.."）"
Inst13Quest1_HORDE_Note = "暗影残片可以从“暗影碎片巡游者”或者“暗影碎片击碎者”身上找到。"
Inst13Quest1_HORDE_Prequest = "无"
Inst13Quest1_HORDE_Folgequest = "无"
--
Inst13Quest1name1_HORDE = "热情暗影残片坠饰"
Inst13Quest1name2_HORDE = "巨型暗影碎片坠饰"

--Quest 2 Horde
Inst13Quest2_HORDE = "2. 维利塔恩的污染"
Inst13Quest2_HORDE_Level = "47"
Inst13Quest2_HORDE_Attain = "41"
Inst13Quest2_HORDE_Aim = "在玛拉顿里用天蓝水瓶在橙色水晶池中装满水。\n在维利斯塔姆藤蔓上使用装满水的天蓝水瓶，使堕落的诺克赛恩幼体出现。\n治疗8株植物并杀死那些诺克赛恩幼体，然后向葬影村的瓦克·战痕复命。"
Inst13Quest2_HORDE_Location = "瓦克·战痕（凄凉之地 - 葬影村; "..YELLOW.."23,70"..WHITE.."）"
Inst13Quest2_HORDE_Note = "你可以在玛拉顿里任何一个橙色的水池装水。藤蔓生长在橙色或紫色区域。"
Inst13Quest2_HORDE_Prequest = "无"
Inst13Quest2_HORDE_Folgequest = "无"
--
Inst13Quest2name1_HORDE = "树种之环"
Inst13Quest2name2_HORDE = "山艾束腰 "
Inst13Quest2name3_HORDE = "枝爪护手"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst13Quest3_HORDE = Inst13Quest3
Inst13Quest3_HORDE_Level = Inst13Quest3_Level
Inst13Quest3_HORDE_Attain = Inst13Quest3_Attain
Inst13Quest3_HORDE_Aim = Inst13Quest3_Aim
Inst13Quest3_HORDE_Location = Inst13Quest3_Location
Inst13Quest3_HORDE_Note = Inst13Quest3_Note
Inst13Quest3_HORDE_Prequest = Inst13Quest3_Prequest
Inst13Quest3_HORDE_Folgequest = Inst13Quest3_Folgequest
--
Inst13Quest3name1_HORDE = Inst13Quest3name1
Inst13Quest3name2_HORDE = Inst13Quest3name2
Inst13Quest3name3_HORDE = Inst13Quest3name3
Inst13Quest3name4_HORDE = Inst13Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst13Quest4_HORDE = Inst13Quest4
Inst13Quest4_HORDE_Level = Inst13Quest4_Level
Inst13Quest4_HORDE_Attain = Inst13Quest4_Attain
Inst13Quest4_HORDE_Aim = Inst13Quest4_Aim
Inst13Quest4_HORDE_Location = Inst13Quest4_Location
Inst13Quest4_HORDE_Note = Inst13Quest4_Note
Inst13Quest4_HORDE_Page = Inst13Quest4_Page
Inst13Quest4_HORDE_Prequest = Inst13Quest4_Prequest
Inst13Quest4_HORDE_Folgequest = Inst13Quest4_Folgequest
--
Inst13Quest4name1_HORDE = Inst13Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst13Quest5_HORDE = Inst13Quest5
Inst13Quest5_HORDE_Level = Inst13Quest5_Level
Inst13Quest5_HORDE_Attain = Inst13Quest5_Attain
Inst13Quest5_HORDE_Aim = Inst13Quest5_Aim
Inst13Quest5_HORDE_Location = Inst13Quest5_Location
Inst13Quest5_HORDE_Note = Inst13Quest5_Note
Inst13Quest5_HORDE_Prequest = Inst13Quest5_Prequest
Inst13Quest5_HORDE_Folgequest = Inst13Quest5_Folgequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst13Quest6_HORDE = Inst13Quest6
Inst13Quest6_HORDE_Level = Inst13Quest6_Level
Inst13Quest6_HORDE_Attain = Inst13Quest6_Attain
Inst13Quest6_HORDE_Aim = Inst13Quest6_Aim
Inst13Quest6_HORDE_Location = Inst13Quest6_Location
Inst13Quest6_HORDE_Note = Inst13Quest6_Note
Inst13Quest6_HORDE_Prequest = Inst13Quest6_Prequest
Inst13Quest6_HORDE_Folgequest = Inst13Quest6_Folgequest
Inst13Quest6FQuest_HORDE = Inst13Quest6FQuest
--
Inst13Quest6name1_HORDE = Inst13Quest6name1

--Quest 7 Horde
Inst13Quest7_HORDE = "7. 大地的污染"
Inst13Quest7_HORDE_Level = "51"
Inst13Quest7_HORDE_Attain = "45"
Inst13Quest7_HORDE_Aim = "杀死瑟莱德丝公主，然后回到凄凉之地葬影村附近的瑟琳德拉那里复命。"
Inst13Quest7_HORDE_Location = "瑟琳德拉（凄凉之地 - 葬影村; "..YELLOW.."27,77"..WHITE.."）"
Inst13Quest7_HORDE_Note = "瑟莱德丝公主在"..YELLOW.."[11]"..WHITE.."。"
Inst13Quest7_HORDE_Prequest = "无"
Inst13Quest7_HORDE_Folgequest = "有，生命之种"
--
Inst13Quest7name1_HORDE = "痛击之刃"
Inst13Quest7name2_HORDE = "苏醒之杖"
Inst13Quest7name3_HORDE = "绿色守护者之弓"

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst13Quest8_HORDE = Inst13Quest8
Inst13Quest8_HORDE_Level = Inst13Quest8_Level
Inst13Quest8_HORDE_Attain = Inst13Quest8_Attain
Inst13Quest8_HORDE_Aim = Inst13Quest8_Aim
Inst13Quest8_HORDE_Location = Inst13Quest8_Location
Inst13Quest8_HORDE_Note = Inst13Quest8_Note
Inst13Quest8_HORDE_Prequest = Inst13Quest8_Prequest
Inst13Quest8_HORDE_Folgequest = Inst13Quest8_Folgequest
Inst13Quest8FQuest_HORDE = Inst13Quest8FQuest
-- No Rewards for this quest



--------------- INST14 - Molten Core (MC) ---------------

Inst14Story = "熔火之心就在黑石深渊的底层。这是黑石山的中心，也是很久以前扭转矮人内战情势的地方，索瑞森大帝将元素火焰之王，拉格纳罗斯召唤到世界来。尽管火焰之王无法远离熔火之心，但人们相信他的元素爪牙控制着黑铁矮人，在遗迹之外组建军队。拉格纳罗斯休眠的燃烧之湖有一道裂缝连接火平面，让邪恶的元素可以通过。拉格纳罗斯的首要代理人是管理者埃克索图斯——因为这是唯一能唤醒火焰之王的狡猾元素。"
Inst14Caption = "熔火之心"
Inst14QAA = "5 个任务"
Inst14QAH = "5 个任务"

--Quest 1 Alliance
Inst14Quest1 = "1. 熔火之心"
Inst14Quest1_Level = "60"
Inst14Quest1_Attain = "58"
Inst14Quest1_Aim = "杀死一个火焰之王、一个熔岩巨人、一个上古熔火恶犬和一个熔岩奔腾者，然后回到艾萨拉的海达克西斯公爵那里。"
Inst14Quest1_Location = "海达克西斯公爵（艾萨拉; "..YELLOW.."79,73"..WHITE.."）"
Inst14Quest1_Note = "这些都不是熔火之心的 Boss。"
Inst14Quest1_Prequest = "有，艾博希尔之眼（"..YELLOW.."黑石塔上层"..WHITE.."）"
Inst14Quest1_Folgequest = "有，海达克西斯的使者"
Inst14Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest 2 Alliance
Inst14Quest2 = "2. 敌人之手"
Inst14Quest2_Level = "60"
Inst14Quest2_Attain = "60"
Inst14Quest2_Aim = "将鲁西弗隆之手、萨弗隆之手、基赫纳斯之手和沙斯拉尔之手交给艾萨拉的海达克西斯公爵。"
Inst14Quest2_Location = "海达克西斯公爵（艾萨拉; "..YELLOW.."79,73"..WHITE.."）"
Inst14Quest2_Note = "鲁西弗隆在"..YELLOW.."[1]"..WHITE.."，萨弗隆先驱者在"..YELLOW.."[8]"..WHITE.."，基赫纳斯在"..YELLOW.."[3]"..WHITE.."，还有沙斯拉尔在"..YELLOW.."[5]"..WHITE.."。"
Inst14Quest2_Prequest = "有，海达克西斯的使者"
Inst14Quest2_Folgequest = "无"
Inst14Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst14Quest3 = "3. 逐风者桑德兰"
Inst14Quest3_Level = "60"
Inst14Quest3_Attain = "60"
Inst14Quest3_Aim = "如果你想要把逐风者桑德兰从监牢里释放出来，你就必须找到左右两块逐风者禁锢之颅，10块源质锭，以及火焰之王的精华，把它们交给德米提恩。"
Inst14Quest3_Location = "德米提恩（希利苏斯; "..YELLOW.."22,9"..WHITE.."）"
Inst14Quest3_Note = "雷霆之怒，逐风者的祝福之剑部分任务，当你从加尔"..YELLOW.."[4]"..WHITE.."拿到逐风者禁锢之颅右半和迦顿男爵"..YELLOW.."[6]"..WHITE.."拿到逐风者禁锢之颅左半后，与德米提恩对话开启任务线。拉格纳罗斯"..YELLOW.."[10]"..WHITE.."掉落火焰之王的精华。完成这些后，召唤并杀掉桑德兰王子，这是一个40人团队 Boss。"
Inst14Quest3_Prequest = "有，复生之瓶"
Inst14Quest3_Folgequest = "有，觉醒吧，雷霆之怒！"
Inst14Quest3PreQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance
Inst14Quest4 = "4. 瑟银兄弟会契约"
Inst14Quest4_Level = "60"
Inst14Quest4_Attain = "60"
Inst14Quest4_Aim = "如果你愿意接受萨弗隆的设计图，请将瑟银兄弟会契约交给罗克图斯·暗契。"
Inst14Quest4_Location = "罗克图斯·暗契（黑石深渊; "..YELLOW.."[15]"..WHITE.."）"
Inst14Quest4_Note = "你需要萨弗隆铁锭来与洛克图斯签订契约。熔火之心的焚化者古雷曼格"..YELLOW.."[7]"..WHITE.."掉落铁锭。"
Inst14Quest4_Prequest = "无"
Inst14Quest4_Folgequest = "无"
--
Inst14Quest4name1 = "设计图：萨弗隆之锤"

--Quest 5 Alliance
Inst14Quest5 = "5. 远古石叶"
Inst14Quest5_Level = "60"
Inst14Quest5_Attain = "60"
Inst14Quest5_Aim = "找到远古石叶的主人。"
Inst14Quest5_Location = "在（火焰之王的宝箱; "..YELLOW.."[9]"..WHITE.."）之中，可能有远古石叶。"
Inst14Quest5_Note = "把远古石叶交还给古树瓦特鲁斯（费伍德森林 - 铁木森林; "..YELLOW.."49,24"..WHITE.."）。"
Inst14Quest5_Prequest = "无"
Inst14Quest5_Folgequest = "有，龙筋箭袋（"..YELLOW.."艾索雷葛斯"..WHITE.."）"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst14Quest1_HORDE = Inst14Quest1
Inst14Quest1_HORDE_Level = Inst14Quest1_Level
Inst14Quest1_HORDE_Attain = Inst14Quest1_Attain
Inst14Quest1_HORDE_Aim = Inst14Quest1_Aim
Inst14Quest1_HORDE_Location = Inst14Quest1_Location
Inst14Quest1_HORDE_Note = Inst14Quest1_Note
Inst14Quest1_HORDE_Prequest = Inst14Quest1_Prequest
Inst14Quest1_HORDE_Folgequest = Inst14Quest1_Folgequest
Inst14Quest1PreQuest_HORDE = Inst14Quest1PreQuest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst14Quest2_HORDE = Inst14Quest2
Inst14Quest2_HORDE_Level = Inst14Quest2_Level
Inst14Quest2_HORDE_Attain = Inst14Quest2_Attain
Inst14Quest2_HORDE_Aim = Inst14Quest2_Aim
Inst14Quest2_HORDE_Location = Inst14Quest2_Location
Inst14Quest2_HORDE_Note = Inst14Quest2_Note
Inst14Quest2_HORDE_Prequest = Inst14Quest2_Prequest
Inst14Quest2_HORDE_Folgequest = Inst14Quest2_Folgequest
Inst14Quest2FQuest_HORDE = Inst14Quest2FQuest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst14Quest3_HORDE = Inst14Quest3
Inst14Quest3_HORDE_Level = Inst14Quest3_Level
Inst14Quest3_HORDE_Attain = Inst14Quest3_Attain
Inst14Quest3_HORDE_Aim = Inst14Quest3_Aim
Inst14Quest3_HORDE_Location = Inst14Quest3_Location
Inst14Quest3_HORDE_Note = Inst14Quest3_Note
Inst14Quest3_HORDE_Prequest = Inst14Quest3_Prequest
Inst14Quest3_HORDE_Folgequest = Inst14Quest3_Folgequest
Inst14Quest3PreQuest_HORDE = Inst14Quest3PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst14Quest4_HORDE = Inst14Quest4
Inst14Quest4_HORDE_Level = Inst14Quest4_Level
Inst14Quest4_HORDE_Attain = Inst14Quest4_Attain
Inst14Quest4_HORDE_Aim = Inst14Quest4_Aim
Inst14Quest4_HORDE_Location = Inst14Quest4_Location
Inst14Quest4_HORDE_Note = Inst14Quest4_Note
Inst14Quest4_HORDE_Prequest = Inst14Quest4_Prequest
Inst14Quest4_HORDE_Folgequest = Inst14Quest4_Folgequest
--
Inst14Quest4name1_HORDE = Inst14Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst14Quest5_HORDE = Inst14Quest5
Inst14Quest5_HORDE_Level = Inst14Quest5_Level
Inst14Quest5_HORDE_Attain = Inst14Quest5_Attain
Inst14Quest5_HORDE_Aim = Inst14Quest5_Aim
Inst14Quest5_HORDE_Location = Inst14Quest5_Location
Inst14Quest5_HORDE_Note = Inst14Quest5_Note
Inst14Quest5_HORDE_Prequest = Inst14Quest5_Prequest
Inst14Quest5_HORDE_Folgequest = Inst14Quest5_Folgequest
-- No Rewards for this quest



--------------- INST15 - Naxxramas (Naxx) ---------------

Inst15Story = "飘浮在瘟疫之地上空的浮空要塞纳克萨玛斯是巫妖王最强大的副官——克尔苏加德的旗舰。巫妖王的仆从们在这座要塞中筹划着新的攻势，要给整个艾泽拉斯世界带来恐慌和灾难。天灾军团再一次开始了他们的征程……"
Inst15Caption = "纳克萨玛斯"
Inst15QAA = "5 个任务"
Inst15QAH = "5 个任务"

--Quest 1 Alliance
Inst15Quest1 = "1. 克尔苏加德的末日"
Inst15Quest1_Level = "60"
Inst15Quest1_Attain = "60"
Inst15Quest1_Aim = "将克尔苏加德的护符匣带往东瘟疫之地圣光之愿礼拜堂。"
Inst15Quest1_Location = "克尔苏加德（纳克萨玛斯; "..YELLOW.."绿色 2"..WHITE.."）"
Inst15Quest1_Note = "英尼戈·蒙托尔神父（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,58"..WHITE.."）"
Inst15Quest1_Prequest = "无"
Inst15Quest1_Folgequest = "无"
--
Inst15Quest1name1 = "勇士印记"
Inst15Quest1name2 = "勇士印记"

--Quest 2 Alliance
Inst15Quest2 = "2. 我只会唱这一首歌……"
Inst15Quest2_Level = "60"
Inst15Quest2_Attain = "60"
Inst15Quest2_Aim = "将2个冰冻符文、2个水之精华、2块蓝宝石和30金币交给东瘟疫之地圣光之愿礼拜堂的工匠威尔海姆。"
Inst15Quest2_Location = "工匠威尔海姆（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,60"..WHITE.."）"
Inst15Quest2_Note = "纳克萨玛斯掉落的溶解之语可以从墙上得到冰冻符文。"
Inst15Quest2_Prequest = "无"
Inst15Quest2_Folgequest = "无"
--
Inst15Quest2name1 = "冰川护腿"
Inst15Quest2name2 = "破冰护腿"
Inst15Quest2name3 = "寒鳞护腿"
Inst15Quest2name4 = "北极护腿"

--Quest 3 Alliance
Inst15Quest3 = "3. 战争的回响"
Inst15Quest3_Level = "60"
Inst15Quest3_Attain = "60"
Inst15Quest3_Aim = "东瘟疫之地圣光之愿礼拜堂的指挥官埃里戈尔·黎明使者要你杀死5个畸形妖、5只岩肤石像鬼、8个死亡骑士队长和3只毒性捕猎者。"
Inst15Quest3_Location = "指挥官埃里戈尔·黎明使者（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."82,58"..WHITE.."）"
Inst15Quest3_Note = "需要杀死的怪物是各个不同的区的小怪。这个任务完成后才能制作 T3 套装。"
Inst15Quest3_Prequest = "无"
Inst15Quest3_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Alliance
Inst15Quest4 = "4. 拉玛兰迪的命运"
Inst15Quest4_Level = "60"
Inst15Quest4_Attain = "60"
Inst15Quest4_Aim = "进入纳克萨玛斯的宫殿，找到拉玛兰迪的下落。"
Inst15Quest4_Location = "科尔法克斯，圣光之勇士（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."82,58"..WHITE.."）"
Inst15Quest4_Note = "纳克萨玛斯的小怪随机掉落拉玛兰迪的命运，任何有此任务的都可以拾取。"
Inst15Quest4_Prequest = "无"
Inst15Quest4_Folgequest = "有，拉玛兰迪的寒冰之握"
-- No Rewards for this quest

--Quest 5 Alliance
Inst15Quest5 = "5. 拉玛兰迪的寒冰之握"
Inst15Quest5_Level = "60"
Inst15Quest5_Attain = "60"
Inst15Quest5_Aim = "东瘟疫之地圣光之愿礼拜堂的科尔法克斯要1个冰冻符文、1块蓝宝石和1块奥金锭。"
Inst15Quest5_Location = "科尔法克斯，圣光之勇士（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."82,58"..WHITE.."）"
Inst15Quest5_Note = "纳克萨玛斯掉落的溶解之语可以从墙上得到冰冻符文。"
Inst15Quest5_Prequest = "有，拉玛兰迪的命运"
Inst15Quest5_Folgequest = "无"
Inst15Quest5FQuest = "true"
--
Inst15Quest5name1 = "拉玛兰迪的寒冰之握"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst15Quest1_HORDE = Inst15Quest1
Inst15Quest1_HORDE_Level = Inst15Quest1_Level
Inst15Quest1_HORDE_Attain = Inst15Quest1_Attain
Inst15Quest1_HORDE_Aim = Inst15Quest1_Aim
Inst15Quest1_HORDE_Location = Inst15Quest1_Location
Inst15Quest1_HORDE_Note = Inst15Quest1_Note
Inst15Quest1_HORDE_Prequest = Inst15Quest1_Prequest
Inst15Quest1_HORDE_Folgequest = Inst15Quest1_Folgequest
--
Inst15Quest1name1_HORDE = Inst15Quest1name1
Inst15Quest1name2_HORDE = Inst15Quest1name2
Inst15Quest1name3_HORDE = Inst15Quest1name3

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst15Quest2_HORDE = Inst15Quest2
Inst15Quest2_HORDE_Level = Inst15Quest2_Level
Inst15Quest2_HORDE_Attain = Inst15Quest2_Attain
Inst15Quest2_HORDE_Aim = Inst15Quest2_Aim
Inst15Quest2_HORDE_Location = Inst15Quest2_Location
Inst15Quest2_HORDE_Note = Inst15Quest2_Note
Inst15Quest2_HORDE_Prequest = Inst15Quest2_Prequest
Inst15Quest2_HORDE_Folgequest = Inst15Quest2_Folgequest
--
Inst15Quest2name1_HORDE = Inst15Quest2name1
Inst15Quest2name2_HORDE = Inst15Quest2name2
Inst15Quest2name3_HORDE = Inst15Quest2name3
Inst15Quest2name4_HORDE = Inst15Quest2name4

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst15Quest3_HORDE = Inst15Quest3
Inst15Quest3_HORDE_Level = Inst15Quest3_Level
Inst15Quest3_HORDE_Attain = Inst15Quest3_Attain
Inst15Quest3_HORDE_Aim = Inst15Quest3_Aim
Inst15Quest3_HORDE_Location = Inst15Quest3_Location
Inst15Quest3_HORDE_Note = Inst15Quest3_Note
Inst15Quest3_HORDE_Prequest = Inst15Quest3_Prequest
Inst15Quest3_HORDE_Folgequest = Inst15Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst15Quest4_HORDE = Inst15Quest4
Inst15Quest4_HORDE_Level = Inst15Quest4_Level
Inst15Quest4_HORDE_Attain = Inst15Quest4_Attain
Inst15Quest4_HORDE_Aim = Inst15Quest4_Aim
Inst15Quest4_HORDE_Location = Inst15Quest4_Location
Inst15Quest4_HORDE_Note = Inst15Quest4_Note
Inst15Quest4_HORDE_Prequest = Inst15Quest4_Prequest
Inst15Quest4_HORDE_Folgequest = Inst15Quest4_Folgequest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst15Quest5_HORDE = Inst15Quest5
Inst15Quest5_HORDE_Level = Inst15Quest5_Level
Inst15Quest5_HORDE_Attain = Inst15Quest5_Attain
Inst15Quest5_HORDE_Aim = Inst15Quest5_Aim
Inst15Quest5_HORDE_Location = Inst15Quest5_Location
Inst15Quest5_HORDE_Note = Inst15Quest5_Note
Inst15Quest5_HORDE_Prequest = Inst15Quest5_Prequest
Inst15Quest5_HORDE_Folgequest = Inst15Quest5_Folgequest
Inst15Quest5FQuest_HORDE = Inst15Quest5FQuest
--
Inst15Quest5name1_HORDE = Inst15Quest5name1



--------------- INST16 - Onyxia's Lair (Ony) ---------------

Inst16Story = "奥妮克希亚是强大之龙死亡之翼的女儿，也是黑石塔擅长阴谋的奈法利安大王的妹妹。据说奥妮克希亚喜欢借由干涉人类种族的政治来腐化他们。为达此目的他会变成各种人型生物形态，使用魔法和力量干预不同种族间的所有事情。有些人更认为奥妮克希亚使用父亲曾用过的化名——皇室普瑞斯托。若不插手凡人事务的时候，奥妮克希亚就在黑龙谷下的一处火焰洞穴居住，那是尘泥沼泽里的一个阴暗沼泽。阴险的黑龙军团剩余成员在此守护着她。"
Inst16Caption = "奥妮克希亚的巢穴"
Inst16QAA = "2 个任务"
Inst16QAH = "2 个任务"

--Quest 1 Alliance
Inst16Quest1 = "1. 铸造奎尔塞拉"
Inst16Quest1_Level = "60"
Inst16Quest1_Attain = "60"
Inst16Quest1_Aim = "你必须设法让奥妮克希亚对这把未淬火的上古之刃喷射火焰。完成之后，捡起加热过的上古之刃。你要注意的是，加热过的上古之刃不会一直保持被加热的状态，时间非常紧迫。"
Inst16Quest1_Location = "博学者莱德罗斯（厄运之槌; "..YELLOW.."北，图书馆[1']"..WHITE..")"
Inst16Quest1_Note = "当奥妮克希亚的生命值在10%到15%时，在她前面放置未淬火的上古之刃，她将为此淬火。当奥妮克希亚死亡，重新拾取任务物品，选择她的尸体并使用它后，就可以返回完成此任务。"
Inst16Quest1_Prequest = "有，弗洛尔的屠龙技术纲要（厄运之槌; "..YELLOW..""..WHITE.."） -> 铸造奎尔塞拉"
Inst16Quest1_Folgequest = "无"
Inst16Quest1PreQuest = "true"
--
Inst16Quest1name1 = "奎尔塞拉"

--Quest 2 Alliance
Inst16Quest2 = "2. 联盟的胜利"
Inst16Quest2_Level = "60"
Inst16Quest2_Attain = "60"
Inst16Quest2_Aim = "将奥妮克希亚的头颅交给暴风城的伯瓦尔·弗塔根公爵。"
Inst16Quest2_Location = "奥妮克希亚的头颅（奥妮克希亚掉落; "..YELLOW.."[3]"..WHITE.."）"
Inst16Quest2_Note = "伯瓦尔·弗塔根公爵在（暴风城 - 暴风要塞; "..YELLOW.."78,20"..WHITE.."）。只有在团队中的一人可以拾取此物品并且只可完成一次。\n\n下一步任务领取奖励。"
Inst16Quest2_Prequest = "无"
Inst16Quest2_Folgequest = "有，英雄庆典"
--
Inst16Quest2name1 = "奥妮克希亚龙血护符"
Inst16Quest2name2 = "屠龙者的徽记"
Inst16Quest2name3 = "奥妮克希亚龙牙坠饰"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst16Quest1_HORDE = Inst16Quest1
Inst16Quest1_HORDE_Attain = Inst16Quest1_Attain
Inst16Quest1_HORDE_Level = Inst16Quest1_Level
Inst16Quest1_HORDE_Aim = Inst16Quest1_Aim
Inst16Quest1_HORDE_Location = Inst16Quest1_Location
Inst16Quest1_HORDE_Note = Inst16Quest1_Note
Inst16Quest1_HORDE_Prequest = Inst16Quest1_Prequest
Inst16Quest1_HORDE_Folgequest = Inst16Quest1_Folgequest
Inst16Quest1PreQuest_HORDE = Inst16Quest1PreQuest
--
Inst16Quest1name1_HORDE = Inst16Quest1name1

--Quest 2 Horde
Inst16Quest2_HORDE = "2. 部落的胜利"
Inst16Quest2_HORDE_Level = "60"
Inst16Quest2_HORDE_Attain = "60"
Inst16Quest2_HORDE_Aim = "将奥妮克希亚的头颅交给奥格瑞玛的萨尔。 "
Inst16Quest2_HORDE_Location = "奥妮克希亚的头颅（奥妮克希亚掉落; "..YELLOW.."[3]"..WHITE.."）"
Inst16Quest2_HORDE_Note = "萨尔在（奥格瑞玛 - 智慧谷; "..YELLOW.."31,37"..WHITE.."）。 只有在团队中的一人可以拾取此物品并且只可完成一次。\n\n下一步任务领取奖励。"
Inst16Quest2_HORDE_Prequest = "无"
Inst16Quest2_HORDE_Folgequest = "有，万众敬仰"
--
Inst16Quest2name1_HORDE = "奥妮克希亚龙血护符"
Inst16Quest2name2_HORDE = "屠龙者的徽记"
Inst16Quest2name3_HORDE = "奥妮克希亚龙牙坠饰"



--------------- INST17 - Razorfen Downs (RFD) ---------------

Inst17Story = "剃刀高地和剃刀沼泽一样由巨大的藤蔓组成，剃刀高地是野猪人的传统都城。在那错综复杂的荆棘迷宫中居住着大群忠诚的野猪人军队以及他们的高等牧师——亡首部族。然而最近，一股阴影力量笼罩了这个原始的洞穴。亡灵天灾的人在巫妖寒冰之王亚门纳尔的带领下控制了野猪部族并将荆棘迷宫变成了亡灵力量的堡垒。现在野猪人正奋力战斗来重新夺回他们的城市，并阻止亚门纳尔继续控制贫瘠之地。"
Inst17Caption = "剃刀高地"
Inst17QAA = "3 个任务"
Inst17QAH = "4 个任务"

--Quest 1 Alliance
Inst17Quest1 = "1. 邪恶之地"
Inst17Quest1_Level = "35"
Inst17Quest1_Attain = "28"
Inst17Quest1_Aim = "杀掉8个剃刀沼泽护卫者、8个剃刀沼泽织棘者和8个亡首教徒，然后向剃刀高地入口处的麦雷姆·月歌复命。"
Inst17Quest1_Location = "麦雷姆·月歌（贫瘠之地 - 剃刀高地; "..YELLOW.."49,94 "..WHITE.."）"
Inst17Quest1_Note = "这些怪出现在你进入副本前经过的路上。"
Inst17Quest1_Prequest = "无"
Inst17Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst17Quest2 = "2. 封印神像"
Inst17Quest2_Level = "37"
Inst17Quest2_Attain = "34"
Inst17Quest2_Aim = "保护奔尼斯特拉兹来到剃刀高地的野猪人神像处。当他在进行仪式封印神像时保护他。"
Inst17Quest2_Location = "奔尼斯特拉兹（剃刀高地; "..YELLOW.."[2] "..WHITE.."）"
Inst17Quest2_Note = "你必须同意帮助奔尼斯特拉兹封印神像，封印过程中会刷新怪物攻击他，必须保证他的安全。完成后在神像面前获得奖励。"
Inst17Quest2_Prequest = "有，剃刀高地的亡灵天灾"
Inst17Quest2_Folgequest = "无"
Inst17Quest2PreQuest = "true"
--
Inst17Quest2name1 = "龙爪戒指"

--Quest 3 Alliance
Inst17Quest3 = "3. 与圣光同在"
Inst17Quest3_Level = "42"
Inst17Quest3_Attain = "39"
Inst17Quest3_Aim = "大主教本尼迪塔斯要你去杀死剃刀高地的寒冰之王亚门纳尔。"
Inst17Quest3_Location = "大主教本尼迪塔斯（暴风城 - 光明大教堂; "..YELLOW.."39,27 "..WHITE.."）"
Inst17Quest3_Note = "寒冰之王亚门纳尔是剃刀高地的最后一个 Boss。你可以在"..YELLOW.."[6]"..WHITE.."找到他。"
Inst17Quest3_Prequest = "无"
Inst17Quest3_Folgequest = "无"
--
Inst17Quest3name1 = "征服者之剑"
Inst17Quest3name2 = "琥珀之光"


--Quest 1 Horde  (same as Quest 1 Alliance)
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
Inst17Quest2_HORDE = "2. 邪恶的盟友"
Inst17Quest2_HORDE_Level = "36"
Inst17Quest2_HORDE_Attain = "28"
Inst17Quest2_HORDE_Aim = "把玛克林大使的头颅带给幽暗城的瓦里玛萨斯。"
Inst17Quest2_HORDE_Location = "瓦里玛萨斯（幽暗城 - 皇家区; "..YELLOW.."56,92 "..WHITE.."）"
Inst17Quest2_HORDE_Note = "剃刀沼泽最后的 Boss 给出前导任务。玛克林大使位置在进入副本前外面的空地上（贫瘠之地 - 剃刀高地; "..YELLOW.."48,92"..WHITE.."）。"
Inst17Quest2_HORDE_Prequest = "有，邪恶的盟友"
Inst17Quest2_HORDE_Folgequest = "无"
Inst17Quest2PreQuest_HORDE = "true"
--
Inst17Quest2name1_HORDE = "破颅者"
Inst17Quest2name2_HORDE = "钉枪"
Inst17Quest2name3_HORDE = "狂热长袍"

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst17Quest3_HORDE = "3. Extinguishing the Idol"
Inst17Quest3_HORDE_Level = Inst17Quest2_Level
Inst17Quest3_HORDE_Attain = Inst17Quest2_Attain
Inst17Quest3_HORDE_Aim = Inst17Quest2_Aim
Inst17Quest3_HORDE_Location = Inst17Quest2_Location
Inst17Quest3_HORDE_Note = Inst17Quest2_Note
Inst17Quest3_HORDE_Prequest = Inst17Quest2_Prequest
Inst17Quest3_HORDE_Folgequest = Inst17Quest2_Folgequest
Inst17Quest3PreQuest_HORDE = Inst17Quest2PreQuest
--
Inst17Quest3name1_HORDE = Inst17Quest2name1

--Quest 4 Horde
Inst17Quest4_HORDE = "4. 寒冰之王"
Inst17Quest4_HORDE_Level = "42"
Inst17Quest4_HORDE_Attain = "37"
Inst17Quest4_HORDE_Aim = "安德鲁·布隆奈尔要你杀了寒冰之王亚门纳尔并将其头骨带回来。"
Inst17Quest4_HORDE_Location = "安德鲁·布隆奈尔（幽暗城 - 魔法区; "..YELLOW.."72,32 "..WHITE.."）"
Inst17Quest4_HORDE_Note = "寒冰之王亚门纳尔是剃刀高地最后一个 Boss。位于"..YELLOW.."[6]"..WHITE.."。"
Inst17Quest4_HORDE_Prequest = "无"
Inst17Quest4_HORDE_Folgequest = "无"
--
Inst17Quest4name1_HORDE = "征服者之剑"
Inst17Quest4name2_HORDE = "琥珀之光"



--------------- INST18 - Razorfen Kraul (RFK) ---------------

Inst18Story = "在一万年前的古代战争中，万能的半神阿迦玛甘和燃烧军团进行了激战。虽然这头巨大的猪在战斗中倒下了，但是他的努力最终拯救了艾泽拉斯大陆免遭涂炭。虽然已经过去了很久，但是在它血液流淌的地方巨大的荆棘藤蔓生长出来。那些被认为是半神后代的野猪人占领了这些地区并将其奉为圣地。这些荆棘地的中心被称为剃刀岭。而巨大的剃刀沼泽则被一个老丑婆卡尔加·刺肋所占据。在她的统治下，信奉萨满教的野猪人和别的部族以及部落为敌。有些人甚至猜测卡尔加还在和亡灵天灾的有来往——她想要联合亡灵天灾来达到一些不可告人的险恶目的。"
Inst18Caption = "剃刀沼泽"
Inst18QAA = "5 个任务"
Inst18QAH = "5 个任务"

--Quest 1 Alliance
Inst18Quest1 = "1. 蓝叶薯"
Inst18Quest1_Level = "26"
Inst18Quest1_Attain = "20"
Inst18Quest1_Aim = "找到一个开孔的箱子。\n找到一根地鼠指挥棒。\n找到并阅读《地鼠指挥手册》。\n在剃刀沼泽里用开孔的箱子召唤一只地鼠，然后用指挥棒驱使它去搜寻蓝叶薯。\n把地鼠指挥棒、开孔的箱子和10块蓝叶薯交给棘齿城的麦伯克·米希瑞克斯。"
Inst18Quest1_Location = "麦伯克·米希瑞克斯（贫瘠之地 - 棘齿城; "..YELLOW.."62,37"..WHITE.."）"
Inst18Quest1_Note = "开孔的箱子，地鼠指挥棒和《地鼠指挥手册》都在麦伯克·米希瑞克斯附近不远的地方。"
Inst18Quest1_Prequest = "无"
Inst18Quest1_Folgequest = "无"
--
Inst18Quest1name1 = "一小袋宝石"

--Quest 2 Alliance
Inst18Quest2 = "2. 临终遗言"
Inst18Quest2_Level = "30"
Inst18Quest2_Attain = "27"
Inst18Quest2_Aim = "将塔莎拉的坠饰带给达纳苏斯的塔莎拉·静水。"
Inst18Quest2_Location = "赫尔拉斯·静水（剃刀沼泽; "..YELLOW.." [8]"..WHITE.."）"
Inst18Quest2_Note = "坠饰随机掉落。你必须把坠饰带给塔莎拉·静水（达纳苏斯 - 贸易区; "..YELLOW.."69,67"..WHITE.."）。"
Inst18Quest2_Prequest = "无"
Inst18Quest2_Folgequest = "无"
--
Inst18Quest2name1 = "悲伤披风"
Inst18Quest2name2 = "枪骑兵战靴"

--Quest 3 Alliance
Inst18Quest3 = "3. 进口商威利克斯"
Inst18Quest3_Level = "30"
Inst18Quest3_Attain = "22"
Inst18Quest3_Aim = "护送进口商威利克斯逃出剃刀沼泽。"
Inst18Quest3_Location = "进口商威利克斯（剃刀沼泽; "..YELLOW.." [8]"..WHITE.."）"
Inst18Quest3_Note = "你必须把威利克斯护送到入口处。完成后向他领取奖励。"
Inst18Quest3_Prequest = "无"
Inst18Quest3_Folgequest = "无"
--
Inst18Quest3name1 = "猴子戒指"
Inst18Quest3name2 = "蛇环"
Inst18Quest3name3 = "猛虎指环"

--Quest 4 Alliance
Inst18Quest4 = "4. 卡尔加·刺肋"
Inst18Quest4_Level = "34"
Inst18Quest4_Attain = "29"
Inst18Quest4_Aim = "把卡尔加·刺肋的徽章交给萨兰纳尔的法芬德尔。"
Inst18Quest4_Location = "法芬德尔（菲拉斯 - 萨兰纳尔; "..YELLOW.."89,46"..WHITE.."）"
Inst18Quest4_Note = "卡尔加·刺肋"..YELLOW.."[7]"..WHITE.."掉落徽章。"
Inst18Quest4_Prequest = "有，亨里格的日记"
Inst18Quest4_Folgequest = "有，卡尔加·刺肋"
Inst18Quest4PreQuest = "true"
--
Inst18Quest4name1 = "法芬德尔的猎枪"
Inst18Quest4name2 = "绿宝石护肩"
Inst18Quest4name3 = "石拳束带"
Inst18Quest4name4 = "石饰圆盾"

--Quest 5 Alliance
Inst18Quest5 = "5. 弗伦的铠甲（战士任务）"
Inst18Quest5_Level = "28"
Inst18Quest5_Attain = "20"
Inst18Quest5_Aim = "收集必需的材料，将它们交给暴风城的弗伦·长须。"
Inst18Quest5_Location = "弗伦·长须（暴风城 - 矮人区; "..YELLOW.."57,16"..WHITE.."）"
Inst18Quest5_Note = "只有战士才能接到这个任务！\n你可以从鲁古格"..YELLOW.."[1]"..WHITE.."得到燃素。\n\n湿地的蜘蛛掉落烧焦的蜘蛛牙，石爪山脉的奇美幼崽拉掉落烧焦的奇美拉角、雌奇美拉掉落光滑的奇美拉角。"
Inst18Quest5_Prequest = "有，铸盾师"
Inst18Quest5_Folgequest = "有，（请见注释）"
Inst18Quest5PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst18Quest1_HORDE = Inst18Quest1
Inst18Quest1_HORDE_Level = Inst18Quest1_Level
Inst18Quest1_HORDE_Attain = Inst18Quest1_Attain
Inst18Quest1_HORDE_Aim = Inst18Quest1_Aim
Inst18Quest1_HORDE_Location = Inst18Quest1_Location
Inst18Quest1_HORDE_Note = Inst18Quest1_Note
Inst18Quest1_HORDE_Prequest = Inst18Quest1_Prequest
Inst18Quest1_HORDE_Folgequest = Inst18Quest1_Folgequest
--
Inst18Quest1name1_HORDE = Inst18Quest1name1

--Quest 2 Horde  (same as Quest 3 Alliance)
Inst18Quest2_HORDE = "2. 进口商威利克斯"
Inst18Quest2_HORDE_Level = Inst18Quest3_Level
Inst18Quest2_HORDE_Attain = Inst18Quest3_Attain
Inst18Quest2_HORDE_Aim = Inst18Quest3_Aim
Inst18Quest2_HORDE_Location = Inst18Quest3_Location
Inst18Quest2_HORDE_Note = Inst18Quest3_Note
Inst18Quest2_HORDE_Prequest = Inst18Quest3_Prequest
Inst18Quest2_HORDE_Folgequest = Inst18Quest3_Folgequest
--
Inst18Quest2name1_HORDE = Inst18Quest3name1
Inst18Quest2name2_HORDE = Inst18Quest3name2
Inst18Quest2name3_HORDE = Inst18Quest3name3

-- Quest 3 Horde
Inst18Quest3_HORDE = "3. 蝙蝠的粪便"
Inst18Quest3_HORDE_Level = "33"
Inst18Quest3_HORDE_Attain = "30"
Inst18Quest3_HORDE_Aim = "帮幽暗城的大药剂师法拉尼尔带回一堆沼泽蝙蝠的粪便。"
Inst18Quest3_HORDE_Location = "法拉尼尔（幽暗城 - 炼金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst18Quest3_HORDE_Note = "任何蝙蝠都会掉落沼泽蝙蝠的粪便。"
Inst18Quest3_HORDE_Prequest = "无"
Inst18Quest3_HORDE_Folgequest = "有，狂热之心（"..YELLOW.."[剃刀高地]"..WHITE.."）"
-- No Rewards for this quest

--Quest 4 Horde
Inst18Quest4_HORDE = "4. 奥尔德的报复"
Inst18Quest4_HORDE_Level = "34"
Inst18Quest4_HORDE_Attain = "29"
Inst18Quest4_HORDE_Aim = "把卡尔加·刺肋的心脏交给雷霆崖的奥尔德·石塔。"
Inst18Quest4_HORDE_Location = "奥尔德·石塔（雷霆崖; "..YELLOW.."36,59 "..WHITE.."）"
Inst18Quest4_HORDE_Note = "卡尔加·刺肋在"..YELLOW.."[7]"..WHITE.."、"
Inst18Quest4_HORDE_Prequest = "无"
Inst18Quest4_HORDE_Folgequest = "无"
--
Inst18Quest4name1_HORDE = "绿宝石护肩"
Inst18Quest4name2_HORDE = "石拳束带"
Inst18Quest4name3_HORDE = "石饰圆盾"

--Quest 5 Horde
Inst18Quest5_HORDE = "5. 野蛮护甲（战士任务）"
Inst18Quest5_HORDE_Level = "30"
Inst18Quest5_HORDE_Attain = "20"
Inst18Quest5_HORDE_Aim = "为索恩格瑞姆收集15根烟雾铁锭、10份蓝铜粉、10块铁锭和1瓶燃素。"
Inst18Quest5_HORDE_Location = "索恩格瑞姆·火眼（贫瘠之地; "..YELLOW.."57,30 "..WHITE.."）"
Inst18Quest5_HORDE_Note = "只有战士才能接到这个任务！\n你可以从鲁古格"..YELLOW.."[1]"..WHITE.."得到燃素。\n\n完成这个任务后他会给你一个新的任务。"
Inst18Quest5_HORDE_Prequest = "有，和索恩格瑞姆交谈"
Inst18Quest5_HORDE_Folgequest = "有，（请见注释）"
Inst18Quest5PreQuest_HORDE = "true"
-- No Rewards for this quest



--------------- INST19 - SM: Library (SM Lib) ---------------

Inst19Story = "血色修道院曾经是洛丹伦王国牧师的荣耀之地——那里是学习圣光只是和膜拜的中心。随着在第三次大战中亡灵天灾的崛起，宁静的修道院成为了疯狂的血色十字军的要塞。十字军对于所有非人类都有着偏激的态度，无论他们是自己的盟友还是对手。他们相信所有任何外来者都带着亡灵的瘟疫——他们必须被摧毁。有报告说所有进入修道院的冒险者都要面对血色十字军指挥官莫格莱尼——他控制了一群狂热的十字军战士。然而，修道院的真正主人是大检察官怀特迈恩——一个疯狂的牧师，她具有复活死去的战士来为其效劳的能力。"
Inst19Caption = "血色修道院（图书馆）"
Inst19QAA = "3 个任务"
Inst19QAH = "5 个任务"

--Quest 1 Alliance
Inst19Quest1 = "1. 泰坦神话"
Inst19Quest1_Level = "38"
Inst19Quest1_Attain = "28"
Inst19Quest1_Aim = "从修道院拿回《泰坦神话》，把它交给铁炉堡的图书馆员麦伊·苍尘。"
Inst19Quest1_Location = "图书馆员麦伊·苍尘（铁炉堡 - 探险者大厅; "..YELLOW.."74,12 "..WHITE.."）"
Inst19Quest1_Note = "你可以在血色修道院的图书馆奥法师杜安之前左侧一个走廊的地板上（"..YELLOW.."[2]"..WHITE.."）找到这本书。"
Inst19Quest1_Prequest = "无"
Inst19Quest1_Folgequest = "无"
--
Inst19Quest1name1 = "探险者协会的奖状"

--Quest 2 Alliance
Inst19Quest2 = "2. 能量仪祭（法师任务）"
Inst19Quest2_Level = "40"
Inst19Quest2_Attain = "30"
Inst19Quest2_Aim = "将《能量仪祭》交给尘泥沼泽的塔贝萨。"
Inst19Quest2_Location = "塔贝萨（尘泥沼泽; "..YELLOW.."43,57"..WHITE.."）"
Inst19Quest2_Note = "法师职业任务，你可以在血色修道院的图书馆奥法师杜安之前左侧一个走廊的地板上（"..YELLOW.."[2]"..WHITE.."）找到这本书。"
Inst19Quest2_Prequest = "有，解封咒语"
Inst19Quest2_Folgequest = "有，法师的魔杖"
Inst19Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst19Quest3 = "3. 以圣光之名"
Inst19Quest3_Level = "40"
Inst19Quest3_Attain = "34"
Inst19Quest3_Aim = "杀死大检察官怀特迈恩，血色十字军指挥官莫格莱尼，十字军的勇士赫洛德和驯犬者洛克希并向南海镇的莱雷恩复命。"
Inst19Quest3_Location =  "虔诚的莱雷恩（希尔斯布莱德丘陵 - 南海镇; "..YELLOW.."51,58 "..WHITE.."）"
Inst19Quest3_Note ="此系列任务始于克罗雷修士（暴风城 - 光明大教堂; "..YELLOW.."42,24"..WHITE.."）。\n大检察官怀特迈恩和血色十字军指挥官莫格莱尼在血色修道院"..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院"..YELLOW.."军械库[1]"..WHITE.."，驯犬者洛克希在血色修道院"..YELLOW.."图书馆[1]"..WHITE.."。"
Inst19Quest3_Prequest = "有，安东修士 -> 血色之路"
Inst19Quest3_Folgequest = "有"
Inst19Quest3PreQuest = "true"
--
Inst19Quest3name1 = "平静之剑"
Inst19Quest3name2 = "咬骨之斧"
Inst19Quest3name3 = "黑暗威胁"
Inst19Quest3name4 = "洛瑞卡宝珠"


--Quest 1 Horde
Inst19Quest1_HORDE = "1. 狂热之心"
Inst19Quest1_HORDE_Level = "33"
Inst19Quest1_HORDE_Attain = "30"
Inst19Quest1_HORDE_Aim = "幽暗城的大药剂师法拉尼尔需要20颗狂热之心。"
Inst19Quest1_HORDE_Location = "大药剂师法拉尼尔（幽暗城 - 炼金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst19Quest1_HORDE_Note = "血色所有的怪物均会掉落。"
Inst19Quest1_HORDE_Prequest = "有，蝙蝠的粪便（"..YELLOW.."[剃刀沼泽]"..WHITE.."）"
Inst19Quest1_HORDE_Folgequest = "无"
Inst19Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst19Quest2_HORDE = "2. 知识的试炼"
Inst19Quest2_HORDE_Level = "36"
Inst19Quest2_HORDE_Attain = "26"
Inst19Quest2_HORDE_Aim = "找到《亡灵的起源》，把它交给幽暗城的帕科瓦·芬塔拉斯。"
Inst19Quest2_HORDE_Location = "帕科瓦·芬塔拉斯（幽暗城 - 炼金房; "..YELLOW.."57,65 "..WHITE.."）"
Inst19Quest2_HORDE_Note = "此系列任务始于多恩·平原行者（千针石林; "..YELLOW.."53,41"..WHITE.."）。\n书在血色修道院图书馆里。"
Inst19Quest2_HORDE_Prequest = "有，信仰的试炼 -> 耐力的试炼 -> 力量的试炼"
Inst19Quest2_HORDE_Folgequest = "有，知识的试炼"
Inst19Quest2PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 3 Horde
Inst19Quest3_HORDE = "3. 堕落者纲要"
Inst19Quest3_HORDE_Level = "38"
Inst19Quest3_HORDE_Attain = "28"
Inst19Quest3_HORDE_Aim = "从提瑞斯法林地血色修道院里找到《堕落者纲要》，把它交给雷霆崖的圣者图希克。"
Inst19Quest3_HORDE_Location = "圣者图希克（雷霆崖; "..YELLOW.."34,47"..WHITE.."）"
Inst19Quest3_HORDE_Note = "你可以在血色图书馆里找到这这本书。"
Inst19Quest3_HORDE_Prequest = "无"
Inst19Quest3_HORDE_Folgequest = "无"
--
Inst19Quest3name1_HORDE = "邪恶防护者"
Inst19Quest3name2_HORDE = "力石圆盾"
Inst19Quest3name3_HORDE = "终结宝珠"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst19Quest4_HORDE = "4. 能量仪祭（法师任务）"
Inst19Quest4_HORDE_Level = Inst19Quest2_Level
Inst19Quest4_HORDE_Attain = Inst19Quest2_Attain
Inst19Quest4_HORDE_Aim = Inst19Quest2_Aim
Inst19Quest4_HORDE_Location = Inst19Quest2_Location
Inst19Quest4_HORDE_Note = Inst19Quest2_Note
Inst19Quest4_HORDE_Prequest = Inst19Quest2_Prequest
Inst19Quest4_HORDE_Folgequest = Inst19Quest2_Folgequest
Inst19Quest4PreQuest_HORDE = Inst19Quest2_PreQuest
-- No Rewards for this quest

--Quest 5 Horde
Inst19Quest5_HORDE = "5. 深入血色修道院"
Inst19Quest5_HORDE_Level = "42"
Inst19Quest5_HORDE_Attain = "33"
Inst19Quest5_HORDE_Aim = "杀掉大检察官怀特迈恩、血色十字军指挥官莫格莱尼、血色十字军勇士赫洛德和驯犬者洛克希，然后向幽暗城的瓦里玛萨斯回报。"
Inst19Quest5_HORDE_Location = "瓦里玛萨斯（幽暗城 - 皇家区; "..YELLOW.."56,92 "..WHITE.."）"
Inst19Quest5_HORDE_Note = "大检察官怀特迈恩和血色十字军指挥官莫格莱尼在血色修道院"..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院"..YELLOW.."军械库[1]"..WHITE.."，驯犬者洛克希在血色修道院"..YELLOW.."图书馆[1]"..WHITE.."。"
Inst19Quest5_HORDE_Prequest = "无"
Inst19Quest5_HORDE_Folgequest = "无"
--
Inst19Quest5name1_HORDE = "预兆之剑"
Inst19Quest5name2_HORDE = "预言藤杖"
Inst19Quest5name3_HORDE = "龙血项链"

--------------- INST20 - SM: Armory (SM Arm) ---------------

Inst20Story = "血色修道院曾经是洛丹伦王国牧师的荣耀之地——那里是学习圣光只是和膜拜的中心。随着在第三次大战中亡灵天灾的崛起，宁静的修道院成为了疯狂的血色十字军的要塞。十字军对于所有非人类都有着偏激的态度，无论他们是自己的盟友还是对手。他们相信所有任何外来者都带着亡灵的瘟疫——他们必须被摧毁。有报告说所有进入修道院的冒险者都要面对血色十字军指挥官莫格莱尼——他控制了一群狂热的十字军战士。然而，修道院的真正主人是大检察官怀特迈恩——一个疯狂的牧师，她具有复活死去的战士来为其效劳的能力。"
Inst20Caption = "血色修道院：军械库"
Inst20QAA = "1 个任务"
Inst20QAH = "2 个任务"

--Quest 1 Alliance
Inst20Quest1 = "1. 以圣光之名"
Inst20Quest1_Level = "40"
Inst20Quest1_Attain = "34"
Inst20Quest1_Aim = "杀死大检察官怀特迈恩，血色十字军指挥官莫格莱尼，十字军的勇士赫洛德和驯犬者洛克希并向南海镇的莱雷恩复命。"
Inst20Quest1_Location = "虔诚的莱雷恩（希尔斯布莱德丘陵 - 南海镇; "..YELLOW.."51,58 "..WHITE.."）"
Inst20Quest1_Note = "此系列任务始于克罗雷修士（暴风城 - 光明大教堂; "..YELLOW.."42,24"..WHITE.."）。\n大检察官怀特迈恩和血色十字军指挥官莫格莱尼在血色修道院"..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院"..YELLOW.."军械库[1]"..WHITE.."，驯犬者洛克希在血色修道院"..YELLOW.."图书馆[1]"..WHITE.."。"
Inst20Quest1_Prequest ="有，安东修士 -> 血色之路"
Inst20Quest1_Folgequest = "无"
Inst20Quest1PreQuest = "true"
--
Inst20Quest1name1 = "平静之剑"
Inst20Quest1name2 = "咬骨之斧"
Inst20Quest1name3 = "黑暗威胁"
Inst20Quest1name4 = "洛瑞卡宝珠"


--Quest 1 Horde
Inst20Quest1_HORDE = "1. 狂热之心"
Inst20Quest1_HORDE_Level = "33"
Inst20Quest1_HORDE_Attain = "30"
Inst20Quest1_HORDE_Aim = "幽暗城的大药剂师法拉尼尔需要20颗狂热之心。"
Inst20Quest1_HORDE_Location = "大药剂师法拉尼尔（幽暗城 - 炼金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst20Quest1_HORDE_Note = "血色所有的怪均掉落。"
Inst20Quest1_HORDE_Prequest = "有，蝙蝠的粪便（"..YELLOW.."[剃刀沼泽]"..WHITE.."）"
Inst20Quest1_HORDE_Folgequest = "无"
Inst20Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst20Quest2_HORDE = "2. 深入血色修道院"
Inst20Quest2_HORDE_Level = "42"
Inst20Quest2_HORDE_Attain = "33"
Inst20Quest2_HORDE_Aim = "杀掉大检察官怀特迈恩、血色十字军指挥官莫格莱尼、血色十字军勇士赫洛德和驯犬者洛克希，然后向幽暗城的瓦里玛萨斯回报。"
Inst20Quest2_HORDE_Location = "瓦里玛萨斯（幽暗城 - 皇家区; "..YELLOW.."56,92 "..WHITE.."）"
Inst20Quest2_HORDE_Note = "大检察官怀特迈恩和血色十字军指挥官莫格莱尼在血色修道院"..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院"..YELLOW.."军械库[1]"..WHITE.."，驯犬者洛克希在血色修道院"..YELLOW.."图书馆[1]"..WHITE.."。"
Inst20Quest2_HORDE_Prequest = "无"
Inst20Quest2_HORDE_Folgequest = "无"
--
Inst20Quest2name1_HORDE = "预兆之剑"
Inst20Quest2name2_HORDE = "预言藤杖"
Inst20Quest2name3_HORDE = "龙血项链"



--------------- INST21 - SM: Cathedral (SM Cath) ---------------

Inst21Story = "血色修道院曾经是洛丹伦王国牧师的荣耀之地——那里是学习圣光只是和膜拜的中心。随着在第三次大战中亡灵天灾的崛起，宁静的修道院成为了疯狂的血色十字军的要塞。十字军对于所有非人类都有着偏激的态度，无论他们是自己的盟友还是对手。他们相信所有任何外来者都带着亡灵的瘟疫——他们必须被摧毁。有报告说所有进入修道院的冒险者都要面对血色十字军指挥官莫格莱尼——他控制了一群狂热的十字军战士。然而，修道院的真正主人是大检察官怀特迈恩——一个疯狂的牧师，她具有复活死去的战士来为其效劳的能力。"
Inst21Caption = "血色修道院：教堂"
Inst21QAA = "1 个任务"
Inst21QAH = "2 个任务"

--Quest 1 Alliance
Inst21Quest1 = "1. 以圣光之名"
Inst21Quest1_Level = "40"
Inst21Quest1_Attain = "34"
Inst21Quest1_Aim =  "杀死大检察官怀特迈恩，血色十字军指挥官莫格莱尼，十字军的勇士赫洛德和驯犬者洛克希并向南海镇的莱雷恩复命。"
Inst21Quest1_Location = "虔诚的莱雷恩（希尔斯布莱德丘陵 - 南海镇; "..YELLOW.."51,58 "..WHITE.."）"
Inst21Quest1_Note = "此系列任务始于克罗雷修士（暴风城 - 光明大教堂; "..YELLOW.."42,24"..WHITE.."）。\n大检察官怀特迈恩和血色十字军指挥官莫格莱尼在血色修道院"..YELLOW.."教堂[2]"..WHITE.."，赫洛德在血色修道院"..YELLOW.."军械库[1]"..WHITE.."，驯犬者洛克希在血色修道院"..YELLOW.."图书馆[1]"..WHITE.."。"
Inst21Quest1_Prequest = "有，安东修士 -> 血色之路"
Inst21Quest1_Folgequest = "无"
Inst21Quest1PreQuest = "true"
--
Inst21Quest1name1 = "平静之剑"
Inst21Quest1name2 = "咬骨手斧"
Inst21Quest1name3 = "黑暗威胁"
Inst21Quest1name4 = "洛瑞卡宝珠"


--Quest 1 Horde
Inst21Quest1_HORDE = "1. 狂热之心"
Inst21Quest1_HORDE_Level = "33"
Inst21Quest1_HORDE_Attain = "30"
Inst21Quest1_HORDE_Aim = "幽暗城的大药剂师法拉尼尔需要20颗狂热之心。"
Inst21Quest1_HORDE_Location = "大药剂师法拉尼尔（幽暗城 - 炼金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst21Quest1_HORDE_Note = "血色所有的怪均掉落。"
Inst21Quest1_HORDE_Prequest = "有，蝙蝠的粪便（"..YELLOW.."[剃刀沼泽]"..WHITE.."）"
Inst21Quest1_HORDE_Folgequest = "无"
Inst21Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde
Inst21Quest2_HORDE = "2. 深入血色修道院"
Inst21Quest2_HORDE_Level = "42"
Inst21Quest2_HORDE_Attain = "33"
Inst21Quest2_HORDE_Aim = "杀掉大检察官怀特迈恩、血色十字军指挥官莫格莱尼、血色十字军勇士赫洛德和驯犬者洛克希，然后向幽暗城的瓦里玛萨斯回报。"
Inst21Quest2_HORDE_Location = "瓦里玛萨斯（幽暗城 - 皇家区; "..YELLOW.."56,92 "..WHITE.."）"
Inst21Quest2_HORDE_Note = "大检察官怀特迈恩 和 血色十字军指挥官莫格莱尼 在 "..YELLOW.."血色修道院：教堂 [2]"..WHITE..",赫洛德 在 "..YELLOW.."血色修道院：军械库[1]"..WHITE.."，  驯犬者洛克希 在 "..YELLOW.."血色修道院：图书馆[1]"..WHITE.."."
Inst21Quest2_HORDE_Prequest = "无"
Inst21Quest2_HORDE_Folgequest = "无"
--
Inst21Quest2name1_HORDE = "预兆之剑"
Inst21Quest2name2_HORDE = "预言藤杖"
Inst21Quest2name3_HORDE = "龙血项链"



--------------- INST22 - SM: Graveyard (SM GY) ---------------

Inst22Story = "血色修道院曾经是洛丹伦王国牧师的荣耀之地——那里是学习圣光只是和膜拜的中心。随着在第三次大战中亡灵天灾的崛起，宁静的修道院成为了疯狂的血色十字军的要塞。十字军对于所有非人类都有着偏激的态度，无论他们是自己的盟友还是对手。他们相信所有任何外来者都带着亡灵的瘟疫——他们必须被摧毁。有报告说所有进入修道院的冒险者都要面对血色十字军指挥官莫格莱尼——他控制了一群狂热的十字军战士。然而，修道院的真正主人是大检察官怀特迈恩——一个疯狂的牧师，她具有复活死去的战士来为其效劳的能力。"
Inst22Caption = "血色修道院：墓地"
Inst22QAA = "1 个任务"
Inst22QAH = "3 个任务"

--Quest 1 Alliance
Inst22Quest1 = "1. 召唤无头骑士（日常 - 季节性）"
Inst22Quest1_Level = "70"
Inst22Quest1_Attain = "70"
Inst22Quest1_Aim = "将一根悲伤蜡烛插入翻过的泥土。"
Inst22Quest1_Location = "南瓜神龛（血色修道院 - 墓地; "..YELLOW.."[2]"..WHITE.."）"
Inst22Quest1_Note = "南瓜神龛旁边就是翻过的泥土。这是一个只有在万圣节期间的季节性日常任务。\n\n召唤出来的无头骑士是70级别 Boss。"
Inst22Quest1_Prequest = "No"
Inst22Quest1_Folgequest = "No"
-- No Rewards for this quest


--Quest 1 Horde
Inst22Quest1_HORDE = "1. 沃瑞尔的复仇"
Inst22Quest1_HORDE_Level = "33"
Inst22Quest1_HORDE_Attain = "25"
Inst22Quest1_HORDE_Aim = "把沃瑞尔·森加斯的结婚戒指还给塔伦米尔的莫尼卡·森古特斯。"
Inst22Quest1_HORDE_Location =  "沃瑞尔·森加斯（血色修道院 - 墓地; "..YELLOW.."[1]"..WHITE.."）"
Inst22Quest1_HORDE_Note = "沃瑞尔·森加斯位于血色修道院墓地前部。南茜在（奥特兰克山脉; "..YELLOW.."31,32"..WHITE..")。 她有任务需要的戒指。"
Inst22Quest1_HORDE_Prequest = "无"
Inst22Quest1_HORDE_Folgequest = "无"
--
Inst22Quest1name1_HORDE = "沃瑞尔的靴子"
Inst22Quest1name2_HORDE = "悲哀衬肩"
Inst22Quest1name3_HORDE = "十字军斗篷"

--Quest 2 Horde
Inst22Quest2_HORDE = "2. 狂热之心"
Inst22Quest2_HORDE_Level = "33"
Inst22Quest2_HORDE_Attain = "30"
Inst22Quest2_HORDE_Aim = "幽暗城的大药剂师法拉尼尔需要20颗狂热之心。"
Inst22Quest2_HORDE_Location = "大药剂师法拉尼尔（幽暗城 - 炼金房; "..YELLOW.."48,69 "..WHITE.."）"
Inst22Quest2_HORDE_Note =  "血色所有的怪均掉落。"
Inst22Quest2_HORDE_Prequest = "有，蝙蝠的粪便（"..YELLOW.."[剃刀沼泽]"..WHITE.."）"
Inst22Quest2_HORDE_Folgequest = "无"
Inst22Quest2PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 1 Alliance)
Inst22Quest3_HORDE = "3. Call the Headless Horseman (Daily - Seasonal)"
Inst22Quest3_HORDE_Level = Inst22Quest1_Level
Inst22Quest3_HORDE_Attain = Inst22Quest1_Attain
Inst22Quest3_HORDE_Aim = Inst22Quest1_Aim
Inst22Quest3_HORDE_Location = Inst22Quest1_Location
Inst22Quest3_HORDE_Note = Inst22Quest1_Note
Inst22Quest3_HORDE_Prequest = Inst22Quest1_Prequest
Inst22Quest3_HORDE_Folgequest = Inst22Quest1_Folgequest
-- No Rewards for this quest

--------------- INST23 - Scholomance (Scholo) ---------------

Inst23Story = "通灵学院位于凯尔达隆废弃的城堡中的地下室中。那里曾经是高贵的巴罗夫家族的，但是在第二次大战中凯尔达隆变成了一块废墟。法师克尔苏加德经常向他的诅咒神教信徒承诺可以用对于巫妖王的效忠来换取永恒的生命。巴罗克家族受到克尔苏加德的魅惑而将城堡和其地下室献给了亡灵天灾。那些信徒然后将巴罗夫家族的人杀死并把地下室变成了通灵学院。虽然克尔苏加德不再住在这个地下室中，但是狂热的信徒和讲师都还留在那里。强大的巫妖，莱斯·霜语以亡灵天灾的名义控制了这里——而凡人亡灵巫师黑暗院长加丁则是这个学校邪恶的校长。"
Inst23Caption = "通灵学院"
Inst23QAA = "10 个任务"
Inst23QAH = "10 个任务"

--Quest 1 Alliance
Inst23Quest1 = "1. 瘟疫之龙"
Inst23Quest1_Level = "58"
Inst23Quest1_Attain = "55"
Inst23Quest1_Aim = "杀掉20只瘟疫龙崽，然后向圣光之愿礼拜堂的贝蒂娜·比格辛克复命。"
Inst23Quest1_Location = "贝蒂娜·比格辛克（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,59"..WHITE.."）"
Inst23Quest1_Note = "瘟疫之龙在尸骨储藏所，去往血骨傀儡的大房间。"
Inst23Quest1_Prequest = "无"
Inst23Quest1_Folgequest = "有，健康的龙鳞"
-- No Rewards for this quest

--Quest 2 Alliance
Inst23Quest2 = "2. 健康的龙鳞"
Inst23Quest2_Level = "58"
Inst23Quest2_Attain = "56"
Inst23Quest2_Aim = "把健康的龙鳞交给东瘟疫之地圣光之愿礼拜堂中的贝蒂娜·比格辛克。"
Inst23Quest2_Location = "健康的龙鳞（通灵学院瘟疫龙崽掉落）"
Inst23Quest2_Note = "瘟疫龙崽掉落健康的龙鳞（8% 掉率）。贝蒂娜·比格辛克在（东瘟疫之地 - 圣光之愿礼拜堂;"..YELLOW.."81,59"..WHITE.."）。"
Inst23Quest2_Prequest = "有，瘟疫之龙"
Inst23Quest2_Folgequest = "无"
Inst23Quest2FQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst23Quest3 = "3. 瑟尔林·卡斯迪诺夫教授"
Inst23Quest3_Level = "60"
Inst23Quest3_Attain = "55"
Inst23Quest3_Aim = "在通灵学院中找到瑟尔林·卡斯迪诺夫教授。杀死他，并烧毁艾瓦·萨克霍夫和卢森·萨克霍夫的遗体。任务完成后就回到艾瓦·萨克霍夫那儿。"
Inst23Quest3_Location = "艾瓦·萨克霍夫（西瘟疫之地 - 凯尔达隆; "..YELLOW.."70,73"..WHITE.."）"
Inst23Quest3_Note = "你可以在"..YELLOW.."[9]"..WHITE.."找到瑟尔林·卡斯迪诺夫教授。"
Inst23Quest3_Prequest = "无"
Inst23Quest3_Folgequest = "有，卡斯迪诺夫的恐惧之袋"
-- No Rewards for this quest

--Quest 4 Alliance
Inst23Quest4 = "4. 卡斯迪诺夫的恐惧之袋"
Inst23Quest4_Level = "60"
Inst23Quest4_Attain = "55"
Inst23Quest4_Aim = "在通灵学院找到詹迪斯·巴罗夫并打败她。从她的尸体上找到卡斯迪诺夫的恐惧之袋，然后将其交给艾瓦·萨克霍夫。"
Inst23Quest4_Location = "艾瓦·萨克霍夫（西瘟疫之地 - 凯尔达隆; "..YELLOW.."70,73"..WHITE.."）"
Inst23Quest4_Note = "你可以在"..YELLOW.."[3]"..WHITE.."詹迪斯·巴罗夫。"
Inst23Quest4_Prequest = "有，瑟尔林·卡斯迪诺夫教授"
Inst23Quest4_Folgequest = "有，传令官基尔图诺斯"
Inst23Quest4FQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst23Quest5 = "5. 传令官基尔图诺斯"
Inst23Quest5_Level = "60"
Inst23Quest5_Attain = "55"
Inst23Quest5_Aim = "带着无辜者之血回到通灵学院，将它放在门廊的火盆下面，基尔图诺斯会前来吞噬你的灵魂。勇敢地战斗吧，不要退缩！杀死基尔图诺斯，然后回到艾瓦·萨克霍夫那儿。"
Inst23Quest5_Location = "艾瓦·萨克霍夫（西瘟疫之地 - 凯尔达隆; "..YELLOW.."70,73"..WHITE.."）"
Inst23Quest5_Note = "门廊就在"..YELLOW.."[2]"..WHITE.."。"
Inst23Quest5_Prequest = "有，卡斯迪诺夫的恐惧之袋"
Inst23Quest5_Folgequest = "有，莱斯·霜语"
Inst23Quest5FQuest = "true"
--
Inst23Quest5name1 = "鬼灵精华"
Inst23Quest5name2 = "波尼的玫瑰"
Inst23Quest5name3 = "米拉之歌"

--Quest 6 Alliance
Inst23Quest6 = "6. 巫妖莱斯·霜语"
Inst23Quest6_Level = "60"
Inst23Quest6_Attain = "60"
Inst23Quest6_Aim = "在通灵学院里找到莱斯·霜语。当你找到他之后，使用禁锢灵魂的遗物破除其亡灵的外壳。如果你成功地破除了他的不死之身，就杀掉他并拿到莱斯·霜语的头颅。把那个头颅交给马杜克镇长。"
Inst23Quest6_Location = "马杜克镇长（西瘟疫之地 - 凯尔达隆; "..YELLOW.."70,73"..WHITE.."）"
Inst23Quest6_Note = "你可以在"..YELLOW.."[7]"..WHITE.."找到莱斯·霜语。"
Inst23Quest6_Prequest = "有，莱斯·霜语  - > 禁锢灵魂的遗物"
Inst23Quest6_Folgequest = "无"
Inst23Quest6PreQuest = "true"
--
Inst23Quest6name1 = "达隆郡之盾"
Inst23Quest6name2 = "凯尔达隆战剑"
Inst23Quest6name3 = "凯尔达隆之冠"
Inst23Quest6name4 = "达隆郡之刺"

--Quest 7 Alliance
Inst23Quest7 = "7. 巴罗夫家族的宝藏"
Inst23Quest7_Level = "60"
Inst23Quest7_Attain = "52"
Inst23Quest7_Aim = "到通灵学院中去取得巴罗夫家族的宝藏。这份宝藏包括四份地契：凯尔达隆地契、布瑞尔地契、塔伦米尔地契，还有南海镇地契。完成任务之后就回到维尔顿·巴罗夫那儿去。"
Inst23Quest7_Location = "维尔顿·巴罗夫（西瘟疫之地 - 寒风营地; "..YELLOW.."43,83"..WHITE.."）"
Inst23Quest7_Note = "你可以在"..YELLOW.."[12]"..WHITE.."找到凯尔达隆地契，在"..YELLOW.."[7]"..WHITE.."找到布瑞尔地契，在"..YELLOW.."[4]"..WHITE.."找到塔伦米尔地契，在"..YELLOW.."[1]"..WHITE.."找到南海镇地契。"
Inst23Quest7_Prequest = "无"
Inst23Quest7_Folgequest = "有，巴罗夫的继承人\n（去亡灵壁垒暗杀阿莱克斯·巴罗夫。把他的脑袋交给维尔顿·巴罗夫。）"
-- No Rewards for this quest

--Quest 8 Alliance
Inst23Quest8 = "8. 黎明先锋"
Inst23Quest8_Level = "60"
Inst23Quest8_Attain = "58"
Inst23Quest8_Aim = "将黎明先锋放在通灵学院的观察室里。打败维克图斯,然后回到贝蒂娜·比格辛克那里去。"
Inst23Quest8_Location = "贝蒂娜·比格辛克（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,59"..WHITE.."）"
Inst23Quest8_Note = "雏龙精华开始于丁奇·斯迪波尔（燃烧平原 - 烈焰峰; "..YELLOW.."65,23"..WHITE.."）。 观察室在"..YELLOW.."[6]"..WHITE.."。"
Inst23Quest8_Prequest = "有，雏龙精华 - > 莱尼德·巴萨罗梅 - > 贝蒂娜·比格辛克"
Inst23Quest8_Folgequest = "无"
Inst23Quest8PreQuest = "true"
--
Inst23Quest8name1 = "断风者"
Inst23Quest8name2 = "舞动之藤"

--Quest 9 Alliance
Inst23Quest9 = "9. 瓶中的小鬼（术士任务）"
Inst23Quest9_Level = "60"
Inst23Quest9_Attain = "60"
Inst23Quest9_Aim = "把瓶中的小鬼带到通灵学院的炼金实验室中。在小鬼制造出羊皮纸之后，把瓶子还给戈瑟奇·邪眼。"
Inst23Quest9_Location = "戈瑟奇·邪眼（燃烧平原; "..YELLOW.."12,31"..WHITE.."）"
Inst23Quest9_Note = "只有术士才能得到这个任务！你可以在"..YELLOW.."[7]"..WHITE.."找到炼金实验室。"
Inst23Quest9_Prequest = "有，莫苏尔·召血者 - > 克索诺斯星尘"
Inst23Quest9_Folgequest = "有，克索诺斯恐惧战马"
Inst23Quest9PreQuest = "true"
-- No Rewards for this quest

--Quest 10 Alliance
Inst23Quest10 = "10. 瓦塔拉克饰品的左瓣"
Inst23Quest10_Level = "60"
Inst23Quest10_Attain = "60"
Inst23Quest10_Aim = "使用召唤火盆召唤出库尔莫克的灵魂，然后杀掉他。完成之后，将召唤火盆与瓦塔拉克饰品的左瓣还给黑石山的伯德雷。"
Inst23Quest10_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图[D] "..WHITE.."）"
Inst23Quest10_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。\n\n库尔莫克在"..YELLOW.."[7]"..WHITE.."。"
Inst23Quest10_Prequest = "有，重要的材料"
Inst23Quest10_Folgequest = " 有，奥卡兹岛在你前方……"
Inst23Quest10PreQuest = "true"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst23Quest1_HORDE = Inst23Quest1
Inst23Quest1_HORDE_Level = Inst23Quest1_Level
Inst23Quest1_HORDE_Attain = Inst23Quest1_Attain
Inst23Quest1_HORDE_Aim = Inst23Quest1_Aim
Inst23Quest1_HORDE_Location = Inst23Quest1_Location
Inst23Quest1_HORDE_Note = Inst23Quest1_Note
Inst23Quest1_HORDE_Prequest = Inst23Quest1_Prequest
Inst23Quest1_HORDE_Folgequest = Inst23Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst23Quest2_HORDE = Inst23Quest2
Inst23Quest2_HORDE_Level = Inst23Quest2_Level
Inst23Quest2_HORDE_Attain = Inst23Quest2_Attain
Inst23Quest2_HORDE_Aim = Inst23Quest2_Aim
Inst23Quest2_HORDE_Location = Inst23Quest2_Location
Inst23Quest2_HORDE_Note = Inst23Quest2_Note
Inst23Quest2_HORDE_Prequest = Inst23Quest2_Prequest
Inst23Quest2_HORDE_Folgequest = Inst23Quest2_Folgequest
Inst23Quest2FQuest_HORDE = Inst23Quest2FQuest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst23Quest3_HORDE = Inst23Quest3
Inst23Quest3_HORDE_Level = Inst23Quest3_Level
Inst23Quest3_HORDE_Attain = Inst23Quest3_Attain
Inst23Quest3_HORDE_Aim = Inst23Quest3_Aim
Inst23Quest3_HORDE_Location = Inst23Quest3_Location
Inst23Quest3_HORDE_Note = Inst23Quest3_Note
Inst23Quest3_HORDE_Prequest = Inst23Quest3_Prequest
Inst23Quest3_HORDE_Folgequest = Inst23Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst23Quest4_HORDE = Inst23Quest4
Inst23Quest4_HORDE_Level = Inst23Quest4_Level
Inst23Quest4_HORDE_Attain = Inst23Quest4_Attain
Inst23Quest4_HORDE_Aim = Inst23Quest4_Aim
Inst23Quest4_HORDE_Location = Inst23Quest4_Location
Inst23Quest4_HORDE_Note = Inst23Quest4_Note
Inst23Quest4_HORDE_Prequest = Inst23Quest4_Prequest
Inst23Quest4_HORDE_Folgequest = Inst23Quest4_Folgequest
Inst23Quest4FQuest_HORDE = Inst23Quest4FQuest
-- No Rewards for this quest

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst23Quest5_HORDE = Inst23Quest5
Inst23Quest5_HORDE_Level = Inst23Quest5_Level
Inst23Quest5_HORDE_Attain = Inst23Quest5_Attain
Inst23Quest5_HORDE_Aim = Inst23Quest5_Aim
Inst23Quest5_HORDE_Location = Inst23Quest5_Location
Inst23Quest5_HORDE_Note = Inst23Quest5_Note
Inst23Quest5_HORDE_Prequest = Inst23Quest5_Prequest
Inst23Quest5_HORDE_Folgequest = Inst23Quest5_Folgequest
Inst23Quest5FQuest_HORDE = Inst23Quest5FQuest
--
Inst23Quest5name1_HORDE = Inst23Quest5name1
Inst23Quest5name2_HORDE = Inst23Quest5name2
Inst23Quest5name3_HORDE = Inst23Quest5name3

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst23Quest6_HORDE = Inst23Quest6
Inst23Quest6_HORDE_Level = Inst23Quest6_Level
Inst23Quest6_HORDE_Attain = Inst23Quest6_Attain
Inst23Quest6_HORDE_Aim = Inst23Quest6_Aim
Inst23Quest6_HORDE_Location = Inst23Quest6_Location
Inst23Quest6_HORDE_Note = Inst23Quest6_Note
Inst23Quest6_HORDE_Prequest = Inst23Quest6_Prequest
Inst23Quest6_HORDE_Folgequest = Inst23Quest6_Folgequest
Inst23Quest6PreQuest_HORDE = Inst23Quest6PreQuest
--
Inst23Quest6name1_HORDE = Inst23Quest6name1
Inst23Quest6name2_HORDE = Inst23Quest6name2
Inst23Quest6name3_HORDE = Inst23Quest6name3
Inst23Quest6name4_HORDE = Inst23Quest6name4

--Quest 7 Horde
Inst23Quest7_HORDE = "7. 巴罗夫家族的宝藏"
Inst23Quest7_HORDE_Level = "60"
Inst23Quest7_HORDE_Attain = "52"
Inst23Quest7_HORDE_Aim = "到通灵学院中去取得巴罗夫家族的宝藏。这份宝藏包括四份地契：凯尔达隆地契、布瑞尔地契、塔伦米尔地契，还有南海镇地契。当你拿到这四份地契之后就回到阿莱克斯·巴罗夫那儿去。"
Inst23Quest7_HORDE_Location = "阿莱克斯·巴罗夫（西瘟疫之地 - 亡灵壁垒; "..YELLOW.."28,57"..WHITE.."）"
Inst23Quest7_HORDE_Note = "你可以在"..YELLOW.."[12]"..WHITE.."找到凯尔达隆地契，在"..YELLOW.."[7]"..WHITE.."找到布瑞尔地契，在"..YELLOW.."[4]"..WHITE.."找到塔伦米尔地契，在"..YELLOW.."[1]"..WHITE.."找到南海镇地契。"
Inst23Quest7_HORDE_Prequest = "无"
Inst23Quest7_HORDE_Folgequest = "有，巴罗夫的继承人\n（到寒风营地去暗杀维尔顿·巴罗夫。把他的脑袋交给阿莱克斯·巴罗夫。）"
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst23Quest8_HORDE = Inst23Quest8
Inst23Quest8_HORDE_Level = Inst23Quest8_Level
Inst23Quest8_HORDE_Attain = Inst23Quest8_Attain
Inst23Quest8_HORDE_Aim = Inst23Quest8_Aim
Inst23Quest8_HORDE_Location = Inst23Quest8_Location
Inst23Quest8_HORDE_Note = Inst23Quest8_Note
Inst23Quest8_HORDE_Prequest = Inst23Quest8_Prequest
Inst23Quest8_HORDE_Folgequest = Inst23Quest8_Folgequest
Inst23Quest8PreQuest_HORDE = Inst23Quest8PreQuest
--
Inst23Quest8name1_HORDE = Inst23Quest8name1
Inst23Quest8name2_HORDE = Inst23Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst23Quest9_HORDE = Inst23Quest9
Inst23Quest9_HORDE_Level = Inst23Quest9_Level
Inst23Quest9_HORDE_Attain = Inst23Quest9_Attain
Inst23Quest9_HORDE_Aim = Inst23Quest9_Aim
Inst23Quest9_HORDE_Location = Inst23Quest9_Location
Inst23Quest9_HORDE_Note = Inst23Quest9_Note
Inst23Quest9_HORDE_Prequest = Inst23Quest9_Prequest
Inst23Quest9_HORDE_Folgequest = Inst23Quest9_Folgequest
Inst23Quest9PreQuest_HORDE = Inst23Quest9PreQuest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst23Quest10_HORDE = Inst23Quest10
Inst23Quest10_HORDE_Level = Inst23Quest10_Level
Inst23Quest10_HORDE_Attain = Inst23Quest10_Attain
Inst23Quest10_HORDE_Aim = Inst23Quest10_Aim
Inst23Quest10_HORDE_Location = Inst23Quest10_Location
Inst23Quest10_HORDE_Note = Inst23Quest10_Note
Inst23Quest10_HORDE_Prequest = Inst23Quest10_Prequest
Inst23Quest10_HORDE_Folgequest = Inst23Quest10_Folgequest
Inst23Quest10PreQuest_HORDE = Inst23Quest10PreQuest
-- No Rewards for this quest



--------------- INST24 - Shadowfang Keep (SFK) ---------------

Inst24Story = "在第三次大战中，奇灵托的法师和亡灵天灾进行了殊死的战斗。当达拉然的法师最终在战斗中战死之后，他们的意志转移到了复苏的亡灵天灾身上，然后重生了。由于对于缓慢的进展感到失望（并且对他的手下的建议不予理会）大法师阿鲁高选择召唤异次沅空间的生物来壮大达拉然日渐消失的力量。阿鲁高的召唤将贪婪的狼人带到了艾泽拉斯大陆。这些狂暴的狼型生物不仅屠杀了亡灵天灾的人，而且迅速将目标转向那些法师。那些狼人开始围攻席瓦莱恩男爵的城堡。这座位于焚木村的城堡不久之后变成了黑暗势力的聚集地并从此荒废。因为对于自己罪过的愧疚，阿鲁高将那些狼人当作自己的孩子并隐居在“影牙城堡”中。据说他还住在那里，被他巨大的宠物芬鲁斯所保护着，另外，在城堡中还徘徊着瓦莱恩男爵的那些复仇的幽灵。"
Inst24Caption = "影牙城堡"
Inst24QAA = "2 个任务"
Inst24QAH = "4 个任务"

--Quest 1 Alliance
Inst24Quest1 = "1. 正义试炼（圣骑士任务）"
Inst24Quest1_Level = "22"
Inst24Quest1_Attain = "20"
Inst24Quest1_Aim = "按照乔丹的武器材料单上的说明去寻找一些白石橡木、精炼矿石、乔丹的铁锤和一块科尔宝石，然后回到铁炉堡去见乔丹·斯迪威尔。"
Inst24Quest1_Location = "乔丹·斯迪威尔（丹莫罗 - 铁炉堡 "..YELLOW.."52,36 "..WHITE.."）"
Inst24Quest1_Note = "点击"..YELLOW.."[乔丹的武器材料单]"..WHITE.."查看乔丹的武器材料单。"
Inst24Quest1_Page = { "只有圣骑士们才能接到这个任务！\n\n1. 你可以从"..YELLOW.."[死亡矿井]"..WHITE.."地精木匠"..YELLOW.."[3]"..WHITE.."那儿得到白石橡木。\n\n2. 要得到精炼矿石，你必须先与白洛尔·石手交谈（洛克莫丹 - 塞尔萨玛; "..YELLOW.."35,44"..WHITE.."）。他会给你《白洛尔的矿石》任务。 你在一棵树后面找到乔丹的矿石"..YELLOW.."71,21"..WHITE.."。\n\n3. 你可以在"..YELLOW.."[影牙城堡]"..WHITE.."紧靠"..YELLOW.."[3]"..WHITE.."的地方找到乔丹的铁锤（安全地点）。\n\n4. 要得到科尔宝石，你必须去找桑迪斯·织风（黑海岸 - 奥伯丁; "..YELLOW.."37,40"..WHITE.."）并且做完《寻找科尔宝石》任务。为了完成这个任务，你必须杀掉"..YELLOW.."[黑暗深渊]"..WHITE.."前的黑暗深渊智者或者黑暗深渊海潮祭司。他们会掉落被污染的科尔宝石。桑迪斯·织风会为你清洁它的。", };
Inst24Quest1_Prequest = "有，勇气之书 -> 正义试炼"
Inst24Quest1_Folgequest = "有，正义试炼"
Inst24Quest1PreQuest = "true"
--
Inst24Quest1name1 = "维里甘之拳"

--Quest 2 Alliance
Inst24Quest2 = "2. 索兰鲁克宝珠（术士任务）"
Inst24Quest2_Level = "25"
Inst24Quest2_Attain = "20"
Inst24Quest2_Aim = "找到3块索兰鲁克宝珠的碎片和1块索兰鲁克宝珠的大碎片，把它们交给贫瘠之地的杜安·卡汉。"
Inst24Quest2_Location = "杜安·卡汉（贫瘠之地; "..YELLOW.."49,57"..WHITE.."）"
Inst24Quest2_Note = "只有术士才能得到这个任务！3块索兰鲁克宝珠的碎片，你可以从"..YELLOW.."[黑暗深渊]"..WHITE.."的暮光侍僧那里得到。那块索兰鲁克宝珠的大碎片，你要去"..YELLOW.."[影牙城堡]"..WHITE.."找影牙魔魂狼人。"
Inst24Quest2_Prequest = "无"
Inst24Quest2_Folgequest = "无"
--
Inst24Quest2name1 = "索兰鲁克宝珠"
Inst24Quest2name2 = "索拉鲁克法杖"


--Quest 1 Horde
Inst24Quest1_HORDE = "1. 影牙城堡里的亡灵哨兵"
Inst24Quest1_HORDE_Level = "25"
Inst24Quest1_HORDE_Attain = "18"
Inst24Quest1_HORDE_Aim = "找到亡灵哨兵阿达曼特和亡灵哨兵文森特。"
Inst24Quest1_HORDE_Location = "高级执行官哈德瑞克（银松森林 - 瑟伯切尔; "..YELLOW.."43,40"..WHITE.."）"
Inst24Quest1_HORDE_Note = "阿达曼特位于"..YELLOW.."[1]"..WHITE.."，文森特在你一进庭院的右侧"..YELLOW.."[2]"..WHITE.."。"
Inst24Quest1_HORDE_Prequest = "无"
Inst24Quest1_HORDE_Folgequest = "无"
--
Inst24Quest1name1_HORDE = "鬼魂衬肩"

--Quest 2 Horde
Inst24Quest2_HORDE = "2. 乌尔之书"
Inst24Quest2_HORDE_Level = "26"
Inst24Quest2_HORDE_Attain = "16"
Inst24Quest2_HORDE_Aim = "把乌尔之书带给幽暗城炼金区里的看守者贝尔杜加。"
Inst24Quest2_HORDE_Location = "看守者贝尔杜加（幽暗城 - 炼金房; "..YELLOW.."53,54"..WHITE.."）"
Inst24Quest2_HORDE_Note = "你可以找到书在进门的左边"..YELLOW.."[8]"..WHITE..")。"
Inst24Quest2_HORDE_Prequest = "无"
Inst24Quest2_HORDE_Folgequest = "无"
--
Inst24Quest2name1_HORDE = "灰色长靴"
Inst24Quest2name2_HORDE = "钢钉护腕"

--Quest 3 Horde
Inst24Quest3_HORDE = "3. 除掉阿鲁高"
Inst24Quest3_HORDE_Level = "27"
Inst24Quest3_HORDE_Attain = "18"
Inst24Quest3_HORDE_Aim = "杀死阿鲁高，把他的头带给瑟伯切尔的达拉尔·道恩维沃尔。"
Inst24Quest3_HORDE_Location = "达拉尔·道恩维沃尔（银松森林 - 瑟伯切尔; "..YELLOW.."44,39"..WHITE.."）"
Inst24Quest3_HORDE_Note = "你可以在"..YELLOW.."[10]"..WHITE.."找到阿鲁高。"
Inst24Quest3_HORDE_Prequest = "无"
Inst24Quest3_HORDE_Folgequest = "无"
--
Inst24Quest3name1_HORDE = "希尔瓦娜斯的图章"

--Quest 4 Horde  (same as Quest 2 Alliance)
Inst24Quest4_HORDE = "4. 索兰鲁克宝珠（术士任务）"
Inst24Quest4_HORDE_Level = Inst24Quest2_Level
Inst24Quest4_HORDE_Attain = Inst24Quest2_Attain
Inst24Quest4_HORDE_Aim = Inst24Quest2_Aim
Inst24Quest4_HORDE_Location = Inst24Quest2_Location
Inst24Quest4_HORDE_Note = Inst24Quest2_Note
Inst24Quest4_HORDE_Prequest = Inst24Quest2_Prequest
Inst24Quest4_HORDE_Folgequest = Inst24Quest2_Folgequest
--
Inst24Quest4name1_HORDE = Inst24Quest2name1
Inst24Quest4name2_HORDE = Inst24Quest2name1



--------------- INST25 - Stratholme (Strat) ---------------

Inst25Story = "斯坦索姆曾经是洛丹伦北部一颗璀璨的明珠，但是就是在这座城市阿尔萨斯王子背叛了他的导师乌瑟尔，并屠杀了数百个被认为感染了可怕瘟疫的臣民。阿尔萨斯不久之后就向巫妖王臣服。这个破碎的城市也被巫妖克尔苏拉德领导的亡灵天灾所占据。而一直由大十字军战士达索汉领导的血色十字军分遣队也占据了这个城市的一部分。这两方力量在城市中进行着激烈的战斗。而那些勇敢（亦或是愚蠢的）的冒险者在进入斯坦索姆之后将不得不面对两方的力量。据说整座城市由三座大型的通灵塔以及无数强大的亡灵巫师，女妖和憎恶所守卫着。据报告，邪恶的死亡骑士乘坐在一匹骷髅战马——他会将怒火倾泻在任何胆敢进入亡灵天灾领域的人。"
Inst25Caption = "斯坦索姆"
Inst25QAA = "18 个任务"
Inst25QAH = "19 个任务"

--Quest 1 Alliance
Inst25Quest1 = "1. 血肉不会撒谎"
Inst25Quest1_Level = "60"
Inst25Quest1_Attain = "55"
Inst25Quest1_Aim = "从斯坦索姆找回20个瘟疫肉块，并把它们交给贝蒂娜·比格辛克。你觉得斯坦索姆中的生灵都不大可能长着肉……"
Inst25Quest1_Location = "贝蒂娜·比格辛克（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,59"..WHITE.."）"
Inst25Quest1_Note = "斯坦索姆里多数敌人都会掉落瘟疫肉块，但是掉落率很低。"
Inst25Quest1_Prequest = "无"
Inst25Quest1_Folgequest = "有，活跃的探子"
-- No Rewards for this quest

--Quest 2 Alliance
Inst25Quest2 = "2. 活跃的探子"
Inst25Quest2_Level = "60"
Inst25Quest2_Attain = "55"
Inst25Quest2_Aim = "到斯坦索姆去探索那里的通灵塔。找到新的天灾军团档案，把它交给贝蒂娜·比格辛克。"
Inst25Quest2_Location = "贝蒂娜·比格辛克（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81,59"..WHITE.."）"
Inst25Quest2_Note = "天灾军团档案在三个塔中的一个里，这三个塔在"..YELLOW.."[15]"..WHITE.."，"..YELLOW.."[16]"..WHITE.."和"..YELLOW.."[17]"..WHITE.."。"
Inst25Quest2_Prequest = "有，血肉不会撒谎"
Inst25Quest2_Folgequest = "无"
Inst25Quest2FQuest = "true"
--
Inst25Quest2name1 = "黎明之印"
Inst25Quest2name2 = "黎明符文"

--Quest 3 Alliance
Inst25Quest3 = "3. 神圣之屋"
Inst25Quest3_Level = "60"
Inst25Quest3_Attain = "55"
Inst25Quest3_Aim = "到北方的斯坦索姆去，寻找散落在城市中的补给箱，并收集5瓶斯坦索姆圣水。当你找到足够的圣水之后就回去向莱尼德·巴萨罗梅复命。"
Inst25Quest3_Location = "莱尼德·巴萨罗梅（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."80,58"..WHITE.."）"
Inst25Quest3_Note = "在斯坦索姆各处的箱子里你可以找到圣水。但是，如果你打开箱子，虫子可能会出现并攻击你。"
Inst25Quest3_Prequest = "无"
Inst25Quest3_Folgequest = "无"
--
Inst25Quest3name1 = "超强治疗药水"
Inst25Quest3name2 = "强效法力药水"
Inst25Quest3name3 = "忏悔之冠"
Inst25Quest3name4 = "忏悔者指环"

--Quest 4 Alliance
Inst25Quest4 = "4. 弗拉斯·希亚比"
Inst25Quest4_Level = "60"
Inst25Quest4_Attain = "55"
Inst25Quest4_Aim = "找到弗拉斯·希亚比在斯坦索姆的烟草店，并从中找回一盒希亚比的烟草，把它交给烟鬼拉鲁恩。"
Inst25Quest4_Location = "烟鬼拉鲁恩（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."80,58"..WHITE.."）"
Inst25Quest4_Note = "烟草店在"..YELLOW.."[1]"..WHITE.."附近。当你打开盒子，弗拉斯·希亚比会突然出现。"
Inst25Quest4_Prequest = "无"
Inst25Quest4_Folgequest = "无"
--
Inst25Quest4name1 = "烟鬼的打火器"

--Quest 5 Alliance
Inst25Quest5 = "5. 永不安息的灵魂"
Inst25Quest5_Level = "60"
Inst25Quest5_Attain = "55"
Inst25Quest5_Aim = "对斯坦索姆里已成为鬼魂的居民们使用埃根的冲击器。当永不安息的灵魂从他们的鬼魂外壳解放出来后，再次使用冲击器 - 他们就会彻底自由了！\n释放15个永不安息的灵魂，然后回到埃根那里。"
Inst25Quest5_Location = "埃根（东瘟疫之地; "..YELLOW.."14,33"..WHITE.."）"
Inst25Quest5_Note = "前导任务从护理者奥林处获得（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."79,63"..WHITE.."）\n鬼魂居民在斯坦索姆到处走动。"
Inst25Quest5_Prequest = "有，永不安息的灵魂"
Inst25Quest5_Folgequest = "无"
Inst25Quest5PreQuest = "true"
--
Inst25Quest5name1 = "希望的证明"

--Quest 6 Alliance
Inst25Quest6 = "6. 爱与家庭（系列任务）"
Inst25Quest6_Level = "60"
Inst25Quest6_Attain = "52"
Inst25Quest6_Aim = "到瘟疫之地北部的斯坦索姆去。你可以在血色十字军堡垒中找到“爱与家庭”这幅画，它被隐藏在另一幅描绘两个月亮的画之后。\n把这幅画还给提里奥·弗丁。"
Inst25Quest6_Location = "画家瑞弗蕾（西瘟疫之地 - 凯尔达隆; "..YELLOW.."65,75"..WHITE.."）"
Inst25Quest6_Note = "前导任务从提里奥·弗丁处获得（西瘟疫之地; "..YELLOW.."7,43"..WHITE.."）。\n画在"..YELLOW.."[10]"..WHITE.."。"
Inst25Quest6_Prequest = "有，救赎 - > 遗忘的记忆 - > 失落的荣耀 - > 爱与家庭"
Inst25Quest6_Folgequest = "有，寻找麦兰达"
Inst25Quest6PreQuest = "true"
-- No Rewards for this quest

--Quest 7 Alliance
Inst25Quest7 = "7. 米奈希尔的礼物（系列任务）"
Inst25Quest7_Level = "60"
Inst25Quest7_Attain = "57"
Inst25Quest7_Aim = "到斯坦索姆城里去找到米奈希尔的礼物，把巫妖生前的遗物放在那块邪恶的土地上。"
Inst25Quest7_Location = "莱尼德·巴萨罗梅（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."80,58"..WHITE.."）"
Inst25Quest7_Note = "前导任务从马杜克镇长（西瘟疫之地 - 凯尔达隆; "..YELLOW.."70,73"..WHITE.."）处获得。\n你可以在"..YELLOW.."[19]"..WHITE.."附近找到标志。也可以参见：通灵学院里的"..YELLOW.."[巫妖莱斯·霜语]"..WHITE.."。"
Inst25Quest7_Prequest = "有，莱斯·霜语 - > 亡灵莱斯·霜语"
Inst25Quest7_Folgequest = "有，米奈希尔的礼物"
Inst25Quest7PreQuest = "true"
-- No Rewards for this quest

--Quest 8 Alliance
Inst25Quest8 = "8. 奥里克斯的清算"
Inst25Quest8_Level = "60"
Inst25Quest8_Attain = "55"
Inst25Quest8_Aim = "杀掉瑞文戴尔男爵。"
Inst25Quest8_Location = "奥里克斯（斯坦索姆; "..YELLOW.."[13]"..WHITE.."）"
Inst25Quest8_Note = "要开始这个任务你需要给奥里克斯 [信仰奖章]。 你可以从玛洛尔的保险箱拿到这个奖章，箱子就在"..YELLOW.."[7]"..WHITE.."附近。将奖章给了奥里克斯之后，他会在对抗男爵"..YELLOW.."[19]"..WHITE.."的战斗中支持你。杀死男爵后，你需要再次和奥里克斯谈话以取得任务回报奖励。"
Inst25Quest8_Prequest = "无"
Inst25Quest8_Folgequest = "无"
--
Inst25Quest8name1 = "殉难者的意志"
Inst25Quest8name2 = "殉难者之血"

--Quest 9 Alliance
Inst25Quest9 = "9. 档案管理员"
Inst25Quest9_Level = "60"
Inst25Quest9_Attain = "55"
Inst25Quest9_Aim = "在斯坦索姆城中找到血色十字军的档案管理员加尔福特，杀掉他，然后烧毁血色十字军档案。"
Inst25Quest9_Location = "尼古拉斯·瑟伦霍夫公爵（东瘟疫之地 - 圣光之愿礼拜堂"..YELLOW.."81, 59"..WHITE.."）"
Inst25Quest9_Note = "档案和档案管理员在"..YELLOW.."[10]"..WHITE.."。"
Inst25Quest9_Prequest = "无"
Inst25Quest9_Folgequest = "有，可怕的真相"
-- No Rewards for this quest

--Quest 10 Alliance
Inst25Quest10 = "10. 可怕的真相"
Inst25Quest10_Level = "60"
Inst25Quest10_Attain = "55"
Inst25Quest10_Aim = "将巴纳扎尔的头颅交给东瘟疫之地的尼古拉斯·瑟伦霍夫公爵。"
Inst25Quest10_Location = "巴纳扎尔（斯坦索姆; "..YELLOW.."[11]"..WHITE.."）"
Inst25Quest10_Note = "尼古拉斯·瑟伦霍夫公爵在（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81, 59"..WHITE.."）。"
Inst25Quest10_Prequest = "有，档案管理员"
Inst25Quest10_Folgequest = "有，超越"
Inst25Quest10FQuest = "true"
-- No Rewards for this quest

--Quest 11 Alliance
Inst25Quest11 = "11. 超越"
Inst25Quest11_Level = "60"
Inst25Quest11_Attain = "55"
Inst25Quest11_Aim = "到斯坦索姆去杀掉瑞文戴尔男爵，把他的头颅交给尼古拉斯·瑟伦霍夫公爵。"
Inst25Quest11_Location = "尼古拉斯·瑟伦霍夫公爵（东瘟疫之地 - 圣光之愿礼拜堂; "..YELLOW.."81, 59"..WHITE.."）"
Inst25Quest11_Note = "瑞文戴尔男爵在"..YELLOW.."[19]"..WHITE.."。"
Inst25Quest11_Prequest = "有，可怕的真相"
Inst25Quest11_Folgequest = "无"
Inst25Quest11FQuest = "true"
--
Inst25Quest11name1 = "黎明守护者"
Inst25Quest11name2 = "银色十字军"
Inst25Quest11name3 = "银色复仇者"

--Quest 12 Alliance
Inst25Quest12 = "12. 死人的请求"
Inst25Quest12_Level = "60"
Inst25Quest12_Attain = "58"
Inst25Quest12_Aim = "进入斯坦索姆，从瑞文戴尔男爵手中救出伊思达。"
Inst25Quest12_Location = "伊思达·哈尔蒙（东瘟疫之地 - 斯坦索姆）"
Inst25Quest12_Note = "伊思达·哈尔蒙就站在斯坦索姆副本门口。你需要超维度幽灵显形器才能看到伊思达·哈尔蒙。联盟这个任务的前续任务接自德莉亚娜（铁炉堡 "..YELLOW.."43,52"..WHITE.."），部落的接自莫克瓦尔（奥格瑞玛 "..YELLOW.."38,37"..WHITE.."）。\n这个同时也是著名的45分钟杀瑞文戴尔男爵任务。"
Inst25Quest12_Prequest = "有，寻找安泰恩"
Inst25Quest12_Folgequest = "有，生命的证据"
Inst25Quest12PreQuest = "true"
-- No Rewards for this quest

--Quest 13 Alliance
Inst25Quest13 = "13. 瓦塔拉克饰品的左瓣 "
Inst25Quest13_Level = "60"
Inst25Quest13_Attain = "60"
Inst25Quest13_Aim = "使用召唤火盆召唤出亚雷恩和索托斯的灵魂，然后杀掉他们。完成之后，将召唤火盆与瓦塔拉克饰品的左瓣还给黑石山的伯德雷。"
Inst25Quest13_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图中的[D]"..WHITE.."）"
Inst25Quest13_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。\n\n召唤亚雷恩和索托斯在"..YELLOW.."[11]"..WHITE.."。"
Inst25Quest13_Prequest = "有，重要的材料"
Inst25Quest13_Folgequest = "有，奥卡兹岛在你前方…… "
Inst25Quest13PreQuest = "true"
-- No Rewards for this quest

--Quest 14 Alliance
Inst25Quest14 = "14. 瓦塔拉克饰品的右瓣"
Inst25Quest14_Level = "60"
Inst25Quest14_Attain = "60"
Inst25Quest14_Aim = "使用召唤火盆召唤出亚雷恩和索托斯的灵魂，然后杀掉他。完成之后，将召唤火盆与瓦塔拉克公爵的饰品还给黑石山的伯德雷。"
Inst25Quest14_Location = "伯德雷（黑石山; "..YELLOW.."副本入口地图中的[D]"..WHITE.."）"
Inst25Quest14_Note = "你需要超维度幽灵显形器才能看到伯德雷。你可以从《寻找安泰恩》任务得到它。\n\n召唤亚雷恩和索托斯在"..YELLOW.."[11]"..WHITE.."。"
Inst25Quest14_Prequest = "有，更多重要的材料"
Inst25Quest14_Folgequest = "有，最后的准备（"..YELLOW.."[黑石塔上层]"..WHITE.."）"
Inst25Quest14PreQuest = "true"
-- No Rewards for this quest

--Quest 15 Alliance
Inst25Quest15 = "15. 埃提耶什，守护者的传说之杖"
Inst25Quest15_Level = "60"
Inst25Quest15_Attain = "60"
Inst25Quest15_Aim = "塔纳利斯时光之穴的阿纳克洛斯要你前往斯坦索姆，在神圣之地上使用埃提耶什，守护者的传说之杖。击败被驱赶出法杖的生物，然后回到阿纳克洛斯那里去。 "
Inst25Quest15_Location = "阿纳克洛斯（塔纳利斯 - 时光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst25Quest15_Note = "召唤位置在"..YELLOW.."[2]"..WHITE.."。"
Inst25Quest15_Prequest = "有"
Inst25Quest15_Folgequest = "无"
--
Inst25Quest15name1 = "埃提耶什，守护者的传说之杖"
Inst25Quest15name2 = "埃提耶什，守护者的传说之杖"
Inst25Quest15name3 = "埃提耶什，守护者的传说之杖"
Inst25Quest15name4 = "埃提耶什，守护者的传说之杖"

--Quest 16 Alliance
Inst25Quest16 = "16. 腐蚀（铸剑大师任务）"
Inst25Quest16_Level = "60"
Inst25Quest16_Attain = "50"
Inst25Quest16_Aim = "在斯坦索姆找到黑衣守卫铸剑师，然后杀死他。将黑色卫士徽记交给亡灵杀手瑟里尔。"
Inst25Quest16_Location = "亡灵杀手瑟里尔（冬泉谷 - 永望镇; "..YELLOW.."61,37"..WHITE.."）"
Inst25Quest16_Note = "召唤黑衣守卫铸剑师在"..YELLOW.."[15]"..WHITE.."。"
Inst25Quest16_Prequest = "无"
Inst25Quest16_Folgequest = "无"
--
Inst25Quest16name1 = "设计图：闪耀轻剑 "

--Quest 17 Alliance
Inst25Quest17 = "17. 甜美的平静（铸锤大师任务）"
Inst25Quest17_Level = "60"
Inst25Quest17_Attain = "51"
Inst25Quest17_Aim = "到斯坦索姆去杀死红衣铸锤师。将红衣铸锤师的围裙交给莉莉丝。"
Inst25Quest17_Location = "轻盈的莉莉丝（冬泉谷 - 永望镇; "..YELLOW.."61,37"..WHITE.."）"
Inst25Quest17_Note = "召唤红衣铸锤师在"..YELLOW.."[8]"..WHITE.."。"
Inst25Quest17_Prequest = "无"
Inst25Quest17_Folgequest = "无"
--
Inst25Quest17name1 = "设计图：魔法战锤"

--Quest 18 Alliance
Inst25Quest18 = "18. 光与影的平衡（牧师任务）"
Inst25Quest18_Level = "60"
Inst25Quest18_Attain = "60"
Inst25Quest18_Aim = "在总计有15个农夫被杀死之前拯救50个农夫。完成任务之后与艾瑞斯·哈文法谈谈。\n你可以通过浏览死亡布告来了解自己拯救了多少农夫。"
Inst25Quest18_Location = "艾瑞斯·哈文法（东瘟疫之地; "..YELLOW.."21,18"..WHITE.."）"
Inst25Quest18_Note = "如果要看到艾瑞斯·哈文法和接到任务，你需要神圣之眼（火焰之王的宝箱在"..YELLOW.."[熔火之心]"..WHITE.."）或者鬼灵精华（"..YELLOW.."[通灵学院]"..WHITE.."传令官基尔图诺斯任务奖励）。\n\n完成后，将神圣之眼、诺达希尔碎片和暗影之眼（ 诅咒之地"..YELLOW.."[魔王库鲁尔]"..WHITE.."掉落）组合，将得到牧师史诗法杖——祈福。"
Inst25Quest18_Prequest = "无"
Inst25Quest18_Folgequest = "无"
--
Inst25Quest18name1 = "诺达希尔碎片"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst25Quest1_HORDE = Inst25Quest1
Inst25Quest1_HORDE_Level = Inst25Quest1_Level
Inst25Quest1_HORDE_Attain = Inst25Quest1_Attain
Inst25Quest1_HORDE_Aim = Inst25Quest1_Aim
Inst25Quest1_HORDE_Location = Inst25Quest1_Location
Inst25Quest1_HORDE_Note = Inst25Quest1_Note
Inst25Quest1_HORDE_Prequest = Inst25Quest1_Prequest
Inst25Quest1_HORDE_Folgequest = Inst25Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst25Quest2_HORDE = Inst25Quest2
Inst25Quest2_HORDE_Level = Inst25Quest2_Level
Inst25Quest2_HORDE_Attain = Inst25Quest2_Attain
Inst25Quest2_HORDE_Aim = Inst25Quest2_Aim
Inst25Quest2_HORDE_Location = Inst25Quest2_Location
Inst25Quest2_HORDE_Note = Inst25Quest2_Note
Inst25Quest2_HORDE_Prequest = Inst25Quest2_Prequest
Inst25Quest2_HORDE_Folgequest = Inst25Quest2_Folgequest
Inst25Quest2FQuest_HORDE = Inst25Quest2FQuest
--
Inst25Quest2name1_HORDE = Inst25Quest2name1
Inst25Quest2name2_HORDE = Inst25Quest2name2

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst25Quest3_HORDE = Inst25Quest3
Inst25Quest3_HORDE_Level = Inst25Quest3_Level
Inst25Quest3_HORDE_Attain = Inst25Quest3_Attain
Inst25Quest3_HORDE_Aim = Inst25Quest3_Aim
Inst25Quest3_HORDE_Location = Inst25Quest3_Location
Inst25Quest3_HORDE_Note = Inst25Quest3_Note
Inst25Quest3_HORDE_Prequest = Inst25Quest3_Prequest
Inst25Quest3_HORDE_Folgequest = Inst25Quest3_Folgequest
--
Inst25Quest3name1_HORDE = Inst25Quest3name1
Inst25Quest3name2_HORDE = Inst25Quest3name2
Inst25Quest3name3_HORDE = Inst25Quest3name3
Inst25Quest3name4_HORDE = Inst25Quest3name4

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst25Quest4_HORDE = Inst25Quest4
Inst25Quest4_HORDE_Level = Inst25Quest4_Level
Inst25Quest4_HORDE_Attain = Inst25Quest4_Attain
Inst25Quest4_HORDE_Aim = Inst25Quest4_Aim
Inst25Quest4_HORDE_Location = Inst25Quest4_Location
Inst25Quest4_HORDE_Note = Inst25Quest4_Note
Inst25Quest4_HORDE_Prequest = Inst25Quest4_Prequest
Inst25Quest4_HORDE_Folgequest = Inst25Quest4_Folgequest
--
Inst25Quest4name1_HORDE = Inst25Quest4name1

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst25Quest5_HORDE = Inst25Quest5
Inst25Quest5_HORDE_Level = Inst25Quest5_Level
Inst25Quest5_HORDE_Attain = Inst25Quest5_Attain
Inst25Quest5_HORDE_Aim = Inst25Quest5_Aim
Inst25Quest5_HORDE_Location = Inst25Quest5_Location
Inst25Quest5_HORDE_Note = Inst25Quest5_Note
Inst25Quest5_HORDE_Prequest = Inst25Quest5_Prequest
Inst25Quest5_HORDE_Folgequest = Inst25Quest5_Folgequest
Inst25Quest5PreQuest_HORDE = Inst25Quest5PreQuest
--
Inst25Quest5name1_HORDE = Inst25Quest5name1

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst25Quest6_HORDE = Inst25Quest6
Inst25Quest6_HORDE_Level = Inst25Quest6_Level
Inst25Quest6_HORDE_Attain = Inst25Quest6_Attain
Inst25Quest6_HORDE_Aim = Inst25Quest6_Aim
Inst25Quest6_HORDE_Location = Inst25Quest6_Location
Inst25Quest6_HORDE_Note = Inst25Quest6_Note
Inst25Quest6_HORDE_Prequest = Inst25Quest6_Prequest
Inst25Quest6_HORDE_Folgequest = Inst25Quest6_Folgequest
Inst25Quest6PreQuest_HORDE = Inst25Quest6PreQuest
-- No Rewards for this quest

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst25Quest7_HORDE = Inst25Quest7
Inst25Quest7_HORDE_Level = Inst25Quest7_Level
Inst25Quest7_HORDE_Attain = Inst25Quest7_Attain
Inst25Quest7_HORDE_Aim = Inst25Quest7_Aim
Inst25Quest7_HORDE_Location = Inst25Quest7_Location
Inst25Quest7_HORDE_Note = Inst25Quest7_Note
Inst25Quest7_HORDE_Prequest = Inst25Quest7_Prequest
Inst25Quest7_HORDE_Folgequest = Inst25Quest7_Folgequest
Inst25Quest7PreQuest_HORDE = Inst25Quest7PreQuest
-- No Rewards for this quest

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst25Quest8_HORDE = Inst25Quest8
Inst25Quest8_HORDE_Level = Inst25Quest8_Level
Inst25Quest8_HORDE_Attain = Inst25Quest8_Attain
Inst25Quest8_HORDE_Aim = Inst25Quest8_Aim
Inst25Quest8_HORDE_Location = Inst25Quest8_Location
Inst25Quest8_HORDE_Note = Inst25Quest8_Note
Inst25Quest8_HORDE_Prequest = Inst25Quest8_Prequest
Inst25Quest8_HORDE_Folgequest = Inst25Quest8_Folgequest
--
Inst25Quest8name1_HORDE = Inst25Quest8name1
Inst25Quest8name2_HORDE = Inst25Quest8name2

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst25Quest9_HORDE = Inst25Quest9
Inst25Quest9_HORDE_Level = Inst25Quest9_Level
Inst25Quest9_HORDE_Attain = Inst25Quest9_Attain
Inst25Quest9_HORDE_Aim = Inst25Quest9_Aim
Inst25Quest9_HORDE_Location = Inst25Quest9_Location
Inst25Quest9_HORDE_Note = Inst25Quest9_Note
Inst25Quest9_HORDE_Prequest = Inst25Quest9_Prequest
Inst25Quest9_HORDE_Folgequest = Inst25Quest9_Folgequest
-- No Rewards for this quest

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst25Quest10_HORDE = Inst25Quest10
Inst25Quest10_HORDE_Level = Inst25Quest10_Level
Inst25Quest10_HORDE_Attain = Inst25Quest10_Attain
Inst25Quest10_HORDE_Aim = Inst25Quest10_Aim
Inst25Quest10_HORDE_Location = Inst25Quest10_Location
Inst25Quest10_HORDE_Note = Inst25Quest10_Note
Inst25Quest10_HORDE_Prequest = Inst25Quest10_Prequest
Inst25Quest10_HORDE_Folgequest = Inst25Quest10_Folgequest
Inst25Quest10FQuest_HORDE = Inst25Quest10FQuest
-- No Rewards for this quest

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst25Quest11_HORDE = Inst25Quest11
Inst25Quest11_HORDE_Level = Inst25Quest11_Level
Inst25Quest11_HORDE_Attain = Inst25Quest11_Attain
Inst25Quest11_HORDE_Aim = Inst25Quest11_Aim
Inst25Quest11_HORDE_Location = Inst25Quest11_Location
Inst25Quest11_HORDE_Note = Inst25Quest11_Note
Inst25Quest11_HORDE_Prequest = Inst25Quest11_Prequest
Inst25Quest11_HORDE_Folgequest = Inst25Quest11_Folgequest
Inst25Quest11FQuest_HORDE = Inst25Quest11FQuest
--
Inst25Quest11name1_HORDE = Inst25Quest11name1
Inst25Quest11name2_HORDE = Inst25Quest11name2
Inst25Quest11name3_HORDE = Inst25Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst25Quest12_HORDE = Inst25Quest12
Inst25Quest12_HORDE_Level = Inst25Quest12_Level
Inst25Quest12_HORDE_Attain = Inst25Quest12_Attain
Inst25Quest12_HORDE_Aim = Inst25Quest12_Aim
Inst25Quest12_HORDE_Location = Inst25Quest12_Location
Inst25Quest12_HORDE_Note = Inst25Quest12_Note
Inst25Quest12_HORDE_Prequest = Inst25Quest12_Prequest
Inst25Quest12_HORDE_Folgequest = Inst25Quest12_Folgequest
Inst25Quest12PreQuest_HORDE = Inst25Quest12PreQuest
-- No Rewards for this quest

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst25Quest13_HORDE = Inst25Quest13
Inst25Quest13_HORDE_Level = Inst25Quest13_Level
Inst25Quest13_HORDE_Attain = Inst25Quest13_Attain
Inst25Quest13_HORDE_Aim = Inst25Quest13_Aim
Inst25Quest13_HORDE_Location = Inst25Quest13_Location
Inst25Quest13_HORDE_Note = Inst25Quest13_Note
Inst25Quest13_HORDE_Prequest = Inst25Quest13_Prequest
Inst25Quest13_HORDE_Folgequest = Inst25Quest13_Folgequest
Inst25Quest13PreQuest_HORDE = Inst25Quest13PreQuest
-- No Rewards for this quest

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst25Quest14_HORDE = Inst25Quest14
Inst25Quest14_HORDE_Level = Inst25Quest14_Level
Inst25Quest14_HORDE_Attain = Inst25Quest14_Attain
Inst25Quest14_HORDE_Aim = Inst25Quest14_Aim
Inst25Quest14_HORDE_Location = Inst25Quest14_Location
Inst25Quest14_HORDE_Note = Inst25Quest14_Note
Inst25Quest14_HORDE_Prequest = Inst25Quest14_Prequest
Inst25Quest14_HORDE_Folgequest = Inst25Quest14_Folgequest
Inst25Quest14PreQuest_HORDE = Inst25Quest14PreQuest
-- No Rewards for this quest

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst25Quest15_HORDE = Inst25Quest15
Inst25Quest15_HORDE_Level = Inst25Quest15_Level
Inst25Quest15_HORDE_Attain = Inst25Quest15_Attain
Inst25Quest15_HORDE_Aim = Inst25Quest15_Aim
Inst25Quest15_HORDE_Location = Inst25Quest15_Location
Inst25Quest15_HORDE_Note = Inst25Quest15_Note
Inst25Quest15_HORDE_Prequest = Inst25Quest15_Prequest
Inst25Quest15_HORDE_Folgequest = Inst25Quest15_Folgequest
Inst25Quest15PreQuest_HORDE = Inst25Quest15PreQuest
--
Inst25Quest15name1_HORDE = Inst25Quest15name1
Inst25Quest15name2_HORDE = Inst25Quest15name2
Inst25Quest15name3_HORDE = Inst25Quest15name3
Inst25Quest15name4_HORDE = Inst25Quest15name4

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst25Quest16_HORDE = Inst25Quest16
Inst25Quest16_HORDE_Level = Inst25Quest16_Level
Inst25Quest16_HORDE_Attain = Inst25Quest16_Attain
Inst25Quest16_HORDE_Aim = Inst25Quest16_Aim
Inst25Quest16_HORDE_Location = Inst25Quest16_Location
Inst25Quest16_HORDE_Note = Inst25Quest16_Note
Inst25Quest16_HORDE_Prequest = Inst25Quest16_Prequest
Inst25Quest16_HORDE_Folgequest = Inst25Quest16_Folgequest
--
Inst25Quest16name1_HORDE = Inst25Quest16name1

--Quest 17 Horde  (same as Quest 17 Alliance)
Inst25Quest17_HORDE = Inst25Quest17
Inst25Quest17_HORDE_Level = Inst25Quest17_Level
Inst25Quest17_HORDE_Attain = Inst25Quest17_Attain
Inst25Quest17_HORDE_Aim = Inst25Quest17_Aim
Inst25Quest17_HORDE_Location = Inst25Quest17_Location
Inst25Quest17_HORDE_Note = Inst25Quest17_Note
Inst25Quest17_HORDE_Prequest = Inst25Quest17_Prequest
Inst25Quest17_HORDE_Folgequest = Inst25Quest17_Folgequest
--
Inst25Quest17name1_HORDE = Inst25Quest17name1

--Quest 18 Horde
Inst25Quest18_HORDE = "18. 吞咽者拉姆斯登"
Inst25Quest18_HORDE_Level = "60"
Inst25Quest18_HORDE_Attain = "56"
Inst25Quest18_HORDE_Aim = "到斯坦索姆去，杀掉吞咽者拉姆斯登。把他的头颅交给纳萨诺斯。"
Inst25Quest18_HORDE_Location = "纳萨诺斯·凋零者（东瘟疫之地; "..YELLOW.."26,74"..WHITE.."）"
Inst25Quest18_HORDE_Note = "前续任务也是从他这里接。拉姆斯登在"..YELLOW.."[18]"..WHITE.."。"
Inst25Quest18_HORDE_Prequest = "有，游侠之王的命令 -> 暗翼蝠"
Inst25Quest18_HORDE_Folgequest = "无"
Inst25Quest18PreQuest_HORDE = "true"
--
Inst25Quest18name1_HORDE = "阿莱克希斯皇家戒指"
Inst25Quest18name2_HORDE = "元素之环"

--Quest 19 Horde  (same as Quest 18 Alliance)
Inst25Quest19_HORDE = "19. 光与影的平衡（牧师任务）"
Inst25Quest19_HORDE_Level = Inst25Quest18_Level
Inst25Quest19_HORDE_Attain = Inst25Quest18_Attain
Inst25Quest19_HORDE_Aim = Inst25Quest18_Aim
Inst25Quest19_HORDE_Location = Inst25Quest18_Location
Inst25Quest19_HORDE_Note = Inst25Quest18_Note
Inst25Quest19_HORDE_Prequest = Inst25Quest18_Prequest
Inst25Quest19_HORDE_Folgequest = Inst25Quest18_Folgequest
--
Inst25Quest19name1_HORDE = Inst25Quest18name1



--------------- INST26 - The Ruins of Ahn'Qiraj (AQ20) ---------------

Inst26Story = "在流沙之战最后几个小时里，四巨龙军团和暗夜精灵的联军将战场逼至其拉帝国的最中心，希利苏斯的异种虫群退败至最终堡垒安其拉城。但在安其拉之门内，等待着的却是大规模的其拉异种虫，数量是卡利姆多联军所无法想象的。经过漫长的战役，卡利姆多联军仍然无法击败其拉帝王以及他的异种虫群，只能以一个强大的魔法结界将它们困禁在内，而安其拉城也因为战火而成了一个被诅咒的废墟。经过了数千年，其拉的侵略心却没有因为结界而消退。新一代的异种虫群从巢穴中慢慢的破茧而出，安其拉废墟又再度充满了其拉异种虫。这股威胁一定要被消灭，否则艾泽拉斯将可能会被这股恐怖的新世代其拉势力给毁灭。"
Inst26Caption = "安其拉废墟"
Inst26QAA = "2 个任务"
Inst26QAH = "2 个任务"

--Quest 1 Alliance
Inst26Quest1 = "1. 奥斯里安之死"
Inst26Quest1_Level = "60"
Inst26Quest1_Attain = "60"
Inst26Quest1_Aim = "将无疤者奥斯里安的头颅交给希利苏斯塞纳里奥要塞的指挥官玛尔利斯。"
Inst26Quest1_Location = "无疤者奥斯里安的头颅（无疤者奥斯里安掉落; "..YELLOW.."[6]"..WHITE.."）"
Inst26Quest1_Note = "指挥官玛尔利斯（希利苏斯 - 塞纳里奥要塞; "..YELLOW.."49,34"..WHITE.."）"
Inst26Quest1_Prequest = "无"
Inst26Quest1_Folgequest = "无"
--
Inst26Quest1name1 = "流沙护符"
Inst26Quest1name2 = "流沙咒符"
Inst26Quest1name3 = "流沙颈饰"
Inst26Quest1name4 = "流沙坠饰"

--Quest 2 Alliance
Inst26Quest2 = "2. 完美的毒药"
Inst26Quest2_Level = "60"
Inst26Quest2_Attain = "60"
Inst26Quest2_Aim = "塞纳里奥要塞的德尔克·雷木让你把温诺希斯的毒囊和库林纳克斯的毒囊交给他。"
Inst26Quest2_Location = "德尔克·雷木（希利苏斯 - 塞纳里奥要塞; "..YELLOW.."52,39"..WHITE.."）"
Inst26Quest2_Note = "高阶祭司温诺希斯"..YELLOW.."祖尔格拉布"..WHITE.."掉落温诺希斯的毒囊。库林纳克斯"..YELLOW.."安其拉废墟"..WHITE..""..YELLOW.."[1]"..WHITE.."掉落库林纳克斯的毒囊。"
Inst26Quest2_Prequest = "无"
Inst26Quest2_Folgequest = "无"
--
Inst26Quest2name1 = "拉文霍德切割者"
Inst26Quest2name2 = "开闸刀"
Inst26Quest2name3 = "雷木之刺"
Inst26Quest2name4 = "康恩之怒"
Inst26Quest2name5 = "法拉德的装填器"
Inst26Quest2name6 = "西蒙尼的耕种用锤"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst26Quest1_HORDE = Inst26Quest1
Inst26Quest1_HORDE_Level = Inst26Quest1_Level
Inst26Quest1_HORDE_Attain = Inst26Quest1_Attain
Inst26Quest1_HORDE_Aim = Inst26Quest1_Aim
Inst26Quest1_HORDE_Location = Inst26Quest1_Location
Inst26Quest1_HORDE_Note = Inst26Quest1_Note
Inst26Quest1_HORDE_Prequest = Inst26Quest1_Prequest
Inst26Quest1_HORDE_Folgequest = Inst26Quest1_Folgequest
--
Inst26Quest1name1_HORDE = Inst26Quest1name1
Inst26Quest1name2_HORDE = Inst26Quest1name2
Inst26Quest1name3_HORDE = Inst26Quest1name3
Inst26Quest1name4_HORDE = Inst26Quest1name4

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst26Quest2_HORDE = Inst26Quest2
Inst26Quest2_HORDE_Level = Inst26Quest2_Level
Inst26Quest2_HORDE_Attain = Inst26Quest2_Attain
Inst26Quest2_HORDE_Aim = Inst26Quest2_Aim
Inst26Quest2_HORDE_Location = Inst26Quest2_Location
Inst26Quest2_HORDE_Note = Inst26Quest2_Note
Inst26Quest2_HORDE_Prequest = Inst26Quest2_Prequest
Inst26Quest2_HORDE_Folgequest = Inst26Quest2_Folgequest
--
Inst26Quest2name1_HORDE = Inst26Quest2name1
Inst26Quest2name2_HORDE = Inst26Quest2name2
Inst26Quest2name3_HORDE = Inst26Quest2name3
Inst26Quest2name4_HORDE = Inst26Quest2name4
Inst26Quest2name5_HORDE = Inst26Quest2name5
Inst26Quest2name6_HORDE = Inst26Quest2name6



--------------- INST27 - The Stockade (Stocks) ---------------

Inst27Story = "监狱是位于暴风城运河区戒备森原的牢房。那里由典狱官塞尔沃特看守着，监狱是那些小偷，政治犯，谋杀者和许多最危险的罪犯的家园。最近，异常暴动导致了监狱的混乱——所有的守卫都被赶了出来，里面的罪犯可以自由的活动。典狱官塞尔沃特试图控制局面并召集勇敢的冒险者进入监狱杀死暴动的主脑——那个狡猾的巴吉尔·特雷德。"
Inst27Caption = "监狱"
Inst27QAA = "6 个任务"
Inst27QAH = "无任务"

--Quest 1 Alliance
Inst27Quest1 = "1. 伸张正义"
Inst27Quest1_Level = "25"
Inst27Quest1_Attain = "22"
Inst27Quest1_Aim = "把塔格尔的头颅带给湖畔镇的卫兵伯尔顿。"
Inst27Quest1_Location = "卫兵伯尔顿（赤脊山 - 湖畔镇; "..YELLOW.."26,46 "..WHITE.."）"
Inst27Quest1_Note = "你可以在"..YELLOW.."[1]"..WHITE.."找到塔格尔。"
Inst27Quest1_Prequest = "无"
Inst27Quest1_Folgequest = "无"
--
Inst27Quest1name1 = "磷铝长剑"
Inst27Quest1name2 = "硬根法杖"

--Quest 2 Alliance
Inst27Quest2 = "2. 罪与罚"
Inst27Quest2_Level = "26"
Inst27Quest2_Attain = "22"
Inst27Quest2_Aim = "夜色镇的米尔斯迪普议员要你杀死迪克斯特·瓦德，并把他的手带回来作为证明。"
Inst27Quest2_Location = "米尔斯迪普议员（暮色森林 - 夜色镇; "..YELLOW.."72,47 "..WHITE.."）"
Inst27Quest2_Note = "你可以在"..YELLOW.."[5]"..WHITE.."找到迪克斯特·瓦德."
Inst27Quest2_Prequest = "无"
Inst27Quest2_Folgequest = "无"
--
Inst27Quest2name1 = "大使之靴"
Inst27Quest2name2 = "夜色郡锁甲护腿"

--Quest 3 Alliance
Inst27Quest3 = "3. 镇压暴动"
Inst27Quest3_Level = "26"
Inst27Quest3_Attain = "22"
Inst27Quest3_Aim = "暴风城的典狱官塞尔沃特要求你杀死监狱中的10名迪菲亚囚徒、8名迪菲亚罪犯和8名迪菲亚叛军。"
Inst27Quest3_Location = "典狱官塞尔沃特（暴风城 - 监狱; "..YELLOW.."41,58 "..WHITE.."）"
Inst27Quest3_Note = "副本外的典狱官会给你这个任务。"
Inst27Quest3_Prequest = "无"
Inst27Quest3_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Alliance
Inst27Quest4 = "4. 鲜血的颜色"
Inst27Quest4_Level = "26"
Inst27Quest4_Attain = "22"
Inst27Quest4_Aim = "暴风城的尼科瓦·拉斯克要你取得10条红色毛纺面罩。"
Inst27Quest4_Location = "尼科瓦·拉斯克（暴风城 - 旧城区; "..YELLOW.."73,46 "..WHITE.."）"
Inst27Quest4_Note = "副本里每个敌人都可能掉落面罩。"
Inst27Quest4_Prequest = "无"
Inst27Quest4_Folgequest = "无"
-- No Rewards for this quest

--Quest 5 Alliance
Inst27Quest5 = "5. 卡姆·深怒"
Inst27Quest5_Level = "27"
Inst27Quest5_Attain = "25"
Inst27Quest5_Aim = "丹莫德的莫特雷·加玛森要求你把卡姆·深怒的头颅交给他。"
Inst27Quest5_Location = "莫特雷·加玛森（湿地 - 丹莫德; "..YELLOW.."49,18 "..WHITE.."）"
Inst27Quest5_Note = "前导任务也从莫特雷·加玛森处得到。你可以在"..YELLOW.."[2]"..WHITE.."找到卡姆·深怒。"
Inst27Quest5_Prequest = "有，黑铁战争"
Inst27Quest5_Folgequest = "无"
Inst27Quest5PreQuest = "true"
--
Inst27Quest5name1 = "辩护腰带 "
Inst27Quest5name2 = "碎头者"

--Quest 6 Alliance
Inst27Quest6 = "6. 监狱暴动（系列任务）"
Inst27Quest6_Level = "29"
Inst27Quest6_Attain = "16"
Inst27Quest6_Aim = "杀死巴基尔·斯瑞德，把他的头带给监狱的典狱官塞尔沃特。"
Inst27Quest6_Location = "典狱官塞尔沃特（暴风城 - 监狱; "..YELLOW.."41,58 "..WHITE.."）"
Inst27Quest6_Note = "前导任务详情请参见"..YELLOW.."[死亡矿井][迪菲亚兄弟会]"..WHITE..".。\n巴基尔·斯瑞德在"..YELLOW.."[4]"..WHITE.."。"
Inst27Quest6_Prequest = "有，未寄出的信 -> 巴吉尔·特雷德"
Inst27Quest6_Folgequest = "有，好奇的访客"
Inst27Quest6PreQuest = "true"
-- No Rewards for this quest



--------------- INST28 - Sunken Temple (ST) ---------------

Inst28Story = "在一千年之前，强大的古拉巴什王国被一次大型内部战争所毁灭。一部份被称为阿塔莱的巨魔牧师试图将古代血神哈卡灵魂掠夺者带回这个世界。虽然这些牧师被击败并最终被流放，这个伟大的王国变得四分五裂。流放的牧师逃到了北面，来到了悲伤沼泽。他们为哈卡建立了一座伟大的神庙——在那里他们期望能够把哈卡重新带回世间。伟大的守护神龙伊瑟拉了解了阿塔莱的计划并将神庙摧毁沉入沼泽之中。在今天，神庙沉没的遗迹被绿龙所守卫并阻止任何人进入或者出去。然而，有些阿塔莱巨魔从伊瑟拉的怒火中幸存下来并再此奖自己奉献与复活哈卡的事业中。 "
Inst28Caption = "沉没的神庙"
Inst28QAA = "17 个任务"
Inst28QAH = "17 个任务"

--Quest 1 Alliance
Inst28Quest1 = "1. 进入阿塔哈卡神庙"
Inst28Quest1_Level = "50"
Inst28Quest1_Attain = "41"
Inst28Quest1_Aim = "为暴风城的布罗哈恩·铁桶收集10块阿塔莱石板。"
Inst28Quest1_Location = "布罗哈恩·铁桶（暴风城 - 矮人区; "..YELLOW.."64,20"..WHITE.."）"
Inst28Quest1_Note = "前导任务在此领取。\n\n石板你在神庙内外里到处都能见到。"
Inst28Quest1_Prequest = "有，调查神庙 -> 拉普索迪的故事"
Inst28Quest1_Folgequest = "无"
Inst28Quest1PreQuest = "true"
--
Inst28Quest1name1 = "守护之符"

--Quest 2 Alliance
Inst28Quest2 = "2. 沉没的神庙"
Inst28Quest2_Level = "51"
Inst28Quest2_Attain = "46"
Inst28Quest2_Aim = "到塔纳利斯找到玛尔冯·瑞文斯克。"
Inst28Quest2_Location = "安吉拉斯·月风（菲拉斯 - 羽月要塞; "..YELLOW.."31,45"..WHITE.."）"
Inst28Quest2_Note = "你可以在"..YELLOW.."52,45"..WHITE.."处找到玛尔冯·瑞文斯克。"
Inst28Quest2_Prequest = "无"
Inst28Quest2_Folgequest = "有，石环"
-- No Rewards for this quest

--Quest 3 Alliance
Inst28Quest3 = "3. 深入神庙"
Inst28Quest3_Level = "51"
Inst28Quest3_Attain = "46"
Inst28Quest3_Aim = "在悲伤沼泽沉没的神庙中找到哈卡祭坛。"
Inst28Quest3_Location = "玛尔冯·瑞文斯克（塔纳利斯; "..YELLOW.."52,45"..WHITE.."）"
Inst28Quest3_Note = "祭坛就在图中"..YELLOW.."[1]"..WHITE.."的位置。"
Inst28Quest3_Prequest = "有，石环"
Inst28Quest3_Folgequest = "无"
Inst28Quest3FQuest = "true"
-- No Rewards for this quest

--Quest 4 Alliance

Inst28Quest4 = "4. 雕像群的秘密"
Inst28Quest4_Level = "51"
Inst28Quest4_Attain = "46"
Inst28Quest4_Aim = "到沉没的神庙去，揭开雕像群中隐藏的秘密。"
Inst28Quest4_Location = "玛尔冯·瑞文斯克（塔纳利斯; "..YELLOW.."52,45"..WHITE.."）"
Inst28Quest4_Note = "雕像群就在图中"..YELLOW.."[1]"..WHITE.."所示位置，按照地图指示的顺序打开他们。"
Inst28Quest4_Prequest = "有，深入神庙"
Inst28Quest4_Folgequest = "无"
Inst28Quest4FQuest = "true"
--
Inst28Quest4name1 = "哈卡莱骨灰"

--Quest 5 Alliance
Inst28Quest5 = "5. 邪恶之雾"
Inst28Quest5_Level = "52"
Inst28Quest5_Attain = "47"
Inst28Quest5_Aim = "收集5份阿塔莱之雾的样本，然后向安戈洛环形山的穆尔金复命。"
Inst28Quest5_Location = "格雷甘·山酒（菲拉斯; "..YELLOW.."45,25"..WHITE.."）"
Inst28Quest5_Note = "前导任务《穆尔金和拉瑞安》开始于穆尔金（安戈洛环形山 - 马绍尔营地; "..YELLOW.."42,9"..WHITE.."）。你可以从阿塔哈卡神庙里的神庙深渊潜伏者、黑暗虫或者融合软泥怪那里得到阿塔莱之雾。"
Inst28Quest5_Prequest = "有，穆尔金和拉瑞安 -> 造访格雷甘"
Inst28Quest5_Folgequest = "无"
Inst28Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst28Quest6 = "6. 神灵哈卡（系列任务）"
Inst28Quest6_Level = "53"
Inst28Quest6_Attain = "42"
Inst28Quest6_Aim = "将装满的哈卡之卵交给塔纳利斯的叶基亚。"
Inst28Quest6_Location = "叶基亚（塔纳利斯 - 热砂港; "..YELLOW.."66,22"..WHITE.."）"
Inst28Quest6_Note = "此系列任务始于《尖啸者的灵魂》（同样在此领取，见"..YELLOW.."[祖儿法拉克]"..WHITE.."）。\n你必须在"..YELLOW.."[3]"..WHITE.."使用哈卡之卵，触发事件。一旦事件开始，敌人会像潮水般涌出来攻击你。其中一些敌人掉落哈卡莱之血。用这些血液熄灭包含哈卡灵魂能量的不灭火焰。当你熄灭所有的火焰时，哈卡的化身就可以进入我们的世界了。"
Inst28Quest6_Prequest = "有，尖啸者的灵魂 -> 远古之卵"
Inst28Quest6_Folgequest = "无"
Inst28Quest6PreQuest = "true"
--
Inst28Quest6name1 = "灰岩头盔"
Inst28Quest6name2 = "生命之力短剑"
Inst28Quest6name3 = "珠光头饰"

--Quest 7 Alliance
Inst28Quest7 = "7. 预言者迦玛兰"
Inst28Quest7_Level = "53"
Inst28Quest7_Attain = "38"
Inst28Quest7_Aim = "辛特兰的阿塔莱流放者要你给他带回迦玛兰的头。"
Inst28Quest7_Location = "阿塔莱流放者（辛特兰; "..YELLOW.."33,75"..WHITE.."）"
Inst28Quest7_Note = "你可以在"..YELLOW.."[4]"..WHITE.."找到迦玛兰。"
Inst28Quest7_Prequest = "无"
Inst28Quest7_Folgequest = "无"
--
Inst28Quest7name1 = "雨行护腿"
Inst28Quest7name2 = "流放者头盔"

--Quest 8 Alliance
Inst28Quest8 = "8. 伊兰尼库斯精华"
Inst28Quest8_Level = "55"
Inst28Quest8_Attain = "48"
Inst28Quest8_Aim = "把伊兰尼库斯精华放在精华之泉里，精华之泉就在沉没的神庙中，伊兰尼库斯的巢穴里。"
Inst28Quest8_Location = "伊兰尼库斯精华（伊兰尼库斯的阴影掉落; "..YELLOW.."[6]"..WHITE.."）"
Inst28Quest8_Note = "伊兰尼库斯精华要打伊兰尼库斯的阴影才能掉落。你可以在"..YELLOW.."[6]"..WHITE.."找到他，精华之泉就在他旁边。"
Inst28Quest8_Prequest = "无"
Inst28Quest8_Folgequest = "无"
--
Inst28Quest8name1 = "被禁锢的伊兰尼库斯精华"

--Quest 9 Alliance
Inst28Quest9 = "9. 巨魔的羽毛（术士任务）"
Inst28Quest9_Level = "52"
Inst28Quest9_Attain = "50"
Inst28Quest9_Aim = "到沉没的神庙去，从巨魔们身上获得6支巫毒羽毛。"
Inst28Quest9_Location = "伊普斯（费伍德森林; "..YELLOW.."42,45"..WHITE.."）"
Inst28Quest9_Note = "术士职业任务。6小巨魔每只掉一个羽毛。"
Inst28Quest9_Prequest = "有，小鬼的要求 -> 奇怪的材料"
Inst28Quest9_Folgequest = "无"
Inst28Quest9PreQuest = "true"
--
Inst28Quest9name1 = "灵魂收割者"
Inst28Quest9name2 = "深渊碎片"
Inst28Quest9name3 = "束缚长袍"

--Quest 10 Alliance
Inst28Quest10 = "10. 巫毒羽毛（战士任务）"
Inst28Quest10_Level = "52"
Inst28Quest10_Attain = "50"
Inst28Quest10_Aim = "将你从沉没的神庙的巨魔身上得到的巫毒羽毛交给部落英雄的灵魂。"
Inst28Quest10_Location = "部落英雄的灵魂（尘泥沼泽; "..YELLOW.."34,66"..WHITE.."）"
Inst28Quest10_Note = "战士职业任务。6小巨魔每只掉一个羽毛。"
Inst28Quest10_Prequest = "有，困扰的灵魂  -> 魔誓者之战"
Inst28Quest10_Folgequest = "无"
Inst28Quest10PreQuest = "true"
--
Inst28Quest10name1 = "怒火面甲"
Inst28Quest10name2 = "钻石水瓶"
Inst28Quest10name3 = "刺钢护肩"

--Quest 11 Alliance
Inst28Quest11 = "11. 巫毒羽毛（萨满任务）"
Inst28Quest11_Level = "52"
Inst28Quest11_Attain = "50"
Inst28Quest11_Aim = "将巫毒羽毛交给捕风者巴斯拉。"
Inst28Quest11_Location = "捕风者巴斯拉（奥特兰克山脉; "..YELLOW.."80,67"..WHITE.."）"
Inst28Quest11_Note = "萨满职业任务。6小巨魔每只掉一个羽毛。"
Inst28Quest11_Prequest = "有，灵魂图腾"
Inst28Quest11_Folgequest = "无"
Inst28Quest11PreQuest = "true"
--
Inst28Quest11name1 = "蓝铜之拳"
Inst28Quest11name2 = "被迷惑的水之魂"
Inst28Quest11name3 = "荒野之杖"

--Quest 12 Alliance
Inst28Quest12 = "12. 更好的材料（德鲁伊任务）"
Inst28Quest12_Level = "52"
Inst28Quest12_Attain = "50"
Inst28Quest12_Aim = "从沉没的神庙底部的守卫身上得到一些腐烂藤蔓，把它们交给托尔瓦·寻路者。"
Inst28Quest12_Location = "托尔瓦·寻路者（安戈洛环形山; "..YELLOW.."72,76"..WHITE.."）"
Inst28Quest12_Note = "德鲁伊职业任务。腐烂藤蔓掉落自召唤的阿塔拉利恩"..YELLOW.."[1]"..WHITE.."，必须正确的破解雕像群的秘密。"
Inst28Quest12_Prequest = "有，托尔瓦·寻路者 -> 毒性测试"
Inst28Quest12_Folgequest = "无"
Inst28Quest12PreQuest = "true"
--
Inst28Quest12name1 = "斑白毛皮"
Inst28Quest12name2 = " 森林的拥抱"
Inst28Quest12name3 = "月影手杖"

--Quest 13 Alliance
Inst28Quest13 = "13. 神庙中的绿龙（猎人任务）"
Inst28Quest13_Level = "52"
Inst28Quest13_Attain = "50"
Inst28Quest13_Aim = "将摩弗拉斯的牙齿交给艾萨拉的奥汀克。他住在埃达拉斯废墟东北部悬崖的顶端。"
Inst28Quest13_Location = "奥汀克（艾萨拉; "..YELLOW.."42,43"..WHITE.."）"
Inst28Quest13_Note = "猎人职业任务。摩弗拉斯在"..YELLOW.."[5]"..WHITE.."。"
Inst28Quest13_Prequest = "有，猎人的护符 -> 碎浪多头怪"
Inst28Quest13_Folgequest = "无"
Inst28Quest13PreQuest = "true"
--
Inst28Quest13name1 = "狩猎长矛"
Inst28Quest13name2 = "魔暴龙眼"
Inst28Quest13name3 = "魔暴龙牙"

--Quest 14 Alliance
Inst28Quest14 = "14. 毁灭摩弗拉斯（法师任务）"
Inst28Quest14_Level = "52"
Inst28Quest14_Attain = "50"
Inst28Quest14_Aim = "从摩弗拉斯身上取回奥术碎片，然后返回大法师克希雷姆那儿。"
Inst28Quest14_Location = "大法师克希雷姆，摩弗拉斯（艾萨拉; "..YELLOW.."29,40"..WHITE.."）"
Inst28Quest14_Note = "法师职业任务。摩弗拉斯在"..YELLOW.."[5]"..WHITE.."。"
Inst28Quest14_Prequest = "有，法师的会见 -> 纳迦的珊瑚"
Inst28Quest14_Folgequest = "无"
Inst28Quest14PreQuest = "true"
--
Inst28Quest14name1 = "冰川之矛"
Inst28Quest14name2 = "奥术水晶坠饰"
Inst28Quest14name3 = "火焰宝石"

--Quest 15 Alliance
Inst28Quest15 = "15. 摩弗拉斯之血（牧师任务）"
Inst28Quest15_Level = "52"
Inst28Quest15_Attain = "50"
Inst28Quest15_Aim = "前往沉没的阿塔哈卡神庙，杀死绿龙摩弗拉斯，将他的血液交给费伍德森林中的格雷塔·苔蹄。沉没的神庙的入口就在悲伤沼泽中。"
Inst28Quest15_Location = "奥汀克（艾萨拉; "..YELLOW.."42,43"..WHITE.."）"
Inst28Quest15_Note = "牧师职业任务。摩弗拉斯 在"..YELLOW.."[5]"..WHITE.."。 格雷塔·苔蹄在（费伍德森林 - 翡翠圣地; "..YELLOW.."51,82"..WHITE.."）。"
Inst28Quest15_Prequest = "有，塞纳里奥议会的求助 -> 亡灵的腐液"
Inst28Quest15_Folgequest = "无"
Inst28Quest15PreQuest = "true"
--
Inst28Quest15name1 = "祝福珠串"
Inst28Quest15name2 = "悲哀之杖"
Inst28Quest15name3 = "希望之环"

--Quest 16 Alliance
Inst28Quest16 = "16. 碧蓝钥匙（盗贼任务）"
Inst28Quest16_Level = "52"
Inst28Quest16_Attain = "50"
Inst28Quest16_Aim = "将碧蓝钥匙交给乔拉齐·拉文霍德公爵。"
Inst28Quest16_Location = " 大法师克希雷姆（艾萨拉; "..YELLOW.."29,40"..WHITE.."）"
Inst28Quest16_Note = "盗贼职业任务。摩弗拉斯"..YELLOW.."[5]"..WHITE.."掉落钥匙。乔拉齐·拉文霍德公爵在（奥特兰克山谷 - 拉文霍德; "..YELLOW.."86,79"..WHITE.."）。"
Inst28Quest16_Prequest = "有，简单的要求 -> 密文碎片"
Inst28Quest16_Folgequest = "无"
Inst28Quest16PreQuest = "true"
--
Inst28Quest16name1 = "乌黑面具"
Inst28Quest16name2 = "耳语长靴"
Inst28Quest16name3 = "暗色蝠斗篷"

--Quest 17 Alliance
Inst28Quest17 = "17. 铸造力量之石（圣骑士任务）"
Inst28Quest17_Level = "52"
Inst28Quest17_Attain = "50"
Inst28Quest17_Aim = "将巫毒羽毛带给阿什拉姆·瓦罗菲斯特。"
Inst28Quest17_Location = "阿什拉姆·瓦罗菲斯特（西瘟疫之地 - 寒风营地; "..YELLOW.."43,85"..WHITE.."）"
Inst28Quest17_Note = "圣骑士职业任务。6小巨魔一只掉一个。"
Inst28Quest17_Prequest = "有，堕落者的天灾石"
Inst28Quest17_Folgequest = "无"
Inst28Quest17PreQuest = "true"
--
Inst28Quest17name1 = "神圣力量之石"
Inst28Quest17name2 = "光铸利刃"
Inst28Quest17name3 = "神圣宝珠"
Inst28Quest17name4 = "礼节徽记"


--Quest 1 Horde
Inst28Quest1_HORDE = "1. 阿塔哈卡神庙"
Inst28Quest1_HORDE_Level = "50"
Inst28Quest1_HORDE_Attain = "38"
Inst28Quest1_HORDE_Aim = "收集20个哈卡神像，把它们带给斯通纳德的费泽鲁尔。"
Inst28Quest1_HORDE_Location = "费泽鲁尔（悲伤沼泽 - 斯通纳德; "..YELLOW.."47,54"..WHITE.."）"
Inst28Quest1_HORDE_Note = "神庙里的所有敌人都掉落哈卡神像。"
Inst28Quest1_HORDE_Prequest = "有，泪水之池 -> 向费泽鲁尔复命"
Inst28Quest1_HORDE_Folgequest = "无"
Inst28Quest1PreQuest_HORDE = "true"
--
Inst28Quest1name1_HORDE = "守护之符"

--Quest 2 Horde
Inst28Quest2_HORDE = "2. 沉没的神庙"
Inst28Quest2_HORDE_Level = "51"
Inst28Quest2_HORDE_Attain = "46"
Inst28Quest2_HORDE_Aim = "到塔纳利斯找到玛尔冯·瑞文斯克。"
Inst28Quest2_HORDE_Location = "巫医尤克里（菲拉斯; "..YELLOW.."74,43"..WHITE.."）"
Inst28Quest2_HORDE_Note = "玛尔冯·瑞文斯克的位置在"..YELLOW.."52,45"..WHITE.."。"
Inst28Quest2_HORDE_Prequest = "无"
Inst28Quest2_HORDE_Folgequest = "有，石环"

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst28Quest3_HORDE = Inst28Quest3
Inst28Quest3_HORDE_Level = Inst28Quest3_Level
Inst28Quest3_HORDE_Attain = Inst28Quest3_Attain
Inst28Quest3_HORDE_Aim = Inst28Quest3_Aim
Inst28Quest3_HORDE_Location = Inst28Quest3_Location
Inst28Quest3_HORDE_Note = Inst28Quest3_Note
Inst28Quest3_HORDE_Prequest = Inst28Quest3_Prequest
Inst28Quest3_HORDE_Folgequest = Inst28Quest3_Folgequest
Inst28Quest3FQuest_HORDE = Inst28Quest3FQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst28Quest4_HORDE = Inst28Quest4
Inst28Quest4_HORDE_Level = Inst28Quest4_Level
Inst28Quest4_HORDE_Attain = Inst28Quest4_Attain
Inst28Quest4_HORDE_Aim = Inst28Quest4_Aim
Inst28Quest4_HORDE_Location = Inst28Quest4_Location
Inst28Quest4_HORDE_Note = Inst28Quest4_Note
Inst28Quest4_HORDE_Prequest = Inst28Quest4_Prequest
Inst28Quest4_HORDE_Folgequest = Inst28Quest4_Folgequest
Inst28Quest4FQuest_HORDE = Inst28Quest4FQuest
--
Inst28Quest4name1_HORDE = Inst28Quest4name1

--Quest 5 Horde
Inst28Quest5_HORDE = "5. 除草器的燃料"
Inst28Quest5_HORDE_Level = "52"
Inst28Quest5_HORDE_Attain = "50"
Inst28Quest5_HORDE_Aim = "收集5份阿塔莱之雾的样本，然后将它们送到马绍尔营地的拉瑞安那里。"
Inst28Quest5_HORDE_Location = "莉芙·雷兹菲克斯（贫瘠之地; "..YELLOW.."62,38"..WHITE.."）"
Inst28Quest5_HORDE_Note = "前导任务《拉瑞安和穆尔金》开始于拉瑞安（安戈洛环形山; "..YELLOW.."45,8"..WHITE.."）。沉没的神庙里的神庙深渊潜伏者、黑暗虫和软泥怪身上都有阿塔莱之雾。"
Inst28Quest5_HORDE_Prequest = "有，拉瑞安和穆尔金 > 玛尔冯的车间"
Inst28Quest5_HORDE_Folgequest = "无"
Inst28Quest5PreQuest_HORDE = "true"

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst28Quest6_HORDE = Inst28Quest6
Inst28Quest6_HORDE_Level = Inst28Quest6_Level
Inst28Quest6_HORDE_Attain = Inst28Quest6_Attain
Inst28Quest6_HORDE_Aim = Inst28Quest6_Aim
Inst28Quest6_HORDE_Location = Inst28Quest6_Location
Inst28Quest6_HORDE_Note = Inst28Quest6_Note
Inst28Quest6_HORDE_Prequest = Inst28Quest6_Prequest
Inst28Quest6_HORDE_Folgequest = Inst28Quest6_Folgequest
Inst28Quest6PreQuest_HORDE = Inst28Quest6PreQuest
--
Inst28Quest6name1_HORDE = Inst28Quest6name1
Inst28Quest6name2_HORDE = Inst28Quest6name2
Inst28Quest6name3_HORDE = Inst28Quest6name3

--Quest 7 Horde  (same as Quest 7 Alliance)
Inst28Quest7_HORDE = Inst28Quest7
Inst28Quest7_HORDE_Level = Inst28Quest7_Level
Inst28Quest7_HORDE_Attain = Inst28Quest7_Attain
Inst28Quest7_HORDE_Aim = Inst28Quest7_Aim
Inst28Quest7_HORDE_Location = Inst28Quest7_Location
Inst28Quest7_HORDE_Note = Inst28Quest7_Note
Inst28Quest7_HORDE_Prequest = Inst28Quest7_Prequest
Inst28Quest7_HORDE_Folgequest = Inst28Quest7_Folgequest
--
Inst28Quest7name1_HORDE = Inst28Quest7name1
Inst28Quest7name2_HORDE = Inst28Quest7name2

--Quest 8 Horde  (same as Quest 8 Alliance)
Inst28Quest8_HORDE = Inst28Quest8
Inst28Quest8_HORDE_Level = Inst28Quest8_Level
Inst28Quest8_HORDE_Attain = Inst28Quest8_Attain
Inst28Quest8_HORDE_Aim = Inst28Quest8_Aim
Inst28Quest8_HORDE_Location = Inst28Quest8_Location
Inst28Quest8_HORDE_Note = Inst28Quest8_Note
Inst28Quest8_HORDE_Prequest = Inst28Quest8_Prequest
Inst28Quest8_HORDE_Folgequest = Inst28Quest8_Folgequest
--
Inst28Quest8name1_HORDE = Inst28Quest8name1

--Quest 9 Horde  (same as Quest 9 Alliance)
Inst28Quest9_HORDE = Inst28Quest9
Inst28Quest9_HORDE_Level = Inst28Quest9_Level
Inst28Quest9_HORDE_Attain = Inst28Quest9_Attain
Inst28Quest9_HORDE_Aim = Inst28Quest9_Aim
Inst28Quest9_HORDE_Location = Inst28Quest9_Location
Inst28Quest9_HORDE_Note = Inst28Quest9_Note
Inst28Quest9_HORDE_Prequest = Inst28Quest9_Prequest
Inst28Quest9_HORDE_Folgequest = Inst28Quest9_Folgequest
Inst28Quest9PreQuest_HORDE = Inst28Quest9PreQuest
--
Inst28Quest9name1_HORDE = Inst28Quest9name1
Inst28Quest9name2_HORDE = Inst28Quest9name2
Inst28Quest9name3_HORDE = Inst28Quest9name3

--Quest 10 Horde  (same as Quest 10 Alliance)
Inst28Quest10_HORDE = Inst28Quest10
Inst28Quest10_HORDE_Level = Inst28Quest10_Level
Inst28Quest10_HORDE_Attain = Inst28Quest10_Attain
Inst28Quest10_HORDE_Aim = Inst28Quest10_Aim
Inst28Quest10_HORDE_Location = Inst28Quest10_Location
Inst28Quest10_HORDE_Note = Inst28Quest10_Note
Inst28Quest10_HORDE_Prequest = Inst28Quest10_Prequest
Inst28Quest10_HORDE_Folgequest = Inst28Quest10_Folgequest
Inst28Quest10PreQuest_HORDE = Inst28Quest10PreQuest
--
Inst28Quest10name1_HORDE = Inst28Quest10name1
Inst28Quest10name2_HORDE = Inst28Quest10name2
Inst28Quest10name3_HORDE = Inst28Quest10name3

--Quest 11 Horde  (same as Quest 11 Alliance)
Inst28Quest11_HORDE = Inst28Quest11
Inst28Quest11_HORDE_Level = Inst28Quest11_Level
Inst28Quest11_HORDE_Attain = Inst28Quest11_Attain
Inst28Quest11_HORDE_Aim = Inst28Quest11_Aim
Inst28Quest11_HORDE_Location = Inst28Quest11_Location
Inst28Quest11_HORDE_Note = Inst28Quest11_Note
Inst28Quest11_HORDE_Prequest = Inst28Quest11_Prequest
Inst28Quest11_HORDE_Folgequest = Inst28Quest11_Folgequest
Inst28Quest11PreQuest_HORDE = Inst28Quest11PreQuest
--
Inst28Quest11name1_HORDE = Inst28Quest11name1
Inst28Quest11name2_HORDE = Inst28Quest11name2
Inst28Quest11name3_HORDE = Inst28Quest11name3

--Quest 12 Horde  (same as Quest 12 Alliance)
Inst28Quest12_HORDE = Inst28Quest12
Inst28Quest12_HORDE_Level = Inst28Quest12_Level
Inst28Quest12_HORDE_Attain = Inst28Quest12_Attain
Inst28Quest12_HORDE_Aim = Inst28Quest12_Aim
Inst28Quest12_HORDE_Location = Inst28Quest12_Location
Inst28Quest12_HORDE_Note = Inst28Quest12_Note
Inst28Quest12_HORDE_Prequest = Inst28Quest12_Prequest
Inst28Quest12_HORDE_Folgequest = Inst28Quest12_Folgequest
Inst28Quest12PreQuest_HORDE = Inst28Quest12PreQuest
--
Inst28Quest12name1_HORDE = Inst28Quest12name1
Inst28Quest12name2_HORDE = Inst28Quest12name2
Inst28Quest12name3_HORDE = Inst28Quest12name3

--Quest 13 Horde  (same as Quest 13 Alliance)
Inst28Quest13_HORDE = Inst28Quest13
Inst28Quest13_HORDE_Level = Inst28Quest13_Level
Inst28Quest13_HORDE_Attain = Inst28Quest13_Attain
Inst28Quest13_HORDE_Aim = Inst28Quest13_Aim
Inst28Quest13_HORDE_Location = Inst28Quest13_Location
Inst28Quest13_HORDE_Note = Inst28Quest13_Note
Inst28Quest13_HORDE_Prequest = Inst28Quest13_Prequest
Inst28Quest13_HORDE_Folgequest = Inst28Quest13_Folgequest
Inst28Quest13PreQuest_HORDE = Inst28Quest13PreQuest
--
Inst28Quest13name1_HORDE = Inst28Quest13name1
Inst28Quest13name2_HORDE = Inst28Quest13name2
Inst28Quest13name3_HORDE = Inst28Quest13name3

--Quest 14 Horde  (same as Quest 14 Alliance)
Inst28Quest14_HORDE = Inst28Quest14
Inst28Quest14_HORDE_Level = Inst28Quest14_Level
Inst28Quest14_HORDE_Attain = Inst28Quest14_Attain
Inst28Quest14_HORDE_Aim = Inst28Quest14_Aim
Inst28Quest14_HORDE_Location = Inst28Quest14_Location
Inst28Quest14_HORDE_Note = Inst28Quest14_Note
Inst28Quest14_HORDE_Prequest = Inst28Quest14_Prequest
Inst28Quest14_HORDE_Folgequest = Inst28Quest14_Folgequest
Inst28Quest14PreQuest_HORDE = Inst28Quest14PreQuest
--
Inst28Quest14name1_HORDE = Inst28Quest14name1
Inst28Quest14name2_HORDE = Inst28Quest14name2
Inst28Quest14name3_HORDE = Inst28Quest14name3

--Quest 15 Horde  (same as Quest 15 Alliance)
Inst28Quest15_HORDE = Inst28Quest15
Inst28Quest15_HORDE_Level = Inst28Quest15_Level
Inst28Quest15_HORDE_Attain = Inst28Quest15_Attain
Inst28Quest15_HORDE_Aim = Inst28Quest15_Aim
Inst28Quest15_HORDE_Location = Inst28Quest15_Location
Inst28Quest15_HORDE_Note = Inst28Quest15_Note
Inst28Quest15_HORDE_Prequest = Inst28Quest15_Prequest
Inst28Quest15_HORDE_Folgequest = Inst28Quest15_Folgequest
Inst28Quest15PreQuest_HORDE = Inst28Quest15PreQuest
--
Inst28Quest15name1_HORDE = Inst28Quest15name1
Inst28Quest15name2_HORDE = Inst28Quest15name2
Inst28Quest15name3_HORDE = Inst28Quest15name3

--Quest 16 Horde  (same as Quest 16 Alliance)
Inst28Quest16_HORDE = Inst28Quest16
Inst28Quest16_HORDE_Level = Inst28Quest16_Level
Inst28Quest16_HORDE_Attain = Inst28Quest16_Attain
Inst28Quest16_HORDE_Aim = Inst28Quest16_Aim
Inst28Quest16_HORDE_Location = Inst28Quest16_Location
Inst28Quest16_HORDE_Note = Inst28Quest16_Note
Inst28Quest16_HORDE_Prequest = Inst28Quest16_Prequest
Inst28Quest16_HORDE_Folgequest = Inst28Quest16_Folgequest
Inst28Quest16PreQuest_HORDE = Inst28Quest16PreQuest
--
Inst28Quest16name1_HORDE = Inst28Quest16name1
Inst28Quest16name2_HORDE = Inst28Quest16name2
Inst28Quest16name3_HORDE = Inst28Quest16name3

--Quest 17 Horde
Inst28Quest17_HORDE = "17. 远古的邪恶（圣骑士）"
Inst28Quest17_HORDE_Level = "52"
Inst28Quest17_HORDE_Attain = "50"
Inst28Quest17_HORDE_Aim = "揭开阿塔哈卡神庙的秘密，释放阿塔拉利恩并击败他，从他的尸体上取走腐烂藤蔓。完成任务之后向亡灵壁垒的麦拉·黎明之刃复命。"
Inst28Quest17_HORDE_Location = "希尔瓦娜斯·风行者（幽暗城 - 皇家区; "..YELLOW.."59,94"..WHITE.."）"
Inst28Quest17_HORDE_Note = "圣骑士职业任务。腐烂藤蔓掉落自召唤的阿塔拉利恩"..YELLOW.."[1]"..WHITE.."，必须正确的破解雕像群的秘密。麦拉·黎明之刃在（提瑞斯法林地 - 亡灵壁垒; "..YELLOW.."83,71"..WHITE.."）。"
Inst28Quest17_HORDE_Prequest = "有，前往亡灵壁垒  ->  女妖之王的智慧"
Inst28Quest17_HORDE_Folgequest = "无"
Inst28Quest17PreQuest_HORDE = "true"
--
Inst28Quest17name1_HORDE = "天灾杀手"



--------------- INST29 - The Temple of Ahn'Qiraj (AQ40) ---------------

Inst29Story = "在安其拉中心矗立着一座古老神庙综合体。它在史前时代就被建造，用以纪念伟大的神与提供其拉大军繁衍的场地。自数千年前的流沙之战结束后，其拉帝国的双子皇帝就被青铜龙阿纳克洛斯和暗夜精灵们以强大的魔法结界困在了神庙里。随着时间流逝，流沙权杖已被重组，魔法结界上的封印也逐渐消失，通往安其拉神庙深处的道路也再度敞开。那些被困在神庙地下蠢蠢欲动的其拉军团开始准备入侵。为了避免第二次流沙之战再度爆发、贪婪的虫群再次于卡利姆多大陆倾巢而出，无论如何一定要阻止它们。"
Inst29Caption = "安其拉神殿"
Inst29QAA = "3 个任务"
Inst29QAH = "3 个任务"

--Quest 1 Alliance
Inst29Quest1 = "1. 克苏恩的遗产"
Inst29Quest1_Level = "60"
Inst29Quest1_Attain = "60"
Inst29Quest1_Aim = "将克苏恩之眼交给安其拉神殿的凯雷斯特拉兹。"
Inst29Quest1_Location = "克苏恩之眼（克苏恩掉落; "..YELLOW.."[9]"..WHITE.."）"
Inst29Quest1_Note = "凯雷斯特拉兹（安其拉神殿; "..YELLOW.."2'"..WHITE.."）"
Inst29Quest1_Prequest = "无"
Inst29Quest1_Folgequest = "有，卡利姆多的救世主"
-- No Rewards for this quest

--Quest 2 Alliance
Inst29Quest2 = "2. 卡利姆多的救世主"
Inst29Quest2_Level = "60"
Inst29Quest2_Attain = "60"
Inst29Quest2_Aim = "把克苏恩之眼交给时光之穴的阿纳克洛斯。"
Inst29Quest2_Location = "克苏恩之眼（克苏恩掉落; "..YELLOW.."[9]"..WHITE.."）"
Inst29Quest2_Note = "阿纳克洛斯（塔纳利斯 - 时光之穴; "..YELLOW.."65,49"..WHITE.."）"
Inst29Quest2_Prequest = "有，克苏恩的遗产"
Inst29Quest2_Folgequest = "无"
Inst29Quest2FQuest = "true"
--
Inst29Quest2name1 = "堕落神明咒符"
Inst29Quest2name2 = "堕落神明披风"
Inst29Quest2name3 = "堕落神明之戒"

--Quest 3 Alliance
Inst29Quest3 = "3. 其拉的秘密"
Inst29Quest3_Level = "60"
Inst29Quest3_Attain = "60"
Inst29Quest3_Aim = "把上古其拉神器交给隐藏在神殿入口处的龙类。"
Inst29Quest3_Location = "上古其拉神器（安其拉神殿随机掉落）"
Inst29Quest3_Note = "交给安多葛斯（安其拉神殿; "..YELLOW.."1'"..WHITE.."）。"
Inst29Quest3_Prequest = "无"
Inst29Quest3_Folgequest = "无"
-- No Rewards for this quest


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst29Quest1_HORDE = Inst29Quest1
Inst29Quest1_HORDE_Level = Inst29Quest1_Level
Inst29Quest1_HORDE_Attain = Inst29Quest1_Attain
Inst29Quest1_HORDE_Aim = Inst29Quest1_Aim
Inst29Quest1_HORDE_Location = Inst29Quest1_Location
Inst29Quest1_HORDE_Note = Inst29Quest1_Note
Inst29Quest1_HORDE_Prequest = Inst29Quest1_Prequest
Inst29Quest1_HORDE_Folgequest = Inst29Quest1_Folgequest
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst29Quest2_HORDE = Inst29Quest2
Inst29Quest2_HORDE_Level = Inst29Quest2_Level
Inst29Quest2_HORDE_Attain = Inst29Quest2_Attain
Inst29Quest2_HORDE_Aim = Inst29Quest2_Aim
Inst29Quest2_HORDE_Location = Inst29Quest2_Location
Inst29Quest2_HORDE_Note = Inst29Quest2_Note
Inst29Quest2_HORDE_Prequest = Inst29Quest2_Prequest
Inst29Quest2_HORDE_Folgequest = Inst29Quest2_Folgequest
Inst29Quest2FQuest_HORDE = Inst29Quest2FQuest
--
Inst29Quest2name1_HORDE = Inst29Quest2name1
Inst29Quest2name2_HORDE = Inst29Quest2name2
Inst29Quest2name3_HORDE = Inst29Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst29Quest3_HORDE = Inst29Quest3
Inst29Quest3_HORDE_Level = Inst29Quest3_Level
Inst29Quest3_HORDE_Attain = Inst29Quest3_Attain
Inst29Quest3_HORDE_Aim = Inst29Quest3_Aim
Inst29Quest3_HORDE_Location = Inst29Quest3_Location
Inst29Quest3_HORDE_Note = Inst29Quest3_Note
Inst29Quest3_HORDE_Prequest = Inst29Quest3_Prequest
Inst29Quest3_HORDE_Folgequest = Inst29Quest3_Folgequest
-- No Rewards for this quest



--------------- INST30 - Zul'Farrak (ZF) ---------------

Inst30Story = "日光暴晒下的这座城市是沙怒巨魔的家园，他们一向以来都以其无情和黑暗魔法而闻名。巨魔传说中有一把强大的名叫鞭笞者苏萨斯的武器能够让最弱小的人可以击败最强大的敌人。很久以前，这把武器被分成了两半。然而，有传言说这两半可以在祖尔法拉克任何地方找到。据说还有一批加基森派来的雇佣兵进入了城市并被困住。他们的命运还不得而知。但是也许最让人感到不安的是一头远古生物正沉睡在城市中心的一个神圣的水池中——它是一个半神，它会摧毁任何胆敢唤醒它的人。"
Inst30Caption = "祖尔法拉克"
Inst30QAA = "7 个任务"
Inst30QAH = "7 个任务"

--Quest 1 Alliance
Inst30Quest1 = "1. 巨魔调和剂"
Inst30Quest1_Level = "45"
Inst30Quest1_Attain = "40"
Inst30Quest1_Aim = "收集20瓶巨魔调和剂，把它们交给加基森的特伦顿·轻锤。"
Inst30Quest1_Location = "特伦顿·轻锤（塔纳利斯 - 加基森; "..YELLOW.."51,28 "..WHITE.."）"
Inst30Quest1_Note = "每个巨魔都可能掉落调和剂。"
Inst30Quest1_Prequest = "无"
Inst30Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst30Quest2 = "2. 圣甲虫的壳"
Inst30Quest2_Level = "45"
Inst30Quest2_Attain = "40"
Inst30Quest2_Aim = "给加基森的特兰雷克带去5个完整的圣甲虫壳。"
Inst30Quest2_Location = "特兰雷克（塔纳利斯 - 加基森; "..YELLOW.."51,26 "..WHITE.."）"
Inst30Quest2_Note = "前导任务始于克拉兹克（荆棘谷 - 藏宝海湾; "..YELLOW.."25,77"..WHITE.."）。\n每个圣甲虫都可能掉落壳儿。大量圣甲虫集中在"..YELLOW.."[2]"..WHITE.."。"
Inst30Quest2_Prequest = "有，特兰雷克"
Inst30Quest2_Folgequest = "无"
Inst30Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest 3 Alliance
Inst30Quest3 = "3. 深渊皇冠"
Inst30Quest3_Level = "46"
Inst30Quest3_Attain = "40"
Inst30Quest3_Aim = "将深渊皇冠交给尘泥沼泽的塔贝萨。"
Inst30Quest3_Location = "塔贝萨（尘泥沼泽; "..YELLOW.."46,57 "..WHITE.."）"
Inst30Quest3_Note = "前导任务从彬克（铁炉堡; "..YELLOW.."25,8"..WHITE.."）处获得。\n水占师维蕾萨掉落深渊皇冠。你可以在"..YELLOW.."[6]"..WHITE.."找到她。"
Inst30Quest3_Prequest = "有，塔贝萨的任务"
Inst30Quest3_Folgequest = "无"
Inst30Quest3PreQuest = "true"
--
Inst30Quest3name1 = "幻法之杖"
Inst30Quest3name2 = "晶岩肩铠"

--Quest 4 Alliance
Inst30Quest4 = "4. 耐克鲁姆的徽章（系列任务）"
Inst30Quest4_Level = "47"
Inst30Quest4_Attain = "40"
Inst30Quest4_Aim = "将耐克鲁姆的徽章交给诅咒之地的萨迪斯·格希德。"
Inst30Quest4_Location = "萨迪斯·格希德（诅咒之地 - 守望堡; "..YELLOW.."66,19 "..WHITE.."）"
Inst30Quest4_Note = "此系列任务始于狮鹫管理员沙拉克·鹰斧（辛特兰 - 蛮锤城堡; "..YELLOW.."9,44"..WHITE.."）。\n你可以在"..YELLOW.."[4]"..WHITE.."找到耐克鲁姆。"
Inst30Quest4_Prequest = "有，枯木巨魔的牢笼 -> 萨迪斯·格希德"
Inst30Quest4_Folgequest = "有，占卜"
Inst30Quest4PreQuest = "true"
-- No Rewards for this quest

--Quest 5 Alliance
Inst30Quest5 = "5. 摩沙鲁的预言（系列任务）"
Inst30Quest5_Level = "47"
Inst30Quest5_Attain = "40"
Inst30Quest5_Aim = "将第一块和第二块摩沙鲁石板交给塔纳利斯的叶基亚。"
Inst30Quest5_Location = "叶基亚（塔纳利斯 - 热砂港; "..YELLOW.."66,22 "..WHITE.."）"
Inst30Quest5_Note = "前导任务也是在此获得。\n\n两块石板分别由殉教者塞卡"..YELLOW.."[2]"..WHITE.."和水占师维蕾萨"..YELLOW.."[6]"..WHITE.."掉落。"
Inst30Quest5_Prequest = "有，尖啸者的灵魂"
Inst30Quest5_Folgequest = "有，远古之卵"
Inst30Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest 6 Alliance
Inst30Quest6 = "6. 探水棒"
Inst30Quest6_Level = "47"
Inst30Quest6_Attain = "40"
Inst30Quest6_Aim = "把探水棒交给加基森的首席工程师沙克斯·比格维兹。"
Inst30Quest6_Location = "比格维兹（塔纳利斯 - 加基森; "..YELLOW.."52,28 "..WHITE.."）"
Inst30Quest6_Note = "你可以从布莱中士那里得到探水棒。你可以在"..YELLOW.."[4]"..WHITE.."找到他。但要在神庙百人斩事件后后打败布莱中士，才能得到探水棒。"
Inst30Quest6_Prequest = "无"
Inst30Quest6_Folgequest = "无"
--
Inst30Quest6name1 = "石工兄弟会之戒"
Inst30Quest6name2 = "工程学协会头盔"

--Quest 7 Alliance
Inst30Quest7 = "7. 加兹瑞拉"
Inst30Quest7_Level = "50"
Inst30Quest7_Attain = "40"
Inst30Quest7_Aim = "把加兹瑞拉的鳞片交给闪光平原的维兹尔·铜栓。"
Inst30Quest7_Location = "维兹尔·铜栓（千针石林 - 闪光平原; "..YELLOW.."78,77 "..WHITE.."）"
Inst30Quest7_Note = "前导任务从科罗莫特·钢尺（铁炉堡 - 侏儒区; "..YELLOW.."68,46"..WHITE.."）得到。但这不是一个必要的任务。\n你可以在"..YELLOW.."[6]"..WHITE.."使用祖尔法拉克之槌敲锣召唤加兹瑞拉。\n槌来自守护者奇尔加（辛特兰 - 祖尔祭坛; "..YELLOW.."49,70"..WHITE.."）的神圣之槌并在辛萨罗祭坛"..YELLOW.."59,77"..WHITE.."上使用，才能在祖尔法拉克敲锣。"
Inst30Quest7_Prequest = "有，铜栓兄弟"
Inst30Quest7_Folgequest = "无"
Inst30Quest7PreQuest = "true"
--
Inst30Quest7name1 = "棍子上的胡萝卜"


--Quest 1 Horde
Inst30Quest1_HORDE = "1. 蜘蛛之神（系列任务）"
Inst30Quest1_HORDE_Level = "45"
Inst30Quest1_HORDE_Attain = "40"
Inst30Quest1_HORDE_Aim = "阅读塞卡石板，了解枯木巨魔的蜘蛛之神的名字，然后回到加德林大师那里。"
Inst30Quest1_HORDE_Location = "加德林大师（杜隆塔尔 - 森金村; "..YELLOW.."55,74 "..WHITE.."）"
Inst30Quest1_HORDE_Note = "此任务始于辛特兰巨魔村庄的毒液瓶任务。\n你会在"..YELLOW.."[2]"..WHITE.."发现石板。"
Inst30Quest1_HORDE_Prequest = "有，毒液瓶 -> 请教加德林大师"
Inst30Quest1_HORDE_Folgequest = "有，召唤沙德拉"
Inst30Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 1 Alliance)
Inst30Quest2_HORDE = "2. 巨魔调和剂"
Inst30Quest2_HORDE_Level = Inst30Quest1_Level
Inst30Quest2_HORDE_Attain = Inst30Quest1_Attain
Inst30Quest2_HORDE_Aim = Inst30Quest1_Aim
Inst30Quest2_HORDE_Location = Inst30Quest1_Location
Inst30Quest2_HORDE_Note = Inst30Quest1_Note
Inst30Quest2_HORDE_Prequest = Inst30Quest1_Prequest
Inst30Quest2_HORDE_Folgequest = Inst30Quest1_Folgequest
-- No Rewards for this quest

--Quest 3 Horde  (same as Quest 2 Alliance)
Inst30Quest3_HORDE = "3. 圣甲虫的壳"
Inst30Quest3_HORDE_Level = Inst30Quest2_Level
Inst30Quest3_HORDE_Attain = Inst30Quest2_Attain
Inst30Quest3_HORDE_Aim = Inst30Quest2_Aim
Inst30Quest3_HORDE_Location = Inst30Quest2_Location
Inst30Quest3_HORDE_Note = Inst30Quest2_Note
Inst30Quest3_HORDE_Prequest = Inst30Quest2_Prequest
Inst30Quest3_HORDE_Folgequest = Inst30Quest2_Folgequest
Inst30Quest3PreQuest_HORDE = Inst30Quest2PreQuest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 3 Alliance - no prequest)
Inst30Quest4_HORDE = "4. 深渊皇冠"
Inst30Quest4_HORDE_Level = Inst30Quest3_Level
Inst30Quest4_HORDE_Attain = Inst30Quest3_Attain
Inst30Quest4_HORDE_Aim = Inst30Quest3_Aim
Inst30Quest4_HORDE_Location = Inst30Quest3_Location
Inst30Quest4_HORDE_Note = "水占师维蕾萨掉落深渊皇冠。你可以在"..YELLOW.."[6]"..WHITE.."找到她。"
Inst30Quest4_HORDE_Prequest = "无"
Inst30Quest4_HORDE_Folgequest = Inst30Quest3_Folgequest
--
Inst30Quest4name1_HORDE = Inst30Quest3name1
Inst30Quest4name2_HORDE = Inst30Quest3name2

--Quest 5 Horde  (same as Quest 5 Alliance)
Inst30Quest5_HORDE = Inst30Quest5
Inst30Quest5_HORDE_Level = Inst30Quest5_Level
Inst30Quest5_HORDE_Attain = Inst30Quest5_Attain
Inst30Quest5_HORDE_Aim = Inst30Quest5_Aim
Inst30Quest5_HORDE_Location = Inst30Quest5_Location
Inst30Quest5_HORDE_Note = Inst30Quest5_Note
Inst30Quest5_HORDE_Prequest = Inst30Quest5_Prequest
Inst30Quest5_HORDE_Folgequest = Inst30Quest5_Folgequest
Inst30Quest5PreQuest_HORDE = Inst30Quest5Prequest
-- No Rewards for this quest

--Quest 6 Horde  (same as Quest 6 Alliance)
Inst30Quest6_HORDE = Inst30Quest6
Inst30Quest6_HORDE_Level = Inst30Quest6_Level
Inst30Quest6_HORDE_Attain = Inst30Quest6_Attain
Inst30Quest6_HORDE_Aim = Inst30Quest6_Aim
Inst30Quest6_HORDE_Location = Inst30Quest6_Location
Inst30Quest6_HORDE_Note = Inst30Quest6_Note
Inst30Quest6_HORDE_Prequest = Inst30Quest6_Prequest
Inst30Quest6_HORDE_Folgequest = Inst30Quest6_Folgequest
--
Inst30Quest6name1_HORDE = Inst30Quest6name1
Inst30Quest6name2_HORDE = Inst30Quest6name2

--Quest 7 Horde  (same as Quest 7 Alliance - no prequest)
Inst30Quest7_HORDE = Inst30Quest7
Inst30Quest7_HORDE_Level = Inst30Quest7_Level
Inst30Quest7_HORDE_Attain = Inst30Quest7_Attain
Inst30Quest7_HORDE_Aim = Inst30Quest7_Aim
Inst30Quest7_HORDE_Location = Inst30Quest7_Location
Inst30Quest7_HORDE_Note = "你可以在"..YELLOW.."[6]"..WHITE.."使用祖尔法拉克之槌敲锣召唤加兹瑞拉。\n槌来自守护者奇尔加（辛特兰 - 祖尔祭坛; "..YELLOW.."49,70"..WHITE.."）的神圣之槌并在辛萨罗祭坛"..YELLOW.."59,77"..WHITE.."上使用，才能在祖尔法拉克敲锣。"
Inst30Quest7_HORDE_Prequest = "无"
Inst30Quest7_HORDE_Folgequest = Inst30Quest7_Folgequest
--
Inst30Quest7name1_HORDE = Inst30Quest7name1



--------------- INST31 - Zul'Gurub (ZG) ---------------

Inst31Story = {
  [1] = "早在几千年前，强大的古拉巴什帝国陷入了一场规模浩大的内战，一群极具影响力的被称作阿塔莱的巨魔祭司，信奉着一个名叫夺灵者·哈卡的嗜血的邪神。这些阿塔莱祭司虽然已被击败并被处以永久的流放，但伟大的巨魔帝国就这样崩塌了。被流放的祭司们来到了北方的悲伤沼泽。在这里，他们为哈卡神建造了一座大神庙——阿塔哈卡神庙，并继续在那里为他们的主人重返物质世界而作准备……",
  [2] = "终于，阿塔莱祭司发现，哈卡的物质形态只有在古老的古拉巴什帝国的首都——祖尔格拉布，才能召唤出来。不幸的是，这些祭司们最近真的成功召唤出哈卡——传闻证实可怕的夺灵者真的出现在古拉巴什废墟的中心。\n \n为了镇压血神，所有的巨魔都联合起来，派出了一支由高阶牧师组成的小队深入这座古老的城市。队中的每个牧师都是一位远古之神的强大战士，他们分别代表着蝙蝠、豹、老虎、蜘蛛和蛇的力量，但是尽管如此，强大的哈卡仍然轻易地击败了他们。现在这些勇士和他们的远古之神全都臣服于夺灵者的力量。如果有任何冒险者想进入废墟禁地挑战强大的血神哈卡，他们就必须先击败这些高阶牧师。",
  
};
Inst31Caption = "祖尔格拉布"
Inst31QAA = "4 个任务"
Inst31QAH = "4 个任务"

--Quest 1 Alliance
Inst31Quest1 = "1. 祭司的头颅"
Inst31Quest1_Level = "60"
Inst31Quest1_Attain = "58"
Inst31Quest1_Aim = "将神圣之索穿上5颗导魔师的头颅，然后把这一串头颅交给尤亚姆巴岛上的伊克萨尔。"
Inst31Quest1_Location = "伊克萨尔（荆棘谷 - 尤亚姆巴岛; "..YELLOW.."15,15"..WHITE.."）"
Inst31Quest1_Note = "请你确认每次都搜索了高阶祭司的尸体。"
Inst31Quest1_Prequest = "无"
Inst31Quest1_Folgequest = "无"
--
Inst31Quest1name1 = "扭曲头颅腰带"
Inst31Quest1name2 = "皱缩头颅腰带"
Inst31Quest1name3 = "防腐头颅腰带"
Inst31Quest1name4 = "细小头颅腰带"

--Quest 2 Alliance
Inst31Quest2 = "2. 哈卡之心"
Inst31Quest2_Level = "60"
Inst31Quest2_Attain = "58"
Inst31Quest2_Aim = "把哈卡之心交给尤亚姆巴岛上的莫托尔。"
Inst31Quest2_Location = "哈卡之心（哈卡掉落; "..YELLOW.."[11]"..WHITE.."）"
Inst31Quest2_Note = "莫托尔（荆棘谷 - 尤亚姆巴岛; "..YELLOW.."15,15"..WHITE.."）"
Inst31Quest2_Prequest = "无"
Inst31Quest2_Folgequest = "无"
--
Inst31Quest2name1 = "赞达拉英雄徽记"
Inst31Quest2name2 = "赞达拉英雄护符"
Inst31Quest2name3 = "赞达拉英雄勋章"

--Quest 3 Alliance
Inst31Quest3 = "3. 纳特的卷尺"
Inst31Quest3_Level = "60"
Inst31Quest3_Attain = "59"
Inst31Quest3_Aim = "将纳特的卷尺交给尘泥沼泽的纳特·帕格。"
Inst31Quest3_Location = "破碎的工具箱（祖尔格拉布 - 隔水哈卡之岛的东北的岸边。）"
Inst31Quest3_Note = "找到纳特·帕格（尘泥沼泽; "..YELLOW.."59,60"..WHITE.."）。 完成任务后你可以从他那里购买哈卡之岛臭泥鱼诱饵，可以在祖尔格拉布召唤隐藏的加兹兰卡。"
Inst31Quest3_Prequest = "无"
Inst31Quest3_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Alliance
Inst31Quest4 = "4. 完美的毒药"
Inst31Quest4_Level = "60"
Inst31Quest4_Attain = "60"
Inst31Quest4_Aim = "塞纳里奥要塞的德尔克·雷木让你把温诺希斯的毒囊和库林纳克斯的毒囊交给他。"
Inst31Quest4_Location = "德尔克·雷木（希利苏斯 - 塞纳里奥要塞; "..YELLOW.."52,39"..WHITE.."）"
Inst31Quest4_Note = "高阶祭司温诺希斯"..YELLOW.."祖尔格拉布"..WHITE.."掉落温诺希斯的毒囊。库林纳克斯"..YELLOW.."安其拉废墟"..WHITE..""..YELLOW.."[1]"..WHITE.."掉落库林纳克斯的毒囊。"
Inst31Quest4_Prequest = "无"
Inst31Quest4_Folgequest = "无"
--
Inst31Quest4name1 = "拉文霍德切割者"
Inst31Quest4name2 = "开闸刀"
Inst31Quest4name3 = "雷木之刺"
Inst31Quest4name4 = "康恩之怒"
Inst31Quest4name5 = "法拉德的装填器"
Inst31Quest4name6 = "西蒙尼的耕种用锤"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst31Quest1_HORDE = Inst31Quest1
Inst31Quest1_HORDE_Level = Inst31Quest1_Level
Inst31Quest1_HORDE_Attain = Inst31Quest1_Attain
Inst31Quest1_HORDE_Aim = Inst31Quest1_Aim
Inst31Quest1_HORDE_Location = Inst31Quest1_Location
Inst31Quest1_HORDE_Note = Inst31Quest1_Note
Inst31Quest1_HORDE_Prequest = Inst31Quest1_Prequest
Inst31Quest1_HORDE_Folgequest = Inst31Quest1_Folgequest
--
Inst31Quest1name1_HORDE = Inst31Quest1name1
Inst31Quest1name2_HORDE = Inst31Quest1name2
Inst31Quest1name3_HORDE = Inst31Quest1name3
Inst31Quest1name4_HORDE = Inst31Quest1name4

--Quest 2 Horde  (same as Quest 2 Alliance)
Inst31Quest2_HORDE = Inst31Quest2
Inst31Quest2_HORDE_Level = Inst31Quest2_Level
Inst31Quest2_HORDE_Attain = Inst31Quest2_Attain
Inst31Quest2_HORDE_Aim = Inst31Quest2_Aim
Inst31Quest2_HORDE_Location = Inst31Quest2_Location
Inst31Quest2_HORDE_Note = Inst31Quest2_Note
Inst31Quest2_HORDE_Prequest = Inst31Quest2_Prequest
Inst31Quest2_HORDE_Folgequest = Inst31Quest2_Folgequest
--
Inst31Quest2name1_HORDE = Inst31Quest2name1
Inst31Quest2name2_HORDE = Inst31Quest2name2
Inst31Quest2name3_HORDE = Inst31Quest2name3

--Quest 3 Horde  (same as Quest 3 Alliance)
Inst31Quest3_HORDE = Inst31Quest3
Inst31Quest3_HORDE_Level = Inst31Quest3_Level
Inst31Quest3_HORDE_Attain = Inst31Quest3_Attain
Inst31Quest3_HORDE_Aim = Inst31Quest3_Aim
Inst31Quest3_HORDE_Location = Inst31Quest3_Location
Inst31Quest3_HORDE_Note = Inst31Quest3_Note
Inst31Quest3_HORDE_Prequest = Inst31Quest3_Prequest
Inst31Quest3_HORDE_Folgequest = Inst31Quest3_Folgequest
-- No Rewards for this quest

--Quest 4 Horde  (same as Quest 4 Alliance)
Inst31Quest4_HORDE = Inst31Quest4
Inst31Quest4_HORDE_Level = Inst31Quest4_Level
Inst31Quest4_HORDE_Attain = Inst31Quest4_Attain
Inst31Quest4_HORDE_Aim = Inst31Quest4_Aim
Inst31Quest4_HORDE_Location = Inst31Quest4_Location
Inst31Quest4_HORDE_Note = Inst31Quest4_Note
Inst31Quest4_HORDE_Prequest = Inst31Quest4_Prequest
Inst31Quest4_HORDE_Folgequest = Inst31Quest4_Folgequest
--
Inst31Quest4name1_HORDE = Inst31Quest4name1
Inst31Quest4name2_HORDE = Inst31Quest4name2
Inst31Quest4name3_HORDE = Inst31Quest4name3
Inst31Quest4name4_HORDE = Inst31Quest4name4
Inst31Quest4name5_HORDE = Inst31Quest4name5
Inst31Quest4name6_HORDE = Inst31Quest4name6



--------------- INST32 - Gnomeregan (Gnomer) ---------------

Inst32Story = "位于丹莫洛的科技奇迹城市诺莫瑞根世代以来都是侏儒的主城。最近，一群邪恶的变异食鄂怪侵入了包括侏儒主城在内的多处丹莫洛地区。为了做出殊死一搏来干掉入侵的食腭怪，大工匠梅卡托克命令打开城市中的紧急辐射水箱。侏儒在等待那些食腭怪死亡或者逃跑的同时也在寻找躲避辐射的方法。不幸的是，虽然食腭怪在经过辐射之后感染了毒性——但是它们的攻击没有停止，也没有丝毫的减弱。那些没有被辐射杀死的侏儒被迫逃离，他们在附近的矮人城市铁炉堡找到了安身之处。大工匠梅卡托克组建了一个智囊团来商议重新夺回他们挚爱的城市的计划。传说大工匠梅卡托克曾经最信任的顾问，麦克尼尔·瑟玛普拉格被判了他的人民并纵容了这次入侵的发生。现在，他的心智，麦克尼尔·瑟玛普拉格还留在诺莫瑞根中——他在继续筹划着自己黑暗的计划并成为这座城市新的科技领主。"
Inst32Caption = "诺莫瑞根"
Inst32QAA = "10 个任务"
Inst32QAH = "5 个任务"

--Quest 1 Alliance
Inst32Quest1 = "1. 拯救尖端机器人！"
Inst32Quest1_Level = "26"
Inst32Quest1_Attain = "20"
Inst32Quest1_Aim = "将尖端机器人的存储器核心交给铁炉堡的工匠大师欧沃斯巴克。"
Inst32Quest1_Location = "工匠大师欧沃斯巴克（铁炉堡 - 侏儒区; "..YELLOW.."69,50 "..WHITE.."）"
Inst32Quest1_Note = "你可以在萨尔努修士（暴风城 - 教堂广场; "..YELLOW.."40,30"..WHITE.."）那儿接到此任务的前导任务。\n在你进入副本之前，后门附近"..YELLOW.."副本入口地图[4]"..WHITE.."，可以找到尖端机器人。"
Inst32Quest1_Prequest = "有，工匠大师欧沃斯巴克"
Inst32Quest1_Folgequest = "无"
Inst32Quest1PreQuest = "true"
-- No Rewards for this quest

--Quest2 Alliance
Inst32Quest2 = "2. 诺恩"
Inst32Quest2_Level = "27"
Inst32Quest2_Attain = "20"
Inst32Quest2_Aim = "用空铅瓶对着辐射入侵者或者辐射抢劫者，从它们身上收集放射尘。瓶子装满之后，把它交给卡拉诺斯的奥齐·电环。"
Inst32Quest2_Location = "奥齐·电环（丹莫罗 - 卡拉诺斯; "..YELLOW.."45,49 "..WHITE.."）"
Inst32Quest2_Note = "你可以在诺恩（铁炉堡 - 侏儒区; "..YELLOW.."69,50"..WHITE.."）那儿得到此任务的前导任务。\n要得到辐射尘，你必须对"..RED.."活的"..WHITE.."辐射入侵者或者辐射抢劫者使用空铅瓶。"
Inst32Quest2_Prequest = "有，灾难之后"
Inst32Quest2_Folgequest = "有，更多的辐射尘"
Inst32Quest2PreQuest = "true"
-- No Rewards for this quest

--Quest3 Alliance
Inst32Quest3 = "3. 更多的辐射尘！"
Inst32Quest3_Level = "30"
Inst32Quest3_Attain = "23"
Inst32Quest3_Aim = "到诺莫瑞根去收集高强度辐射尘。要多加小心，这种辐射尘非常不稳定，很快就会分解。奥齐要求你把沉重的铅瓶也交给他。"
Inst32Quest3_Location = "奥齐·电环（丹莫罗 - 卡拉诺斯; "..YELLOW.."45,49 "..WHITE.."）"
Inst32Quest3_Note = "要得到辐射尘，你必须对"..RED.."活的"..WHITE.."辐射泥浆怪，辐射潜伏者，辐射水元素使用沉重的铅瓶。"
Inst32Quest3_Prequest = "有，诺恩"
Inst32Quest3_Folgequest = "无"
Inst32Quest3FQuest = "true"
-- No Rewards for this quest

--Quest4 Alliance
Inst32Quest4 = "4. 陀螺式挖掘机"
Inst32Quest4_Level = "30"
Inst32Quest4_Attain = "20"
Inst32Quest4_Aim = "收集24副机械内胆，把它们交给暴风城的舒尼。"
Inst32Quest4_Location = "沉默的舒尼（暴风城 - 矮人区; "..YELLOW.."55,12 "..WHITE.."）"
Inst32Quest4_Note = "每个机器人都掉落内胆。"
Inst32Quest4_Prequest = "无"
Inst32Quest4_Folgequest = "无"
--
Inst32Quest4name1 = "舒尼的扳手"
Inst32Quest4name2 = "欺诈手套"

--Quest5 Alliance
Inst32Quest5 = "5. 基础模组"
Inst32Quest5_Level = "30"
Inst32Quest5_Attain = "24"
Inst32Quest5_Aim = "收集12个基础模组，把它们交给铁炉堡的科劳莫特·钢尺。"
Inst32Quest5_Location = "科劳莫特·钢尺（铁炉堡 - 侏儒区; "..YELLOW.."68,46 "..WHITE.."）"
Inst32Quest5_Note = "你可以在玛希尔（达纳苏斯 - 战士区; "..YELLOW.."59,45"..WHITE.."）那儿得到此任务的前导任务。\n每个诺莫瑞根的敌人都可能掉落基础模组。"
Inst32Quest5_Prequest = "有，帮助科劳莫特"
Inst32Quest5_Folgequest = "无"
Inst32Quest5PreQuest = "true"
-- No Rewards for this quest

--Quest6 Alliance
Inst32Quest6 = "6. 抢救数据"
Inst32Quest6_Level = "30"
Inst32Quest6_Attain = "25"
Inst32Quest6_Aim = "将彩色穿孔卡片交给铁炉堡的大机械师卡斯派普。"
Inst32Quest6_Location = "大机械师卡斯派普（铁炉堡 - 侏儒区; "..YELLOW.."69,48 "..WHITE.."）"
Inst32Quest6_Note = "你可以在加克希姆·尘链（石爪山脉; "..YELLOW.."59,67"..WHITE.."）那儿得到此任务的前导任务。但这不是一个必要的任务。\n白色卡片随机掉落。你可以在进入副本之前紧靠后门入口处"..YELLOW.."副本入口地图[3]"..WHITE.."找到第一终端。第二个在"..YELLOW.."[3]"..WHITE.."，第三个在"..YELLOW.."[5]"..WHITE.."，而第四个在"..YELLOW.."[6]"..WHITE.."。"
Inst32Quest6_Prequest = "有，卡斯派普的任务"
Inst32Quest6_Folgequest = "无"
Inst32Quest6PreQuest = "true"
--
Inst32Quest6name1 = "修理工的斗篷"
Inst32Quest6name2 = "蒸汽锤"

--Quest7 Alliance
Inst32Quest7 = "7. 一团混乱"
Inst32Quest7_Level = "30"
Inst32Quest7_Attain = "22"
Inst32Quest7_Aim = "将克努比护送到出口，然后向藏宝海湾的斯库提汇报。"
Inst32Quest7_Location = "克努比（诺莫瑞根 "..YELLOW.."[3]"..WHITE.."）"
Inst32Quest7_Note = "护送任务！你可以在（荆棘谷 - 藏宝海湾; "..YELLOW.."27,77"..WHITE.."）找到斯库提。"
Inst32Quest7_Prequest = "无"
Inst32Quest7_Folgequest = "无"
--
Inst32Quest7name1 = "焊接护腕"
Inst32Quest7name2 = "精灵之翼"

--Quest8 Alliance
Inst32Quest8 = "8. 大叛徒"
Inst32Quest8_Level = "35"
Inst32Quest8_Attain = "25"
Inst32Quest8_Aim = "到诺莫瑞根去杀掉麦克尼尔·瑟玛普拉格。完成任务之后向大工匠梅卡托克报告。"
Inst32Quest8_Location = "大工匠梅卡托克（铁炉堡 - 侏儒区; "..YELLOW.."68,48"..WHITE.."）"
Inst32Quest8_Note = "你可以在"..YELLOW.."[8]"..WHITE.."找到麦克尼尔·瑟玛普拉格。他是诺莫瑞根最后一个 Boss。\n在战斗中你必须按下它旁边的按钮阻止他放炸弹。"
Inst32Quest8_Prequest = "无"
Inst32Quest8_Folgequest = "无"
--
Inst32Quest8name1 = "公民长袍"
Inst32Quest8name2 = "旅行皮裤"
Inst32Quest8name3 = "双链护腿 "

--Quest 9 Alliance
Inst32Quest9 = "9. 脏兮兮的戒指"
Inst32Quest9_Level = "34"
Inst32Quest9_Attain = "28"
Inst32Quest9_Aim = "想方法把脏兮兮的戒指弄干净。"
Inst32Quest9_Location = "脏兮兮的戒指（诺莫瑞根随机掉落）"
Inst32Quest9_Note = "这个戒指可以在清洁器5200型中清洁，位置在"..YELLOW.."[2]"..WHITE.."。"
Inst32Quest9_Prequest = "无"
Inst32Quest9_Folgequest = "有，戒指归来"
-- No Rewards for this quest

--Quest 10 Alliance
Inst32Quest10 = "10. 戒指归来"
Inst32Quest10_Level = "34"
Inst32Quest10_Attain = "28"
Inst32Quest10_Aim = "你要么自己留着这枚戒指，要么就按照戒指内侧刻着的名字找到它的主人。"
Inst32Quest10_Location = "闪亮的金戒指（从脏兮兮的戒指清洁后获得）"
Inst32Quest10_Note = "把它交给塔瓦斯德·基瑟尔（铁炉堡 - 秘法区; "..YELLOW.."36,3"..WHITE.."）。奖励的戒指为随机属性。"
Inst32Quest10_Prequest = "有，脏兮兮的戒指"
Inst32Quest10_Folgequest = "有，侏儒的手艺"
Inst32Quest10FQuest = "true"
--
Inst32Quest10name1 = "闪亮的金戒指"


--Quest 1 Horde
Inst32Quest1_HORDE = "1. 出发！诺莫瑞根！"
Inst32Quest1_HORDE_Level = "35"
Inst32Quest1_HORDE_Attain = "25"
Inst32Quest1_HORDE_Aim = "等斯库提调整好地精传送器。"
Inst32Quest1_HORDE_Location = "斯库提（荆棘谷 - 藏宝海湾; "..YELLOW.."27,77 "..WHITE.."）"
Inst32Quest1_HORDE_Note = "你可以在索维克（奥格瑞玛 - 荣誉谷; "..YELLOW.."75,25"..WHITE.."）那儿得到此任务的前导任务。\n当你完成这个任务，你可以使用藏宝海湾的传送器。"
Inst32Quest1_HORDE_Prequest = "有，主工程师斯库提"
Inst32Quest1_HORDE_Folgequest = "无"
Inst32Quest1PreQuest_HORDE = "true"
-- No Rewards for this quest

--Quest 2 Horde  (same as Quest 7 Alliance)
Inst32Quest2_HORDE = "2. 一团混乱"
Inst32Quest2_HORDE_Level = Inst32Quest7_Level
Inst32Quest2_HORDE_Attain = Inst32Quest7_Attain
Inst32Quest2_HORDE_Aim = Inst32Quest7_Aim
Inst32Quest2_HORDE_Location = Inst32Quest7_Location
Inst32Quest2_HORDE_Note = Inst32Quest7_Note
Inst32Quest2_HORDE_Prequest = Inst32Quest7_Prequest
Inst32Quest2_HORDE_Folgequest = Inst32Quest7_Folgequest
--
Inst32Quest2name1_HORDE = Inst32Quest7name1
Inst32Quest2name2_HORDE = Inst32Quest7name2

--Quest3 Horde
Inst32Quest3_HORDE = "3. 设备之战"
Inst32Quest3_HORDE_Level = "35"
Inst32Quest3_HORDE_Attain = "25"
Inst32Quest3_HORDE_Aim = "从诺莫瑞根拿到钻探设备蓝图和麦克尼尔的保险箱密码，把它们交给奥格瑞玛的诺格。"
Inst32Quest3_HORDE_Location = "诺格（奥格瑞玛 - 荣誉谷; "..YELLOW.."75,25 "..WHITE.."）"
Inst32Quest3_HORDE_Note = "你可以在"..YELLOW.."[8]"..WHITE.."发现麦克尼尔·瑟玛普拉格。他是诺莫瑞根最后一个 Boss。\n在战斗中你必须按下它旁边的按钮阻止他放炸弹。"
Inst32Quest3_HORDE_Prequest = "无"
Inst32Quest3_HORDE_Folgequest = "无"
--
Inst32Quest3name1_HORDE = "公民长袍"
Inst32Quest3name2_HORDE = "旅行皮裤"
Inst32Quest3name3_HORDE = "双链护腿"

--Quest 4 Horde  (same as Quest 9 Alliance)
Inst32Quest4_HORDE = "4. 脏兮兮的戒指"
Inst32Quest4_HORDE_Level = Inst32Quest9_Level
Inst32Quest4_HORDE_Attain = Inst32Quest9_Attain
Inst32Quest4_HORDE_Aim = Inst32Quest9_Aim
Inst32Quest4_HORDE_Location = Inst32Quest9_Location
Inst32Quest4_HORDE_Note = Inst32Quest9_Note
Inst32Quest4_HORDE_Prequest = Inst32Quest9_Prequest
Inst32Quest4_HORDE_Folgequest = Inst32Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde
Inst32Quest5_HORDE = "5. 戒指归来"
Inst32Quest5_HORDE_Level = "34"
Inst32Quest5_HORDE_Attain = "28"
Inst32Quest5_HORDE_Aim = "你要么自己留着这枚戒指，要么就按照戒指内侧刻着的名字找到它的主人。"
Inst32Quest5_HORDE_Location = "闪亮的金戒指（从脏兮兮的戒指清洁后获得）"
Inst32Quest5_HORDE_Note = "把戒指交给诺格（奥格瑞玛 - 荣誉谷; "..YELLOW.."75,25"..WHITE.."）。奖励的戒指为随机属性。"
Inst32Quest5_HORDE_Prequest = "有，脏兮兮的戒指"
Inst32Quest5_HORDE_Folgequest = "无"
Inst32Quest5FQuest = "true"
--
Inst32Quest5name1_HORDE = "闪亮的金戒指"



--------------- INST33 - Dragons of Nightmare ---------------

Inst33Story = {
  [1] = "世界之树陷入了一场骚乱。僻静的灰谷、暮色森林、菲拉斯以及辛特兰面临着新的威胁。绿龙军团的四条守护巨龙从翡翠梦境来到了艾泽拉斯世界，这些曾经忠心耿耿的守护者，现在却为世界带来了毁灭和死亡的气息。拿起武器，跟你的伙伴一同进入那些神秘的森林——只有你能从巨龙手中拯救艾泽拉斯。",
  [2] = "翡翠梦境的守护巨龙伊瑟拉统治着神秘的绿龙军团。她居住在翡翠梦境中，支配着世界万物的演化方向。她是自然和梦幻的守护者，她统治的绿龙军团负责保护世界之树，只有德鲁伊才能通过世界之树进入翡翠梦境。\n近来，在翡翠梦境中的某种新的黑暗力量的驱使下，伊瑟拉最忠诚的守护者们穿越世界之树，来到了艾泽拉斯世界，妄图使世界再度陷入疯狂和恐慌。即使是最强大的冒险者也应该对这些巨龙退避三舍，否则他就将为此付出惨重的代价。",
  [3] = "受翡翠梦境黑暗力量的影响，莱索恩的龙鳞失去了光泽，他拥有了汲取敌人幻象的力量。这些幻象可以赋予巨龙治疗的能力。毫无疑问，莱索恩被认为是伊瑟拉手下最强大的守护者。",
  [4] = "在翡翠梦境的某种神秘的黑暗力量诱惑下，高贵的艾莫莉丝成为了一头腐烂、患病的怪物。少数侥幸生还者称，他们死去的伙伴的尸体上长出了腐烂的蘑菇，那情形异常恐怖。艾莫莉丝是伊瑟拉统治的绿龙军团中最可怕的巨龙。",
  [5] = "泰拉尔或许是伊瑟拉的守护者中受黑暗力量影响最深的巨龙。翡翠梦境的黑暗力量彻底摧毁了泰拉尔的心智和肉体。他成为拥有分身术的巨龙幽灵，各个分身都具备强大的魔法破坏力。泰拉尔是个狡猾无情的敌人，他妄图使艾泽拉斯世界的所有生物都陷入疯狂。",
  [6] = "伊瑟拉最忠诚的守护者伊森德雷如今已面目全非，她在艾泽拉斯大陆上散播着恐慌和混乱。她先前拥有的治疗能力被黑暗魔法所取代，她能释放烟状的闪电波并召唤恶魔德鲁伊。伊森德雷和她的龙族拥有催眠技能，可以使敌人陷入最可怕的噩梦。",
};
Inst33Caption = "梦魇之龙"
Inst33Caption2 = "伊瑟拉和绿龙军团"
Inst33Caption3 = "莱索恩"
Inst33Caption4 = "艾莫莉丝"
Inst33Caption5 = "泰拉尔"
Inst33Caption6 = "伊森德雷"
Inst33QAA = "1 个任务"
Inst33QAH = "1 个任务"

--Quest 1 Alliance
Inst33Quest1 = "1. 梦魇的缠绕"
Inst33Quest1_Level = "60"
Inst33Quest1_Attain = "60"
Inst33Quest1_Aim = "寻找能解读梦魇包裹的物品中所隐藏的信息的人."
Inst33Quest1_Location = "梦魇包裹的物品 (掉落自 泰拉尔, 伊森德雷, 艾莫莉丝 或 莱索恩)"
Inst33Quest1_Note = "物品交给 守护者雷姆洛斯  (月光林地; "..YELLOW.."36,41"..WHITE..")."
Inst33Quest1_Prequest = "无"
Inst33Quest1_Folgequest = "有,唤醒传说"
--
Inst33Quest1name1 = "Malfurion's Signet Ring"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst33Quest1_HORDE = Inst33Quest1
Inst33Quest1_HORDE_Level = Inst33Quest1_Level
Inst33Quest1_HORDE_Attain = Inst33Quest1_Attain
Inst33Quest1_HORDE_Aim = Inst33Quest1_Aim
Inst33Quest1_HORDE_Location = Inst33Quest1_Location
Inst33Quest1_HORDE_Note = Inst33Quest1_Note
Inst33Quest1_HORDE_Prequest = Inst33Quest1_Prequest
Inst33Quest1_HORDE_Folgequest = Inst33Quest1_Folgequest
--
Inst33Quest1name1_HORDE = Inst33Quest1name1


--------------- INST34 - Azuregos ---------------

Inst34Story = "在世界大分裂之前，暗夜精灵之城埃达拉斯在如今被称作艾萨拉的土地上可说是非常繁盛。据说很多古老和强大的高等精灵神器，可能就藏在强极一时的堡垒里。经历了无数世代，蓝龙军团全力保护神器与魔法传说，确保它们不落入凡人手中。蓝龙，艾索雷葛斯的出现，似乎暗示着那些具有极重要意义的物品，像是预言中的永恒之瓶，或许就能在艾萨拉的荒野里找到。无论艾索雷葛斯在寻找什么，可以肯定的是：他会誓死保卫艾萨拉的魔法宝藏。"
Inst34Caption = "艾索雷葛斯"
Inst34QAA = "1 个任务"
Inst34QAH = "1 个任务"

--Quest 1 Alliance
Inst34Quest1 = "1. 龙筋箭袋 (猎人史诗任务)"
Inst34Quest1_Level = "60"
Inst34Quest1_Attain = "60"
Inst34Quest1_Aim = "费伍德森林的古树哈斯塔特要求你带回一块成年蓝龙的肌腱."
Inst34Quest1_Location = "古树哈斯塔特 (费伍德森林 - 铁木树林; "..YELLOW.."48,24"..WHITE..")"
Inst34Quest1_Note = "杀死艾索雷葛斯得到蓝龙肉，它在 艾萨拉 "..YELLOW.."[1]"..WHITE.."."
Inst34Quest1_Prequest = "有，远古石叶 ("..YELLOW.."熔火之心"..WHITE..")"
Inst34Quest1_Folgequest = "无"
Inst34Quest1PreQuest = "true"
--
Inst34Quest1name1 = "Ancient Sinew Wrapped Lamina"


--Quest 1 Horde  (same as Quest 1 Alliance)
Inst34Quest1_HORDE = Inst34Quest1
Inst34Quest1_HORDE_Level = Inst34Quest1_Level
Inst34Quest1_HORDE_Attain = Inst34Quest1_Attain
Inst34Quest1_HORDE_Aim = Inst34Quest1_Aim
Inst34Quest1_HORDE_Location = Inst34Quest1_Location
Inst34Quest1_HORDE_Note = Inst34Quest1_Note
Inst34Quest1_HORDE_Prequest = Inst34Quest1_Prequest
Inst34Quest1_HORDE_Folgequest = Inst34Quest1_Folgequest
Inst34Quest1PreQuest_HORDE = Inst34Quest1PreQuest
--
Inst34Quest1name1_HORDE = Inst34Quest1name1


--------------- INST35 - Lord Kazzak ---------------



---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------

--------------- INST36 - Alterac Valley (AV) ---------------

Inst36Story = "雷矛远征军已经在奥特兰克山谷中安营扎寨，想要研究这里的资源和远古遗物。尽管他们来此的目的并不是为了挑衅，但是矮人们却与居住在山谷南部的霜狼氏族发生了激烈的冲突。霜狼氏族由此发誓要将入侵者赶出他们的家园. "
Inst36Caption = "奥特兰克山谷"
Inst36QAA = "18 个任务"
Inst36QAH = "18 个任务"

--Quest 1 Alliance
Inst36Quest1 = "1. 战斗的召唤：奥特兰克山谷 (战场日常)"
Inst36Quest1_Level = "51"
Inst36Quest1_Attain = "51"
Inst36Quest1_Aim = "在奥特兰克山谷战场中获得一场胜利，然后向任意联盟主城或沙塔斯城中的联盟准将复命."
Inst36Quest1_Location = "联盟准将:\n   沙塔斯城：贫民窟 "..YELLOW.."67,34"..WHITE.."\n   暴风城：暴风要塞 - "..YELLOW.."83,14"..WHITE.."\n   铁炉堡：武器大厅 - "..YELLOW.."70,91"..WHITE.."\n   达纳苏斯：战士区 - "..YELLOW.."59,36"..WHITE.."\n   埃索达：圣光穹顶 - "..YELLOW.."25,55"..WHITE.." "
Inst36Quest1_Note = "战场日常任务."
Inst36Quest1_Prequest = "无"
Inst36Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst36Quest2 = "2. 国王的命令"
Inst36Quest2_Level = "60"
Inst36Quest2_Attain = "51"
Inst36Quest2_Aim = "到希尔斯布莱德丘陵地区的奥特兰克山谷去。到那里之后，和哈格丁中尉谈谈."
Inst36Quest2_Location = "洛泰姆中尉 (铁炉堡; "..YELLOW.."30,62"..WHITE..")"
Inst36Quest2_Note = "哈格丁中尉 在(奥特兰克山脉; "..YELLOW.."39,81"..WHITE..")."
Inst36Quest2_Prequest = "无"
Inst36Quest2_Folgequest = "有，实验场"
-- No Rewards for this quest

--Quest 3 Alliance
Inst36Quest3 = "3. 实验场"
Inst36Quest3_Level = "60"
Inst36Quest3_Attain = "51"
Inst36Quest3_Aim = "到主基地东南边的冰翼洞穴中去找到雷矛军旗，然后把它交给哈格丁中尉."
Inst36Quest3_Location = "哈格丁中尉 (奥特兰克山谷; "..YELLOW.."39,81"..WHITE..")"
Inst36Quest3_Note = "雷矛军旗在 奥特兰克山谷北部地图 冰翼洞穴 "..YELLOW.."[11]"..WHITE.." . 当你声望提升到一个新的等级后，你可以与同一个NPC交谈领取更高级的雷矛徽章."
Inst36Quest3_Prequest = "无"
Inst36Quest3_Folgequest = "无"
Inst36Quest3FQuest = "true"
--
Inst36Quest3name1 = "Stormpike Insignia Rank 1"
Inst36Quest3name2 = "The Frostwolf Artichoke"

--Quest 4 Alliance
Inst36Quest4 = "4. 奥特兰克山谷的战斗"
Inst36Quest4_Level = "60"
Inst36Quest4_Attain = "51"
Inst36Quest4_Aim = "进入奥特兰克山谷，击败部落将军德雷克塔尔。然后回到勘查员塔雷·石镐那里."
Inst36Quest4_Location = "勘查员塔雷·石镐 (奥特兰克山脉; "..YELLOW.."41,78"..WHITE..") and\n(奥特兰克山谷 - 北部地图; "..YELLOW.."[B]"..WHITE..")"
Inst36Quest4_Note = "德雷克塔尔 在 (奥特兰克山谷 - 南部地图; "..YELLOW.."[B]"..WHITE.."). 完成这个任务并不一定需要杀死德雷克塔尔，只要赢得奥特兰克山谷的战斗即可."
Inst36Quest4_Prequest = "无"
Inst36Quest4_Folgequest = "有，雷矛英雄"
--
Inst36Quest4name1 = "Bloodseeker"
Inst36Quest4name2 = "Ice Barbed Spear"
Inst36Quest4name3 = "Wand of Biting Cold"
Inst36Quest4name4 = "Cold Forged Hammer"

--Quest 5 Alliance
Inst36Quest5 = "5. 军需官"
Inst36Quest5_Level = "60"
Inst36Quest5_Attain = "51"
Inst36Quest5_Aim = "与雷矛军需官谈一谈."
Inst36Quest5_Location = "巡山人布比罗 (奥特兰克山谷 - 北部地图; "..YELLOW.."[** MISSING INFO **]"..WHITE..")"
Inst36Quest5_Note = "雷矛军需官 在 (奥特兰克山谷 - 北部地图; "..YELLOW.."[7]"..WHITE..")."
Inst36Quest5_Prequest = "无"
Inst36Quest5_Folgequest = "无"
-- No Rewards for this quest

--Quest 6 Alliance
Inst36Quest6 = "6. 冷齿矿洞的补给"
Inst36Quest6_Level = "60"
Inst36Quest6_Attain = "51"
Inst36Quest6_Aim = "把10份冷齿矿洞补给品交给丹巴达尔的联盟军需官."
Inst36Quest6_Location = "雷矛军需官 (奥特兰克山谷 - 北部地图; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest6_Note = "补给可以在冷齿矿洞找到 (奥特兰克山谷 - 南部地图; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest6_Prequest = "无"
Inst36Quest6_Folgequest = "无"
-- No Rewards for this quest

--Quest 7 Alliance
Inst36Quest7 = "7. 深铁矿洞的补给"
Inst36Quest7_Level = "60"
Inst36Quest7_Attain = "51"
Inst36Quest7_Aim = "把10份深铁矿洞补给品交给丹巴达尔的联盟军需官."
Inst36Quest7_Location = "雷矛军需官 (奥特兰克山谷 - 北部地图; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest7_Note = "补给可以在深铁矿洞找到 (奥特兰克山谷 - 北部地图; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest7_Prequest = "无"
Inst36Quest7_Folgequest = "无"
-- No Rewards for this quest

--Quest 8 Alliance
Inst36Quest8 = "8. 护甲碎片"
Inst36Quest8_Level = "60"
Inst36Quest8_Attain = "51"
Inst36Quest8_Aim = "给丹巴达尔的莫高特·深炉带去20块护甲碎片."
Inst36Quest8_Location = "莫高特·深炉 (奥特兰克山谷 - 北部地图; "..YELLOW.."[4]"..WHITE..")"
Inst36Quest8_Note = "护甲碎片可以从对方阵营的玩家尸体中拾取，任务是可重复的."
Inst36Quest8_Prequest = "无"
Inst36Quest8_Folgequest = "有，更多的护甲碎片"
-- No Rewards for this quest

--Quest 9 Alliance
Inst36Quest9 = "9. 占领矿洞"
Inst36Quest9_Level = "60"
Inst36Quest9_Attain = "51"
Inst36Quest9_Aim = "占领一座还没有被雷矛部族控制的矿洞，然后向丹巴达尔的雷矛军需官复命."
Inst36Quest9_Location = "杜尔根·雷矛 (奥特兰克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst36Quest9_Note = "要完成这个任务，你需要杀死矿洞中的头目 (奥特兰克山谷 - 北部地图; "..YELLOW.."[1]"..WHITE..")  (奥特兰克山谷 - 南部地图; "..YELLOW.."[6]"..WHITE..") while the Horde control it."
Inst36Quest9_Prequest = "无"
Inst36Quest9_Folgequest = "无"
-- No Rewards for this quest

--Quest 10 Alliance
Inst36Quest10 = "10. 哨塔和碉堡"
Inst36Quest10_Level = "60"
Inst36Quest10_Attain = "51"
Inst36Quest10_Aim = "摧毁敌方的某座哨塔或者碉堡中的旗帜，然后向丹巴达尔的杜尔根·雷矛复命."
Inst36Quest10_Location = "杜尔根·雷矛 (奥特兰克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst36Quest10_Note = "只需要烧毁旗帜即可，不需要一定摧毁哨塔或碉堡."
Inst36Quest10_Prequest = "无"
Inst36Quest10_Folgequest = "无"
-- No Rewards for this quest

--Quest 11 Alliance
Inst36Quest11 = "11. 奥特兰克山谷的墓地"
Inst36Quest11_Level = "60"
Inst36Quest11_Attain = "51"
Inst36Quest11_Aim = "占领一座墓地，然后向丹巴达尔的诺雷格·雷矛中尉复命."
Inst36Quest11_Location = "诺雷格·雷矛 (奥特兰克山谷; "..YELLOW.."37,78"..WHITE..")"
Inst36Quest11_Note = "只需要烧毁旗帜即可，不需要一定占领墓地."
Inst36Quest11_Prequest = "无"
Inst36Quest11_Folgequest = "无"
-- No Rewards for this quest

--Quest 12 Alliance
Inst36Quest12 = "12. 补充坐骑"
Inst36Quest12_Level = "60"
Inst36Quest12_Attain = "51"
Inst36Quest12_Aim = "找到奥特兰克山谷中的山羊。使用雷矛训练颈圈来驯服它们。被驯服的山羊会跟随你回到兽栏管理员那里，然后与兽栏管理员谈话以获得你的奖励."
Inst36Quest12_Location = "兽栏管理员 (奥特兰克山谷 - 北部地图; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest12_Note = "你可以在基地南面找到这些羊，像猎人抓宠物一样驯服羊，然后带它回去复命."
Inst36Quest12_Prequest = "无"
Inst36Quest12_Folgequest = "无"
-- No Rewards for this quest

--Quest 13 Alliance
Inst36Quest13 = "13. 山羊坐具"
Inst36Quest13_Level = "60"
Inst36Quest13_Attain = "51"
Inst36Quest13_Aim = "进入敌人的基地，杀死霜狼获得它的皮来作为山羊坐骑的器具，去吧"
Inst36Quest13_Location = "雷矛山羊骑兵指挥官 (奥特兰克山谷 - 北部地图; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest13_Note = "霜狼可以在奥特兰克山谷的南部找到."
Inst36Quest13_Prequest = "无"
Inst36Quest13_Folgequest = "无"
-- No Rewards for this quest

--Quest 14 Alliance
Inst36Quest14 = "14. 水晶簇"
Inst36Quest14_Level = "60"
Inst36Quest14_Attain = "51"
Inst36Quest14_Aim = "你可以躲避硝烟弥漫的战场，激烈战斗之外，你可以帮助我收集霜狼氏族身上的风暴水晶.."
Inst36Quest14_Location = "大德鲁伊雷弗拉尔  (奥特兰克山谷 - 北部地图; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest14_Note = "在募集大约200个风暴水晶后，大德鲁伊伊类弗拉尔开始向（奥特兰克山谷 - 北部地图（ "..YELLOW.."[19]"..WHITE.."）移动，他将启动召唤法阵需要10个玩家去协助召唤。如果成功，森林之王伊弗斯将被召唤出来帮助抵抗部落."
Inst36Quest14_Prequest = "无"
Inst36Quest14_Folgequest = "无"
-- No Rewards for this quest

--Quest 15 Alliance
Inst36Quest15 = "15. 森林之王伊弗斯"
Inst36Quest15_Level = "60"
Inst36Quest15_Attain = "51"
Inst36Quest15_Aim = "霜狼氏族的战士身上带着一种名叫暴风水晶的符咒，我们可以用这些符咒来召唤伊弗斯。快去拿来那些水晶吧."
Inst36Quest15_Location = "大德鲁伊雷弗拉尔 (奥特兰克山谷 - 北部地图; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest15_Note = "在募集大约200个风暴水晶后，大德鲁伊伊类弗拉尔开始向（奥特兰克山谷 - 北部地图（ "..YELLOW.."[19]"..WHITE.."）移动，他将启动召唤法阵需要10个玩家去协助召唤。如果成功，森林之王伊弗斯将被召唤出来帮助抵抗部落."
Inst36Quest15_Prequest = "无"
Inst36Quest15_Folgequest = "无"
-- No Rewards for this quest

--Quest 16 Alliance
Inst36Quest16 = "16. 天空的召唤 - 维波里的空军"
Inst36Quest16_Level = "60"
Inst36Quest16_Attain = "51"
Inst36Quest16_Aim = "你必须去对付守卫前线的部落精英士兵!我现在命令你去削弱那些绿皮蛮子的力量，把他们的中尉和军团士兵的勋章给我拿来。当我拿到足够的勋章时，我会命令开始对他们进行空中打击的."
Inst36Quest16_Location = "空军指挥官维波里 (奥特兰克山谷 - 北部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest16_Note = "你可以从对方阵营的尸体上得到这些勋章."
Inst36Quest16_Prequest = "无"
Inst36Quest16_Folgequest = "无"
-- No Rewards for this quest

--Quest 17 Alliance
Inst36Quest17 = "17. 天空的召唤 - 斯里多尔的空军"
Inst36Quest17_Level = "60"
Inst36Quest17_Attain = "51"
Inst36Quest17_Aim = "我的狮鹫兽应该在前线作战，但是在那里的敌人被削弱之前，它们是无法发动攻击的。部落的战士胸前挂着代表荣誉的勋章勇猛冲锋，而你要做的就是从他们腐烂的尸体上把勋章拿下来，并把它们交视只要敌人在前线的力量受到足够的打击，我就会发出命令进行空袭!我们将从空中给敌人造成致命的创伤!!"
Inst36Quest17_Location = "空军指挥官斯里多尔 (奥特兰克山谷 - 北部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest17_Note = "你可以从对方阵营的尸体上得到这些勋章."
Inst36Quest17_Prequest = "无"
Inst36Quest17_Folgequest = "无"
-- No Rewards for this quest

--Quest 18 Alliance
Inst36Quest18 = "18. 天空的召唤 - 艾克曼的空军"
Inst36Quest18_Level = "60"
Inst36Quest18_Attain = "51"
Inst36Quest18_Aim = "它们的士气很低，战士。自从我们上次对部落的空中打击失败之后，它们就拒绝再次飞行!你必须鼓舞它们的士气。回到战场并攻击部落的核心力量，杀死他们的指挥官和卫兵。尽可能带回更多的勋章!我向你保证，当我的狮鹫兽看到这些战利品并嗅到敌人的鲜血时，它们就会再次起飞!现在就出发吧!"
Inst36Quest18_Location = "空军指挥官艾克曼 (奥特兰克山谷 - 北部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest18_Note = "你可以从对方阵营的尸体上得到这些勋章."
Inst36Quest18_Prequest = "无"
Inst36Quest18_Folgequest = "无"
-- No Rewards for this quest


--Quest 1 Horde
Inst36Quest1_HORDE = "1. 战斗的召唤：奥特兰克山谷 (战场日常)"
Inst36Quest1_HORDE_Level = "51"
Inst36Quest1_HORDE_Attain = "51"
Inst36Quest1_HORDE_Aim = "在奥特兰克山谷战场中获得一场胜利，然后向任意部落主城或沙塔斯城中的部落战争使者复命."
Inst36Quest1_HORDE_Location = "部落战场使者:\n   沙塔斯城：贫民窟 - "..YELLOW.."70,54"..WHITE.."\n   奥格瑞玛：荣耀谷 - "..YELLOW.."80,30"..WHITE.."\n   雷霆崖：猎手高地 - "..YELLOW.."56,77"..WHITE.."\n   幽暗城 - "..YELLOW.."61,88"..WHITE.."\n   银月城 - "..YELLOW.."97,38"
Inst36Quest1_HORDE_Note = "51级你才能接到这个任务，完成任务会基于你的级别奖励金钱和经验."
Inst36Quest1_HORDE_Prequest = "无"
Inst36Quest1_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Horde
Inst36Quest2_HORDE = "2. 保卫霜狼氏族"
Inst36Quest2_HORDE_Level = "60"
Inst36Quest2_HORDE_Attain = "51"
Inst36Quest2_HORDE_Aim = "到希尔斯布莱德丘陵地区的奥特兰克山谷去。找到拉格隆德并和他谈谈，然后成为霜狼氏族的士兵."
Inst36Quest2_HORDE_Location = "霜狼大使 (奥格瑞玛 - 力量谷 "..YELLOW.."50,71"..WHITE..")"
Inst36Quest2_HORDE_Note = "拉格隆德 (奥特兰克山脉; "..YELLOW.."62,59"..WHITE..")."
Inst36Quest2_HORDE_Prequest = "无"
Inst36Quest2_HORDE_Folgequest = "有，实验场"
-- No Rewards for this quest

--Quest 3 Horde
Inst36Quest3_HORDE = "3. 实验场"
Inst36Quest3_HORDE_Level = "60"
Inst36Quest3_HORDE_Attain = "51"
Inst36Quest3_HORDE_Aim = "到主基地东南边的蛮爪洞穴中去找到霜狼军旗，然后把它交给拉格隆德."
Inst36Quest3_HORDE_Location = "拉格隆德 (奥特兰克山脉; "..YELLOW.."62,59"..WHITE..")"
Inst36Quest3_HORDE_Note = "霜狼军旗 在蛮爪洞穴 (奥特兰克山谷 - 南部地图; "..YELLOW.."[9]"..WHITE.."). 每当声望到达一个级别，你可以在这个人这里得到升级的徽章."
Inst36Quest3_HORDE_Prequest = "有，保卫霜狼氏族"
Inst36Quest3_HORDE_Folgequest = "无"
Inst36Quest3FQuest_HORDE = "true"
--
Inst36Quest3name1_HORDE = "Frostwolf Insignia Rank 1"
Inst36Quest3name2_HORDE = "Peeling the Onion"

--Quest 4 Horde
Inst36Quest4_HORDE = "4. 为奥特兰克而战"
Inst36Quest4_HORDE_Level = "60"
Inst36Quest4_HORDE_Attain = "51"
Inst36Quest4_HORDE_Aim = "进入奥特兰克山谷，击败矮人将军范达尔·雷矛。然后回到沃加·死爪那里."
Inst36Quest4_HORDE_Location = "沃加·死爪 (奥特兰克山脉; "..YELLOW.."64,60"..WHITE..")"
Inst36Quest4_HORDE_Note = "范达尔 雷矛 在 (奥特兰克山谷 - 北部地图; "..YELLOW.."[B]"..WHITE.."). 不一定需要杀死范达尔才能完成任务，赢得胜利就行."
Inst36Quest4_HORDE_Prequest = "无"
Inst36Quest4_HORDE_Folgequest = "有，霜狼氏族的英雄"
--
Inst36Quest4name1_HORDE = "Bloodseeker"
Inst36Quest4name2_HORDE = "Ice Barbed Spear"
Inst36Quest4name3_HORDE = "Wand of Biting Cold"
Inst36Quest4name4_HORDE = "Cold Forged Hammer"

--Quest 5 Horde
Inst36Quest5_HORDE = "5. 霜狼军需官"
Inst36Quest5_HORDE_Level = "60"
Inst36Quest5_HORDE_Attain = "51"
Inst36Quest5_HORDE_Aim = "与霜狼军需官谈一谈."
Inst36Quest5_HORDE_Location = "乔泰克 (奥特兰克山谷 - 南部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest5_HORDE_Note = "霜狼军需官 在 "..YELLOW.."[10]"..WHITE.." ."
Inst36Quest5_HORDE_Prequest = "无"
Inst36Quest5_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 6 Horde
Inst36Quest6_HORDE = "6. 冷齿矿洞的补给"
Inst36Quest6_HORDE_Level = "60"
Inst36Quest6_HORDE_Attain = "51"
Inst36Quest6_HORDE_Aim = "把10份冷齿矿洞补给品交给霜狼要塞的部落军需官."
Inst36Quest6_HORDE_Location = "霜狼军需官 (奥特兰克山谷 - 南部地图; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest6_HORDE_Note = "补给品 可以在冷齿矿洞找到 (奥特兰克山谷 - 南部地图; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest6_HORDE_Prequest = "无"
Inst36Quest6_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 7 Horde
Inst36Quest7_HORDE = "7. 深铁矿洞的补给"
Inst36Quest7_HORDE_Level = "60"
Inst36Quest7_HORDE_Attain = "51"
Inst36Quest7_HORDE_Aim = "把10份深铁矿洞补给品交给霜狼要塞的部落军需官."
Inst36Quest7_HORDE_Location = "霜狼军需官 (奥特兰克山谷 - 南部地图; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest7_HORDE_Note = "补给品 可以在深铁矿洞找到 (奥特兰克山谷 - 北部地图; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest7_HORDE_Prequest = "无"
Inst36Quest7_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 8 Horde
Inst36Quest8_HORDE = "8. 敌人的物资"
Inst36Quest8_HORDE_Level = "60"
Inst36Quest8_HORDE_Attain = "51"
Inst36Quest8_HORDE_Aim = "给霜狼村的铁匠雷格萨带去20块护甲碎片."
Inst36Quest8_HORDE_Location = "铁匠雷格萨 (奥特兰克山谷 - 南部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest8_HORDE_Note = "这是个可重复任务."
Inst36Quest8_HORDE_Prequest = "无"
Inst36Quest8_HORDE_Folgequest = "有，更多的物资!"
-- No Rewards for this quest

--Quest 9 Horde
Inst36Quest9_HORDE = "9. 占领矿洞"
Inst36Quest9_HORDE_Level = "60"
Inst36Quest9_HORDE_Attain = "51"
Inst36Quest9_HORDE_Aim = "占领一座矿洞，然后向霜狼村的霜狼军需官报告."
Inst36Quest9_HORDE_Location = "霜狼军需官 (奥特兰克山脉; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest9_HORDE_Note = "完成这个任务你只要杀死洞里的首领即可."
Inst36Quest9_HORDE_Prequest = "无"
Inst36Quest9_HORDE_Folgequest ="无"
-- No Rewards for this quest

--Quest 10 Horde
Inst36Quest10_HORDE = "10. 哨塔和碉堡"
Inst36Quest10_HORDE_Level = "60"
Inst36Quest10_HORDE_Attain = "51"
Inst36Quest10_HORDE_Aim = "占领敌方的某座哨塔，然后向霜狼村的提卡·血牙复命."
Inst36Quest10_HORDE_Location = "提卡·血牙 (奥特兰克山脉; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest10_HORDE_Note = "不用摧毁，只需开旗即可."
Inst36Quest10_HORDE_Prequest = "无"
Inst36Quest10_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 11 Horde
Inst36Quest11_HORDE = "11. 奥特兰克山谷的墓地"
Inst36Quest11_HORDE_Level = "60"
Inst36Quest11_HORDE_Attain = "51"
Inst36Quest11_HORDE_Aim = "占领一座墓地，然后向霜狼村的亚斯拉复命."
Inst36Quest11_HORDE_Location = "亚斯拉 (奥特兰克山脉; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest11_HORDE_Note = "只需开旗即可."
Inst36Quest11_HORDE_Prequest = "无"
Inst36Quest11_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 12 Horde
Inst36Quest12_HORDE = "12. 补充坐骑"
Inst36Quest12_HORDE_Level = "60"
Inst36Quest12_HORDE_Attain = "51"
Inst36Quest12_HORDE_Aim = "找到奥特兰克山谷中的霜狼。使用霜狼口套来驯服它们。被驯服的霜狼会跟随你回到兽栏管理员那里，然后与兽栏管理员谈话以获得你的奖励."
Inst36Quest12_HORDE_Location = "霜狼兽栏管理员 (奥特兰克山谷 - 南部地图; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest12_HORDE_Note = "基地外面就可以找到这些狼."
Inst36Quest12_HORDE_Prequest = "无"
Inst36Quest12_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 13 Horde
Inst36Quest13_HORDE = "13. 羊皮坐具"
Inst36Quest13_HORDE_Level = "60"
Inst36Quest13_HORDE_Attain = "51"
Inst36Quest13_HORDE_Aim = "杀死雷矛卫队用作坐骑的山羊，我们就可以将羊皮作为我们的坐垫"
Inst36Quest13_HORDE_Location = "霜狼骑兵指挥官 (奥特兰克山谷 - 南部地图; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest13_HORDE_Note = "羊能在北部的奥特兰克山谷找到."
Inst36Quest13_HORDE_Prequest = "无"
Inst36Quest13_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 14 Horde
Inst36Quest14_HORDE = "14. 联盟之血"
Inst36Quest14_HORDE_Level = "60"
Inst36Quest14_HORDE_Attain = "51"
Inst36Quest14_HORDE_Aim = "从联盟尸体上边得到联盟之血，把它交给我."
Inst36Quest14_HORDE_Location = "指挥官瑟鲁加  (奥特兰克山谷 - 南部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest14_HORDE_Note = "你可以从对方阵营的尸体上得到这些东西"
Inst36Quest14_HORDE_Prequest = "无"
Inst36Quest14_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 15 Horde
Inst36Quest15_HORDE = "15. 冰雪之王洛克霍拉"
Inst36Quest15_HORDE_Level = "60"
Inst36Quest15_HORDE_Attain = "51"
Inst36Quest15_HORDE_Aim = "收集足够的联盟之血后，你就可以召唤冰雪之王."
Inst36Quest15_HORDE_Location = "指挥官瑟鲁加  (奥特兰克山谷 - 南部地图; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest15_HORDE_Note = "当交齐150个联盟之血后，指挥官瑟鲁加开始向（奥特兰克山谷 - 南部地图; "..YELLOW.."[14]"..WHITE.."）移动。召唤法阵需要10个玩家去协助召唤。如果成功，冰雪之王洛克霍拉将被召唤出来以对抗联盟。"
Inst36Quest15_HORDE_Prequest = "无"
Inst36Quest15_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 16 Horde
Inst36Quest16_HORDE = "16. 天空的召唤 - 古斯的部队"
Inst36Quest16_HORDE_Level = "60"
Inst36Quest16_HORDE_Attain = "51"
Inst36Quest16_HORDE_Aim = "收集联盟卫兵的肉，把它交给我"
Inst36Quest16_HORDE_Location = "空军指挥官古斯 (奥特兰克山谷 - 南部地图; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest16_HORDE_Note = "你可以从对方阵营的尸体上得到这些东西"
Inst36Quest16_HORDE_Prequest = "无"
Inst36Quest16_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 17 Horde
Inst36Quest17_HORDE = "17. 天空的召唤 - 杰斯托的部队"
Inst36Quest17_HORDE_Level = "60"
Inst36Quest17_HORDE_Attain = "51"
Inst36Quest17_HORDE_Aim = "收集联盟士官的食物，把它交给我."
Inst36Quest17_HORDE_Location = "空军指挥官杰斯托  (奥特兰克山谷 - 南部地图; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest17_HORDE_Note = "你可以从对方阵营的尸体上得到这些东西"
Inst36Quest17_HORDE_Prequest = "无"
Inst36Quest17_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 18 Horde
Inst36Quest18_HORDE = "18. 天空的召唤 - 穆维里克的部队"
Inst36Quest18_HORDE_Level = "60"
Inst36Quest18_HORDE_Attain = "51"
Inst36Quest18_HORDE_Aim = "收集联盟指挥官的食物，把它交给我"
Inst36Quest18_HORDE_Location = "空军指挥官穆维里克 (奥特兰克山谷 - 南部地图; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest18_HORDE_Note = "你可以从对方阵营的尸体上得到这些东西"
Inst36Quest18_HORDE_Prequest = "无"
Inst36Quest18_HORDE_Folgequest = "无"
-- No Rewards for this quest



--------------- INST37 - Arathi Basin (AB) ---------------

Inst37Story = "位于阿拉希高地的阿拉希盆地是一处激动人心的战场。盆地拥有丰富的资源，部落和联盟都对此垂涎不已。污染者和阿拉索联军在阿拉希盆地展开激战，想要为他们所在的阵营抢夺盆地中的资源."
Inst37Caption = "阿拉希盆地"
Inst37QAA = "4 个任务"
Inst37QAH = "4 个任务"

--Quest 1 Alliance
Inst37Quest1 = "1. 战斗的召唤：阿拉希盆地 (战场日常)"
Inst37Quest1_Level = "20"
Inst37Quest1_Attain = "20"
Inst37Quest1_Aim = "阿拉希盆地战场中获得一场胜利，然后向任意联盟主城或沙塔斯城中的联盟准将复命."
Inst37Quest1_Location = "联盟准将:\n   沙塔斯城：贫民窟 "..YELLOW.."67,34"..WHITE.."\n   暴风城：暴风要塞 - "..YELLOW.."83,14"..WHITE.."\n   铁炉堡：武器大厅 - "..YELLOW.."70,91"..WHITE.."\n   达纳苏斯：战士区 - "..YELLOW.."59,36"..WHITE.."\n   埃索达：圣光穹顶 - "..YELLOW.."25,55"..WHITE.." "
Inst37Quest1_Note = "你达到20级才能接到这个任务，完成任务将基于你的级别奖励经验和金钱."
Inst37Quest1_Prequest = "无"
Inst37Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Alliance
Inst37Quest2 = "2. 阿拉希盆地之战!"
Inst37Quest2_Level = "25"
Inst37Quest2_Attain = "25"
Inst37Quest2_Aim = "进攻矿洞、伐木场、铁匠铺和农场，然后向避难谷地的奥斯莱特元帅复命."
Inst37Quest2_Location = "奥斯莱特元帅  (阿拉希高地-避难谷地; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest2_Note = "开旗就可."
Inst37Quest2_Prequest = "无"
Inst37Quest2_Folgequest = "无"
-- No Rewards for this quest

--Quest 3 Alliance
Inst37Quest3 = "3. 控制四座基地"
Inst37Quest3_Level = "60"
Inst37Quest3_Attain = "60"
Inst37Quest3_Aim = "进入阿拉希盆地，同时占据并控制四座基地，当任务完成之后向避难谷地的奥斯莱特元帅报告."
Inst37Quest3_Location = "奥斯莱特元帅 (阿拉希高地-避难谷地; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest3_Note = "你必须和阿拉索联军声望达到友善才能接到这个任务."
Inst37Quest3_Prequest = "无"
Inst37Quest3_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Alliance
Inst37Quest4 = "4. 控制五座基地"
Inst37Quest4_Level = "60"
Inst37Quest4_Attain = "60"
Inst37Quest4_Aim = "同时控制阿拉希盆地中的五座基地，然后向避难谷地的奥斯莱特元帅复命."
Inst37Quest4_Location = "奥斯莱特元帅 (阿拉希高地-避难谷地; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest4_Note = "你必须和阿拉索联军达到崇拜才能接到这个任务."
Inst37Quest4_Prequest = "无"
Inst37Quest4_Folgequest = "无"
--
Inst37Quest4name1 = "Arathor Battle Tabard"


--Quest 1 Horde
Inst37Quest1_HORDE = "1. 战斗的召唤：阿拉希盆地 (战场日常)"
Inst37Quest1_HORDE_Level = "20"
Inst37Quest1_HORDE_Attain = "20"
Inst37Quest1_HORDE_Aim = "在阿拉希盆地战场中获得一场胜利，然后向任意部落主城或沙塔斯城中的部落战争使者复命."
Inst37Quest1_HORDE_Location = "部落战场使者:\n   沙塔斯城：贫民窟 - "..YELLOW.."70,54"..WHITE.."\n   奥格瑞玛：荣耀谷 - "..YELLOW.."80,30"..WHITE.."\n   雷霆崖：猎手高地 - "..YELLOW.."56,77"..WHITE.."\n   幽暗城 - "..YELLOW.."61,88"..WHITE.."\n   银月城 - "..YELLOW.."97,38"
Inst37Quest1_HORDE_Note = "你达到20级才能接到这个任务，完成任务将基于你的级别奖励经验和金钱."
Inst37Quest1_HORDE_Prequest = "无"
Inst37Quest1_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 2 Horde
Inst37Quest2_HORDE = "2. 阿拉希盆地之战!"
Inst37Quest2_HORDE_Level = "25"
Inst37Quest2_HORDE_Attain = "25"
Inst37Quest2_HORDE_Aim = "进攻阿拉希盆地的矿洞、伐木场、铁匠铺和兽栏，然后向落锤镇的屠杀者杜维尔复命."
Inst37Quest2_HORDE_Location = "屠杀者杜维尔 (阿拉希高地 - 落槌镇; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest2_HORDE_Note = "The locations to be assaulted are marked on the map as 1 through 4."
Inst37Quest2_HORDE_Prequest = "No"
Inst37Quest2_HORDE_Folgequest = "No"
-- No Rewards for this quest

--Quest 3 Horde
Inst37Quest3_HORDE = "3. 夺取四座基地"
Inst37Quest3_HORDE_Level = "60"
Inst37Quest3_HORDE_Attain = "60"
Inst37Quest3_HORDE_Aim = "同时占据阿拉希盆地中的四座基地，然后向落锤镇的屠杀者杜维尔复命."
Inst37Quest3_HORDE_Location = "屠杀者杜维尔 (阿拉希高地 - 落槌镇; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest3_HORDE_Note = "你必须和污染者声望达到友善才能接到任务."
Inst37Quest3_HORDE_Prequest = "无"
Inst37Quest3_HORDE_Folgequest = "无"
-- No Rewards for this quest

--Quest 4 Horde
Inst37Quest4_HORDE = "4. 夺取五座基地"
Inst37Quest4_HORDE_Level = "60"
Inst37Quest4_HORDE_Attain = "60"
Inst37Quest4_HORDE_Aim = "同时占据阿拉希盆地中的五座基地，然后向落锤镇的屠杀者杜维尔复命."
Inst37Quest4_HORDE_Location = "屠杀者杜维尔 (阿拉希高地 - 落槌镇; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest4_HORDE_Note = "你必须和污染者声望达到崇敬才能接到."
Inst37Quest4_HORDE_Prequest = "无"
Inst37Quest4_HORDE_Folgequest = "无"
--
Inst37Quest4name1_HORDE = "Battle Tabard of the Defilers"



--------------- INST38 - Warsong Gulch (WSG) ---------------

Inst38Story = "战歌峡谷位于灰谷森林南部。在第三次兽人战争中，格罗姆·地狱咆哮和他麾下的兽人们几乎将战歌峡谷附近的森林砍伐殆尽。其中部分兽人仍然盘踞在这里，继续砍伐着森林，想要扩张部落的势力范围。他们称自己为战歌侦查骑兵。\n\n暗夜精灵早已纠集兵力，打算收复灰谷森林。他们想要将战歌侦察骑兵彻底赶出这片土地。因此，银翼哨兵挺身而出，发誓在将兽人驱逐出战歌峡谷之前他们决不休息. "
Inst38Caption = "战歌峡谷（WSG）"
Inst38QAA = "1 个任务"
Inst38QAH = "1 个任务"

--Quest 1 Alliance
Inst38Quest1 = "1. 战斗的召唤：战歌峡谷 (战场日常)"
Inst38Quest1_Level = "10"
Inst38Quest1_Attain = "10"
Inst38Quest1_Aim = "在战歌峡谷战场中获得一场胜利，然后向任意联盟主城或沙塔斯城中的联盟准将复命."
Inst38Quest1_Location = "联盟准将:\n   沙塔斯城：贫民窟 "..YELLOW.."67,34"..WHITE.."\n   暴风城：暴风要塞 - "..YELLOW.."83,14"..WHITE.."\n   铁炉堡：武器大厅 - "..YELLOW.."70,91"..WHITE.."\n   达纳苏斯：战士区 - "..YELLOW.."59,36"..WHITE.."\n   埃索达：圣光穹顶 - "..YELLOW.."25,55"..WHITE.." "
Inst38Quest1_Note = "这是战场日常任务，你达到10级才能接到这个任务，完成任务将基于你的级别奖励经验和金钱."
Inst38Quest1_Prequest = "无"
Inst38Quest1_Folgequest = "无"
-- No Rewards for this quest

--Quest 1 Horde
Inst38Quest1_HORDE = "1. 战斗的召唤：战歌峡谷 (战场日常)"
Inst38Quest1_HORDE_Level = "10"
Inst38Quest1_HORDE_Attain = "10"
Inst38Quest1_HORDE_Aim = "在战歌峡谷战场中获得一场胜利，然后向任意部落主城或沙塔斯城中的部落战争使者复命."
Inst38Quest1_HORDE_Location = "部落战场使者:\n   沙塔斯城：贫民窟 - "..YELLOW.."70,54"..WHITE.."\n   奥格瑞玛：荣耀谷 - "..YELLOW.."80,30"..WHITE.."\n   雷霆崖：猎手高地 - "..YELLOW.."56,77"..WHITE.."\n   幽暗城 - "..YELLOW.."61,88"..WHITE.."\n   银月城 - "..YELLOW.."97,38"
Inst38Quest1_HORDE_Note = "这是战场日常任务，你达到10级才能接到这个任务，完成任务将基于你的级别奖励经验和金钱."
Inst38Quest1_HORDE_Prequest = "无"
Inst38Quest1_HORDE_Folgequest = "无"
-- No Rewards for this quest
