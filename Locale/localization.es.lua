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


Translated by/Traducido por: Woopydalan 
Last update/Último actualización: 2017-12-30	
--]]


-- if ( GetLocale() == "esES" ) then
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
AQDiscription_OR = GREY.." or "..WHITE
AQDiscription_AND = GREY.." and "..WHITE

---------------
--- OPTIONS ---
---------------

AQHelpText = "escribir /aq o atlasquest "..WHITE.."[comando]"..YELLOW.."\ncomandos: ayuda; opcion/config; mostrar/ocultar; izquierdo/derecho; color; auto-mostrar"..RED.."(solamente Atlas)"
--
AQOptionsCaptionTEXT = "Opciones de AtlasQuest";
AQ_OK = "Aceptar"

-- Autoshow
AQOptionsAutoshowTEXT = "Mostrar el panel de AtlasQuest con Atlas.";
AQAtlasAutoON = "El panel de AtlasQuest mostrará automáticamente cuando atlas está abierto."..GREEN.."(defecto)"
AQAtlasAutoOFF = "El panel de AtlasQuest "..RED.."Ninguno"..WHITE.." mostrará cuando atlas está abierto."

-- Right/Left
AQOptionsLEFTTEXT = "Mostrar el panel de AtlasQuest a la "..RED.."izquierda.";
AQOptionsRIGHTTEXT = "Mostrar el panel de AtlasQuest a la "..RED.."derecha.";
AQShowRight = "Muestra el panel de AtlasQuest a la "..RED.."derecha.";
AQShowLeft = "Muestra el panel de AtlasQuest a la "..RED.."izquierda"..GREEN.." (defecto)";

-- Colour Check
AQOptionsCCTEXT = "Colorea las misiones dependiendo de sus niveles."
AQCCON = "AtlasQuest coloreará las misiones depeiendo de sus niveles."
AQCCOFF = "AtlasQuest no coloreará las misiones."

-- QuestLog Colour Check
AQQLColourChange = "Colorea todas las misiones que tienes en tu Registro de misión "..BLUE.."azules."

-- AutoQuery Quest Rewards
AQOptionsAutoQueryTEXT = "Consulta el servidor automáticamente para los objetos que no has visto."

-- Suppress Server Query text
AQOptionsNoQuerySpamTEXT = "Para el spam de Consulta del servidor."

-- Use Comparison Tooltips
AQOptionsCompareTooltipTEXT = "Compara las recompensas a los equipos que llevas."


AQAbilities = BLUE .. "Habilidades:" .. WHITE;
AQSERVERASKInformation = " Por favor clic-derecho hasta que veas el marco."
AQSERVERASKAuto = " Mueva el puntero sobre el objeto en un segundo."
AQSERVERASK = "AtlasQuest está consultando el servidor: "
AQERRORNOTSHOWN = "¡Este objeto no es seguro!"
AQERRORASKSERVER = "Puedes clic-derecho para consultar el servidor. Es posible que desconectarás."
AQOptionB = "Opciones"
AQStoryB = "Historia"
AQNoReward = ""..BLUE.." No hay recompensas"
AQDiscription_OR = ""..GREY.." o "..WHITE..""
AQDiscription_AND = ""..GREY.." y "..WHITE..""
AQDiscription_REWARD = ""..BLUE.." Recompensa: "
AQDiscription_ATTAIN = "Conseguir: "
AQDiscription_LEVEL = "Nivel: "
AQDiscription_START = "Empieza: \n"
AQDiscription_AIM = "Objetivo: \n"
AQDiscription_NOTE = "Nota: \n"
AQDiscription_PREQUEST= "Misión previa: "
AQDiscription_FOLGEQUEST = "Misión siguiente: "
AQFinishedTEXT = "Misión Completa: ";


------------------
--- ITEM TYPES ---
------------------

AQITEM_DAGGER = " Daga"
AQITEM_POLEARM = " Arma de asta"
AQITEM_SWORD = " Espada"
AQITEM_AXE = " Hacha"
AQITEM_WAND = "Varita"
AQITEM_STAFF = "Bastón"
AQITEM_MACE = " Maza"
AQITEM_SHIELD = "Escudo"
AQITEM_GUN = "Arma de fuego"
AQITEM_BOW = "Arco"
AQITEM_CROSSBOW = "Ballesta"
AQITEM_THROWN = "Arma arrojadiza"

AQITEM_WAIST = "Cintura,"
AQITEM_SHOULDER = "Hombro,"
AQITEM_CHEST = "Pecho,"
AQITEM_LEGS = "Piernas,"
AQITEM_HANDS = "Manos,"
AQITEM_FEET = "Pies,"
AQITEM_WRIST = "Muñeca,"
AQITEM_HEAD = "Cabeza,"
AQITEM_BACK = "Atrás"
AQITEM_TABARD = "Tabardo"

AQITEM_CLOTH = " Tela"
AQITEM_LEATHER = " Cuero"
AQITEM_MAIL = " Mallas"
AQITEM_PLATE = " Placas"

AQITEM_OFFHAND = "Mano secundaria"
AQITEM_MAINHAND = "Mano principal,"
AQITEM_ONEHAND = "Una mano,"
AQITEM_TWOHAND = "Dos manos,"

AQITEM_ITEM = "Objeto" -- Use this for those oddball rewards which aren't really anything else.
AQITEM_TRINKET = "Alhaja"
AQITEM_RELIC = "Reliquia"
AQITEM_POTION = "Poción"
AQITEM_OFFHAND = "Sostener con la mano izquierda"
AQITEM_NECK = "Cuello"
AQITEM_PATTERN = "Patrón"
AQITEM_BAG = "Bolsa"
AQITEM_RING = "Dedo"
AQITEM_KEY = "Llave"
AQITEM_QUIVER = "Carcaj"
AQITEM_AMMOPOUCH = "Bolsa de munición"
AQITEM_ENCHANT = "Encanta"



----------------------------------------------
---------------- DUNGEONS --------------------
----------------------------------------------

--------------- INST1 - Deadmines (DM) ---------------
Inst1Story = "Fue el mayor centro de producción de oro de las tierras humanas, pero las Minas de la Muerte fueron abandonadas cuando la Horda arrasó Ventormenta durante la Primera Guerra. Ahora la Hermandad Defias las usa como residencia y ha convertido sus oscuros túneles en su santuario privado. Se rumorea que los ladrones han reclutado a los astutos goblins para que les ayudan a construir algo terrible en el fondo de las minas, pero nadie sabe de qué se trata. Se dice que el camino hacia las Minas de la Muerte se encuentra en la tranquila e humilde aldea de Arroyo de la Luna."
Inst1Caption = "Las Minas de la Muerte"
Inst1QAA = "7 Misiones" -- how many quests for alliance
Inst1QAH = "No Hay Misiones" -- for horde

--Quest 1 Alliance
Inst1Quest1 = "1. Pañuelos rojos de seda" -- 214
Inst1Quest1_Level = "17"
Inst1Quest1_Attain = "14"
Inst1Quest1_Aim = "La exploradora Riell de la Colina del Centinela quiere que le lleves 10 pañuelos de seda roja."
Inst1Quest1_Location = "Exploradora Riell (Páramos de Poniente - Colina del Centinela; "..YELLOW.."56, 47"..WHITE..")"
Inst1Quest1_Note = "Puedes conseguir los Pañuelos rojos de seda por despojar a los mineros dentro de Las Minas de la Muerte o afuera de la instancia. La misión estará disponible después de que termines la cadena de misiones La hermandad de los Defias hasta la misión para matar Edwin VanCleef."
Inst1Quest1_Prequest = "La hermandad de los Defias (id = 155)" -- 155
Inst1Quest1_Folgequest = "Ninguno"
--
Inst1Quest1name1 = "Hoja corta sólida"
Inst1Quest1name2 = "Daga para tallar"
Inst1Quest1name3 = "Hacha penetrante"

--Quest 2 Alliance
Inst1Quest2 = "2. Recolección de recuerdos" -- 168
Inst1Quest2_Level = "18"
Inst1Quest2_Attain = "14"
Inst1Quest2_Aim = "Recupera 4 Tarjetas del Sindicato Minero y llévaselas a Wilder Cardortiga, en Ventormenta."
Inst1Quest2_Location = "Wilder Cardortiga (Ventormenta - Distrito de los Enanos; "..YELLOW.."65,21"..WHITE..")"
Inst1Quest2_Note = "Despoja a los No-muertos afuera de la instancia en la localización cerca de "..YELLOW.."[3]"..WHITE.." en el mapa de la Entrada para obtener las tarjetas."
Inst1Quest2_Prequest = "Ninguno"
Inst1Quest2_Folgequest = "Ninguno"
--
Inst1Quest2name1 = "Botas de tunelador"
Inst1Quest2name2 = "Guantes de minería polvorientos"

--Quest 3 Alliance
Inst1Quest3 = "3. Oh, hermano..." -- 167
Inst1Quest3_Level = "20"
Inst1Quest3_Attain = "15"
Inst1Quest3_Aim = "Lleva la insignia de la Liga de Expedicionarios del supervisor Cardortiga a Wilder Cardortiga, en Ventormenta. "
Inst1Quest3_Location = "Wilder Cardortiga (Ventormenta - Distrito de los Enanos; "..YELLOW.."65,21"..WHITE..")"
Inst1Quest3_Note = "Supervisor Cardotiga está afuera de la instancia en la localización de los No-muertos en "..YELLOW.."[3]"..WHITE.." en el mapa de la Entrada."
Inst1Quest3_Prequest = "Ninguno"
Inst1Quest3_Folgequest = "Ninguno"
--
Inst1Quest3name1 = "Revancha de minero"

--Quest 4 Alliance
Inst1Quest4 = "4. Asalto subterráneo" -- 2040
Inst1Quest4_Level = "20"
Inst1Quest4_Attain = "15"
Inst1Quest4_Aim = "Recupera la Dentrituradora goblin de Las Minas de la Muerte y devuélveselo a Shoni la Shilenshiosha, en Ventormenta. "
Inst1Quest4_Location = "Shoni la Shilenshiosha (Ventormenta - Distrito de los Enanos; "..YELLOW.."55,12"..WHITE..")"
Inst1Quest4_Note = "Se puede obtener la misión previa de Gnoarn (Forjaz - Ciudad Manitas; "..YELLOW.."69,50"..WHITE..").\nDespoja a Trituradora de Sneed en "..YELLOW.."[3]"..WHITE.." para obtener la Dentrituradora goblin."
Inst1Quest4_Prequest = "Habla con Shoni" -- 2041
Inst1Quest4_Folgequest = "Ninguno"
--
Inst1Quest4name1 = "Guantaletes polares"
Inst1Quest4name2 = "Varita de dientes de sable"

--Quest 5 Alliance
Inst1Quest5 = "5. La hermandad de los Defias" -- 166
Inst1Quest5_Level = "22"
Inst1Quest5_Attain = "14"
Inst1Quest5_Aim = "Mata a Edwin VanCleef y lleva su cabeza a Gryan Mantorrecio. "
Inst1Quest5_Location = "Gryan Mantorrecio (Páramos de Poniente - Colina del Centinela; "..YELLOW.."56,47"..WHITE..")"
Inst1Quest5_Note = "Empieza la cadena de misiones a Gryan Mantorrecio (Páramos de Poniente - Colina del Centinela; "..YELLOW.."56,47"..WHITE..").\nEdwin VanCleef es el último jefe de Las Minas de la Muerte. Se puede encontrar a la cubierta del barco en "..YELLOW.."[6]"..WHITE.."."
Inst1Quest5_Prequest = "La hermandad de los Defias" -- 155
Inst1Quest5_Folgequest = "Ninguno"
--
Inst1Quest5name1 = "Botarga de los Páramos de Poniente"
Inst1Quest5name2 = "Guerrera de los Páramos de Poniente"
Inst1Quest5name3 = "Bastón de los Páramos de Poniente"

--Quest 6 Alliance
Inst1Quest6 = "6. La prueba de rectitud" -- 1654
Inst1Quest6_Level = "22"
Inst1Quest6_Attain = "20"
Inst1Quest6_Aim = "Consulta la lista y llévale a Jordan Fontana de Forjaz lo siguiente: madera de roble de Piedrablanca, envío de oro refinado de Jordan, el martillo de herrero de Jordan y una gema Kor."
Inst1Quest6_Location = "Jordan Fontana (Dun Morogh - Entrada de Forjaz; "..YELLOW.."52,36"..WHITE..")"
Inst1Quest6_Note = "Solamente Paladín: Para ver la nota haz clic en "..YELLOW.."[Información de La prueba de rectitud]"..WHITE.."."
Inst1Quest6_Page = { "¡Esta misión está disponible solamente para paladines!\n\n1. Despoja a los Talladores de madera goblin en "..YELLOW.."[Las Minas de la Muerte]"..WHITE.." cerca de "..YELLOW.."[3]"..WHITE.." para obtener la Madera de roble de Piedrablanca.\n\n2. Habla con Bailor Petramano (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE..") para obtener el Envío de mena refinada de Jordan. Te da la misión 'Envío de mena de Bailor'. Encuentras el Envío de mena de Jordan detrás de un árbol a "..YELLOW.."71,21"..WHITE..".\n\n3. Encuentras el Martillo de herrería de Jordan en "..YELLOW.."[Castillo de Colmillo Oscuro]"..WHITE.." en "..YELLOW.."[3]"..WHITE..".\n\n4. Para obtener la Gema kor purificada habla con Thundris Tejevientos (Costa Oscura - Auberdine; "..YELLOW.."37,40"..WHITE..") y haga su misión 'La búsqueda de la gema Kor'. Para esta misión, tienes que matar a los Oráculos Brazanegras o Sacerdotisas de las mareas Brazanegras afuera de "..YELLOW.."[Cavernas de Brazanegra]"..WHITE..". Los despojas para obtener la Gema kor corrupta. Thundris Tejevientos la limpiará para ti.", };
Inst1Quest6_Prequest = "Escrito sobre valor -> La prueba de rectitud" -- 1651 -> 1653
Inst1Quest6_Folgequest = "La prueba de rectitud" -- 1806
--
Inst1Quest6name1 = "Puño de Verigan"

--Quest 7 Alliance
Inst1Quest7 = "7. La carta sin enviar" -- 373
Inst1Quest7_Level = "22"
Inst1Quest7_Attain = "16"
Inst1Quest7_Aim = "Entrega la carta destinada al arquitecto jefe a Baros Alexston en Ventormenta. "
Inst1Quest7_Location = "Una carta sin enviar (Despoja a Edwin VanCleef para obtenerla; "..YELLOW.."[6]"..WHITE..")"
Inst1Quest7_Note = "Baros Alexston está en la Ciudad de Ventormenta, al lado de la Catedral de la Luz en "..YELLOW.."49,30"..WHITE.."."
Inst1Quest7_Prequest = "Ninguno"
Inst1Quest7_Folgequest = "Bazil Thredd" -- 389
-- No Rewards for this quest


--------------- INST2 - Wailing Caverns (WC) ---------------
Inst2Story = "Recientemente, un druida elfo de la noche llamado Naralex descubrió una red de cavernas subterráneas en el corazón de Los Baldíos. Llamadas las \"Cuevas de los Lamentos\", estas cuevas naturales estaban repletas de fisuras de vapor que producían largos y doloridos lamentos cuando se descargaban. Naralex pensó que podría utilizar los manantiales subterráneos de las cavernas para devolver la fertilidad y el verdor a Los Baldíos, pero para hacerlo necesitaba absorber las energías del legendario Sueño Esmeralda. Pero cuando se conectó al Sueño, su visión se convirtió, de alguna forma, en una pesadilla. Pronto las Cuevas de los Lamentos comenzaron a cambiar: las aguas se ensuciaron y las criaturas del interior, antaño dóciles, se convirtieron en depredadores letales y peligrosos. Se dice que el propio Naralex sigue residiendo en algún lugar en el corazón del laberinto, atrapado más allá de los límites del Sueño Esmeralda. Incluso sus antiguos acólitos se han corrompido por la pesadilla de vigilia de su maestro: se han convertido en los retorcidos Druidas del comillo."
Inst2Caption = "Cuevas de los Lamentos"
Inst2QAA = "5 Misiones"
Inst2QAH = "7 Misiones"

--Quest 1 Alliance
Inst2Quest1 = "1. Pellejos descarriados" --1486
Inst2Quest1_Level = "17"
Inst2Quest1_Attain = "13"
Inst2Quest1_Aim = "Nalpak de las Cuevas de los Lamentos quiere 20 pellejos descarriados."
Inst2Quest1_Location = "Nalpak (Los Baldíos - Cuevas de los Lamentos; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest1_Note = "Despoja a los monstruos descarrriados dentro y afuera de la instancia para obtener los pellejos descarriados.\nSe encuentra Nalpak en una cueva oculta encima de la entrada a la cueva principal."
Inst2Quest1_Prequest = "Ninguno"
Inst2Quest1_Folgequest = "Ninguno"
--
Inst2Quest1name1 = "Leotardos descarriados escurridizos"
Inst2Quest1name2 = "Talega de pellejo descarriado"

--Quest 2 Alliance
Inst2Quest2 = "2. ¡A por la botella!" -- 959
Inst2Quest2_Level = "18"
Inst2Quest2_Attain = "14"
Inst2Quest2_Aim = "El operador de grúa Pelardo de Trinquete quiere que le consigas una botella de Oporto con 99 años de antigüedad de Loco Magglish, que se esconde en las Cuevas de los Lamentos."
Inst2Quest2_Location = "Operador de grúa Pelardo (Los Baldíos - Trinquete; "..YELLOW.."63,37"..WHITE..")"
Inst2Quest2_Note = "Consigues la botella antes de que entras la instancia por matar Loco magglish. Cuando entras la cueva, dirígete al derecho para encontrarlo al final del pasaje. Él está en sigilo cerca del muro en "..YELLOW.."[1] en el mapa de la Entrada"..WHITE.."."
Inst2Quest2_Prequest = "Ninguno"
Inst2Quest2_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Alliance
Inst2Quest3 = "3. Bebidas de inteligencia" -- 1491
Inst2Quest3_Level = "18"
Inst2Quest3_Attain = "13"
Inst2Quest3_Aim = "Reúne 6 unidades de esencia de lamentos."
Inst2Quest3_Location = "Mebok Mizzyrix (Los Baldíos - Trinquete; "..YELLOW.."62,37"..WHITE..")"
Inst2Quest3_Note = "La misión previa se obtiene de Mebok Mizzyrix también.\nDespoja a los ectoplasmas para obtener la esencia de lamentos."
Inst2Quest3_Prequest = "El secreto está en el cuerno" -- 865
Inst2Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst2Quest4 = "4. Erradicación de descarriados" -- 1487
Inst2Quest4_Level = "21"
Inst2Quest4_Attain = "15"
Inst2Quest4_Aim = "Ebru de las Cuevas de los Lamentos quiere que mates 7 devastadores descarriados, 7 víboras descarriadas, 7 arrastrapiés descarriados y 7 colminfernos descarriados."
Inst2Quest4_Location = "Ebru (Los Baldíos - Cuevas de los Lamentos; "..YELLOW.."47,36"..WHITE..")"
Inst2Quest4_Note = "Ebru está dentro de una cueva oculta encima de la entrada de la cueva principal."
Inst2Quest4_Prequest = "Ninguno"
Inst2Quest4_Folgequest = "Ninguno"
--
Inst2Quest4name1 = "Patrón: cinturón de escamas descarriadas"
Inst2Quest4name2 = "Palo de fritura"
Inst2Quest4name3 = "Guanteletes de Damire"

--Quest 5 Alliance
Inst2Quest5 = "5. El fragmento resplandeciente" -- 6981
Inst2Quest5_Level = "26"
Inst2Quest5_Attain = "15"
Inst2Quest5_Aim = "Viaja a Trinquete y busca a alguien que pueda decirte algo más sobre el fragmento resplandeciente.\nEntrega el fragmento como se te indique. "
Inst2Quest5_Location = "El fragmento resplandeciente (Despoja a Mutanus el Devorador); "..YELLOW.."[9]"..WHITE..")"
Inst2Quest5_Note = "Mutanus el Devorador aparecerá si matas los líderes druidas del colmillo y escoltas el druida tauren a la entrada.\nCuando tengas el fragmento, llévalo al Banco en Trinquete, entonces entrégalo a la parte más alta de la colina de las Cuevas de los Lamentos a Fala Viento Sabio."
Inst2Quest5_Prequest = "Ninguno"
Inst2Quest5_Folgequest = "En las pesadillas" -- 3370
--
Inst2Quest5name1 = "Manto Talbar"
Inst2Quest5name2 = "Galochas del Lodazal"


--Quest 1 Horde (same as Quest 1 Alliance)
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
Inst2Quest3_HORDE = "3. Reptilia" -- 962
Inst2Quest3_HORDE_Level = "18"
Inst2Quest3_HORDE_Attain = "14"
Inst2Quest3_HORDE_Aim = "La boticaria Zamah de Cima del Trueno quiere que recojas 10 reptilias. "
Inst2Quest3_HORDE_Location = "Boticaria Zamah (Cima del Trueno - Alto de los Espíritus; "..YELLOW.."22,20"..WHITE..")"
Inst2Quest3_HORDE_Note = "Boticaria Zamah está en una cueva debajo del Alto de los Espíritus. Obtienes la misión previa del Boticario Helbrim (Los Baldíos - El Cruce; "..YELLOW.."51,30"..WHITE..").\nRecojas la Reptilia dentro de la cueva enfrente de la instancia y dentro de la instancia. Los jugadores que tienen Botánica pueden ver las hierbas por sus minimapa."
Inst2Quest3_HORDE_Prequest = "Esporas de hongos -> Boticaria Zamah" -- 848 -> 853
Inst2Quest3_HORDE_Folgequest = "Ninguno"
--
Inst2Quest3name1_HORDE = "Guantes de boticario"

--Quest 4 Horde (same as Quest 3 Alliance)
Inst2Quest4_HORDE = "4. Bebidas de inteligencia"
Inst2Quest4_HORDE_Level = Inst2Quest3_Level
Inst2Quest4_HORDE_Attain = Inst2Quest3_Attain
Inst2Quest4_HORDE_Aim = Inst2Quest3_Aim
Inst2Quest4_HORDE_Location = Inst2Quest3_Location
Inst2Quest4_HORDE_Note = Inst2Quest3_Note
Inst2Quest4_HORDE_Prequest = Inst2Quest3_Prequest
Inst2Quest4_HORDE_Folgequest = Inst2Quest3_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 4 Alliance)
Inst2Quest5_HORDE = "5. Erradicación de descarriados"
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
Inst2Quest6_HORDE = "6. Líderes del Colmillo" -- 914
Inst2Quest6_HORDE_Level = "22"
Inst2Quest6_HORDE_Attain = "11"
Inst2Quest6_HORDE_Aim = "Lleva las gemas de Cobrahn, Anacondra, Pythas y Serpentis a Nara Ferocrín en Cima del Trueno."
Inst2Quest6_HORDE_Location = "Nara Ferocrín (Cima del Trueno - Alto de los Ancestros; "..YELLOW.."75,31"..WHITE..")"
Inst2Quest6_HORDE_Note = "La cadena de misiones empieza con Hamuul Tótem de Runa (Cima del Trueno - Alto de los Ancestros; "..YELLOW.."78,28"..WHITE..")\nDespoja a los 4 druidas para obtener las gemas en "..YELLOW.."[2]"..WHITE..", "..YELLOW.."[3]"..WHITE..", "..YELLOW.."[5]"..WHITE..", "..YELLOW.."[7]"..WHITE.."."
Inst2Quest6_HORDE_Prequest = "El oasis de Los Baldíos -> Nara Ferocrín" -- 886 -> 1490
Inst2Quest6_HORDE_Folgequest = "Ninguno"
--
Inst2Quest6name1_HORDE = "Bastón creciente"
Inst2Quest6name2_HORDE = "Espada de ala"

--Quest 7 Horde (same as Quest 5 Alliance)
Inst2Quest7_HORDE = "7. El fragmento resplandeciente"
Inst2Quest7_HORDE_Level = Inst2Quest5_Level
Inst2Quest7_HORDE_Attain = Inst2Quest5_Attain
Inst2Quest7_HORDE_Aim = Inst2Quest5_Aim
Inst2Quest7_HORDE_Location = Inst2Quest5_Location
Inst2Quest7_HORDE_Note = Inst2Quest5_Note
Inst2Quest7_HORDE_Prequest = Inst2Quest5_Prequest
Inst2Quest7_HORDE_Folgequest = Inst2Quest5_Folgequest -- 3369
--
Inst2Quest7name1_HORDE = Inst2Quest5name1
Inst2Quest7name2_HORDE = Inst2Quest5name2



--------------- INST3 - Ragefire Chasm (RFC) ---------------
Inst3Story = "La Sima Ígnea es una red de cavernas volcánicas que se encuentran bajo la nueva capital de los orcos de Orgrimmar. Recientemente ha habido rumores sobre un culto leal al demoníaco Consejo de la Sombra que se ha trasladado a las ardientes profundidades de la Sima. Este culto, conocido como el Filo Ardiente, amenaza la propia soberanía de Durotar. Muchos creen que el Jefe de Guerra orco Thrall es consciente de la existencia del Filo y ha decidido no destruirlo con la esperanza de que sus miembros le lleven directamente al Consejo de la Sombra. De cualquier forma, los poderes oscuros que surgen de la Sima Ígnea podrían acabar con todo lo que los orcos han logrado."
Inst3Caption = "Sima Ígnea"
Inst3QAA = "No Hay Misiones"
Inst3QAH = "5 Misiones"

--Quest 1 Horde
Inst3Quest1_HORDE = "1. Midiendo fuerzas con el enemigo" -- 5723
Inst3Quest1_HORDE_Level = "15"
Inst3Quest1_HORDE_Attain = "9"
Inst3Quest1_HORDE_Aim = "Localiza la Sima Ígnea en Orgrimmar y después mata a 8 troggs Furia Ardiente y 8 chamanes Furia Ardiente y después ve a ver de nuevo a Rahauro a Cima del Trueno."
Inst3Quest1_HORDE_Location = "Rahauro (Cima del Trueno - Alto de los Ancestros; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest1_HORDE_Note = "Los troggs están al comienzo de la instancia."
Inst3Quest1_HORDE_Prequest = "Ninguno"
Inst3Quest1_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Horde
Inst3Quest2_HORDE = "2. Poder destructivo" -- 5725
Inst3Quest2_HORDE_Level = "16"
Inst3Quest2_HORDE_Attain = "9"
Inst3Quest2_HORDE_Aim = "Llévale los libros Hechizos de las Sombras y Encantamientos desde el infierno a Varimathras, que está en Entrañas."
Inst3Quest2_HORDE_Location = "Varimathras (Entrañas - Barrio Real; "..YELLOW.."56,92"..WHITE..")"
Inst3Quest2_HORDE_Note = "Despoja a los Cultores y Brujos Hoja Abrasadoras para obtener los libros."
Inst3Quest2_HORDE_Prequest = "Ninguno"
Inst3Quest2_HORDE_Folgequest = "Ninguno"
--
Inst3Quest2name1_HORDE = "Calzas espantosas"
Inst3Quest2name2_HORDE = "Leotardos de cenagal"
Inst3Quest2name3_HORDE = "Leotardos gárgola"

--Quest 3 Horde
Inst3Quest3_HORDE = "3. Buscando la cartera perdida" -- 5722
Inst3Quest3_HORDE_Level = "16"
Inst3Quest3_HORDE_Attain = "9"
Inst3Quest3_HORDE_Aim = "Inspecciona la Sima Ígnea en busca del cuerpo de Maur Tótem Siniestro y comprueba si porta algún objeto de interés."
Inst3Quest3_HORDE_Location = "Rahauro (Cima del Trueno - Alto de los Ancestros; "..YELLOW.."70,29"..WHITE..")"
Inst3Quest3_HORDE_Note = "Encuentras a Maur Tótem Siniestro en "..YELLOW.."[1]"..WHITE..". Después de recoger la cartera tienes que devolverla a Rahauro en Cima del Trueno."
Inst3Quest3_HORDE_Prequest = "Ninguno"
Inst3Quest3_HORDE_Folgequest = "La vuelta de la cartera perdida" -- 5724
--
Inst3Quest3name1_HORDE = "Brazales de cuentas emplumadas"
Inst3Quest3name2_HORDE = "Brazales de sabana"

--Quest 4 Horde
Inst3Quest4_HORDE = "4. Enemigos ocultos" -- 5728
Inst3Quest4_HORDE_Level = "16"
Inst3Quest4_HORDE_Attain = "9"
Inst3Quest4_HORDE_Aim = "Mata a Bazzalan y a Jergosh el Convocador y ve a ver a Thrall a Orgrimmar."
Inst3Quest4_HORDE_Location = "Thrall (Orgrimmar - Valle de la Sabiduría; "..YELLOW.."31,37"..WHITE..")"
Inst3Quest4_HORDE_Note = "Encuentras a Bazzalan en "..YELLOW.."[4]"..WHITE.." y Jergosh en "..YELLOW.."[3]"..WHITE..". La cadena de misiones empieza con Thrall en Orgrimmar."
Inst3Quest4_HORDE_Prequest = "Enemigos ocultos" -- 5727
Inst3Quest4_HORDE_Folgequest = "Enemigos ocultos" -- 5729
--
Inst3Quest4name1_HORDE = "Kris de Orgrimmar"
Inst3Quest4name2_HORDE = "Martillo de Orgrimmar"
Inst3Quest4name3_HORDE = "Hacha de Orgrimmar"
Inst3Quest4name4_HORDE = "Bastón de Orgrimmar"

--Quest 5 Horde
Inst3Quest5_HORDE = "5. Matar a la bestia" -- 5761
Inst3Quest5_HORDE_Level = "16"
Inst3Quest5_HORDE_Attain = "9"
Inst3Quest5_HORDE_Aim = "Ve a la Sima Ígnea, mata a Taragaman el Hambriento y llévale su corazón a Neeru Hojafuego a Orgrimmar."
Inst3Quest5_HORDE_Location = "Neeru Hojafuego (Orgrimmar - Circo de las Sombras; "..YELLOW.."49,50"..WHITE..")"
Inst3Quest5_HORDE_Note = "Encuentras a Taragaman en "..YELLOW.."[2]"..WHITE.."."
Inst3Quest5_HORDE_Prequest = "Ninguno"
Inst3Quest5_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest



--------------- INST4 - Uldaman (Ulda) ---------------
Inst4Story = "Uldaman es una antigua bóveda de los titanes que ha estado enterrada en las profundidades de la tierra desde la creación del mundo. Recientes excavaciones enanas han alcanzado esta ciudad olvidada, liberando la primera creación fallida de los titanes: los troggs. Las leyendas cuentan que los titanes crearon a los troggs a partir de la piedra. Cuando se percataron del fracaso de su experimento, los titanes encerraron a los troggs y lo intentaron de nuevo creando la raza de los enanos. Los secretos de la creación de los enanos están registrados en los legendarios Discos de Norgannon: enormes artefactos de los titanes que yacen en las profundidades de la antigua ciudad. Recientemente, los enanos Hierro Negro han comenzado una serie de incursiones en Uldaman con las esperanzas de reclamar los discos para su ardiente señor, Ragnaros. Sin embargo, varios guardianes protegen la ciudad: gigantes constructos de piedra viva que aplastan a cualquier intruso que encuentran. Los Discos están protegidos por un enorme Vigía de piedra llamado Archaedas. Hay incluso rumores que sugieren que los antepasados de piel de piedra de los enanos, los terráneos, todavía habitan en las profundidades de la ciudad."
Inst4Caption = "Uldaman"
Inst4QAA = "16 Misiones"
Inst4QAH = "10 Misiones"

--Quest 1 Alliance
Inst4Quest1 = "1. Un signo de esperanza" -- 721
Inst4Quest1_Level = "35"
Inst4Quest1_Attain = "33"
Inst4Quest1_Aim = "Encuentra a Grez Piemartillo en Uldaman."
Inst4Quest1_Location = "Prospector Ryedol (Tierras Inhóspitas; "..YELLOW.."53,43"..WHITE..")"
Inst4Quest1_Note = "La misión previa empieza al Mapa arrugado (Tierras Inhóspitas; "..YELLOW.."53,33"..WHITE..").\nEncuentras a Grez Piemartillo antes de entrar la instancia en "..YELLOW.."[1]"..WHITE.." en el mapa de la Entrada."
Inst4Quest1_Prequest = "Un signo de esperanza" -- 720
Inst4Quest1_Folgequest = "El amuleto de los secretos" -- 722
-- No Rewards for this quest

--Quest 2 Alliance
Inst4Quest2 = "2. El amuleto de los secretos" -- 722
Inst4Quest2_Level = "40"
Inst4Quest2_Attain = "35"
Inst4Quest2_Aim = "Encuentra el amuleto de Piemartillo y llévaselo a Uldaman."
Inst4Quest2_Location = "Grez Piemartillo (Uldaman; "..YELLOW.."[1] en el mapa de la Entrada"..WHITE..")."
Inst4Quest2_Note = "Despoja a Magregan Sombraprofunda en "..YELLOW.."[2] en el mapa de la Entrada para obtener el amuleto"..WHITE.."."
Inst4Quest2_Prequest = "Un signo de esperanza" -- 721
Inst4Quest2_Folgequest = "Tener fe en el porvenir" -- 723
-- No Rewards for this quest

--Quest 3 Alliance
Inst4Quest3 = "3. Las tablillas perdidas de Voluntad" -- 1139
Inst4Quest3_Level = "45"
Inst4Quest3_Attain = "35"
Inst4Quest3_Aim = "Encuentra la tablilla de Voluntad y llévasela al consejero Belgrum en Forjaz."
Inst4Quest3_Location = "Consejero Belgrum (Forjaz - Sala de los Exploradores; "..YELLOW.."77,10"..WHITE..")"
Inst4Quest3_Note = "La tablilla está en "..YELLOW.."[8]"..WHITE.."."
Inst4Quest3_Prequest = "El amuleto de los secretos -> Un embajador del mal" -- 722 -> 762
Inst4Quest3_Folgequest = "Ninguno"
--
Inst4Quest3name1 = "Medalla de Coraje"

--Quest 4 Alliance
Inst4Quest4 = "4. Las piedras de energía" -- 2418
Inst4Quest4_Level = "36"
Inst4Quest4_Attain = "30"
Inst4Quest4_Aim = "Llévale 8 piedras de energía de dentrio y 8 piedras de energía de An'Alleum a Aparejez en las Tierras Inhóspitas. "
Inst4Quest4_Location = "Aparejez (Tierras Inhóspitas; "..YELLOW.."42,52"..WHITE..")"
Inst4Quest4_Note = "Despoja a cualquier enemigo de Forjatiniebla dentro o afuera de la instancia para obtener las piedras."
Inst4Quest4_Prequest = "Ninguno"
Inst4Quest4_Folgequest = "Ninguno"
--
Inst4Quest4name1 = "Círculo de Piedras energizado"
Inst4Quest4name2 = "Brazales de Duracin"
Inst4Quest4name3 = "Botas perpetuas"

--Quest 5 Alliance
Inst4Quest5 = "5. El sino de Agmond" -- 704
Inst4Quest5_Level = "38"
Inst4Quest5_Attain = "30"
Inst4Quest5_Aim = "Llévale 4 urnas de piedra labrada al prospector Vetaferro en Loch Modan."
Inst4Quest5_Location = "Prospector Vetaferro (Loch Modan - Excavación de Vetaferro; "..YELLOW.."65,65"..WHITE..")"
Inst4Quest5_Note = "La misión previa empieza al Prospector Pico Tormenta (Forjaz - Sala de los Exploradores; "..YELLOW.."74,12"..WHITE..").\nLas urnas están desperdigadas en la cueva afuera de la instancia."
Inst4Quest5_Prequest = "¡Vetaferro te necesita! -> Murdaloc" -- 707 -> 739
Inst4Quest5_Folgequest = "Ninguno"
--
Inst4Quest5name1 = "Guantes de prospector"

--Quest 6 Alliance
Inst4Quest6 = "6. La solución a la maldición" -- 709
Inst4Quest6_Level = "40"
Inst4Quest6_Attain = "30"
Inst4Quest6_Aim = "Llévale la tablilla de Ryun'eh a Theldurin el Perdido."
Inst4Quest6_Location = "Theldurin el Perdido (Tierras Inhóspitas; "..YELLOW.."51,76"..WHITE..")"
Inst4Quest6_Note = "La tablilla está al norte de las cuevas, al fin este del túnel, antes de la instancia en el mapa de la Entrada en "..YELLOW.."[3]"..WHITE.."."
Inst4Quest6_Prequest = "Ninguno"
Inst4Quest6_Folgequest = "Ir a Forjaz a buscar el \"Compendio\" de Yagyin" -- 727
--
Inst4Quest6name1 = "Toga de orador del Sino"

--Quest 7 Alliance
Inst4Quest7 = "7. Los enanos desaparecidos" -- 2398
Inst4Quest7_Level = "40"
Inst4Quest7_Attain = "35"
Inst4Quest7_Aim = "Encuentra a Baelog en Uldaman."
Inst4Quest7_Location = "Prospector Pico Tormenta (Forjaz - Sala de los Exploradores; "..YELLOW.."75,12"..WHITE..")"
Inst4Quest7_Note = "Baelog está en "..YELLOW.."[1]"..WHITE.."."
Inst4Quest7_Prequest = "Ninguno"
Inst4Quest7_Folgequest = "La cámara oculta" -- 2240
-- No Rewards for this quest

--Quest 8 Alliance
Inst4Quest8 = "8. La cámara oculta" -- 2240
Inst4Quest8_Level = "40"
Inst4Quest8_Attain = "35"
Inst4Quest8_Aim = "Lee el diario de Baelog, inspecciona la cámara oculta y ve a informar al prospector Pico Tormenta."
Inst4Quest8_Location = "Baelog (Uldaman; "..YELLOW.."[1]"..WHITE..")"
Inst4Quest8_Note = "La cámara oculta está en "..YELLOW.."[4]"..WHITE..". Para abrir la cámara oculta, necesitas El bastón de Tsol de Revelosh en "..YELLOW.."[3]"..WHITE.." y el Medallón de Gni'kiv en el Cofre de Baelog en "..YELLOW.."[1]"..WHITE..". Mezcla los objetos para hacer el Bastón de Prehistoria. Usa el bastón en la habitación entre "..YELLOW.."[3] y [4]"..WHITE.." para invocar a Hierraya. Después de matarla, corre dentro de la habitación de donde vino para obtener crédito para la misión."
Inst4Quest8_Prequest = "Los enanos desaparecidos" -- 2398
Inst4Quest8_Folgequest = "Ninguno"
--
Inst4Quest8name1 = "Carga de enano"
Inst4Quest8name2 = "Estrella polar de la Liga de Expedicionarios"

--Quest 9 Alliance
Inst4Quest9 = "9. El collar hecho añicos" -- 2198
Inst4Quest9_Level = "41"
Inst4Quest9_Attain = "37"
Inst4Quest9_Aim = "Busca al creador del collar hecho añicos y descubre para qué sirve."
Inst4Quest9_Location = "Collar destrozado (botín aleatorio de Uldaman)"
Inst4Quest9_Note = "Lleva el collar a Talvash del Kissel (Forjaz - La Sala Mística; "..YELLOW.."36,3"..WHITE..")."
Inst4Quest9_Prequest = "Ninguno"
Inst4Quest9_Folgequest = "Esa información tiene un precio" -- 2199
-- No Rewards for this quest

--Quest 10 Alliance
Inst4Quest10 = "10. El regreso a Uldaman" -- 2200
Inst4Quest10_Level = "42"
Inst4Quest10_Attain = "37"
Inst4Quest10_Aim = "Busca pistas sobre el paradero del collar de Talvash en Uldaman. Dijo que un paladín muerto fue su último dueño."
Inst4Quest10_Location = "Talvash del Kissel (Forjaz - La Sala Mística; "..YELLOW.."36,3"..WHITE..")"
Inst4Quest10_Note = "El paladín está en "..YELLOW.."[2]"..WHITE.."."
Inst4Quest10_Prequest = "Esa información tiene un precio" -- 2199
Inst4Quest10_Folgequest = "Encuentra las gemas" -- 2201
-- No Rewards for this quest

--Quest 11 Alliance
Inst4Quest11 = "11. Encuentra las gemas" -- 2201
Inst4Quest11_Level = "43"
Inst4Quest11_Attain = "40"
Inst4Quest11_Aim = "Encuentra el rubí, el zafiro y el topacio que están desperdigados por Uldaman. Cuando los tengas, contacta con Talvash del Kissel mediante la ampolla de adivinación que él te dio."
Inst4Quest11_Location = "Remains of a Paladin (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest11_Note = "Las gemas están en "..YELLOW.."[1]"..WHITE.." dentro de la Urna llamativa, "..YELLOW.."[8]"..WHITE.." del Alijo de Forjatiniebla, y "..YELLOW.."[9]"..WHITE.." de Grimlok. Por favor nota que aparecerán monstruos después de abrir el Alijo de Forjatiniebla.\nUsa el Cuenco de visión de Talvash para entregar la misión y obtener la misión siguiente."
Inst4Quest11_Prequest = "El regreso a Uldaman" -- 2200
Inst4Quest11_Folgequest = "Restaurar el collar" -- 2204
-- No Rewards for this quest

--Quest 12 Alliance
Inst4Quest12 = "12. Restaurar el collar" -- 2204
Inst4Quest12_Level = "44"
Inst4Quest12_Attain = "37"
Inst4Quest12_Aim = "Obtén una fuente de energía del ensamblaje más poderoso que encuentres en Uldaman, y entrégasela a Talvash del Kissel en Forjaz."
Inst4Quest12_Location = "Cuenco de visión de Talvash"
Inst4Quest12_Note = "Despoja a Archaedas para obtener el Fuente de alimentación del collar destrozado en "..YELLOW.."[10]"..WHITE.."."
Inst4Quest12_Prequest = "Encuentra las gemas" -- 2201
Inst4Quest12_Folgequest = "Ninguno"
--
Inst4Quest12name1 = "Collar de mejoría de Talvash"

--Quest 13 Alliance
Inst4Quest13 = "13. Componentes de Uldaman" -- 17
Inst4Quest13_Level = "42"
Inst4Quest13_Attain = "36"
Inst4Quest13_Aim = "Lleva 12 setas magenta a Ghak Sanadón a Thelsamar."
Inst4Quest13_Location = "Ghak Sanadón (Loch Modan - Thelsamar; "..YELLOW.."37,49"..WHITE..")"
Inst4Quest13_Note = "Las setas están desperdigadas a través de toda la instancia. Se puede rastrear las hierbas si tienes la profesión Botánica."
Inst4Quest13_Prequest = "Componentes de Tierras Inhóspitas" -- 2500
Inst4Quest13_Folgequest = "Ninguno"
--
Inst4Quest13name1 = "Poción restauradora"

--Quest 14 Alliance
Inst4Quest14 = "14. Los tesoros reclamados" -- 1360
Inst4Quest14_Level = "43"
Inst4Quest14_Attain = "33"
Inst4Quest14_Aim = "Recoge la posesión más preciada de Krom Brazorrecio de su cofre, que está en la Sala Comunal Norte de Uldaman, y llévasela a Forjaz."
Inst4Quest14_Location = "Krom Brazorrecio (Forjaz - Sala de los Exploradores; "..YELLOW.."74,9"..WHITE..")"
Inst4Quest14_Note = "Encuentras el tesoro antes de entrar la instancia. Está a la parte al norte de las cuevas, al fin sureste del primer túnel. En el mapa de la Entrada está en "..YELLOW.."[4]"..WHITE.."."
Inst4Quest14_Prequest = "Ninguno"
Inst4Quest14_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 15 Alliance
Inst4Quest15 = "15. Los discos de platino" -- 2278 -> 2439
Inst4Quest15_Level = "47"
Inst4Quest15_Attain = "40"
Inst4Quest15_Aim = "Habla con el vigía de piedra y descubre qué conocimiento antiguo alberga. Cuando hayas adquirido el conocimiento que te ofrece, activa los Discos de Norgannon. -> Lleva la reproducción en miniatura de los Discos de Norgannon a la Liga de Expedicionarios de Forjaz."
Inst4Quest15_Location = "Los Discos de Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest15_Note = "Despúes de adquirir la misión, habla con el vigía de piedra a la izquierda de los discos. Usa los discos de platino para recibir los discos de platino en miniatura y llévaselos al Alto expedicionario Magellas en Forjaz - Sala de los Exploradores ("..YELLOW.."69,18"..WHITE.."). La misión siguiente empieza con un PNJ que está cerca."
Inst4Quest15_Prequest = "Ninguno"
Inst4Quest15_Folgequest = "Presagios de Uldum" -- 2963
--
Inst4Quest15name1 = "Saco de pelambre descongelada"
Inst4Quest15name2 = "Poción de sanación excelente"
Inst4Quest15name3 = "Poción de maná superior"

--Quest 16 Alliance
Inst4Quest16 = "16. Poder en Uldaman" -- 1956
Inst4Quest16_Level = "40"
Inst4Quest16_Attain = "35"
Inst4Quest16_Aim = "Hazte con una fuente de poder obsidiano y llévasela a Tabetha en el Marjal Revolcafango."
Inst4Quest16_Location = "Tabetha (Marjal Revolcafango; "..YELLOW.."46,57"..WHITE..")"
Inst4Quest16_Note = "Solamente para Magos: \nDespoja a una Centinela obsidiana para obtener el Fuente de poder obsidiano en "..YELLOW.."[5]"..WHITE.."."
Inst4Quest16_Prequest = "El exorcismo" -- 1955
Inst4Quest16_Folgequest = "Oleadas de maná" -- 1957
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 4 Alliance)
Inst4Quest1_HORDE = "1. Las piedras de energía"
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

--Quest 2 Horde (same as Quest 6 Alliance - different followup)
Inst4Quest2_HORDE = "2. La solución a la maldición"
Inst4Quest2_HORDE_Level = Inst4Quest6_Level
Inst4Quest2_HORDE_Attain = Inst4Quest6_Attain
Inst4Quest2_HORDE_Aim = Inst4Quest6_Aim
Inst4Quest2_HORDE_Location = Inst4Quest6_Location
Inst4Quest2_HORDE_Note = Inst4Quest6_Note
Inst4Quest2_HORDE_Prequest = Inst4Quest6_Prequest
Inst4Quest2_HORDE_Folgequest = Inst4Quest6_Folgequest
--
Inst4Quest2name1_HORDE = Inst4Quest6name1

--Quest 3 Horde
Inst4Quest3_HORDE = "3. La recuperación del collar" -- 2283
Inst4Quest3_HORDE_Level = "41"
Inst4Quest3_HORDE_Attain = "37"
Inst4Quest3_HORDE_Aim = "Busca el collar en la excavación de Uldaman y llévaselo a Dran Droffers a Orgrimmar. Puede que el collar esté estropeado."
Inst4Quest3_HORDE_Location = "Dran Droffers (Orgrimmar - La Calle Mayor; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest3_HORDE_Note = "El collar es un botín aleatorio en la instancia."
Inst4Quest3_HORDE_Prequest = "Ninguno"
Inst4Quest3_HORDE_Folgequest = "La recuperación del collar, 2ª parte" -- 2284
-- No Rewards for this quest

--Quest 4 Horde
Inst4Quest4_HORDE = "4. La recuperación del collar, 2ª parte" -- 2284
Inst4Quest4_HORDE_Level = "41"
Inst4Quest4_HORDE_Attain = "37"
Inst4Quest4_HORDE_Aim = "Busca pistas sobre el paradero de las gemas en las profundidades de Uldaman."
Inst4Quest4_HORDE_Location = "Dran Droffers (Orgrimmar - La Calle Mayor; "..YELLOW.."59,36"..WHITE..")"
Inst4Quest4_HORDE_Note = "El paladín está en "..YELLOW.."[2]"..WHITE.."."
Inst4Quest4_HORDE_Prequest = "La recuperación del collar" -- 2283
Inst4Quest4_HORDE_Folgequest = "La traducción del diario" -- 2318
-- No Rewards for this quest

--Quest 5 Horde
Inst4Quest5_HORDE = "5. La traducción del diario" -- 2318, 2338
Inst4Quest5_HORDE_Level = "42"
Inst4Quest5_HORDE_Attain = "37"
Inst4Quest5_HORDE_Aim = "Encuentra a alguien que pueda traducir el diario del paladín. El lugar más cercano en el que podrás encontrar a alguien es Kargath, en las Tierras Inhóspitas."
Inst4Quest5_HORDE_Location = "Restos de un paladín (Uldaman; "..YELLOW.."[2]"..WHITE..")"
Inst4Quest5_HORDE_Note = "El traductor Jarkal Musgofusión está en Kargath (Tierras Inhóspitas; "..YELLOW.."2,46"..WHITE..")."
Inst4Quest5_HORDE_Prequest = "La recuperación del collar, 2ª parte" -- 2284
Inst4Quest5_HORDE_Folgequest = "Encuentra las gemas y la fuente de alimentación" -- 2339
-- No Rewards for this quest

--Quest 6 Horde
Inst4Quest6_HORDE = "6. Encuentra las gemas y la fuente de alimentación" -- 2339
Inst4Quest6_HORDE_Level = "44"
Inst4Quest6_HORDE_Attain = "37"
Inst4Quest6_HORDE_Aim = "Recupera las 3 gemas y una fuente de energía para el collar de Uldaman y llévalo todo a Jarkal Musgofusión en Kargath. Jarkal cree que es posible que la fuente de energía más poderosa se halle en un ensamblaje de Uldaman."
Inst4Quest6_HORDE_Location = "Jarkal Musgofusión (Tierras Inhóspitas - Kargath; "..YELLOW.."2,46"..WHITE..")"
Inst4Quest6_HORDE_Note = "Las gemas están en "..YELLOW.."[1]"..WHITE.." dentro de la Urna llamativa, "..YELLOW.."[8]"..WHITE.." del Alijo de Forjatiniebla, y "..YELLOW.."[9]"..WHITE.." de Grimlok. Por favor nota que aparecerán monstruos después de abrir el Alijo de Forjatiniebla. Despoja a Archaedas para obtener el Fuente de alimentación del collar destrozado en "..YELLOW.."[10]"..WHITE.."."
Inst4Quest6_HORDE_Prequest = "La traducción del diario" -- 2338
Inst4Quest6_HORDE_Folgequest = "Entregar las gemas" -- 2340
--
Inst4Quest6name1_HORDE = "Collar de mejora de Jarkal"

--Quest 7 Horde
Inst4Quest7_HORDE = "7. Componentes de Uldaman" -- 2202
Inst4Quest7_HORDE_Level = "42"
Inst4Quest7_HORDE_Attain = "36"
Inst4Quest7_HORDE_Aim = "Llévale 12 setas magenta a Jarkal Musgofusión en Kargath."
Inst4Quest7_HORDE_Location = "Jarkal Musgofusión (Tierras Inhóspitas - Kargath; "..YELLOW.."2,69"..WHITE..")"
Inst4Quest7_HORDE_Note = "Obtienes la misión previa de Jarkal Musgofusión también.\nLas setas están desperdigadas a través de toda la instancia. Se puede rastrear las hierbas si tienes la profesión Botánica."
Inst4Quest7_HORDE_Prequest = "Componentes de Tierras Inhóspitas" -- 2258
Inst4Quest7_HORDE_Folgequest = "Componentes de Tierras Inhóspitas II"  -- 2203
--
Inst4Quest7name1_HORDE = "Poción restauradora"

--Quest 8 Horde
Inst4Quest8_HORDE = "8. Los tesoros reclamados" -- 2342
Inst4Quest8_HORDE_Level = "43"
Inst4Quest8_HORDE_Attain = "33"
Inst4Quest8_HORDE_Aim = "Coge el tesoro de la familia de Patrick Garrett del cofre de su familia que se encuentra en la Sala Comunal Sur de Uldaman y llévasela a él a Entrañas"
Inst4Quest8_HORDE_Location = "Patrick Garrett (Entrañas; "..YELLOW.."72,48"..WHITE..")"
Inst4Quest8_HORDE_Note = "Encuentras el tesoro antes de entrar la instancia. Está al fin del túnel sur. En el mapa de la Entrada está en "..YELLOW.."[5]"..WHITE.."."
Inst4Quest8_HORDE_Prequest = "Ninguno"
Inst4Quest8_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 9 Horde
Inst4Quest9_HORDE = "9. Los discos de platino" -- 2278 -> 2440
Inst4Quest9_HORDE_Level = "47"
Inst4Quest9_HORDE_Attain = "40"
Inst4Quest9_HORDE_Aim = "Habla con el vigía de piedra y descubre qué conocimiento antiguo alberga. Cuando hayas adquirido el conocimiento que te ofrece, activa los Discos de Norgannon. -> Lleva la reproducción en miniatura de los Discos de Norgannon a alguien que esté muy interesado."
Inst4Quest9_HORDE_Location = "Los Discos de Norgannon (Uldaman; "..YELLOW.."[11]"..WHITE..")"
Inst4Quest9_HORDE_Note = "Despúes de adquirir la misión, habla con el vigía de piedra a la izquierda de los discos. Usa los discos de platino para recibir los discos de platino en miniatura y llévaselos al Sabio Buscador de la Verdad en Cima del Trueno ("..YELLOW.."34,46"..WHITE.."). La misión siguiente empieza con un PNJ que está cerca."
Inst4Quest9_HORDE_Prequest = "Ninguno"
Inst4Quest9_HORDE_Folgequest = "Presagios de Uldum" -- 2965
--
Inst4Quest9name1_HORDE = "Saco de pelambre descongelada"
Inst4Quest9name2_HORDE = "Poción de sanación excelente"
Inst4Quest9name3_HORDE = "Poción de maná superior"

--Quest 10 Horde (same as Quest 4 Alliance)
Inst4Quest10_HORDE = "10. Poder en Uldaman"
Inst4Quest10_HORDE_Level = Inst4Quest16_Level
Inst4Quest10_HORDE_Attain = Inst4Quest16_Attain
Inst4Quest10_HORDE_Aim = Inst4Quest16_Aim
Inst4Quest10_HORDE_Location = Inst4Quest16_Location
Inst4Quest10_HORDE_Note = Inst4Quest16_Note
Inst4Quest10_HORDE_Prequest = Inst4Quest16_Prequest
Inst4Quest10_HORDE_Folgequest = Inst4Quest16_Folgequest
-- No Rewards for this quest



--------------- INST5 - Blackrock Depths (BRD) ---------------
Inst5Story = "Antaño la capital de los enanos Hierro Negro, este laberinto volcánico es ahora el centro de poder de Ragnaros el Señor de Fuego. Ragnaros ha descubierto el secreto de dar vida a la piedra y planea construir un ejército de gólems imparables para que le ayuden a conquistar toda la Montaña Roca Negra. Obsesionado con derrotar a Nefarian y a sus esbirros dracónicos, Ragnaros hará lo que sea para obtener la victoria final."
Inst5Caption = "Profundidades de Roca Negra"
Inst5QAA = "17 Misiones"
Inst5QAH = "17 Misiones"

--Quest 1 Alliance
Inst5Quest1 = "1. El legado de los Hierro Negro" -- 3802
Inst5Quest1_Level = "52"
Inst5Quest1_Attain = "48"
Inst5Quest1_Aim = "Mata a Finoso Virunegro y recupera el gran martillo, Ferrovil. Lleva a Ferrovil al Santuario de Thaurissan y coloca el martillo en la estatua de Franclorn Forjador."
Inst5Quest1_Location = "Franclorn Forjador (Montaña Roca Negra; "..YELLOW.."[3] en el mapa de la Entrada"..WHITE..")"
Inst5Quest1_Note = "Franclorn está al centro de la Montaña Roca Negra encima de su tumba. Tienes que estar muerto para hablar consigo para empezar la misión.\nFinoso Virunegro está en "..YELLOW.."[9]"..WHITE..". Encuentras el Santuario cerca de la arena en "..YELLOW.."[7]"..WHITE.."."
Inst5Quest1_Prequest = "El legado de los Hierro Negro" -- 3801
Inst5Quest1_Folgequest = "Ninguno"
--
Inst5Quest1name1 = "Llave Forjatiniebla"

--Quest 2 Alliance
Inst5Quest2 = "2. Ribbly Llavenrosca" -- 4136
Inst5Quest2_Level = "53"
Inst5Quest2_Attain = "48"
Inst5Quest2_Aim = "Llévale la cabeza de Ribbly a Yuka Llavenrosca en Las Estepas Ardientes."
Inst5Quest2_Location = "Yuka Llavenrosca (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,22"..WHITE..")"
Inst5Quest2_Note = "Obtienes la misión previa de Yorba Llavenrosca (Tanaris - Puerto Bonvapor; "..YELLOW.."67,23"..WHITE..").\nRibbly está en "..YELLOW.."[15]"..WHITE.."."
Inst5Quest2_Prequest = "Yuka Llavenrosca" -- 4324
Inst5Quest2_Folgequest = "Ninguno"
--
Inst5Quest2name1 = "Botas de rencor"
Inst5Quest2name2 = "Bufas de penitencia"
Inst5Quest2name3 = "Armadura de acero seccionador"

--Quest 3 Alliance
Inst5Quest3 = "3. La poción de enamoramiento" -- 4201
Inst5Quest3_Level = "54"
Inst5Quest3_Attain = "50"
Inst5Quest3_Aim = "Llévale 4 gromsanguinas, 10 venas de plata gigantescas y el vial lleno de Nagmara a la coima Nagmara en las Profundidades de Roca Negra."
Inst5Quest3_Location = "Coima Nagmara (Profundidades de Roca Negra; "..YELLOW.."[15]"..WHITE..")"
Inst5Quest3_Note = "Despoja a los gigantes en Azshara para obtener las Vetas gigantes de plata. Puedes coger Gromsanguina si tienes Botánica o comprarla en la subasta. Llenas el vial en los Baños de Golakka (Cráter de Un'Goro; "..YELLOW.."31,50"..WHITE..").\nDespués de completar la misión, puedes usar la puerta trasera en lugar de matar a Falange."
Inst5Quest3_Prequest = "Ninguno"
Inst5Quest3_Folgequest = "Ninguno"
--
Inst5Quest3name1 = "Esposas"
Inst5Quest3name2 = "Cinturón de castigo de Nagmara"

--Quest 4 Alliance
Inst5Quest4 = "4. Hurley Negrálito" -- 4126
Inst5Quest4_Level = "55"
Inst5Quest4_Attain = "50"
Inst5Quest4_Aim = "Llévale la receta de Cebatruenos perdida a Ragnar Cebatruenos en Kharanos."
Inst5Quest4_Location = "Ragnar Cebatruenos  (Dun Morogh - Kharanos; "..YELLOW.."46,52"..WHITE..")"
Inst5Quest4_Note = "Obtienes la misión previa de Enohar Cebatruenos (Las Tierras Devastadas - Castillo de Nethergarde; "..YELLOW.."61,18"..WHITE..").\nConsigues la receta de los guardias que aparezcan si destruyes la cerveza así en "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_Prequest = "Ragnar Cebatruenos" -- 4128
Inst5Quest4_Folgequest = "Ninguno"
--
Inst5Quest4name1 = "Cerveza negra enana"
Inst5Quest4name2 = "Cayada Golpepresto"
Inst5Quest4name3 = "Cuchilla de extremidad"

--Quest 5 Alliance  
Inst5Quest5 = "5. ¡Incendius!" -- 4263
Inst5Quest5_Level = "56"
Inst5Quest5_Attain = "48"
Inst5Quest5_Aim = "Encuentra a Lord Incendius en las Profundidades de Roca Negra ¡y acaba con él! "
Inst5Quest5_Location = "Jalinda Espiga (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."85,69"..WHITE..")"
Inst5Quest5_Note = "Obtienes la misión previa de Jalinda Espiga también. Encuentras a Lord Incendius en "..YELLOW.."[10]"..WHITE.."."
Inst5Quest5_Prequest = "Maestro supremo Pyron" -- 4262
Inst5Quest5_Folgequest = "Ninguno"
--
Inst5Quest5name1 = "Manteo nacido del Sol"
Inst5Quest5name2 = "Guantes Ocaso"
Inst5Quest5name3 = "Brazales de demonio de cripta"
Inst5Quest5name4 = "Agarre de adepto"

--Quest 6 Alliance
Inst5Quest6 = "6. El corazón de la montaña" -- 4123
Inst5Quest6_Level = "55"
Inst5Quest6_Attain = "50"
Inst5Quest6_Aim = "Llévale el corazón de la montaña a Maxwort Suprandor en Las Estepas Ardientes."
Inst5Quest6_Location = "Maxwort Suprandor (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,23"..WHITE..")"
Inst5Quest6_Note = "Encuentras el corazón de la montaña en "..YELLOW.."[8]"..WHITE.." dentro de una caja fuerte. Consigues la llave para la caja fuerte de Depositario Stilgiss. Él se aparecerá después de abrir todas las cajitas fuertes."
Inst5Quest6_Prequest = "Ninguno"
Inst5Quest6_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 7 Alliance
Inst5Quest7 = "7. Buena mercancía" -- 4286
Inst5Quest7_Level = "56"
Inst5Quest7_Attain = "50"
Inst5Quest7_Aim = "Recupera 20 riñoneras Hierro Negro."
Inst5Quest7_Location = "Oralius (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."84,68"..WHITE..")"
Inst5Quest7_Note = "Despoja a cualquier enano para obtener las riñoneras."
Inst5Quest7_Prequest = "Ninguno"
Inst5Quest7_Folgequest = "Ninguno"
--
Inst5Quest7name1 = "Una riñonera deslucida"

--Quest 8 Alliance
Inst5Quest8 = "8. El mariscal Windsor" -- 4241
Inst5Quest8_Level = "54"
Inst5Quest8_Attain = "48"
Inst5Quest8_Aim = "Viaja a la Montaña Roca Negra al noroeste y adéntrate en las Profundidades de Roca Negra. Averigua qué le ha ocurrido al mariscal Windsor.\nRecuerdas que John Andrajoso había comentado que se habían llevado a una cárcel a Windsor."
Inst5Quest8_Location = "Mariscal Maxwell (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."84,68"..WHITE..")"
Inst5Quest8_Note = "Esta misión es una parte de la cadena para la armonización con Onyxia. La misión para la cadena empieza con Helendis Rivacuerno (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."85,68"..WHITE..").\nMariscal Windsor está en "..YELLOW.."[4]"..WHITE..". Tienes que regresar a Mariscal Maxwell después de completar la misión."
Inst5Quest8_Prequest = "La amenaza de los dragonantes -> Los verdaderos maestros" -- 4182 -> 4224
Inst5Quest8_Folgequest = "Esperanza perdida" -- 4242
--
Inst5Quest8name1 = "Yelmo de conservador"
Inst5Quest8name2 = "Escarpes de escudo de placas"
Inst5Quest8name3 = "Leotardos Cortaviento"

--Quest 9 Alliance
Inst5Quest9 = "9. Una nota arrugada" -- 4264
Inst5Quest9_Level = "58"
Inst5Quest9_Attain = "50"
Inst5Quest9_Aim = "Puede que acabes de toparte con algo que le interesaría ver al mariscal Windsor. Puede que haya esperanza, después de todo."
Inst5Quest9_Location = "Una nota arrugada (botín aleatorio en las Profundidades de Roca Negra)"
Inst5Quest9_Note = "Esta misión es una parte de la cadena para la armonización con Onyxia. Mariscal Windsor está en "..YELLOW.."[4]"..WHITE.."."
Inst5Quest9_Prequest = "Esperanza perdida" -- 4242
Inst5Quest9_Folgequest = "Una brizna de esperanza" -- 4282
-- No Rewards for this quest

--Quest 10 Alliance
Inst5Quest10 = "10. Una brizna de esperanza" -- 4282
Inst5Quest10_Level = "58"
Inst5Quest10_Attain = "50"
Inst5Quest10_Aim = "Devuélvele al mariscal Windsor la información perdida.\nEl mariscal Windsor cree que la información está siendo retenida en manos del Señor Gólem Argelmach y del general Forjainquina."
Inst5Quest10_Location = "Mariscal Windsor (Profundidades de Roca Negra; "..YELLOW.."[4]"..WHITE..")"
Inst5Quest10_Note = "Esta misión es una parte de la cadena para la armonización con Onyxia. Mariscal Windsor está en "..YELLOW.."[4]"..WHITE..".\nEncuentras al Señor Gólem Argelmach en "..YELLOW.."[14]"..WHITE.." y a General Forjainquina en "..YELLOW.."[13]"..WHITE.."."
Inst5Quest10_Prequest = "Una nota arrugada" -- 4264
Inst5Quest10_Folgequest = "La fuga de la prisión" -- 4322
-- No Rewards for this quest

--Quest 11 Alliance
Inst5Quest11 = "11. La fuga de la prisión" -- 4322
Inst5Quest11_Level = "58"
Inst5Quest11_Attain = "50"
Inst5Quest11_Aim = "Ayuda al mariscal Windsor a recuperar su equipo y a liberar a sus amigos. Vuelve junto al mariscal Maxwell si lo consigues."
Inst5Quest11_Location = "Mariscal Windsor (Profundidades de Roca Negra; "..YELLOW.."[4]"..WHITE..")"
Inst5Quest11_Note = "Esta misión es una parte de la cadena para la armonización con Onyxia. Mariscal Windsor está en "..YELLOW.."[4]"..WHITE..".\nEs más fácil realizar la misión si haces el Círculo de la Ley ("..YELLOW.."[6]"..WHITE..") y el camino a la entrada antes de empezar el evento. Encuentras a Mariscal Maxwell en Las Estepas Ardientes - Vigilia de Morgan ("..YELLOW.."84,68"..WHITE..")"
Inst5Quest11_Prequest = "Una brizna de esperanza" -- 4282
Inst5Quest11_Folgequest = "Tienes una cita en Ventormenta" -- 6204
--
Inst5Quest11name1 = "Resguardo contra los Elementos"
Inst5Quest11name2 = "Hoja de Juicio"
Inst5Quest11name3 = "Hoja apta para la lucha"

--Quest 12 Alliance
Inst5Quest12 = "12. Un sabor a llamarada" -- 4024
Inst5Quest12_Level = "58"
Inst5Quest12_Attain = "52"
Inst5Quest12_Aim = "Viaja hasta las Profundidades de Roca Negra y mata a Bael'Gar.\nSolo sabes que el gigante vive en las Profundidades de Roca Negra. Acuérdate de usar la escama alterada de Vuelo Negro sobre los restos de Bael'Gar para capturar la esencia ígnea.\nLlévale la esencia ígnea encerrada a Cyrus Therepentio."
Inst5Quest12_Location = "Cyrus Therepentio (Las Estepas Ardientes; "..YELLOW.."94,31"..WHITE..")"
Inst5Quest12_Note = "La cadena de misiones empieza con Kalaran Espada del Viento (La Garganta de Fuego; "..YELLOW.."39,38"..WHITE..").\nBael'Gar está en "..YELLOW.."[11]"..WHITE.."."
Inst5Quest12_Prequest = "La llama pura -> Un sabor a llamarada" -- 3442 -> 4022
Inst5Quest12_Folgequest = "Ninguno"
--
Inst5Quest12name1 = "Manteo Piel de esquisto"
Inst5Quest12name2 = "Bufas de pellejo de vermis"
Inst5Quest12name3 = "Fajín valconiano"

--Quest 13 Alliance
Inst5Quest13 = "13. Kharan Martillo Poderoso" -- 4341
Inst5Quest13_Level = "59"
Inst5Quest13_Attain = "50"
Inst5Quest13_Aim = "Ve a las Profundidades de Roca Negra y encuentra a Kharan Martillo Poderoso.\nEl rey dijo que estaba prisionero allí; busca una cárcel."
Inst5Quest13_Location = "Rey Magni Barbabronce (Forjaz; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest13_Note = "La misión previa empieza con Historiadora Real Archesonus (Forjaz; "..YELLOW.."38,55"..WHITE.."). Kharan Martillo Poderoso está en "..YELLOW.."[2]"..WHITE.."."
Inst5Quest13_Prequest = "Las humeantes Ruinas de Thaurissan" -- 3701
Inst5Quest13_Folgequest = "Portador de malas noticias" -- 4361
-- No Rewards for this quest

--Quest 14 Alliance
Inst5Quest14 = "14. El destino del reino" -- 4362
Inst5Quest14_Level = "59"
Inst5Quest14_Attain = "50"
Inst5Quest14_Aim = "Vuelve a las Profundidades de Roca Negra y rescata a la princesa Moira Barbabronce de las garras del emperador Dragan Thaurissan."
Inst5Quest14_Location = "Rey Magni Barbabronce (Forjaz; "..YELLOW.."39,55"..WHITE..")"
Inst5Quest14_Note = "Princesa Moira Barbabronce está en "..YELLOW.."[21]"..WHITE..". Es posible que sanará a Dagran. Interrúmpela pero no puedes matarla para completar la misión. Después de hablar consigo tienes que devolver a Rey Magni Barbabronce."
Inst5Quest14_Prequest = "Portador de malas noticias" -- 4361
Inst5Quest14_Folgequest = "La sorpresa de la princesa" -- 4363
--
Inst5Quest14name1 = "Testamento de Magni"
Inst5Quest14name2 = "Piedracanto de Forjaz"

--Quest 15 Alliance
Inst5Quest15 = "15. Armonización con el Núcleo" -- 7848
Inst5Quest15_Level = "60"
Inst5Quest15_Attain = "55"
Inst5Quest15_Aim = "Acércate al portal de entrada del Núcleo de Magma en las Profundidades de Roca Negra y recoge un trozo del Núcleo. Llévaselo a Lothos Levantagrietas a la Montaña Roca Negra. "
Inst5Quest15_Location = "Lothos Levantagrietas (Montaña Roca Negra; "..YELLOW.."[2] en el mapa de la Entrada"..WHITE..")"
Inst5Quest15_Note = "Después de completar la misión, puedes usar el portal justo al lado de Lothos Levantagrietas para entrar el Núcleo de Magma.\nEncuentras el Trozo del Núcleo cerca de "..YELLOW.."[23]"..WHITE.."."
Inst5Quest15_Prequest = "Ninguno"
Inst5Quest15_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 16 Alliance
Inst5Quest16 = "16. El reto" -- 9015
Inst5Quest16_Level = "60"
Inst5Quest16_Attain = "58"
Inst5Quest16_Aim = "Dirígete al Círculo de la Ley en las Profundidades de Roca Negra y coloca el estandarte de Provocación en el centro cuando el Alto justiciero Pedrasiniestra pronuncie tu veredicto. Mata a Theldren y a sus gladiadores y regresa junto a Anthion Harmon en las Tierras de la Peste del Este con la primera pieza del amuleto de Lord Valthalak."
Inst5Quest16_Location = "Falrin Tallarbol (La Masacre Oeste; "..YELLOW.."[1] Librería"..WHITE..")"
Inst5Quest16_Note = "La misión siguiente es diferente para cada clase."
Inst5Quest16_Prequest = "El encantamiento del provocador" -- 8950
Inst5Quest16_Folgequest = "(Misiones de Clase)"
-- No Rewards for this quest

--Quest 17 Alliance
Inst5Quest17 = "17. El cáliz espectral" -- 4083
Inst5Quest17_Level = "55"
Inst5Quest17_Attain = "40"
Inst5Quest17_Aim = "El cáliz espectral flota en el aire, ascendiendo y descendiendo lentamente... como el latido de un corazón moribundo."
Inst5Quest17_Location = "Penumbra'rel (Profundidades de Roca Negra; "..YELLOW.."[18]"..WHITE..")"
Inst5Quest17_Note = "Solamente los mineros con habilidad de 230 o más alto pueden conseguir esta misión para aprender Fundir hierro negro. Los materiales para el cáliz: 2 [Rubí estrella], 20 [Barra de oro], 10 [Barra de veraplata]. Si tienes [Mena de hierro negro], puedes fundirla a La Forja Negra en "..YELLOW.."[22]"..WHITE.."."
Inst5Quest17_Prequest = "Ninguno"
Inst5Quest17_Folgequest = "Ninguno"
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
--
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
--
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
--
Inst5Quest3name1_HORDE = Inst5Quest3name1
Inst5Quest3name2_HORDE = Inst5Quest3name2

--Quest 4 Horde
Inst5Quest4_HORDE = "4. La receta de Cebatruenos perdida" -- 4143
Inst5Quest4_HORDE_Level = "55"
Inst5Quest4_HORDE_Attain = "50"
Inst5Quest4_HORDE_Aim = "Llévale la receta de Cebatruenos perdida a Vivian Lagrave en Kargath."
Inst5Quest4_HORDE_Location = "Maga oscura Vivian Lagrave (Tierras Inhóspitas - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest4_HORDE_Note = "Obtienes la misión previa de la Boticaria Zinge en Entrañas - El Apothecarium ("..YELLOW.."50,68"..WHITE..").\nConsigues la receta de unos de los guardias que aparezcan si destruyes la cerveza en "..YELLOW.."[15]"..WHITE.."."
Inst5Quest4_HORDE_Prequest = "Vivian Lagrave" -- 4133
Inst5Quest4_HORDE_Folgequest = "Ninguno"
--
Inst5Quest4name1_HORDE = "Poción de sanación excelente"
Inst5Quest4name2_HORDE = "Poción de maná superior"
Inst5Quest4name3_HORDE = "Cayada Golpepresto"
Inst5Quest4name4_HORDE = "Cuchilla de extremidad"

--Quest 5 Horde (same as Quest 6 Alliance)
Inst5Quest5_HORDE = "5. El corazón de la montaña"
Inst5Quest5_HORDE_Level = Inst5Quest6_Level
Inst5Quest5_HORDE_Attain = Inst5Quest6_Attain
Inst5Quest5_HORDE_Aim = Inst5Quest6_Aim
Inst5Quest5_HORDE_Location = Inst5Quest6_Location
Inst5Quest5_HORDE_Note = Inst5Quest6_Note
Inst5Quest5_HORDE_Prequest = Inst5Quest6_Prequest
Inst5Quest5_HORDE_Folgequest = Inst5Quest6_Folgequest
-- No Rewards for this quest

--Quest 6 Horde
Inst5Quest6_HORDE = "6. MATAR INMEDIATAMENTE: enanos Hierro Negro" -- 4081
Inst5Quest6_HORDE_Level = "52"
Inst5Quest6_HORDE_Attain = "48"
Inst5Quest6_HORDE_Aim = "Adéntrate en las Profundidades de Roca Negra ¡y destruye a esos viles agresores!\nEl señor de la guerra Dientegore quiere que mates a 15 celadores Yunque Colérico, 10 alcaides Yunque Colérico y 5 lacayos Yunque Colérico. Vuelve junto a él cuando hayas acabado la tarea."
Inst5Quest6_HORDE_Location = "SE BUSCA (Tierras Inhóspitas - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest6_HORDE_Note = "Encuentras a los enanos a la primera parte de las Profundidades de Roca Negra.\nEncuentras al Señor de la guerra Dientegore en Kargath en la parte superior de la torre (Tierras Inhóspitas, "..YELLOW.."5,47"..WHITE..")."
Inst5Quest6_HORDE_Prequest = "Ninguno"
Inst5Quest6_HORDE_Folgequest = "MATAR INMEDIATAMENTE: oficiales Hierro Negro de alto rango" -- 4082
-- No Rewards for this quest

--Quest 7 Horde
Inst5Quest7_HORDE = "7. MATAR INMEDIATAMENTE: oficiales Hierro Negro de alto rango" -- 4082
Inst5Quest7_HORDE_Level = "54"
Inst5Quest7_HORDE_Attain = "50"
Inst5Quest7_HORDE_Aim = "Adéntrate en las Profundidades de Roca Negra ¡y destruye a esos viles agresores!\nEl señor de la guerra Dientegore quiere que mates a 10 médicos Yunque Colérico, 10 soldados Yunque Colérico y 10 oficiales Yunque Colérico. Vuelve junto a él cuando hayas acabado la tarea."
Inst5Quest7_HORDE_Location = "SE BUSCA (Tierras Inhóspitas - Kargath; "..YELLOW.."3,47"..WHITE..")"
Inst5Quest7_HORDE_Note = "Encuentras a los enanos cerca de Bael'Gar "..YELLOW.."[11]"..WHITE..". Encuentras al Señor de la guerra Dientegore en Kargath en la parte superior de la torre (Tierras Inhóspitas, "..YELLOW.."5,47"..WHITE..").\nLa misión siguiente empieza con Lexlort (Tierras Inhóspitas - Kargath; "..YELLOW.."5,47"..WHITE.."). Encuentras a Grark Lorkrub en Las Estepas Ardientes ("..YELLOW.."38,35"..WHITE.."). Tienes que reducir su salud a menos de 50% para atarlo y empezar la misión de escolta."
Inst5Quest7_HORDE_Prequest = "MATAR INMEDIATAMENTE: enanos Hierro Negro" -- 4081
Inst5Quest7_HORDE_Folgequest = "Grark Lorkrub -> ¡Estás en un aprieto! (Misión de escolta)" -- 4122 -> 4121
-- No Rewards for this quest

--Quest 8 Horde
Inst5Quest8_HORDE = "8. Operación: muerte a Forjainquina" -- 4132
Inst5Quest8_HORDE_Level = "58"
Inst5Quest8_HORDE_Attain = "52"
Inst5Quest8_HORDE_Aim = "Viaja hasta las Profundidades de Roca Negra ¡y mata al general Forjainquina! Vuelve junto al señor de la guerra Dientegore cuando hayas acabado la tarea."
Inst5Quest8_HORDE_Location = "Señor de la guerra Dientegore (Tierras Inhóspitas - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest8_HORDE_Note = "Encuentras al General Forjainquina en "..YELLOW.."[13]"..WHITE..". Él llama para ayuda cuando tenga menos de 30% salud."
Inst5Quest8_HORDE_Prequest = "¡Estás en un aprieto!" -- 4121
Inst5Quest8_HORDE_Folgequest = "Ninguno"
--
Inst5Quest8name1_HORDE = "Medallón de conquistador"

--Quest 9 Horde
Inst5Quest9_HORDE = "9. La revuelta de las máquinas" -- 4063
Inst5Quest9_HORDE_Level = "58"
Inst5Quest9_HORDE_Attain = "52"
Inst5Quest9_HORDE_Aim = "Encuentra al Señor Gólem Argelmach y mátalo. Llévale su cabeza a Lotwil. Asimismo tendrás que reunir 10 núcleos de elemental intactos de los gólems Furiatracadores y de los ensamblajes belisario que protegen a Argelmach. Lo sabes porque eres <un adivino/una adivina>."
Inst5Quest9_HORDE_Location = "Lotwil Veriatus (Tierras Inhóspitas; "..YELLOW.."25,44"..WHITE..")"
Inst5Quest9_HORDE_Note = "Obtienes la misión previa de Hierofante Theodora Mulvadania (Tierras Inhóspitas - Kargath; "..YELLOW.."3,47"..WHITE..").\nEncuentras al Señor Gólem Argelmach en "..YELLOW.."[14]"..WHITE.."."
Inst5Quest9_HORDE_Prequest = "La revuelta de las máquinas" -- 4062
Inst5Quest9_HORDE_Folgequest = "Ninguno"
--
Inst5Quest9name1_HORDE = "Amito de luna azur"
Inst5Quest9name2_HORDE = "Mantón de lanzalluvias"
Inst5Quest9name3_HORDE = "Armadura de escamas de basalto"
Inst5Quest9name4_HORDE = "Guanteles de placas de lava"

--Quest 10 Horde (same as Quest 12 Alliance)
Inst5Quest10_HORDE = "10. Un sabor a llamarada"
Inst5Quest10_HORDE_Level = Inst5Quest12_Level
Inst5Quest10_HORDE_Attain = Inst5Quest12_Attain
Inst5Quest10_HORDE_Aim = Inst5Quest12_Aim
Inst5Quest10_HORDE_Location = Inst5Quest12_Location
Inst5Quest10_HORDE_Note = Inst5Quest12_Note
Inst5Quest10_HORDE_Prequest = Inst5Quest12_Prequest
Inst5Quest10_HORDE_Folgequest = Inst5Quest12_Folgequest
--
Inst5Quest10name1_HORDE = Inst5Quest12name1
Inst5Quest10name2_HORDE = Inst5Quest12name2
Inst5Quest10name3_HORDE = Inst5Quest12name3

--Quest 11 Horde
Inst5Quest11_HORDE = "11. La discordia del fuego" -- 3907
Inst5Quest11_HORDE_Level = "56"
Inst5Quest11_HORDE_Attain = "48"
Inst5Quest11_HORDE_Aim = "Adéntrate en las Profundidades de Roca Negra y localiza a Lord Incendius. Mátalo y llévale toda la información que encuentres a Corazón Atronador."
Inst5Quest11_HORDE_Location = "Corazón Atronador (Tierras Inhóspitas - Kargath; "..YELLOW.."3,48"..WHITE..")"
Inst5Quest11_HORDE_Note = "Obtienes la misión previa de Corazón Atronador también.\nEncuentras a Lord Incendius en "..YELLOW.."[10]"..WHITE.."."
Inst5Quest11_HORDE_Prequest = "La discordia del fuego" -- 3906
Inst5Quest11_HORDE_Folgequest = "Ninguno"
--
Inst5Quest11name1_HORDE = "Manteo nacido del Sol"
Inst5Quest11name2_HORDE = "Guantes Ocaso"
Inst5Quest11name3_HORDE = "Brazales de demonio de cripta"
Inst5Quest11name4_HORDE = "Agarre de adepto"

--Quest 12 Horde
Inst5Quest12_HORDE = "12. El último elemento" -- 7201
Inst5Quest12_HORDE_Level = "54"
Inst5Quest12_HORDE_Attain = "48"
Inst5Quest12_HORDE_Aim = "Viaja a las Profundidades de Roca Negra y recupera 10 esencias de los elementos. Tu primer impulso es buscar los gólems y a los creadores de gólems. Recuerdas que Vivian Lagrave también murmuró entre dientes algo sobre los elementales."
Inst5Quest12_HORDE_Location = "Maga oscura Vivian Lagrave (Tierras Inhóspitas - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst5Quest12_HORDE_Note = "Obtienes la misión previa de Corazón Atronador (Tierras Inhóspitas - Kargath; "..YELLOW.."3,48"..WHITE..").\nDespoja a cualquier elemental para obtener la esencia."
Inst5Quest12_HORDE_Prequest = "Ninguno"
Inst5Quest12_HORDE_Folgequest = "Ninguno"
--
Inst5Quest12name1_HORDE = "Sello de Lagrave"

--Quest 13 Horde
Inst5Quest13_HORDE = "13. Comandante Gor'shak" -- 3981
Inst5Quest13_HORDE_Level = "52"
Inst5Quest13_HORDE_Attain = "48"
Inst5Quest13_HORDE_Aim = "Encuentra al comandante Gor'shak en las Profundidades de Roca Negra.\nRecuerdas que en el dibujo burdo había rejas sobre el rostro del orco. Quizás deberías buscar una cárcel o algo similar."
Inst5Quest13_HORDE_Location = "Galamav el Tirador (Tierras Inhóspitas - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst5Quest13_HORDE_Note = "Obtienes la misión previa de Corazón Atronador (Tierras Inhóspitas - Kargath; "..YELLOW.."3,48"..WHITE..").\nEncuentras al Comandante Gor'shak en "..YELLOW.."[3]"..WHITE..". Despoja a Alta interrogadora Gerstahn "..YELLOW.."[5]"..WHITE.." para obtener la llave para abrir el cárcel. Si hablas consigo y empezar, los enemigos aparecen."
Inst5Quest13_HORDE_Prequest = "La discordia del fuego" -- 3906
Inst5Quest13_HORDE_Folgequest = "¿Qué pasa?" -- 3982
-- No Rewards for this quest

--Quest 14 Horde
Inst5Quest14_HORDE = "14. El rescate real" -- 4003
Inst5Quest14_HORDE_Level = "59"
Inst5Quest14_HORDE_Attain = "48"
Inst5Quest14_HORDE_Aim = "Mata al emperador Dagran Thaurissan para liberar a la princesa Moira Barbabronce del hechizo."
Inst5Quest14_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,37"..WHITE..")"
Inst5Quest14_HORDE_Note = "Después de hablar con Kharan Martillo Poderoso y Thrall, consigues esta misión.\nEncuentras al Emperador Dagran Thaurissan en "..YELLOW.."[21]"..WHITE..". Es posible que Princesa Moira Barbabronce sanará a Dagran. Interrúmpela pero no puedes matarla para completar la misión. (Las recompensas son para la misión ¿Princesa salvada?)"
Inst5Quest14_HORDE_Prequest = "Comandante Gor'shak -> Los Reinos del Este" -- 3981 -> 4002
Inst5Quest14_HORDE_Folgequest = "¿Princesa salvada?" -- 4004
--
Inst5Quest14name1_HORDE = "Resolución de Thrall"
Inst5Quest14name2_HORDE = "Ojo de Orgrimmar"

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
Inst5Quest16_HORDE_Prequest = Inst5Quest16_Prequest
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



--------------- INST6 - Blackwing Lair (BWL) ---------------
Inst6Story = "La Guarida Alanegra se encuentra en la cúspide de la Cumbre de Roca Negra. En los oscuros recodos del pico de la montaña, Nefarian a comenzado a completar las etapas finales de su plan para destruir a Ragnaros de una vez por todas y llevar a sus ejércitos hacia la supremacía absoluta sobre todas las razas de Azeroth."
Inst6Caption = "Guarida Alanegra"

Inst6QAA = "4 Misiones"
Inst6QAH = "4 Misiones"

--Quest 1 Alliance
Inst6Quest1 = "1. La corrupción de Nefarius" -- 8730
Inst6Quest1_Level = "60"
Inst6Quest1_Attain = "60"
Inst6Quest1_Aim = "Mata a Nefarian y recupera del fragmento de cetro rojo. Llévaselo a Anacronos a las Cavernas del Tiempo, en Tanaris. Tienes 5 horas para completar esta tarea."
Inst6Quest1_Location = "Vaelastrasz el Corrupto (Guarida Alanegra; "..YELLOW.."[2]"..WHITE..")"
Inst6Quest1_Note = "Puede conseguir sola una persona el fragmento. Anacronos (Tanaris - Cavernas del Tiempo; "..YELLOW.."65,49"..WHITE..")"
Inst6Quest1_Prequest = "Encomienda a los Vuelos" -- 8555
Inst6Quest1_Folgequest = "El poder de Kalimdor" -- 8742
--
Inst6Quest1name1 = "Leotardos incrustados de ónice"
Inst6Quest1name2 = "Amuleto de Escudo de las Sombras"

--Quest 2 Alliance
Inst6Quest2 = "2. Señor de Roca Negra" -- 7781
Inst6Quest2_Level = "60"
Inst6Quest2_Attain = "60"
Inst6Quest2_Aim = "Lleva la cabeza de Nefarian al Alto señor Bolvar Fordragón en Ventormenta."
Inst6Quest2_Location = "Cabeza de Nefarian; "..YELLOW.."[9]"..WHITE..""
Inst6Quest2_Note = "Alto señor Bolvar Fordragón está en Ventormenta - Castillo de Ventormenta; "..YELLOW.."78,20"..WHITE..". La misión siguiente te envia al Mariscal de campo Afrasiabi (Ventormenta - Valle de los Héroes; "..YELLOW.."67,72"..WHITE..") para obtener la recompensa."
Inst6Quest2_Prequest = "Ninguno"
Inst6Quest2_Folgequest = "Señor de Roca Negra" -- 7782
--
Inst6Quest2name1 = "Medallón de maestro matadragones"
Inst6Quest2name2 = "Orbe de maestro matadragones"
Inst6Quest2name3 = "Anillo de maestro matadragones"

--Quest 3 Alliance
Inst6Quest3 = "3. Solo uno puede alzarse" -- 8288
Inst6Quest3_Level = "60"
Inst6Quest3_Attain = "60"
Inst6Quest3_Aim = "Lleva la cabeza del Señor de linaje Capazote a Baristolth del Mar de Dunas al Fuerte Cenarion en Silithus."
Inst6Quest3_Location = "Cabeza del Señor de linaje Capazote; "..YELLOW.."[3]"..WHITE..""
Inst6Quest3_Note = "Una sola persona puede coger la cabeza."
Inst6Quest3_Prequest = "Lo que nos depara el futuro" -- 8286
Inst6Quest3_Folgequest = "El camino del honrado" -- 8301
-- No Rewards for this quest

--Quest 4 Alliance
Inst6Quest4 = "4. La única receta" -- 8620
Inst6Quest4_Level = "60"
Inst6Quest4_Attain = "60"
Inst6Quest4_Aim = "Recupera los 8 capítulos perdidos de Dracónico para torpes, únelos con la encuadernación de libro mágico y devuelve el libro completo Dracónico para torpes: Volumen II a Narain Sabelotodo de Tanaris."
Inst6Quest4_Location = "Narain Sabelotodo (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst6Quest4_Note = "Múltiple gente puede conseguir los capítulos. Dracónico para torpes: volumen II; "..GREEN.."[2']"..WHITE..""
Inst6Quest4_Prequest = "¡Señuelo!" -- 8606
Inst6Quest4_Folgequest = "Buenas y malas noticias (Tienes que completar las cadenas de misiones Guisón, ex mejor amigo y ¡Nunca me preguntes por mi negocio!)" -- 8728
--
Inst6Quest4name1 = "Turbante de poderío psíquico gnómico"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst6Quest1_HORDE = Inst6Quest1
Inst6Quest1_HORDE_Level = Inst6Quest1_Level
Inst6Quest1_HORDE_Attain = Inst6Quest1_Attain
Inst6Quest1_HORDE_Aim = Inst6Quest1_Aim
Inst6Quest1_HORDE_Location = Inst6Quest1_Location
Inst6Quest1_HORDE_Note = Inst6Quest1_Note
Inst6Quest1_HORDE_Prequest = Inst6Quest1_Prequest
Inst6Quest1_HORDE_Folgequest = Inst6Quest1_Folgequest
--
Inst6Quest1name1_HORDE = Inst6Quest1name1
Inst6Quest1name2_HORDE = Inst6Quest1name2

--Quest 2 Horde
Inst6Quest2_HORDE = "2. Señor de Roca Negra" -- 7783
Inst6Quest2_HORDE_Level = "60"
Inst6Quest2_HORDE_Attain = "60"
Inst6Quest2_HORDE_Aim = "Regresa la cabeza de Nefarian a Thrall en Orgrimmar."
Inst6Quest2_HORDE_Location = "Cabeza de Nefarian; "..YELLOW.."[9]"..WHITE..""
Inst6Quest2_HORDE_Note = "La misión siguiente te envia al Alto señor supremo Colmillosauro (Orgrimmar - Valle de la Fuerza; "..YELLOW.."51,76"..WHITE..") para la recompensa."
Inst6Quest2_HORDE_Prequest = "Ninguno"
Inst6Quest2_HORDE_Folgequest = "Señor de Roca Negra" -- 7784
--
Inst6Quest2name1_HORDE = "Medallón de maestro matadragones"
Inst6Quest2name2_HORDE = "Orbe de maestro matadragones"
Inst6Quest2name3_HORDE = "Anillo de maestro matadragones"

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
--
Inst6Quest4name1_HORDE = Inst6Quest4name1



--------------- INST7 - Blackfathom Deeps (BFD) ---------------
Inst7Story = "Situadas a lo largo de la Ensenada de Zoram en Vallefresno, las Cavernas de Brazanegra fueron un glorioso templo dedicado a la diosa lunar de los elfos de la noche, Elune. Sin embargo, el gran Diluvio destrozó el templo, hundiéndolo bajo las olas del Mar de la Bruma. Allí permaneció, hasta que atraídos por su antiguo poder, los naga y los sátiros emergieron para saquear sus secretos. Cuenta la leyenda que la antigua bestia, Aku'mai, reside en las ruinas del templo. Aku'mai, una de las mascotas favoritas de los primordiales dioses antiguos, ha devorado la zona desde entonces. Atraídos por la presencia de Aku'mai, el culto conocido como el Azote del Ocaso también ha acudido para gozar de la presencia malvada de los dioses antiguos."
Inst7Caption = "Cavernas de Brazanegra"
Inst7QAA = "6 Misiones"
Inst7QAH = "5 Misiones"

--Quest 1 Alliance
Inst7Quest1 = "1. Conocimiento en las Cavernas" -- 971
Inst7Quest1_Level = "23"
Inst7Quest1_Attain = "10"
Inst7Quest1_Aim = "Lleva el manuscrito de Lorgalis a Gerrig Agarrahueso que está en la Caverna Abandonada."
Inst7Quest1_Location = "Gerrig Agarrahueso (Forjaz - La Caverna Abandonada; "..YELLOW.."50,5"..WHITE..")"
Inst7Quest1_Note = "Encuentras el manuscrito en "..YELLOW.."[2]"..WHITE.." en el agua."
Inst7Quest1_Prequest = "Ninguno"
Inst7Quest1_Folgequest = "Ninguno"
--
Inst7Quest1name1 = "Anillo de apoyo"

--Quest 2 Alliance
Inst7Quest2 = "2. Investigaciones acerca de la corrupción" -- 1275
Inst7Quest2_Level = "24"
Inst7Quest2_Attain = "18"
Inst7Quest2_Aim = "Gershala Susurro Nocturno en Auberdine quiere 8 bulbos raquídeos corruptos."
Inst7Quest2_Location = "Gershala Susurro Nocturno (Costa Oscura - Auberdine; "..YELLOW.."38,43"..WHITE..")"
Inst7Quest2_Note = "La misión previa es opcional. Lo consigues de Argos Susurro Nocturno en (Ventormenta - El Parque; "..YELLOW.."21,55"..WHITE.."). \n\nDespoja a cualquier Naga fuera o dentro de la instancia para los bulbos."
Inst7Quest2_Prequest = "Lejana corrupción" -- 3765
Inst7Quest2_Folgequest = "Ninguno"
--
Inst7Quest2name1 = "Broches de alfazaques"
Inst7Quest2name2 = "Manteo de prelación"

--Quest 3 Alliance
Inst7Quest3 = "3. Buscando a Thaelrid" -- 1198
Inst7Quest3_Level = "24"
Inst7Quest3_Attain = "18"
Inst7Quest3_Aim = "Busca al explorador Thaelrid en las Cavernas de Brazanegra."
Inst7Quest3_Location = "Vigía del Alba Shaedlass (Darnassus - Bancal del Artesano; "..YELLOW.."55,24"..WHITE..")"
Inst7Quest3_Note = "Encuentras al Explorador Thaelrid en "..YELLOW.."[4]"..WHITE.."."
Inst7Quest3_Prequest = "Ninguno"
Inst7Quest3_Folgequest = "La vileza de Brazanegra" -- 1200
-- No Rewards for this quest

--Quest 4 Alliance
Inst7Quest4 = "4. La vileza de Brazanegra" -- 1200
Inst7Quest4_Level = "27"
Inst7Quest4_Attain = "18"
Inst7Quest4_Aim = "Llévale la cabeza del Señor Crepuscular Kelris a Vigía del Alba Selgorm en Darnassus."
Inst7Quest4_Location = "Explorador Thaelrid (Cavernas de Brazanegra; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest4_Note = "Señor Crepuscular Kelris está en "..YELLOW.."[8]"..WHITE..". Encuentras al Vigía del Alba Selgorm en Darnassus - Bancal del Artesano ("..YELLOW.."55,24"..WHITE.."). \n\n¡ATENCIÓN! Si enciendes las flamas junto al Señor Crepuscular Kelris, aparezcan los enemigos hóstiles."
Inst7Quest4_Prequest = "Buscando a Thaelrid" -- 1198
Inst7Quest4_Folgequest = "Ninguno"
--
Inst7Quest4name1 = "Cetro de lápida"
Inst7Quest4name2 = "Rodela ártica"

--Quest 5 Alliance
Inst7Quest5 = "5. Cascada Crepuscular" -- 1199
Inst7Quest5_Level = "25"
Inst7Quest5_Attain = "20"
Inst7Quest5_Aim = "Lleva 10 colgantes Crepusculares al Guardia argenta Manados en Darnassus."
Inst7Quest5_Location = "Guardia Argenta Manados (Darnassus - Bancal del Artesano; "..YELLOW.."55,23"..WHITE..")"
Inst7Quest5_Note = "Despoja a cualquier monstruo crepuscular para obtener los colgantes."
Inst7Quest5_Prequest = "Ninguno"
Inst7Quest5_Folgequest = "Ninguno"
--
Inst7Quest5name1 = "Botas Nimbus"
Inst7Quest5name2 = "Faja de duramen"

--Quest 6 Alliance
Inst7Quest6 = "6. El orbe de Soran'ruk" -- 1740
Inst7Quest6_Level = "25"
Inst7Quest6_Attain = "20"
Inst7Quest6_Aim = "Encuentra 3 trozos de Soran'ruk y 1 trozo de Soran'ruk grande y llévaselos a Doan Karhan en Los Baldíos."
Inst7Quest6_Location = "Doan Karhan (Los Baldíos; "..YELLOW.."49,57"..WHITE..")"
Inst7Quest6_Note = "Solamente para Brujos: Consigues los 3 Trozos de Soran'ruk de los Acólitos Crepusculares en "..YELLOW.."[Cavernas de Brazanegra]"..WHITE..". Consigues el Trozo de Soran'ruk grande en "..YELLOW.."[Castillo de Colmillo Oscuro]"..WHITE.." de los Almanegras Colmillo Oscuro."
Inst7Quest6_Prequest = "Ninguno"
Inst7Quest6_Folgequest = "Ninguno"
--
Inst7Quest6name1 = "Orbe de Soran'ruk"
Inst7Quest6name2 = "Bastón of Soran'ruk"


--Quest 1 Horde
Inst7Quest1_HORDE = "1. La esencia de Aku'Mai" -- 6563
Inst7Quest1_HORDE_Level = "22"
Inst7Quest1_HORDE_Attain = "17"
Inst7Quest1_HORDE_Aim = "Llévale 20 zafiros de Aku'Mai a Je'neu Sancrea en Vallefresno."
Inst7Quest1_HORDE_Location = "Je'neu Sancrea (Vallefresno - Avanzada de Zoram'gar; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest1_HORDE_Note = "Obtienes la misión previa Problemas en las profundidades de Tsunaman (Sierra Espolón - Refugio Roca del Sol; "..YELLOW.."47,64"..WHITE.."). Se encuentra los cristales en los tuneles antes de entrar la instancia."
Inst7Quest1_HORDE_Prequest = "Problemas en las profundidades" -- 6562
Inst7Quest1_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Horde
Inst7Quest2_HORDE = "2. Lealtad a los dioses antiguos" -- 6564 -> 6565
Inst7Quest2_HORDE_Level = "26"
Inst7Quest2_HORDE_Attain = "17"
Inst7Quest2_HORDE_Aim = "Llévale la nota mojada a Je'neu Sancrea en Vallefresno. -> Mata a Lorgus Jett."
Inst7Quest2_HORDE_Location = "Nota mojada (botín - ve la nota)"
Inst7Quest2_HORDE_Note = "Despoja a las Sacerdotisas de las mareas Brazanegra para obtener la nota mojada. Entrégasela a Je'neu Sancrea (Vallefresno - Avanzada de Zoram'gar; "..YELLOW.."11,33"..WHITE.."). Lorgus Jett está en "..YELLOW.."[6]"..WHITE.."."
Inst7Quest2_HORDE_Prequest = "Ninguno"
Inst7Quest2_HORDE_Folgequest = "Ninguno"
--
Inst7Quest2name1_HORDE = "Sortija del Puño"
Inst7Quest2name2_HORDE = "Manto de castaño"

--Quest 3 Horde
Inst7Quest3_HORDE = "3. Entre ruinas" -- 6921
Inst7Quest3_HORDE_Level = "27"
Inst7Quest3_HORDE_Attain = "21"
Inst7Quest3_HORDE_Aim = "Llévale el núcleo de las profundidades a Je'neu Sancrea de la Avanzada de Zoram'gar, Vallefresno."
Inst7Quest3_HORDE_Location = "Je'neu Sancrea (Vallefresno - Avanzada de Zoram'gar; "..YELLOW.."11,33"..WHITE..")"
Inst7Quest3_HORDE_Note = "Encuentras el núcleo de las profundidades en "..YELLOW.."[7]"..WHITE.." en el agua. Cuando consigas el núcleo, aparezca Barón Aquanis y te ataca. Despoja a él para obtener un objeto de misión para llevar a Je'neu Sancrea."
Inst7Quest3_HORDE_Prequest = "Ninguno"
Inst7Quest3_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Horde
Inst7Quest4_HORDE = "4. La vileza de Brazanegra" -- 6561
Inst7Quest4_HORDE_Level = "27"
Inst7Quest4_HORDE_Attain = "18"
Inst7Quest4_HORDE_Aim = "Llévale la cabeza del Señor Crepuscular Kelris a Bashana Tótem de Runa en Cima del Trueno."
Inst7Quest4_HORDE_Location = "Explorador Thaelrid (Cavernas de Brazanegra; "..YELLOW.."[4]"..WHITE..")"
Inst7Quest4_HORDE_Note = "Señor Crepuscular Kelris está en "..YELLOW.."[8]"..WHITE..". Encuentras a Bashana Tótem de Runa en Cima del Trueno - Alto de los Ancestros ("..YELLOW.."70,33"..WHITE.."). \n\n¡ATENCIÓN! Si enciendes las flamas junto al Señor Crepuscular Kelris, aparezcan los enemigos hóstiles."
Inst7Quest4_HORDE_Prequest = "Ninguno"
Inst7Quest4_HORDE_Folgequest = "Ninguno"
--
Inst7Quest4name1_HORDE = "Cetro de lápida"
Inst7Quest4name2_HORDE = "Rodela ártica"

--Quest 5 Horde (same as Quest 6 Alliance)
Inst7Quest5_HORDE = "5. El orbe de Soran'ruk"
Inst7Quest5_HORDE_Level = Inst7Quest6_Level
Inst7Quest5_HORDE_Attain = Inst7Quest6_Attain
Inst7Quest5_HORDE_Aim = Inst7Quest6_Aim
Inst7Quest5_HORDE_Location = Inst7Quest6_Location
Inst7Quest5_HORDE_Note = Inst7Quest6_Note
Inst7Quest5_HORDE_Prequest = Inst7Quest6_Prequest
Inst7Quest5_HORDE_Folgequest = Inst7Quest6_Folgequest
--
Inst7Quest5name1_HORDE = Inst7Quest6name1
Inst7Quest5name2_HORDE = Inst7Quest6name2



--------------- INST8 - Cumbre de Roca Negra Inferior (LBRS) ---------------
Inst8Story = "La poderosa fortaleza tallada en las entrañas de la Montaña Roca Negra fue diseñada por el maestro arquitecto enano, Franclorn Forjador. Pensada como el símbolo del poder de Hierro Negro, la fortaleza estuvo controlada por los siniestros enanos durante siglos. Sin embargo, Nefarian, el astuto hijo del dragón Alamuerte, tenía otros planes para la grandiosa fortaleza. Él y sus esbirros dracónicos tomaron el control de la Cumbre y lucharon por el control de las posesiones enanas en las profundidades volcánicas de la montaña. Al darse cuenta de que los enanos estaban liderados por el poderoso elemental de fuego, Ragnaros, Nefarian juró que aplastaría a sus enemigos y reclamaría toda la montaña Roca Negra para si mismo."
Inst8Caption = "Cumbre de Roca Negra Inferior"
Inst8QAA = "14 Misiones"
Inst8QAH = "14 Misiones"

--Quest 1 Alliance
Inst8Quest1 = "1. Las últimas tablillas" -- 4788
Inst8Quest1_Level = "58"
Inst8Quest1_Attain = "40"
Inst8Quest1_Aim = "Llévale la quinta y sexta tablillas Mosh'aru al prospector Ferrobota, que está en Tanaris."
Inst8Quest1_Location = "Prospector Ferrobota (Tanaris - Puerto Bonvapor; "..YELLOW.."66,23"..WHITE..")"
Inst8Quest1_Note = "Encuentras las tablillas cerca de "..YELLOW.."[7]"..WHITE.." y "..YELLOW.."[9]"..WHITE..".\nLas recompensas son para la misión 'La confrontación con Yeh'kinya'. Encuentras a Yeh'kinya cerca del Prospector Ferrobota."
Inst8Quest1_Prequest = "Las tablillas perdidas Mosh'aru" -- 5065
Inst8Quest1_Folgequest = "La confrontación con Yeh'kinya" -- 8181
-- No Rewards for this quest
Inst8Quest1name1 = "Capa Hakkari descolorida"
Inst8Quest1name2 = "Manteo Hakkari andrajoso"

--Quest 2 Alliance
Inst8Quest2 = "2. Las mascotas exóticas de Kibler" -- 4729
Inst8Quest2_Level = "59"
Inst8Quest2_Attain = "55"
Inst8Quest2_Aim = "Viaja hasta la Cumbre de Roca Negra y encuentra cachorros de huargo Hacha de Sangre. Usa la jaula para transportar a esas feroces fierecillas. Llévale a Kibler 1 cachorro de huargo enjaulado."
Inst8Quest2_Location = "Kibler (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest2_Note = "Encuentras el cachorro de huargo en "..YELLOW.."[17]"..WHITE.."."
Inst8Quest2_Prequest = "Ninguno"
Inst8Quest2_Folgequest = "Ninguno"
--
Inst8Quest2name1 = "Transportador de huargos"

--Quest 3 Alliance
Inst8Quest3 = "3. Bestia amaestrada" -- 4862
Inst8Quest3_Level = "59"
Inst8Quest3_Attain = "55"
Inst8Quest3_Aim = "Viaja a la Cumbre de Roca Negra y reúne 15 huevos de araña de la cumbre para Kibler."
Inst8Quest3_Location = "Kibler (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest3_Note = "Encuentras los huevos de araña cerca de "..YELLOW.."[13]"..WHITE.."."
Inst8Quest3_Prequest = "Ninguno"
Inst8Quest3_Folgequest = "Ninguno"
--
Inst8Quest3name1 = "Jaula de Telebrasada"

--Quest 4 Alliance
Inst8Quest4 = "4. La leche de la madre" -- 4866
Inst8Quest4_Level = "60"
Inst8Quest4_Attain = "55"
Inst8Quest4_Aim = "En el corazón de la Cumbre de Roca Negra encontrarás a la madre Telabrasada. Provócala para que te envenene. Lo más seguro es que tendrás que matarla también. Vuelve junto a John Andrajoso cuando estés envenenado para que pueda extraer el veneno de ti."
Inst8Quest4_Location = "John Andrajoso (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,23"..WHITE..")"
Inst8Quest4_Note = "Madre Telebrasada está en "..YELLOW.."[13]"..WHITE..". El efecto de veneno atrapa los jugadores cercanos también. Si está quitado o disipado, fallarás la misión."
Inst8Quest4_Prequest = "Ninguno"
Inst8Quest4_Folgequest = "Ninguno"
--
Inst8Quest4name1 = "Copa interminable de John Andrajoso"

--Quest 5 Alliance
Inst8Quest5 = "5. Acaba con el origen de la amenaza" -- 4701
Inst8Quest5_Level = "59"
Inst8Quest5_Attain = "55"
Inst8Quest5_Aim = "Viaja hasta la Cumbre de Roca Negra y destruye el origen de la amenaza del huargo. Cuando dejaste a Helendis, gritó un nombre: Halycon. Es la palabra que los orcos usan para referirse al huargo."
Inst8Quest5_Location = "Helendis Rivacuerno (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_Note = "Halycon está en "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_Prequest = "Ninguno"
Inst8Quest5_Folgequest = "Ninguno"
--
Inst8Quest5name1 = "Togas de Astoria"
Inst8Quest5name2 = "Chaleco de calador"
Inst8Quest5name3 = "Coraza de Luna de jade"

--Quest 6 Alliance
Inst8Quest6 = "6. Urok Aullasino" -- 4867
Inst8Quest6_Level = "60"
Inst8Quest6_Attain = "55"
Inst8Quest6_Aim = "Lee el pergamino de Warosh. Llévale el mojo de Warosh a Warosh."
Inst8Quest6_Location = "Warosh (Cumbre de Roca Negra Inferior; "..YELLOW.."[2]"..WHITE..")"
Inst8Quest6_Note = "Invoca y mata a Urok Aullasino en "..YELLOW.."[15]"..WHITE.." para obtener el Mojo de Warosh. Para invocarlo, necesitas la Pica férrea y la Cabeza de Omokk en "..YELLOW.."[5]"..WHITE..". La Pica férrea está en "..YELLOW.."[3]"..WHITE..". Durante la invocación, aparecerán oleadas de ogros antes de que aparezca Urok Aullasino. Usa la Pica férrea para dañar a los ogros."
Inst8Quest6_Prequest = "Ninguno"
Inst8Quest6_Folgequest = "Ninguno"
--
Inst8Quest6name1 = "Talismán prismático"

--Quest 7 Alliance
Inst8Quest7 = "7. Las pertenencias de Bijou" -- 5001
Inst8Quest7_Level = "59"
Inst8Quest7_Attain = "55"
Inst8Quest7_Aim = "Encuentra las pertenencias de Bijou y devuélveselas. ¡Suerte!"
Inst8Quest7_Location = "Bijou (Cumbre de Roca Negra Inferior; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest7_Note = "Encuentras las pertenencias de Bijou a la ruta a Madre Telebrasadas en "..YELLOW.."[13]"..WHITE..".\nMariscal Maxwell está en (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."84,58"..WHITE..")."
Inst8Quest7_Prequest = "Ninguno"
Inst8Quest7_Folgequest = "Un mensaje para Maxwell" -- 5002
-- No Rewards for this quest

--Quest 8 Alliance
Inst8Quest8 = "8. La misión de Maxwell" -- 5081
Inst8Quest8_Level = "60"
Inst8Quest8_Attain = "55"
Inst8Quest8_Aim = "Viaja a la Cumbre de Roca Negra y acaba con el maestro de guerra Voone, el alto señor Omokk y el señor supremo Vermiothalak."
Inst8Quest8_Location = "Mariscal Maxwell (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."84,58"..WHITE..")"
Inst8Quest8_Note = "Encuentras al Maestro de guerra Voone en "..YELLOW.."[9]"..WHITE..", Alto señor Omokk en "..YELLOW.."[5]"..WHITE.." y Señor supremo Vermiothalak en "..YELLOW.."[19]"..WHITE.."."
Inst8Quest8_Prequest = "Un mensaje para Maxwell" -- 5002
Inst8Quest8_Folgequest = "Ninguno"
--
Inst8Quest8name1 = "Grilletes Vermiothalak"
Inst8Quest8name2 = "Limitador de circunferencia de Omokk"
Inst8Quest8name3 = "Bozal de Halycon"
Inst8Quest8name4 = "Ceñidor de Vosh'gajin"
Inst8Quest8name5 = "Mandiletes de maña de Voone"

--Quest 9 Alliance
Inst8Quest9 = "9. El sello de ascensión" -- 4742
Inst8Quest9_Level = "60"
Inst8Quest9_Attain = "57"
Inst8Quest9_Aim = "Encuentra las 3 gemas del mando: La gema de Espina Ahumada, la gema de Cumbrerroca y la gema de Hacha de Sangre. Llévaselas, junto con el sello de ascensión sin adornar a Vaelan."
Inst8Quest9_Location = "Vaelan (Cumbre de Roca Negra Inferior; "..YELLOW.."[1]"..WHITE..")"
Inst8Quest9_Note = "Consigues la Gema de Cumbrerroca del Alto señor Omokk en "..YELLOW.."[5]"..WHITE..", la Gema de Espina Ahumada del Maestro de guerra Voone en "..YELLOW.."[9]"..WHITE.." y la Gema de Hacha de Sangre del Señor supremo Vermiothalak en "..YELLOW.."[19]"..WHITE..". Despoja a cualquier enemigo en la Cumbre de Roca Negra Inferior para obtener el Sello de ascención sin adornar. Obtienes la llave para entrar la Cumbre de Roca Negra Superior si completas la cadena de misiones."
Inst8Quest9_Prequest = "Ninguno"
Inst8Quest9_Folgequest = "El sello de ascensión" -- 4743
-- No Rewards for this quest

--Quest 10 Alliance
Inst8Quest10 = "10. Orden del general Drakkisath" -- 5089
Inst8Quest10_Level = "60"
Inst8Quest10_Attain = "55"
Inst8Quest10_Aim = "Llévale la orden del general Drakkisath al mariscal Maxwell en Las Estepas Ardientes."
Inst8Quest10_Location = "Orden del general Drakkisath (botín del Señor supremo Vermiothalak; "..YELLOW.."[19]"..WHITE..")"
Inst8Quest10_Note = "Mariscal Maxwell está en Las Estepas Ardientes - Vigilia de Morgan; ("..YELLOW.."84,58"..WHITE..")."
Inst8Quest10_Prequest = "Ninguno"
Inst8Quest10_Folgequest = "Muerte al general Drakkisath ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 5102
-- No Rewards for this quest

--Quest 11 Alliance
Inst8Quest11 = "11. La parte izquierda del amuleto de Lord Valthalak" -- 8966
Inst8Quest11_Level = "60"
Inst8Quest11_Attain = "58"
Inst8Quest11_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Mor Pezuña Gris y mátalo. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con la parte izquierda del amuleto de Lord Valthalak y el Blandón de Señalización."
Inst8Quest11_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst8Quest11_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Mor Pezuña Gris en "..YELLOW.."[9]"..WHITE.."."
Inst8Quest11_Prequest = "Componentes importantes" -- 8962
Inst8Quest11_Folgequest = "En tu destino veo la Isla de Alcaz..." -- 8970
-- No Rewards for this quest

--Quest 12 Alliance
Inst8Quest12 = "12. La parte derecha del amuleto de Lord Valthalak" -- 8989
Inst8Quest12_Level = "60"
Inst8Quest12_Attain = "58"
Inst8Quest12_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Mor Pezuña Gris y mátalo. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con el amuleto de Lord Valthalak recompuesto y el Blandón de Señalización."
Inst8Quest12_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst8Quest12_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Mor Pezuña Gris en "..YELLOW.."[9]"..WHITE.."."
Inst8Quest12_Prequest = "Más componentes importantes" -- 8986
Inst8Quest12_Folgequest = "Últimos preparativos ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 13 Alliance
Inst8Quest13 = "13. Piedra culebra de la cazadora de las Sombras" -- 5306
Inst8Quest13_Level = "60"
Inst8Quest13_Attain = "50"
Inst8Quest13_Aim = "Viaja a la Cumbre de Roca Negra y mata a la cazadora de las Sombras Vosh'gajin. Recupera la piedra culebra de Vosh'gajin y vuelve con Kilram."
Inst8Quest13_Location = "Kilram (Cuna del Invierno - Vista Eterna; "..YELLOW.."61,37"..WHITE..")"
Inst8Quest13_Note = "Misión para Herreros. Cazadora de las Sombras Vosh'gajin está en "..YELLOW.."[7]"..WHITE.."."
Inst8Quest13_Prequest = "Ninguno"
Inst8Quest13_Folgequest = "Ninguno"
--
Inst8Quest13name1 = "Diseño: Filo del Alba"

--Quest 14 Alliance
Inst8Quest14 = "14. Muerte abrasadora" -- 5103
Inst8Quest14_Level = "60"
Inst8Quest14_Attain = "60"
Inst8Quest14_Aim = "Alguien en este mundo debe de saber qué hacer con estos guanteletes. ¡Suerte!"
Inst8Quest14_Location = "Restos humanos (Cumbre de Roca Negra Inferior; "..YELLOW.."[9]"..WHITE..")"
Inst8Quest14_Note = "Misión para Herreros. Coge los Guanteletes de placas sin templar cerca de los restos humanos en "..YELLOW.."[11]"..WHITE..". Devuélveselos a Malyfous Martilloscuro (Cuna del Invierno - Vista Eterna; "..YELLOW.."61,39"..WHITE.."). Las recompensas son para la misión siguiente."
Inst8Quest14_Prequest = "Ninguno"
Inst8Quest14_Folgequest = "Guanteletes de placas ígneas" -- 5124
--
Inst8Quest14name1 = "Diseño: guanteletes de placas ígneas"
Inst8Quest14name2 = "Guanteletes de placas ígneas"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst8Quest1_HORDE = Inst8Quest1
Inst8Quest1_HORDE_Level = Inst8Quest1_Level
Inst8Quest1_HORDE_Attain = Inst8Quest1_Attain
Inst8Quest1_HORDE_Aim = Inst8Quest1_Aim
Inst8Quest1_HORDE_Location = Inst8Quest1_Location
Inst8Quest1_HORDE_Note = Inst8Quest1_Note
Inst8Quest1_HORDE_Prequest = Inst8Quest1_Prequest
Inst8Quest1_HORDE_Folgequest = Inst8Quest1_Folgequest
--
Inst8Quest1name1_HORDE = "Capa Hakkari descolorida"
Inst8Quest1name2_HORDE = "Manteo Hakkari andrajoso"
--

--Quest 2 Horde (same as Quest 2 Alliance)
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

--Quest 3 Horde (same as Quest 3 Alliance)
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

--Quest 4 Horde (same as Quest 4 Alliance)
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
Inst8Quest5_HORDE = "5. La maestra de la manada" -- 4724
Inst8Quest5_HORDE_Level = "59"
Inst8Quest5_HORDE_Attain = "55"
Inst8Quest5_HORDE_Aim = "Mata a Halycon, la maestra de la manada de los huargos Hacha de Sangre."
Inst8Quest5_HORDE_Location = "Galamav el Tirador (Tierras Inhóspitas - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest5_HORDE_Note = "Halycon está en "..YELLOW.."[17]"..WHITE.."."
Inst8Quest5_HORDE_Prequest = "Ninguno"
Inst8Quest5_HORDE_Folgequest = "Ninguno"
--
Inst8Quest5name1_HORDE = "Togas de Astoria"
Inst8Quest5name2_HORDE = "Chaleco de calador"
Inst8Quest5name3_HORDE = "Coraza de Luna de jade"

--Quest 6 Horde (same as Quest 6 Alliance)
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
Inst8Quest7_HORDE = "7. La espía Bijou" -- 4981
Inst8Quest7_HORDE_Level = "59"
Inst8Quest7_HORDE_Attain = "55"
Inst8Quest7_HORDE_Aim = "Viaja hasta la Cumbre de Roca Negra y averigua qué le ha ocurrido a Bijou."
Inst8Quest7_HORDE_Location = "Lexlort (Tierras Inhóspitas - Kargath; "..YELLOW.."5,47"..WHITE..")"
Inst8Quest7_HORDE_Note = "Encuentras a Bijou en "..YELLOW.."[8]"..WHITE.."."
Inst8Quest7_HORDE_Prequest = "Ninguno"
Inst8Quest7_HORDE_Folgequest = "Las pertenencias de Bijou" -- 4982
-- No Rewards for this quest

--Quest 8 Horde
Inst8Quest8_HORDE = "8. Las pertenencias de Bijou" -- 4982
Inst8Quest8_HORDE_Level = "59"
Inst8Quest8_HORDE_Attain = "55"
Inst8Quest8_HORDE_Aim = "Encuentra las pertenencias de Bijou y devuélveselas. Recuerdas que ella mencionó haberlas ocultado en la planta baja de la ciudad."
Inst8Quest8_HORDE_Location = "Bijou (Cumbre de Roca Negra Inferior; "..YELLOW.."[3]"..WHITE..")"
Inst8Quest8_HORDE_Note = "Encuentras las pertenencias de Bijou a la ruta a Madre Telebrasadas en "..YELLOW.."[13]"..WHITE..".\nLas recompensas son para la misión 'El informe de reconocimiento de Bijou'."
Inst8Quest8_HORDE_Prequest = "La espía Bijou" -- 4981
Inst8Quest8_HORDE_Folgequest = "El informe de reconocimiento de Bijou" -- 4983
--
Inst8Quest8name1_HORDE = "Guantes viento libre"
Inst8Quest8name2_HORDE = "Faja de poste marino"

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
Inst8Quest10_HORDE = "10. La orden del Señor de la Guerra" -- 4903
Inst8Quest10_HORDE_Level = "60"
Inst8Quest10_HORDE_Attain = "55"
Inst8Quest10_HORDE_Aim = "Mata al alto señor Omokk, al maestro de guerra Voone y al señor supremo Vermiothalak. Recupera importantes documentos Roca Negra. Vuelve junto al señor de la guerra Dientegore en Kargath cuando hayas cumplido la misión."
Inst8Quest10_HORDE_Location = "Señor de la guerra Dientegore (Tierras Inhóspitas - Kargath; "..YELLOW.."65,22"..WHITE..")"
Inst8Quest10_HORDE_Note = "Es la misión previa para la cadena de misiones para la armonización con Onyxia.\nEncuentras al Maestro de guerra Voone en "..YELLOW.."[9]"..WHITE..", Alto señor Omokk en "..YELLOW.."[5]"..WHITE.." y Señor supremo Vermiothalak en "..YELLOW.."[19]"..WHITE..". Los Importantes documentos de Roca Negra aparece cerca de uno de los jefes."
Inst8Quest10_HORDE_Prequest = "Ninguno"
Inst8Quest10_HORDE_Folgequest = "La sabiduría de Eitrigg -> ¡Por la Horda! ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 4941 -> 4974
--
Inst8Quest10name1_HORDE = "Grilletes Vermiothalak"
Inst8Quest10name2_HORDE = "Limitador de circunferencia de Omokk"
Inst8Quest10name3_HORDE = "Bozal de Halycon"
Inst8Quest10name4_HORDE = "Ceñidor de Vosh'gajin"
Inst8Quest10name5_HORDE = "Mandiletes de maña de Voone"

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
--
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
--
Inst8Quest14name1_HORDE = Inst8Quest14name1
Inst8Quest14name2_HORDE = Inst8Quest14name2



--------------- INST9 - Cumbre de Roca Negra Superior (UBRS) ---------------
Inst9Story = "La poderosa fortaleza tallada en las entrañas de la Montaña Roca Negra fue diseñada por el maestro arquitecto enano, Franclorn Forjador. Pensada como el símbolo del poder de Hierro Negro, la fortaleza estuvo controlada por los siniestros enanos durante siglos. Sin embargo, Nefarian, el astuto hijo del dragón, Alamuerte, tenía otros planes para la grandiosa fortaleza. Él y sus esbirros dracónicos tomaron el control de la Cumbre y lucharon por el control de las posesiones enanas en las profundidades volcánicas de la montaña. Al darse cuenta de que los enanos estaban liderados por el poderoso elemental de fuego, Ragnaros, Nefarian juró que aplastaría a sus enemigos y reclamaría toda la montaña Roca Negra para si mismo."
Inst9Caption = "Cumbre de Roca Negra Superior"
Inst9QAA = "11 Misiones"
Inst9QAH = "12 Misiones"

--Quest 1 Alliance
Inst9Quest1 = "1. El Protectorado de la matrona" -- 5160
Inst9Quest1_Level = "60"
Inst9Quest1_Attain = "57"
Inst9Quest1_Aim = "Viaja hasta la Cuna del Invierno y encuentra a Haleh. Dale la escama de Awbee."
Inst9Quest1_Location = "Awbee (Cumbre de Roca Negra Superior; "..YELLOW.."[7]"..WHITE..")"
Inst9Quest1_Note = "Encuentras a Awbee en la habitación después de la Arena en "..YELLOW.."[7]"..WHITE..".\nHaleh está en la Cuna del Invierno ("..YELLOW.."54,51"..WHITE.."). Usa el portal al fin de la cueva para irte a ella."
Inst9Quest1_Prequest = "Ninguno"
Inst9Quest1_Folgequest = "La cólera del Vuelo Azul" -- 5161
-- No Rewards for this quest

--Quest 2 Alliance
Inst9Quest2 = "2. ¡Finkle Einhorn, a tu servicio!" -- 5047
Inst9Quest2_Level = "60"
Inst9Quest2_Attain = "55"
Inst9Quest2_Aim = "Habla con Malyfous Martilloscuro en Vista Eterna."
Inst9Quest2_Location = "Finkle Einhorn (Cumbre de Roca Negra Superior; "..YELLOW.."[8]"..WHITE..")"
Inst9Quest2_Note = "Finkle Einhorn aparece después de desollar a La Bestia. Encuentras a Malyfous Martilloscuro en (Cuna del Invierno - Vista Eterna; "..YELLOW.."61,38"..WHITE..")."
Inst9Quest2_Prequest = "Ninguno"
Inst9Quest2_Folgequest = "Leotardos de Arcana, Almete del Sabio Escarlata, y Coraza Sed de Sangre" -- 5063, 5067, 5068
-- No Rewards for this quest

--Quest 3 Alliance
Inst9Quest3 = "3. Un huevo congelado" -- 4734
Inst9Quest3_Level = "60"
Inst9Quest3_Attain = "57"
Inst9Quest3_Aim = "Usa el prototipo de ovosciloscopio sobre un huevo de El Grajero, en la Cumbre de Roca Negra."
Inst9Quest3_Location = "Tinkee Vaporio (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,24"..WHITE..")"
Inst9Quest3_Note = "Encuentras los huevos en "..YELLOW.."[2]"..WHITE.."."
Inst9Quest3_Prequest = "Esencia de cría -> Tinkee Vaporio" -- 4726 -> 4907
Inst9Quest3_Folgequest = "La colecta de huevos y Leonid Barthalomew -> Gambito del Alba ("..YELLOW.."Scholomance"..WHITE..")" -- 4735 and 5522 -> 4771
-- No Rewards for this quest

--Quest 4 Alliance
Inst9Quest4 = "4. Ojo del Brasadivino" -- 6821
Inst9Quest4_Level = "60"
Inst9Quest4_Attain = "56"
Inst9Quest4_Aim = "Lleva el ojo del Brasadivino al duque Hydraxis a Azshara."
Inst9Quest4_Location = "Duque Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst9Quest4_Note = "Encuentras al Piroguardia Brasadivino en "..YELLOW.."[1]"..WHITE.."."
Inst9Quest4_Prequest = "Agua envenenada, Sirocosos y reptarenas" -- 6804, 6805
Inst9Quest4_Folgequest = "El Núcleo de Magma" -- 6822
-- No Rewards for this quest

--Quest 5 Alliance
Inst9Quest5 = "5. Muerte al general Drakkisath" -- 5102
Inst9Quest5_Level = "60"
Inst9Quest5_Attain = "55"
Inst9Quest5_Aim = "Viaja hasta la Cumbre de Roca Negra y mata al general Drakkisath."
Inst9Quest5_Location = "Mariscal Maxwell (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."82,68"..WHITE..")"
Inst9Quest5_Note = "Encuentras al General Drakkisath en "..YELLOW.."[9]"..WHITE.."."
Inst9Quest5_Prequest = "Orden del general Drakkisath ("..YELLOW.."Cumbre de Roca Negra Inferior"..WHITE..")" -- 5089
Inst9Quest5_Folgequest = "Ninguno"
--
Inst9Quest5name1 = "Marca de Tirania"
Inst9Quest5name2 = "Ojo de la bestia"
Inst9Quest5name3 = "Amplitud de Puño Negro"

--Quest 6 Alliance
Inst9Quest6 = "6. El Broche de Equipasino" -- 4764
Inst9Quest6_Level = "60"
Inst9Quest6_Attain = "57"
Inst9Quest6_Aim = "Llévale el broche de Equipasino a Mayara Alasol en Las Estepas Ardientes."
Inst9Quest6_Location = "Mayara Alasol (Las Estepas Ardientes - Vigilia de Morgan; "..YELLOW.."84,69"..WHITE..")"
Inst9Quest6_Note = "Obtienes la misión previa de Conde Remington Bonacresta (Ventormenta - Castillo de Ventormenta; "..YELLOW.."74,30"..WHITE..").\n\nEl broche de Equipasino está en "..YELLOW.."[3]"..WHITE.." dentro de un cofre."
Inst9Quest6_Prequest = "Mayara Alasol" -- 4766
Inst9Quest6_Folgequest = "Entrega a Bonacresta" -- 4765
--
Inst9Quest6name1 = "Botines Piepresto"
Inst9Quest6name2 = "Guardabrazos golpeguiño"

--Quest 7 Alliance
Inst9Quest7 = "7. Amuleto Pirodraco" -- 6502
Inst9Quest7_Level = "60"
Inst9Quest7_Attain = "50"
Inst9Quest7_Aim = "Tienes que recuperar la sangre de dragón Negro Campeón, la tiene el general Drakkisath. Puedes encontrar a Drakkisath en su sala del trono, tras las Salas de la Ascensión, en la Cumbre de Roca Negra."
Inst9Quest7_Location = "Haleh (Cuna del Invierno; "..YELLOW.."54,51"..WHITE..")"
Inst9Quest7_Note = "Es la parte final para la cadena de misiones para la armonización con Onyxia por la Alianza. Encuentras al General Drakkisath en "..YELLOW.."[9]"..WHITE.."."
Inst9Quest7_Prequest = "El Ojo del Dragón" -- 6501
Inst9Quest7_Folgequest = "Ninguno"
--
Inst9Quest7name1 = "Amuleto Pirodraco"

--Quest 8 Alliance
Inst9Quest8 = "8. Orden de Puño Negro" -- 7761
Inst9Quest8_Level = "60"
Inst9Quest8_Attain = "55"
Inst9Quest8_Aim = "Según la carta, el general Drakkisath guarda la enseña. Quizás deberías investigarlo."
Inst9Quest8_Location = "Orden de Puño Negro (botín del Intendente del Escudo del Estigma; "..YELLOW.."[7] en el mapa de la Entrada"..WHITE..")"
Inst9Quest8_Note = "Es la misión para la armonización con Guarida Alanegra. El Intendente del Escudo del Estigma está a la derecha justo antes del portal a la Cumbre de Roca Negra.\n\nGeneral Drakkisath está en "..YELLOW.."[9]"..WHITE..". El orbe está detrás de él."
Inst9Quest8_Prequest = "Ninguno"
Inst9Quest8_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 9 Alliance
Inst9Quest9 = "9. Últimos preparativos" -- 8994
Inst9Quest9_Level = "60"
Inst9Quest9_Attain = "58"
Inst9Quest9_Aim = "Reúne 40 brazales Roca Negra y consigue un frasco de poder supremo. Llévaselos a Bodley en el interior de la Montaña Roca Negra."
Inst9Quest9_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst9Quest9_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'. Despoja a cualquier orco con el nombre Puño Negro para obtener las Brazales Roca Negra. El Frasco de poder supremo se hace un Alquimista."
Inst9Quest9_Prequest = "La parte derecha del amuleto de Lord Valthalak ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 8989
Inst9Quest9_Folgequest = "Mea Culpa, Lord Valthalak" -- 8995
-- No Rewards for this quest

--Quest 10 Alliance
Inst9Quest10 = "10. Mea Culpa, Lord Valthalak" -- 8995
Inst9Quest10_Level = "60"
Inst9Quest10_Attain = "58"
Inst9Quest10_Aim = "Usa el Blandón de Invocación para invocar a Lord Valthalak. Despáchalo y usa el amuleto de Lord Valthalak sobre el cadáver. Después devuélvele el amuleto de Lord Valthalak al espíritu de Lord Valthalak."
Inst9Quest10_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst9Quest10_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'. Invoca a Lord Valthalak en "..YELLOW.."[8]"..WHITE..". Las recompensas son para la misión 'Regresa junto a Bodley'."
Inst9Quest10_Prequest = "Últimos preparativos" -- 8994
Inst9Quest10_Folgequest = "Regresa junto a Bodley" -- 8996
--
Inst9Quest10name1 = "Blandón de Invocación"
Inst9Quest10name2 = "Blandón de Invocación: manual"

--Quest 11 Alliance
Inst9Quest11 = "11. La forja demoníaca" -- 5127
Inst9Quest11_Level = "60"
Inst9Quest11_Attain = "55"
Inst9Quest11_Aim = "Viaja a la Cumbre de Roca Negra y encuentra a Goraluk Yunquegrieta. Mátale y utiliza el Pica manchada de sangre sobre su cadáver. Cuando hayas absorbido su alma, la pica estará manchada de alma."
Inst9Quest11_Location = "Lorax (Cuna del Invierno; "..YELLOW.."64,74"..WHITE..")"
Inst9Quest11_Note = "Misión para Herreros. Goraluk Yunquegrieta está en "..YELLOW.."[5]"..WHITE.."."
Inst9Quest11_Prequest = "Ninguno"
Inst9Quest11_Folgequest = "Ninguno"
--
Inst9Quest11name1 = "Diseño: coraza de demonio forjada"
Inst9Quest11name2 = "Elixir de matanza de demonios"
Inst9Quest11name3 = "Saco besado por demonio"


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
Inst9Quest5_HORDE = "5. La tablilla de Rocanegra" -- 4768
Inst9Quest5_HORDE_Level = "60"
Inst9Quest5_HORDE_Attain = "57"
Inst9Quest5_HORDE_Aim = "Llévale la tablilla de Rocanegra a la maga oscura Vivian Lagrave en Kargath."
Inst9Quest5_HORDE_Location = "Maga oscura Vivian Lagrave (Tierras Inhóspitas - Kargath; "..YELLOW.."2,47"..WHITE..")"
Inst9Quest5_HORDE_Note = "Obtienes la misión previa de la Boticaria Zinge en Entrañas - El Apothecarium ("..YELLOW.."50,68"..WHITE..").\n\nLa tablilla de Rocanegra está en "..YELLOW.."[3]"..WHITE.." dentro de un cofre."
Inst9Quest5_HORDE_Prequest = "Vivian Lagrave y la tablilla de Rocanegra" -- 4769
Inst9Quest5_HORDE_Folgequest = "Ninguno"
--
Inst9Quest5name1_HORDE = "Botines Piepresto"
Inst9Quest5name2_HORDE = "Guardabrazos golpeguiño"

--Quest 6 Horde
Inst9Quest6_HORDE = "6. ¡Por la Horda!" -- 4974
Inst9Quest6_HORDE_Level = "60"
Inst9Quest6_HORDE_Attain = "55"
Inst9Quest6_HORDE_Aim = "Ve a Cumbre de Roca Negra para matar al Jefe de Guerra Rend Puño Negro. Lleva su cabeza a Orgrimmar."
Inst9Quest6_HORDE_Location = "Thrall (Orgrimmar; "..YELLOW.."31,38"..WHITE..")"
Inst9Quest6_HORDE_Note = "Es la misión para la armonización con Onyxia. Encuentras al Jefe de Guerra Rend Puño Negro en "..YELLOW.."[6]"..WHITE.."."
Inst9Quest6_HORDE_Prequest = "La orden del Señor de la Guerra -> La sabiduría de Eitrigg" -- 4903 -> 4941
Inst9Quest6_HORDE_Folgequest = "Lo que trae el viento" -- 6566
--
Inst9Quest6name1_HORDE = "Marca de Tirania"
Inst9Quest6name2_HORDE = "Ojo de la bestia"
Inst9Quest6name3_HORDE = "Amplitud de Puño Negro"

--Quest 7 Horde
Inst9Quest7_HORDE = "7. Ilusiones oculares" -- 6569
Inst9Quest7_HORDE_Level = "60"
Inst9Quest7_HORDE_Attain = "55"
Inst9Quest7_HORDE_Aim = "Viaja a la Cumbre de Roca Negra y recoge 20 ojos de dragauro negro. Cuando hayas terminado tu tarea regresa con Myranda la Fada."
Inst9Quest7_HORDE_Location = "Myranda la Fada (Tierras de la Peste del Oeste; "..YELLOW.."50,77"..WHITE..")"
Inst9Quest7_HORDE_Note = "Despoja a los Dragonantes para obtener los ojos."
Inst9Quest7_HORDE_Prequest = "Lo que trae el viento -> Profesora del engaño" -- 6566 -> 6568
Inst9Quest7_HORDE_Folgequest = "Brasaliza" -- 6570
-- No Rewards for this quest

--Quest 8 Horde
Inst9Quest8_HORDE = "8. La sangre de dragón Negro Campeón" -- 6602
Inst9Quest8_HORDE_Level = "60"
Inst9Quest8_HORDE_Attain = "55"
Inst9Quest8_HORDE_Aim = "Viaja a la Cumbre de Roca Negra y mata al general Drakkisath. Recoge su sangre y llévasela a Rexxar."
Inst9Quest8_HORDE_Location = "Rexxar (Desolace - Aldea Cazasombras; "..YELLOW.."25,71"..WHITE..")"
Inst9Quest8_HORDE_Note = "Es la parte final para la misión para la armonización con Onyxia. Encuentras al General Drakkisath en "..YELLOW.."[9]"..WHITE.."."
Inst9Quest8_HORDE_Prequest = "Brasaliza -> El ascenso" -- 6570 -> 6601
Inst9Quest8_HORDE_Folgequest = "Ninguno"
--
Inst9Quest8name1_HORDE = "Amuleto Pirodraco"

--Quest 9 Horde (same as Quest 8 Alliance)
Inst9Quest9_HORDE = "9. Orden de Puño Negro"
Inst9Quest9_HORDE_Level = Inst9Quest8_Level
Inst9Quest9_HORDE_Attain = Inst9Quest8_Attain
Inst9Quest9_HORDE_Aim = Inst9Quest8_Aim
Inst9Quest9_HORDE_Location = Inst9Quest8_Location
Inst9Quest9_HORDE_Note = Inst9Quest8_Note
Inst9Quest9_HORDE_Prequest = Inst9Quest8_Prequest
Inst9Quest9_HORDE_Folgequest = Inst9Quest8_Folgequest
-- No Rewards for this quest

--Quest 10 Horde (same as Quest 9 Alliance)
Inst9Quest10_HORDE = "10. Últimos preparativos"
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
--
Inst9Quest11name1_HORDE = Inst9Quest10name1
Inst9Quest11name2_HORDE = Inst9Quest10name2

--Quest 12 Horde (same as Quest 11 Alliance)
Inst9Quest12_HORDE = "12. La forja demoníaca"
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
Inst10Story = "Construida hace doce mil años por una secta secreta de hechiceros elfos de la noche, la antigua ciudad de Eldre'Thalas fue utilizada para proteger los secretos arcanos más valiosos de la Reina Azshara. Aunque fue asolada por el Gran Diluvio del mundo, gran parte de la maravillosa ciudad todavía sigue en pie como la imponente La Masacre. Los tres distritos distintos de las ruinas han sido tomados por toda clase de criaturas, pero sobre todo altonatos espectrales, sátiros malvados y ogros toscos. Solo los grupos de aventureros más atrevidos pueden penetrar en esta ciudad devastada y enfrentarse a los antiguos males encerrados dentro de sus antiguas cámaras."
Inst10Caption = "La Masacre (Este)"
Inst10QAA = "6 Misiones"
Inst10QAH = "6 Misiones"

--Quest 1 Alliance
Inst10Quest1 = "1. Pusillín y el ancestro Azj'Tordin" -- 7441
Inst10Quest1_Level = "58"
Inst10Quest1_Attain = "54"
Inst10Quest1_Aim = "Viaja a La Masacre y encuentra al diablillo Pusillín. Convence a Pusillín de que te dé el libro de Conjuros de Azj'Tordin, por cualquier medio.\nSi consigues hacerte con el libro de Conjuros, vuelve al Pabellón de Lariss de Feralas y busca a Azj'Tordin."
Inst10Quest1_Location = "Azj'Tordin (Feralas - Pabellón de Lariss; "..YELLOW.."76,37"..WHITE..")"
Inst10Quest1_Note = "Pusillín está en La Masacre "..YELLOW.."Este"..WHITE.." en "..YELLOW.."[1]"..WHITE..". Él corre cuando hables consigo y se lucha en "..YELLOW.."[2]"..WHITE..". Despoja a él para obtener Llave creciente para entrar a La Masacre Norte y Oeste."
Inst10Quest1_Prequest = "Ninguno"
Inst10Quest1_Folgequest = "Ninguno"
--
Inst10Quest1name1 = "Botas de soltura"
Inst10Quest1name2 = "Espada de esprínter"

--Quest 2 Alliance
Inst10Quest2 = "2. La membrana de Lethtendris" -- 7488
Inst10Quest2_Level = "57"
Inst10Quest2_Attain = "54"
Inst10Quest2_Aim = "Lleva la Membrana de Lethtendris a Latronicus Lanzaluna al Bastión Plumaluna de Feralas."
Inst10Quest2_Location = "Latronicus Lanzaluna (Feralas - Bastión Plumaluna; "..YELLOW.."30,46"..WHITE..")"
Inst10Quest2_Note = "Lethtendris está en La Masacre "..YELLOW.."Este"..WHITE.." en "..YELLOW.."[3]"..WHITE..". Obtienes la misión previa del Mensajero Sentencia en Forjaz. Deambula por toda la ciudad."
Inst10Quest2_Prequest = "Bastión Plumaluna" -- 7494
Inst10Quest2_Folgequest = "Ninguno"
--
Inst10Quest2name1 = "Hilador de conocimiento"

--Quest 3 Alliance
Inst10Quest3 = "3. Fragmentos de gangrevid" -- 5526
Inst10Quest3_Level = "60"
Inst10Quest3_Attain = "56"
Inst10Quest3_Aim = "Encuentra gangrevid en La Masacre y coge un fragmento. Es probable que solo puedas conseguirlo si derrotas a Alzzin el Formaferal. Usa el relicario de Pureza para guardar el fragmento y llévaselo a Rabine Saturna a Amparo de la Noche, en Claro de la Luna."
Inst10Quest3_Location = "Rabine Saturna (Claro de la Luna - Amparo de la Noche; "..YELLOW.."51,44"..WHITE..")"
Inst10Quest3_Note = "Encuentras a Alzzin el Formaferal en la parte "..YELLOW.."Este"..WHITE.." de La Masacre en "..YELLOW.."[5]"..WHITE..". El relicario está en Silithius en "..YELLOW.."62,54"..WHITE..". Obtienes la misión previa de Rabine Saturna también."
Inst10Quest3_Prequest = "Un relicario de Pureza" -- 5527
Inst10Quest3_Folgequest = "Ninguno"
--
Inst10Quest3name1 = "Escudo de Milli"
Inst10Quest3name2 = "Lexicón de Milli"

--Quest 4 Alliance
Inst10Quest4 = "4. La parte izquierda del amuleto de Lord Valthalak" -- 8967
Inst10Quest4_Level = "60"
Inst10Quest4_Attain = "58"
Inst10Quest4_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Isalien y mátala. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con la parte izquierda del amuleto de Lord Valthalak y el Blandón de Señalización."
Inst10Quest4_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst10Quest4_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Isalien en "..YELLOW.."[5]"..WHITE.."."
Inst10Quest4_Prequest = "Componentes importantes" -- 8963
Inst10Quest4_Folgequest = "En tu destino veo la Isla de Alcaz..." -- 8970
-- No Rewards for this quest

--Quest 5 Alliance
Inst10Quest5 = "5. La parte derecha del amuleto de Lord Valthalak" -- 8990
Inst10Quest5_Level = "60"
Inst10Quest5_Attain = "58"
Inst10Quest5_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Isalien y mátala. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con el amuleto de Lord Valthalak recompuesto y el Blandón de Señalización."
Inst10Quest5_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst10Quest5_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Isalien en "..YELLOW.."[5]"..WHITE.."."
Inst10Quest5_Prequest = "Más componentes importantes" -- 8985
Inst10Quest5_Folgequest = "Últimos preparativos ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 6 Alliance
Inst10Quest6 = "6. Las selladuras de la prisión" -- 7581
Inst10Quest6_Level = "60"
Inst10Quest6_Attain = "60"
Inst10Quest6_Aim = "Viaja a La Masacre en Feralas y consigue 15 muestras de sangre de sátiro del sátiro Mala Hierba que habita en el Barrio Alabeo. Cuando hayas acabado, ve a ver a Daio a la Escara Impía."
Inst10Quest6_Location = "Daio el Decrépito (Las Tierras Devastadas - La Escara Impía; "..YELLOW.."34,50"..WHITE..")"
Inst10Quest6_Note = "Solamente para Brujos: Esta misión es una parte de la cadena de misiones para su hechizo Ritual del apocalipsis. La ruta más fácil para buscar a los Sátiros Mala Hierbas es que entrar por La Masacre Este al puerto trasera en el Pabellón de Lariss (Feralas; "..YELLOW.."77,37"..WHITE.."). Necesitas la Llave creciente."
Inst10Quest6_Prequest = "Ninguno"
Inst10Quest6_Folgequest = "Ninguno"
-- No Rewards for this quest


--Quest 1 Horde (same as Quest 1 Alliance)
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
Inst10Quest2_HORDE = "2. La membrana de Lethtendris" -- 7489
Inst10Quest2_HORDE_Level = "57"
Inst10Quest2_HORDE_Attain = "54"
Inst10Quest2_HORDE_Aim = "Lleva la Membrana de Lethtendris a Talo Pezuñahendida al Campamento Mojache de Feralas."
Inst10Quest2_HORDE_Location = "Talo Pezuñahendida (Feralas - Campamento Mojache; "..YELLOW.."76,43"..WHITE..")"
Inst10Quest2_HORDE_Note = "Lethtendris está en La Masacre "..YELLOW.."Este"..WHITE.." en "..YELLOW.."[3]"..WHITE..". Obtienes la misión previa de Clamaguerras Gorlach en Orgrimmar. Deambula por toda la ciudad."
Inst10Quest2_HORDE_Prequest = "Campamento Mojache" -- 7492
Inst10Quest2_HORDE_Folgequest = "Ninguno"
--
Inst10Quest2name1_HORDE = "Hilador de conocimiento"

--Quest 3 Horde (same as Quest 3 Alliance)
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



--------------- INST11 - Dire Maul Norte (DM) ---------------
Inst11Story = Inst10Story
Inst11Caption = "La Masacre (Norte)"
Inst11QAA = "4 Misiones"
Inst11QAH = "4 Misiones"

--Quest 1 Alliance
Inst11Quest1 = "1. Una trampa rota" -- 1193
Inst11Quest1_Level = "60"
Inst11Quest1_Attain = "56"
Inst11Quest1_Aim = "Repara la trampa."
Inst11Quest1_Location = "Una trampa rota (La Masacre; "..YELLOW.."Norte"..WHITE..")"
Inst11Quest1_Note = "Misión repitible. Para reparar la trampa tienes que usar un [Trasto de torio] y un [Aceite de Escarcha]."
Inst11Quest1_Prequest = "Ninguno"
Inst11Quest1_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Alliance
Inst11Quest2 = "2. El disfraz de ogro Gordok" -- 5518
Inst11Quest2_Level = "60"
Inst11Quest2_Attain = "56"
Inst11Quest2_Aim = "Lleva 4 madejas de paño rúnico, 8 cueros bastos, 2 hilos rúnicos y tanino de ogro a Knot Llavededo. Actualmente está encadenado en el interior del ala Gordok de La Masacre."
Inst11Quest2_Location = "Knot Thimblejack (La Masacre; "..YELLOW.."Norte, [4]"..WHITE..")"
Inst11Quest2_Note = "Misión repitible. Consigues el Tanino de ogro cerca de "..YELLOW.."[4] (encima)"..WHITE.."."
Inst11Quest2_Prequest = "Ninguno"
Inst11Quest2_Folgequest = "Ninguno"
--
Inst11Quest2name1 = "Disfraz de ogro Gordok"

--Quest 3 Alliance
Inst11Quest3 = "3. ¡Libera a Knot!" -- 5525
Inst11Quest3_Level = "60"
Inst11Quest3_Attain = "57"
Inst11Quest3_Aim = "Colecciona una Llave de los grilletes de Gordok para Knot Thimblejack."
Inst11Quest3_Location = "Knot Thimblejack (La Masacre; "..YELLOW.."Norte, [4]"..WHITE..")"
Inst11Quest3_Note = "Misión repitible. Despoja a cualquier depositorio para obtener la llave."
Inst11Quest3_Prequest = "Ninguno"
Inst11Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst11Quest4 = "4. Asunto Gordok sin finiquitar" -- 1318 or 7703 lol...
Inst11Quest4_Level = "60"
Inst11Quest4_Attain = "56"
Inst11Quest4_Aim = "Encuentra el guante del Poderío de Gordok y llévaselo al capitán Kromcrush a La Masacre.\nSegún Kromcrush, una 'historia muy, muy vieja' dice que Tortheldrin, un elfo 'asqueroso' que se llamaba a sí mismo príncipe, robó el guantelete a uno de los reyes de Gordok."
Inst11Quest4_Location = "Capitán Kromcrush (La Masacre; "..YELLOW.."Norte, [5]"..WHITE..")"
Inst11Quest4_Note = "El Príncipe Tortheldrin está en La Masacre "..YELLOW.."Oeste"..WHITE.." en "..YELLOW.."[7]"..WHITE..". El guante está cerca de él dentro un cofre. Solamente puedes conseguir la misión después de realizar el tributo y si tienes el buff 'Rey del Gordok'."
Inst11Quest4_Prequest = "Ninguno"
Inst11Quest4_Folgequest = "Ninguno"
--
Inst11Quest4name1 = "Manijas de Gordok"
Inst11Quest4name2 = "Guantes de Gordok"
Inst11Quest4name3 = "Guanteletes de Gordok"
Inst11Quest4name4 = "Manoplas de Gordok"


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
--
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
--
Inst11Quest4name1_HORDE = Inst11Quest4name1
Inst11Quest4name2_HORDE = Inst11Quest4name2
Inst11Quest4name3_HORDE = Inst11Quest4name3
Inst11Quest4name4_HORDE = Inst11Quest4name4



--------------- INST12 - Dire Maul West (DM) ---------------
Inst12Story = Inst10Story
Inst12Caption = "La Masacre (Oeste)"
Inst12QAA = "17 Misiones"
Inst12QAH = "17 Misiones"

--Quest 1 Alliance
Inst12Quest1 = "1. Leyendas élficas" -- 7482
Inst12Quest1_Level = "60"
Inst12Quest1_Attain = "54"
Inst12Quest1_Aim = "Busca a Kariel Winthalus en La Masacre. Vuelve al Bastión Plumaluna a informar al erudita Runaespina de lo que hayas encontrado."
Inst12Quest1_Location = "Erudita Runaespina (Feralas - Bastión Plumaluna; "..YELLOW.."31,43"..WHITE..")"
Inst12Quest1_Note = "Encuentras a Kariel Winthalus en la "..YELLOW.."Librería (Oeste)"..WHITE.."."
Inst12Quest1_Prequest = "Ninguno"
Inst12Quest1_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Alliance
Inst12Quest2 = "2. Locura interior" -- 7461
Inst12Quest2_Level = "60"
Inst12Quest2_Attain = "56"
Inst12Quest2_Aim = "Debes destruir a los guardianes que rodean las 5 torres que controlan la Prisión de Immol'thar. Una vez desactivadas las torres, el campo de fuerza que rodea a Immol'thar se disipará.\nEntra en la Prisión de Immol'thar y erradica al demonio que hace guardia en su interior. Por último, haz frente al príncipe Tortheldrin en El Athenaeum."
Inst12Quest2_Location = "Ancestro Shen'dralar (La Masacre; "..YELLOW.."Oeste, [1] (encima)"..WHITE..")"
Inst12Quest2_Note = "Las torres están marcadas así como "..BLUE.."[B]"..WHITE..". Immol'thar está en "..YELLOW.."[6]"..WHITE..", Príncipe Tortheldrin está en "..YELLOW.."[7]"..WHITE.."."
Inst12Quest2_Prequest = "Ninguno"
Inst12Quest2_Folgequest = "El tesoro de los Shen'dralar" -- 7877
-- No Rewards for this quest

--Quest 3 Alliance
Inst12Quest3 = "3. El tesoro de los Shen'dralar" -- 7462
Inst12Quest3_Level = "60"
Inst12Quest3_Attain = "56"
Inst12Quest3_Aim = "Vuelve a El Athenaeum y encuentra el tesoro de los Shen'dralar. ¡Reclama tu recompensa!"
Inst12Quest3_Location = "Ancestro Shen'dralar (La Masacre; "..YELLOW.."Oeste, [1]"..WHITE..")"
Inst12Quest3_Note = "Encuentras el tesoro debajo de las escaleras en "..YELLOW.."[7]"..WHITE.."."
Inst12Quest3_Prequest = "Locura interior" -- 7461
Inst12Quest3_Folgequest = "Ninguno"
--
Inst12Quest3name1 = "Botas de juncia"
Inst12Quest3name2 = "Yelmo provinciano"
Inst12Quest3name3 = "Aplastahuesos"

--Quest 4 Alliance
Inst12Quest4 = "4. Corcel nefasto xorothiano" -- 7631
Inst12Quest4_Level = "60"
Inst12Quest4_Attain = "60"
Inst12Quest4_Aim = "Lee las instrucciones de Mor'zul. Invoca a un corcel nefasto xorothiano, derrótalo y después vincula su espíritu al tuyo."
Inst12Quest4_Location = "Mor'zul Sangredoble (Las Estepas Ardientes; "..YELLOW.."12,31"..WHITE..")"
Inst12Quest4_Note = "Solamente para Brujos: La misión última de la cadena de misiones para la montura de los brujos. Al primer tienes que desactivar las torres marcadas así como "..BLUE.."[B]"..WHITE.." y mata a Immol'thar en "..YELLOW.."[6]"..WHITE..". Después, empieza la invocación. Necesitas al menos 20 Fragmentos de alma y un brujo asignado a mantener la campanilla, la vela, y la rueda activas. Se Puede esclavizar los Guardias apocalípticos. Después de terminarla, habla con el Espíritu de corcel nefasto para completar la misión."
Inst12Quest4_Prequest = "Entrega de diablillo ("..YELLOW.."Scholomance"..WHITE..")" -- 7629
Inst12Quest4_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 5 Alliance
Inst12Quest5 = "5. El Sueño Esmeralda" -- 7506
Inst12Quest5_Level = "60"
Inst12Quest5_Attain = "54"
Inst12Quest5_Aim = "Devuelve el libro a sus legítimos dueños."
Inst12Quest5_Location = "El Sueño Esmeralda (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest5_Note = "Solamente para Druidas: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest5_Prequest = "Ninguno"
Inst12Quest5_Folgequest = "Ninguno"
--
Inst12Quest5name1 = "Sello real de Eldre'Thalas"

--Quest 6 Alliance
Inst12Quest6 = "6. La mejor raza de cazadores" -- 7503
Inst12Quest6_Level = "60"
Inst12Quest6_Attain = "54"
Inst12Quest6_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest6_Location = "La mejor raza de cazadores (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest6_Note = "Solamente para Cazadores: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest6_Prequest = "Ninguno"
Inst12Quest6_Folgequest = "Ninguno"
--
Inst12Quest6name1 = "Sello real de Eldre'Thalas"

--Quest 7 Alliance
Inst12Quest7 = "7. El libro de cocina del Arcanista" -- 7500
Inst12Quest7_Level = "60"
Inst12Quest7_Attain = "54"
Inst12Quest7_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest7_Location = "El libro de cocina del Arcanista (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest7_Note = "Solamente para Magos: Devuelves el libro al Tradicionalista Kildrath a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest7_Prequest = "Ninguno"
Inst12Quest7_Folgequest = "Ninguno"
--
Inst12Quest7name1 = "Sello real de Eldre'Thalas"

--Quest 8 Alliance
Inst12Quest8 = "8. La Luz y cómo alterarla" -- 7501
Inst12Quest8_Level = "60"
Inst12Quest8_Attain = "54"
Inst12Quest8_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest8_Location = "La Luz y cómo alterarla (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest8_Note = "Solamente para Paladines: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest8_Prequest = "Ninguno"
Inst12Quest8_Folgequest = "Ninguno"
--
Inst12Quest8name1 = "Sello real de Eldre'Thalas"

--Quest 9 Alliance
Inst12Quest9 = "9. Sagrada Bologna: lo que la Luz nunca te dirá" -- 7504
Inst12Quest9_Level = "60"
Inst12Quest9_Attain = "56"
Inst12Quest9_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest9_Location = "Sagrada Bologna: lo que la Luz nunca te dirá (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest9_Note = "Solamente para Sacerdotes: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest9_Prequest = "Ninguno"
Inst12Quest9_Folgequest = "Ninguno"
--
Inst12Quest9name1 = "Sello real de Eldre'Thalas"

--Quest 10 Alliance
Inst12Quest10 = "10. Garona: Un Estudio sobre el Sigilo y la Traición" -- 7498
Inst12Quest10_Level = "60"
Inst12Quest10_Attain = "54"
Inst12Quest10_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest10_Location = "Garona: Un Estudio sobre el Sigilo y la Traición (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest10_Note = "Solamente para Pícaros: Devuelves el libro al Tradicionalista Kildrath a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest10_Prequest = "Ninguno"
Inst12Quest10_Folgequest = "Ninguno"
--
Inst12Quest10name1 = "Sello real de Eldre'Thalas"

--Quest 11 Alliance
Inst12Quest11 = "11. El choque de Escarcha y tú" -- 7505
Inst12Quest11_Level = "60"
Inst12Quest11_Attain = "54"
Inst12Quest11_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest11_Location = "El choque de Escarcha y tú (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest11_Note = "Solamente para Chamanes: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest11_Prequest = "Ninguno"
Inst12Quest11_Folgequest = "Ninguno"
--
Inst12Quest11name1 = "Sello real de Eldre'Thalas"

--Quest 12 Alliance
Inst12Quest12 = "12. Sombras acechadoras" -- 7502
Inst12Quest12_Level = "60"
Inst12Quest12_Attain = "54"
Inst12Quest12_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest12_Location = "Sombras acechadoras (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest12_Note = "Solamente para Brujos: Devuelves el libro al Tradicionalista Javon a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest12_Prequest = "Ninguno"
Inst12Quest12_Folgequest = "Ninguno"
--
Inst12Quest12name1 = "Sello real de Eldre'Thalas"

--Quest 13 Alliance
Inst12Quest13 = "13. Códice de Defensa" -- 7499
Inst12Quest13_Level = "60"
Inst12Quest13_Attain = "54"
Inst12Quest13_Aim = "Devuelve el libro a sus legítimos dueños. "
Inst12Quest13_Location = "Códice de Defensa (botín aleatorio de todas las alas de La Masacre)"
Inst12Quest13_Note = "Solamente para Guerreros: Devuelves el libro al Tradicionalista Kildrath a la "..YELLOW.."1' Librería"..WHITE.."."
Inst12Quest13_Prequest = "Ninguno"
Inst12Quest13_Folgequest = "Ninguno"
--
Inst12Quest13name1 = "Sello real de Eldre'Thalas"

--Quest 14 Alliance
Inst12Quest14 = "14. El tratado sobre enfoque" -- 7484
Inst12Quest14_Level = "60"
Inst12Quest14_Attain = "58"
Inst12Quest14_Aim = "Lleva 1 tratado sobre enfoque, 1 diamante negro prístino, 4 fragmentos luminosos grandes y 2 pieles de Sombra al Tradicionalista Lydros a La Masacre para obtener un arcanum de enfoque."
Inst12Quest14_Location = "Tradicionalista Lydros (La Masacre Oeste; "..YELLOW.."[1'] Librería"..WHITE..")"
Inst12Quest14_Note = "Tienes que completar la misión \"Leyendas élficas\" antes de empezar esta misión.\n\nEl tratado es botín aleatorio de La Masacre y puedes comerciarlo y comprarlo en la subasta. El Piel de Sombra es ligado y puedes conseguirlo de algunos jefes, Ensamblajes resucitados, y Guardahuesos resucitados en "..YELLOW.."Scholomance"..WHITE.."."
Inst12Quest14_Prequest = "Ninguno"
Inst12Quest14_Folgequest = "Ninguno"
--
Inst12Quest14name1 = "Arcanum de enfoque"

--Quest 15 Alliance
Inst12Quest15 = "15. El tratado sobre protección" -- 7485
Inst12Quest15_Level = "60"
Inst12Quest15_Attain = "58"
Inst12Quest15_Aim = "Lleva 1 tratado sobre protección, 1 diamante negro prístino, 2 fragmentos luminosos grandes y 1 costura desgarrada de abominación al Tradicionalista Lydros a La Masacre para obtener un arcanum de protección."
Inst12Quest15_Location = "Tradicionalista Lydros (La Masacre Oeste; "..YELLOW.."[1'] Librería"..WHITE..")"
Inst12Quest15_Note = "Tienes que completar la misión \"Leyendas élficas\" antes de empezar esta misión.\n\nEl tratado es botín aleatorio de La Masacre y puedes comerciarlo y comprarlo en la subasta. Las Costuras desgarradas de abominación son ligadas y puedes conseguirlas de Ramstein el Empachador, Eructaveneno, Vomitón bílico, y Horror de retazos en "..YELLOW.."Stratholme"..WHITE.."."
Inst12Quest15_Prequest = "Ninguno"
Inst12Quest15_Folgequest = "Ninguno"
--
Inst12Quest15name1 = "Arcanum de protección"

--Quest 16 Alliance
Inst12Quest16 = "16. El tratado sobre rapidez" -- 7483
Inst12Quest16_Level = "60"
Inst12Quest16_Attain = "58"
Inst12Quest16_Aim = "Lleva 1 tratado sobre rapidez, 1 diamante negro prístino, 2 fragmentos luminosos grandes y 2 sangres de héroes al Tradicionalista Lydros a La Masacre para obtener un arcanum de rapidez."
Inst12Quest16_Location = "Tradicionalista Lydros (La Masacre Oeste; "..YELLOW.."[1'] Librería"..WHITE..")"
Inst12Quest16_Note = "Tienes que completar la misión \"Leyendas élficas\" antes de empezar esta misión.\n\nEl tratado es botín aleatorio de La Masacre y puedes comerciarlo y comprarlo en la subasta. La Sangre de héroes se encuentra al piso en localizaciones aleatorias en Las Tierras de la Peste del Oeste y Este."
Inst12Quest16_Prequest = "Ninguno"
Inst12Quest16_Folgequest = "Ninguno"
--
Inst12Quest16name1 = "Arcanum de rapidez"

--Quest 17 Alliance
Inst12Quest17 = "17. Compendio de Foror" -- 7507
Inst12Quest17_Level = "60"
Inst12Quest17_Attain = "60"
Inst12Quest17_Aim = "Devuelve el compendio de matar dragones de Foror a El Athenaeum."
Inst12Quest17_Location = "Compendio de matar dragones de Foror (botín aleatorio de los jefes en "..YELLOW.."La Masacre"..WHITE..")"
Inst12Quest17_Note = "Solamente para Guerreros y Paladines. Devuélvelo al Tradicionalista Lydros en (La Masacre Oeste; "..YELLOW.."[1'] Librería"..WHITE.."). Te permite empezar la misión para forjar Quel'Serrar después de terminar la misión."
Inst12Quest17_Prequest = "Ninguno"
Inst12Quest17_Folgequest = "Forjar Quel'Serrar" -- 7508
-- No Rewards for this quest


--Quest 1 Horde
Inst12Quest1_HORDE = "1. Leyendas élficas" -- 7481
Inst12Quest1_HORDE_Level = "60"
Inst12Quest1_HORDE_Attain = "54"
Inst12Quest1_HORDE_Aim = "Busca a Kariel Winthalus en La Masacre. Vuelve al Campamento Mojache e informa al Sabio Korolusk de cualquier cosa que encuentres."
Inst12Quest1_HORDE_Location = "Sabio Korolusk (Feralas - Campamento Mojache; "..YELLOW.."74,43"..WHITE..")"
Inst12Quest1_HORDE_Note = "Encuentras a Kariel Winthalus en la "..YELLOW.."Librería (Oeste)"..WHITE.."."
Inst12Quest1_HORDE_Prequest = "Ninguno"
Inst12Quest1_HORDE_Folgequest = "Ninguno"
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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



--------------- INST13 - Maraudon (Mara) ---------------
Inst13Story = "Protegido por los fieros centauros Maraudine, Maraudon es uno de los lugares más sagrados de Desolace. El gran templo/caverna es el lugar mortuorio de Zaetar, uno de los dos hijos inmortales del semidiós, Cenarius. Las leyendas cuentan que Zaetar y la princesa elemental de tierra, Theradras, crearon a la raza ilegítima de los centauros. Se dice que cuando aparecieron, se volvieron contra su padre y lo mataron. Algunos creen que Theradras, en su dolor, atrapó al espíritu de Zaetar en el interior de la caverna, utilizando sus energías para algún propósito maligno. Los túneles subterráneos están poblados por los terribles y desde hace tiempo muertos fantasmas de los Khans de los centauros y por los propios elementales enfurecidos esbirros de Theradras."
Inst13Caption = "Maraudon"
Inst13QAA = "8 Misiones"
Inst13QAH = "8 Misiones"

--Quest 1 Alliance
Inst13Quest1 = "1. Trozos Oscuros" -- 7070
Inst13Quest1_Level = "42"
Inst13Quest1_Attain = "38"
Inst13Quest1_Aim = "Recoge 10 fragmentos oscuros en Maraudon y llévaselos al archimago Tervosh a Theramore, en la costa de Marjal Revolcafango."
Inst13Quest1_Location = "Archimago Tervosh (Marjal Revolcafango - Isla Theramore; "..YELLOW.."66,49"..WHITE..")"
Inst13Quest1_Note = "Consigues los fragmentos oscuros del 'Estruendor Fragmento Oscuro' o 'Quebrantador Fragmento Oscuro' fuera de la instancia al lado morado."
Inst13Quest1_Prequest = "Ninguno"
Inst13Quest1_Folgequest = "Ninguno"
--
Inst13Quest1name1 = "Colgante de fragmento oscuro entusiasta"
Inst13Quest1name2 = "Colgante de fragmento de sombras prodigioso"

--Quest 2 Alliance
Inst13Quest2 = "2. La corrupción de Lenguavil" -- 7041
Inst13Quest2_Level = "47"
Inst13Quest2_Attain = "41"
Inst13Quest2_Aim = "Llena el vial cerúleo cubierto en el estanque naranja de Maraudon.\nAplica el vial cerúleo lleno a la hiedravil para que emerja el sucesor tóxico.\nCura 8 plantas eliminando su sucesor tóxico e informa a Talendria en Punta de Nijel."
Inst13Quest2_Location = "Talendria (Desolace - Punta de Nijel; "..YELLOW.."68,8"..WHITE..")"
Inst13Quest2_Note = "Llenas el vial en cualquier estanque fuera de la instancia al lado naranja. Las plantas están en las localizaciones moradas y naranjas dentro de la instancia."
Inst13Quest2_Prequest = "Ninguno"
Inst13Quest2_Folgequest = "Ninguno"
--
Inst13Quest2name1 = "Aro de Semillaleña"
Inst13Quest2name2 = "Faja de arbusto"
Inst13Quest2name3 = "Guanteletes ramazarza"

--Quest 3 Alliance
Inst13Quest3 = "3. Los males de Maraudon" -- 7028
Inst13Quest3_Level = "47"
Inst13Quest3_Attain = "41"
Inst13Quest3_Aim = "Recoge 15 tallas de cristal terádrico y llévaselas a Willow a Desolace."
Inst13Quest3_Location = "Willow (Desolace; "..YELLOW.."62,39"..WHITE..")"
Inst13Quest3_Note = "Puedes despojar a la mayoría de los monstruos en Maraudon para obtener las tallas."
Inst13Quest3_Prequest = "Ninguno"
Inst13Quest3_Folgequest = "Ninguno"
--
Inst13Quest3name1 = "Togas de sagacidad"
Inst13Quest3name2 = "Yelmo de argollas de duende"
Inst13Quest3name3 = "Cota de malla incansable"
Inst13Quest3name4 = "Espaldares de mole de piedra"

--Quest 4 Alliance
Inst13Quest4 = "4. Las instrucciones del Paria" -- 7067
Inst13Quest4_Level = "48"
Inst13Quest4_Attain = "39"
Inst13Quest4_Aim = "Lee las instrucciones del Paria. Busca el Amuleto de Unidad en Maraudon y llévaselo al sur de Desolace."
Inst13Quest4_Location = "Paria Centauro (Desolace; "..YELLOW.."45,86"..WHITE..")"
Inst13Quest4_Note = "Los 5 Khans (Descripción para Las instrucciones del Paria)"
Inst13Quest4_Page = { "Encuentras el Paria Centauro al sur de Desolace. Camina entre "..YELLOW.."44,85"..WHITE.." y "..YELLOW.."50,87"..WHITE..".\nPrimero, debes matar al Profeta sin nombre ("..YELLOW.."[A] en el mapa de la Entrada"..WHITE.."). Lo encuentras antes de entrar la instancia, antes de la parte con la bifurcación para entrar al lado morado o naranja. Después de matarlo, debes matar a los 5 Khans. El Primer Khan está al camino central ("..YELLOW.."[1] en el mapa de la Entrada"..WHITE.."). El Segundo Khan está en la parte morada de Maraudon antes de entrar la instancia ("..YELLOW.."[2] en el mapa de la Entrada"..WHITE.."). El Tercer Khan está en la parte naranja antes de entrar la instancia ("..YELLOW.."[3] en el mapa de la Entrada"..WHITE.."). El Cuarto Khan está cerca de "..YELLOW.."[4]"..WHITE.." y El Quinto Khan está cerca de  "..YELLOW.."[1]"..WHITE..".", };
Inst13Quest4_Prequest = "Ninguno"
Inst13Quest4_Folgequest = "Ninguno"
--
Inst13Quest4name1 = "Marca del elegido"

--Quest 5 Alliance
Inst13Quest5 = "5. Leyendas de Maraudon" -- 7044
Inst13Quest5_Level = "49"
Inst13Quest5_Attain = "41"
Inst13Quest5_Aim = "Recupera las 2 partes del cetro de Celebras: la vara y el diamante de Celebras.\nEncuentra el modo de hablar con Celebras."
Inst13Quest5_Location = "Cavindra (Desolace - Maraudon; "..YELLOW.."[4] on Entrance Map"..WHITE..")"
Inst13Quest5_Note = "Encuentras a Cavindra al comienzo de la parte naranja antes de entrar la instancia.\nConsigues el Vara de Celebras de Noxxion en "..YELLOW.."[2]"..WHITE.." y el Diamante de Celebras de Lord Lenguavil en "..YELLOW.."[5]"..WHITE..". Celebras está en "..YELLOW.."[7]"..WHITE..". Tienes que derrotarlo para hablar consigo."
Inst13Quest5_Prequest = "Ninguno"
Inst13Quest5_Folgequest = "El cetro de Celebras" -- 7046
-- No Rewards for this quest

--Quest 6 Alliance
Inst13Quest6 = "6. El cetro de Celebras" -- 7046
Inst13Quest6_Level = "49"
Inst13Quest6_Attain = "41"
Inst13Quest6_Aim = "Ayuda a Celebras el Redimido mientras reconstruye el cetro de Celebras.\nHabla con él después del ritual."
Inst13Quest6_Location = "Celebras el Redimido (Maraudon; "..YELLOW.."[7]"..WHITE..")"
Inst13Quest6_Note = "Celebras crea el Cetro. Habla con él después del ritual."
Inst13Quest6_Prequest = "Leyendas de Maraudon" -- 7044
Inst13Quest6_Folgequest = "Ninguno"
--
Inst13Quest6name1 = "Cetro de Celebras"

--Quest 7 Alliance
Inst13Quest7 = "7. Corrupción de la tierra y de la semilla" -- 7065
Inst13Quest7_Level = "51"
Inst13Quest7_Attain = "45"
Inst13Quest7_Aim = "Mata a la princesa Theradras y ve a ver al vigilante Marandis a Punta de Nijel, en Desolace."
Inst13Quest7_Location = "Vigilante Marandis (Desolace - Punta de Nijel; "..YELLOW.."63,10"..WHITE..")"
Inst13Quest7_Note = "Encuentras a la Princesa Theradras en "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_Prequest = "Ninguno"
Inst13Quest7_Folgequest = "La semilla de vida" -- 7066
--
Inst13Quest7name1 = "Zumbaespada"
Inst13Quest7name2 = "Vara de resurgimiento"
Inst13Quest7name3 = "Objetivo del Guardaverde"

--Quest 8 Alliance
Inst13Quest8 = "8. La semilla de vida" -- 7066
Inst13Quest8_Level = "51"
Inst13Quest8_Attain = "45"
Inst13Quest8_Aim = "Busca a Remulos en Claro de la Luna y dale la semilla de vida."
Inst13Quest8_Location = "Espíritu de Zaetar (Maraudon; "..YELLOW.."[11]"..WHITE..")"
Inst13Quest8_Note = "El Espíritu de Zaetar aparece después de matar a la Princesa Theradras en "..YELLOW.."[11]"..WHITE..". Encuentras al Guardián Remulos en (Claro de la Luna - Santuario de Remulos; "..YELLOW.."36,41"..WHITE..")."
Inst13Quest8_Prequest = "Corrupción de la tierra y de la semilla" -- 7065
Inst13Quest8_Folgequest = "Ninguno"
-- No Rewards for this quest


--Quest 1 Horde
Inst13Quest1_HORDE = "1. Trozos Oscuros" -- 7068
Inst13Quest1_HORDE_Level = "42"
Inst13Quest1_HORDE_Attain = "38"
Inst13Quest1_HORDE_Aim = "Recoge 10 fragmentos oscuros en Maraudon y llévaselos a Uthel'nay a Orgrimmar."
Inst13Quest1_HORDE_Location = "Uthel'nay (Orgrimmar - Valle de los Espíritus; "..YELLOW.."39,86"..WHITE..")"
Inst13Quest1_HORDE_Note = "Consigues los fragmentos oscuros del 'Estruendor Fragmento Oscuro' o 'Quebrantador Fragmento Oscuro' fuera de la instancia al lado morado."
Inst13Quest1_HORDE_Prequest = "Ninguno"
Inst13Quest1_HORDE_Folgequest = "Ninguno"
--
Inst13Quest1name1_HORDE = "Colgante de fragmento oscuro entusiasta"
Inst13Quest1name2_HORDE = "Colgante de fragmento de sombras prodigioso"

--Quest 2 Horde
Inst13Quest2_HORDE = "2. La corrupción de Lenguavil" -- 7029
Inst13Quest2_HORDE_Level = "47"
Inst13Quest2_HORDE_Attain = "41"
Inst13Quest2_HORDE_Aim = "Llena el vial cerúleo cubierto en el estanque naranja de Maraudon.\nAplica el vial cerúleo lleno a la hiedravil para que emerja el sucesor tóxico.\nCura 8 plantas eliminando su sucesor tóxico e informa a Vark Marca de Guerra en la Aldea Cazasombras."
Inst13Quest2_HORDE_Location = "Vark Marca de Guerra (Desolace - Aldea Cazasombras; "..YELLOW.."23,70"..WHITE..")"
Inst13Quest2_HORDE_Note = "Llenas el vial en cualquier estanque fuera de la instancia al lado naranja. Las plantas están en las localizaciones moradas y naranjas dentro de la instancia."
Inst13Quest2_HORDE_Prequest = "Ninguno"
Inst13Quest2_HORDE_Folgequest = "Ninguno"
--
Inst13Quest2name1_HORDE = "Aro de Semillaleña"
Inst13Quest2name2_HORDE = "Faja de arbusto"
Inst13Quest2name3_HORDE = "Guanteletes ramazarza"

--Quest 3 Horde (same as Quest 3 Alliance)
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
--
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
--
Inst13Quest6name1_HORDE = Inst13Quest6name1

--Quest 7 Horde
Inst13Quest7_HORDE = "7. Corrupción de la tierra y de la semilla" -- 7064
Inst13Quest7_HORDE_Level = "51"
Inst13Quest7_HORDE_Attain = "45"
Inst13Quest7_HORDE_Aim = "Mata a la princesa Theradras y ve a ver a Selendra cerca de la Aldea Cazasombras, en Desolace."
Inst13Quest7_HORDE_Location = "Selendra (Desolace; "..YELLOW.."27,77"..WHITE..")"
Inst13Quest7_HORDE_Note = "Encuentras a la Princesa Theradras en "..YELLOW.."[11]"..WHITE.."."
Inst13Quest7_HORDE_Prequest = "Ninguno"
Inst13Quest7_HORDE_Folgequest = "La semilla de vida" -- 7066
--
Inst13Quest7name1_HORDE = "Zumbaespada"
Inst13Quest7name2_HORDE = "Vara de resurgimiento"
Inst13Quest7name3_HORDE = "Objetivo del Guardaverde"

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
Inst14Story = "El Núcleo de Magma se encuentra en el fondo de las Profundidades de Roca Negra. Es el corazón de la montaña Roca Negra y el punto exacto donde hace mucho, en un intento desesperado por cambiar el curso de la guerra civil enana, el emperador Thaurissan invocó al Señor del Fuego, Ragnaros, al mundo. Aunque el Señor del Fuego es incapaz de alejarse del ardiente Núcleo, se cree que sus esbirros elementales dirigen a los enanos Hierro Negro, que están intentando crear ejércitos de piedra viva. El lago ardiente donde duerme Ragnaros actúa como un puente de conexión con el plano del fuego, permitiendo que los elementales maliciosos lo crucen. El jefe de los agentes de Ragnaros es el Mayordomo Executus; este astuto elemental es el único capaz de despertar al Señor del Fuego de su sueño."
Inst14Caption = "Núcleo de Magma"
Inst14QAA = "7 Misiones"
Inst14QAH = "7 Misiones"

--Quest 1 Alliance
Inst14Quest1 = "1. El Núcleo de Magma" -- 6822
Inst14Quest1_Level = "60"
Inst14Quest1_Attain = "57"
Inst14Quest1_Aim = "Mata a 1 señor del Fuego, 1 gigante fundido, 1 can del Núcleo anciano y 1 marea de lava y ve a ver al duque Hydraxis a Azshara."
Inst14Quest1_Location = "Duque Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst14Quest1_Note = "Están por dentro del Núcleo de Magma."
Inst14Quest1_Prequest = "Ojo del Brasadivino ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 6821
Inst14Quest1_Folgequest = "Agente de Hydraxis" -- 6823
-- No Rewards for this quest

--Quest 2 Alliance
Inst14Quest2 = "2. Las manos de los enemigos" -- 6824
Inst14Quest2_Level = "60"
Inst14Quest2_Attain = "60"
Inst14Quest2_Aim = "Lleva las manos de Lucifron, Sulfuron, Gehennas y Shazzrah al duque Hydraxis a Azshara."
Inst14Quest2_Location = "Duque Hydraxis (Azshara; "..YELLOW.."79,73"..WHITE..")"
Inst14Quest2_Note = "Lucifron está en "..YELLOW.."[1]"..WHITE..", Sulfuron está en "..YELLOW.."[8]"..WHITE..", Gehennas está en "..YELLOW.."[3]"..WHITE.." y Shazzrah está en "..YELLOW.."[5]"..WHITE.."."
Inst14Quest2_Prequest = "Agente de Hydraxis" -- 6823
Inst14Quest2_Folgequest = "Una recompensa de héroe" -- 7486
-- No Rewards for this quest

--Quest 3 Alliance
Inst14Quest3 = "3. Thunderaan el Hijo del Viento" -- 7786
Inst14Quest3_Level = "60"
Inst14Quest3_Attain = "60"
Inst14Quest3_Aim = "Para liberar a Thunderaan el Hijo del Viento de su cárcel, debes entregarle al alto señor Demitrian en Silithus la mitad izquierda y la derecha del vínculo del Hijo del Viento, 10 barras de elementium encantado y la esencia del Señor del Fuego."
Inst14Quest3_Location = "Alto señor Demitrian (Silithus; "..YELLOW.."22,9"..WHITE..")"
Inst14Quest3_Note = "Una parte de la cadena de misiones para Trueno Furioso, Espada Bendita del Hijo del Viento. Empieza después de obtener la mitad izquierda o la derecha de Garr en "..YELLOW.."[4]"..WHITE.." o Barón Geddon en "..YELLOW.."[6]"..WHITE..". Habla con Alto señor Demitrian para empezar la cadena de misiones. Despoja a Ragnaros para obtener la Esencia del Señor del Fuego en "..YELLOW.."[10]"..WHITE..". Después de entregar la misión, se invoca el Príncipe Thunderaan y debes matarlo. Se requiere una banda de 40 jugadores."
Inst14Quest3_Prequest = "Examina la vasija" -- 7785
Inst14Quest3_Folgequest = "¡Arriba, Trueno Furioso!" -- 7787
-- No Rewards for this quest

--Quest 4 Alliance
Inst14Quest4 = "4. Un contrato vinculante" -- 7604
Inst14Quest4_Level = "60"
Inst14Quest4_Attain = "60"
Inst14Quest4_Aim = "Entrégale el contrato de La Hermandad del Torio a Lokhtos Tratoscuro si quieres recibir los planes de Sulfuron."
Inst14Quest4_Location = "Lokhtos Tratoscuro (Profundidades de Roca Negra; "..YELLOW.."[15]"..WHITE..")"
Inst14Quest4_Note = "Necesitas un Lingote de sulfuron para obtener el contrato de Lokhtos. Despoja a Golemagg el Incinerador en el Núcleo de Magma en "..YELLOW.."[7]"..WHITE.."."
Inst14Quest4_Prequest = "Ninguno"
Inst14Quest4_Folgequest = "Ninguno"
--
Inst14Quest4name1 = "Diseño: martillo de Sulfuron"

--Quest 5 Alliance
Inst14Quest5 = "5. La hoja antigua" -- 7632
Inst14Quest5_Level = "60"
Inst14Quest5_Attain = "60"
Inst14Quest5_Aim = "Encuentra al dueño de la hoja petrificada vieja."
Inst14Quest5_Location = "Hoja petrificada vieja (botín del Alijo del Señor del Fuego; "..YELLOW.."[9]"..WHITE..")"
Inst14Quest5_Note = "Entrégala a Vartrus el Ancestro en (Frondavil - Bosque de Troncoferro; "..YELLOW.."49,24"..WHITE..")."
Inst14Quest5_Prequest = "Ninguno"
Inst14Quest5_Folgequest = "Carcaj antiguo cosido con tendón ("..YELLOW.."Azuregos"..WHITE..")" -- 7634
-- No Rewards for this quest

--Quest 6 Alliance
Inst14Quest6 = "6. La única receta" -- 8620
Inst14Quest6_Level = "60"
Inst14Quest6_Attain = "60"
Inst14Quest6_Aim = "Recupera los 8 capítulos perdidos de Dracónico para torpes, únelos con la encuadernación de libro mágico y devuelve el libro completo Dracónico para torpes: Volumen II a Narain Sabelotodo de Tanaris."
Inst14Quest6_Location = "Narain Sabelotodo (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst14Quest6_Note = "Sóla una persona puede conseguir el capítulo. Dracónico para torpes VIII (botín de Ragnaros; "..YELLOW.."[10]"..WHITE..")"
Inst14Quest6_Prequest = "¡Señuelo!" -- 8606
Inst14Quest6_Folgequest = "Buenas y malas noticias (Tienes que completar las cadenas de misiones Guisón, ex mejor amigo y ¡Nunca me preguntes por mi negocio!)"
--
Inst14Quest6name1 = "Turbante de poderío psíquico gnómico"

--Quest 7 Alliance
Inst14Quest7 = "7. ¿Unas gafas? ¡Sin problemas!" -- 8578
Inst14Quest7_Level = "60"
Inst14Quest7_Attain = "60"
Inst14Quest7_Aim = "Encuentra las gafas de visión de Narain y llévaselas a Tanaris."
Inst14Quest7_Location = "Narain Sabelotodo (Tanaris; "..YELLOW.."65,18"..WHITE..")"
Inst14Quest7_Note = "Botín de los jefes en el Núcleo de Magma."
Inst14Quest7_Prequest = "Guisón, ex mejor amigo" -- 8577
Inst14Quest7_Folgequest = "Buenas y malas noticias (Tienes que completar las cadenas de misiones Dracónico para torpes y ¡Nunca me preguntes por mi negocio!" -- 8728
--
Inst14Quest7name1 = "Poción de rejuvenecimiento sublime"


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
--
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
--
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
--
Inst14Quest7name1_HORDE = Inst14Quest7name1



--------------- INST15 - Naxxramas (Naxx) ---------------
Inst15Story = "Flotando sobre las Tierras de la Peste, la necrópolis de Naxxramas sirve de residencia a uno de los oficiales más poderosos del Rey Exánime, la terrible Kel'Thuzad. Horrores del pasado y desgracias por conocer se concentran en la necrópolis mientras los servidores del Rey Exánime preparan su asalto. La Plaga marcha de nuevo..."
Inst15Caption = "Naxxramas"
Inst15QAA = "5 Misiones"
Inst15QAH = "5 Misiones"

--Quest 1 Alliance
Inst15Quest1 = "1. La caída de Kel'Thuzad" -- 9120
Inst15Quest1_Level = "60"
Inst15Quest1_Attain = "60"
Inst15Quest1_Aim = "Lleva la filacteria de Kel'Thuzad a la Capilla de la Esperanza de la Luz, en las Tierras de la Peste del Este."
Inst15Quest1_Location = "Kel'Thuzad (Naxxramas; "..YELLOW.."2 Verde"..WHITE..")"
Inst15Quest1_Note = "Padre Íñigo Montoya (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,58"..WHITE..")"
Inst15Quest1_Prequest = "Ninguno"
Inst15Quest1_Folgequest = "Ninguno"
--
Inst15Quest1name1 = "Marca del Campeón"
Inst15Quest1name2 = "Marca del Campeón"

--Quest 2 Alliance
Inst15Quest2 = "2. La única canción que conozco" -- 9232
Inst15Quest2_Level = "60"
Inst15Quest2_Attain = "60"
Inst15Quest2_Aim = "El artesano Wilhelm, de la Capilla de la Esperanza de la Luz, en las Tierras de la Peste del Este, quiere que le lleves 2 runas heladas, 2 esencias de agua, 2 zafiros azules y 30 piezas de oro."
Inst15Quest2_Location = "Artesano Wilhelm (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,60"..WHITE..")"
Inst15Quest2_Note = "Despoja a las Hachas profanas en Naxxramas para obtener las Runas congeladas."
Inst15Quest2_Prequest = "Ninguno"
Inst15Quest2_Folgequest = "Ninguno"
--
Inst15Quest2name1 = "Leotardos glaciales"
Inst15Quest2name2 = "Leotardos Deliriohelado"
Inst15Quest2name3 = "Leotardos de escamas heladas"
Inst15Quest2name4 = "Leotardos polares"

--Quest 3 Alliance
Inst15Quest3 = "3. Ecos de Guerra" -- 9033
Inst15Quest3_Level = "60"
Inst15Quest3_Attain = "60"
Inst15Quest3_Aim = "El comandante Eligor Albar de la Capilla de la Esperanza de la Luz, en las Tierras de la Peste del Este, quiere que mates 5 monstruosidades vivientes, 5 gárgolas piel de piedra, 8 capitanes caballero de la Muerte y 3 acechadores venenosos."
Inst15Quest3_Location = "Comandante Eligor Albar (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest3_Note = "Despoja a los monstruous al comienzo de todas las alas de Naxxramas. Esta misión es requerida para las misiones para obtener el equipo Tier 3."
Inst15Quest3_Prequest = "La ciudadela del terror: Naxxramas" -- 9121 or 9122 or 9123
Inst15Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst15Quest4 = "4. El destino de Ramaladni" -- 9229
Inst15Quest4_Level = "60"
Inst15Quest4_Attain = "60"
Inst15Quest4_Aim = "Entra en Naxxramas y descubre qué suerte corrió Ramaladni."
Inst15Quest4_Location = "Comandante de Cruzada Korfax (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest4_Note = "Despoja a cualquier monstruo en Naxxramas para obtener el anillo. Todos los jugadores que tienen la misión puede recogerlo"
Inst15Quest4_Prequest = "Ninguno"
Inst15Quest4_Folgequest = "La garra helada de Ramaladni" -- 9230
-- No Rewards for this quest

--Quest 5 Alliance
Inst15Quest5 = "5. La garra helada de Ramaladni" -- 9230
Inst15Quest5_Level = "60"
Inst15Quest5_Attain = "60"
Inst15Quest5_Aim = "Korfax, de la Capilla de la Esperanza de la Luz, en las Tierras de la Peste del Este, quiere que le lleves 1 runa helada, 1 zafiro azul y 1 barra de arcanita."
Inst15Quest5_Location = "Comandante de Cruzada Korfax (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."82,58"..WHITE..")"
Inst15Quest5_Note = "Despoja a las Hachas profanas en Naxxramas para obtener las Runas congeladas."
Inst15Quest5_Prequest = "The Fate of Ramaladni" -- 9229
Inst15Quest5_Folgequest = "Ninguno"
--
Inst15Quest5name1 = "Garra helada de Ramaladni"


--Quest 1 Horde (same as Quest 1 Alliance)
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

--Quest 2 Horde (same as Quest 2 Alliance)
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
--
Inst15Quest5name1_HORDE = Inst15Quest5name1



--------------- INST16 - Onyxia's Lair (Ony) ---------------
Inst16Story = "Onyxia es la hija del poderoso dragón Alamuerte y hermana del manipulador Nefarion, Señor de la Cumbre de Roca Negra. Se dice que Onyxia disfruta corrompiendo a las razas mortales entrometiéndose en sus asuntos políticos. Para este fin, se cree que adopta varias formas humanoides haciendo uso de su encanto y poder para ejercer influencia en los delicados asuntos entre las distintas razas. Algunos creen que Onyxia ha llegado a asumir un sobrenombre que una vez utilizó su padre: el título de la real Casa Prestor. Cuando no se entromete en asunto mortales, Onyxia reside en una cueva ardiente bajo el Pantano del Dragón, un lúgubre humedal en el Marjal Revolcafango. Allí la protegen sus parientes, el resto de los miembros del insidioso Vuelo Negro."
Inst16Caption = "Guarida de Onyxia"
Inst16QAA = "3 Misiones"
Inst16QAH = "3 Misiones"

--Quest 1 Alliance
Inst16Quest1 = "1. Forjar Quel'Serrar" -- 7509
Inst16Quest1_Level = "60"
Inst16Quest1_Attain = "60"
Inst16Quest1_Aim = "Debes conseguir que Onyxia escupa fuego sobre la hoja antigua sin templar. Una vez hecho, recógela, su hoja estará candente. Pero ten cuidado: una hoja candente no permanecerá así para siempre, no tienes tiempo que perder."
Inst16Quest1_Location = "Tradicionalista Lydros (La Masacre Oeste; "..YELLOW.."[1] Librería"..WHITE..")"
Inst16Quest1_Note = "Deja caer la espada al frente de Onyxia cuando tenga 10-15% de salud. Tiene que respirar y calentar la espada. Cuando Onyxia muera, coge la espada, haz clic su cuerpo y usa la espada para completar la misión."
Inst16Quest1_Prequest = "Compendio de Foror ("..YELLOW.."La Masacre Oeste"..WHITE..") -> Forjar Quel'Serrar" -- 7507 -> 7508
Inst16Quest1_Folgequest = "Ninguno"
--
Inst16Quest1name1 = "Quel'Serrar"

--Quest 2 Alliance
Inst16Quest2 = "2. Victoria para la Alianza" -- 7495
Inst16Quest2_Level = "60"
Inst16Quest2_Attain = "60"
Inst16Quest2_Aim = "Lleva la cabeza de Onyxia al alto señor Bolvar Fordragón en Ventormenta."
Inst16Quest2_Location = "Cabeza de Onyxia (botín de Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest2_Note = "Alto señor Bolvar Fordragón está en (Ventormenta - Castillo de Ventormenta; "..YELLOW.."78,20"..WHITE.."). Sólo un jugador en la banda puede conseguir la cabeza.\n\nLas recompensas son para la misión siguiente."
Inst16Quest2_Prequest = "Ninguno"
Inst16Quest2_Folgequest = "Celebrar los buenos momentos" -- 7496
--
Inst16Quest2name1 = "Dije de sangre de Onyxia"
Inst16Quest2name2 = "Sello de matadragones"
Inst16Quest2name3 = "Colgante de diente de Onyxia"

--Quest 3 Alliance
Inst16Quest3 = "3. La única receta" -- 8620
Inst16Quest3_Level = "60"
Inst16Quest3_Attain = "60"
Inst16Quest3_Aim = "Recupera los 8 capítulos perdidos de Dracónico para torpes, únelos con la encuadernación de libro mágico y devuelve el libro completo Dracónico para torpes: Volumen II a Narain Sabelotodo de Tanaris."
Inst16Quest3_Location = "Narain Sabelotodo (Tanaris; "..YELLOW.."65,18"..WHITE..")".."Draconic for Dummies (botín de Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest3_Note = "Sóla una persona puede conseguir el capítulo. Dracónico para torpes VI (botín de Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest3_Prequest = "¡Señuelo!" -- 8606
Inst16Quest3_Folgequest = "Buenas y malas noticias (Tienes que completar las cadenas de misiones Guisón, ex mejor amigo y ¡Nunca me preguntes por mi negocio!)" -- 8728
--
Inst16Quest3name1 = "Turbante de poderío psíquico gnómico"


--Quest 1 Horde (same as Quest 1 Alliance)
Inst16Quest1_HORDE = Inst16Quest1
Inst16Quest1_HORDE_Attain = Inst16Quest1_Attain
Inst16Quest1_HORDE_Level = Inst16Quest1_Level
Inst16Quest1_HORDE_Aim = Inst16Quest1_Aim
Inst16Quest1_HORDE_Location = Inst16Quest1_Location
Inst16Quest1_HORDE_Note = Inst16Quest1_Note
Inst16Quest1_HORDE_Prequest = Inst16Quest1_Prequest
Inst16Quest1_HORDE_Folgequest = Inst16Quest1_Folgequest
--
Inst16Quest1name1_HORDE = Inst16Quest1name1

--Quest 2 Horde
Inst16Quest2_HORDE = "2. Victoria para la Horda" -- 7490
Inst16Quest2_HORDE_Level = "60"
Inst16Quest2_HORDE_Attain = "60"
Inst16Quest2_HORDE_Aim = "Llévale la cabeza de Onyxia a Thrall, en Orgrimmar."
Inst16Quest2_HORDE_Location = "Cabeza de Onyxia (botín de Onyxia; "..YELLOW.."[3]"..WHITE..")"
Inst16Quest2_HORDE_Note = "Thrall está en (Orgrimmar - Valle de la Sabiduría; "..YELLOW.."31,37"..WHITE.."). Sólo un jugador en la banda puede conseguir la cabeza.\n\nLas recompensas son para la misión siguiente."
Inst16Quest2_HORDE_Prequest = "Ninguno"
Inst16Quest2_HORDE_Folgequest = "Para que todos lo vean" -- 7491
--
Inst16Quest2name1_HORDE = "Dije de sangre de Onyxia"
Inst16Quest2name2_HORDE = "Sello de matadragones"
Inst16Quest2name3_HORDE = "Colgante de diente de Onyxia"

--Quest 3 Horde (same as Quest 3 Alliance)
Inst16Quest3_HORDE = Inst16Quest3
Inst16Quest3_HORDE_Attain = Inst16Quest3_Attain
Inst16Quest3_HORDE_Level = Inst16Quest3_Level
Inst16Quest3_HORDE_Aim = Inst16Quest3_Aim
Inst16Quest3_HORDE_Location = Inst16Quest3_Location
Inst16Quest3_HORDE_Note = Inst16Quest3_Note
Inst16Quest3_HORDE_Prequest = Inst16Quest3_Prequest
Inst16Quest3_HORDE_Folgequest = Inst16Quest3_Folgequest
--
Inst16Quest3name1_HORDE = Inst16Quest3name1



--------------- INST17 - Razorfen Downs (RFD) ---------------
Inst17Story = "Creada con las mismas enredaderas que Horado Rajacieno, Zahúrda Rajacieno es la capital tradicional de la raza jabaespín. El retorcido laberinto de espinas es el hogar de todo un ejército de leales jabaespines y sus sumos sacerdotes: la tribu Caramuerte. Pero recientemente, una sombra amenazante ha caído sobre la caverna. Agentes de la Plaga no-muerta, liderados por el exánime Amnennar el Gélido, se han hecho con el control de la raza de los jabaespines y han transformado el laberinto de espinas en un bastión del poder no-muerto. Ahora los jabaespines luchan una batalla desesperada para recuperar su amada ciudad antes de que Amnennar extienda su control por Los Baldíos."
Inst17Caption = "Zahúrda Rajacieno"
Inst17QAA = "3 Misiones"
Inst17QAH = "4 Misiones"

--Quest 1 Alliance
Inst17Quest1 = "1. Un anfitrión del mal" -- 6626
Inst17Quest1_Level = "35"
Inst17Quest1_Attain = "28"
Inst17Quest1_Aim = "Mata a 8 guardias de batalla de Rajacieno y 8 tejespinas Rajacieno y 8 cultores Caramuerte y ve a ver a Myriam Lunacanta cerca de la entrada a Zahúrda Rajacieno."
Inst17Quest1_Location = "Myriam Lunacanta (Los Baldíos; "..YELLOW.."49,94"..WHITE..")"
Inst17Quest1_Note = "Encuentras a Myriam Lunacanta y los monstruous en la localización antes de entrar la instancia."
Inst17Quest1_Prequest = "Ninguno"
Inst17Quest1_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Alliance
Inst17Quest2 = "2. Extinguir el ídolo" -- 3525
Inst17Quest2_Level = "37"
Inst17Quest2_Attain = "32"
Inst17Quest2_Aim = "Acompaña a Belnistrasz al ídolo jabaespín en Zahúrda Rajacieno. Protégelo mientras realiza el ritual para inutilizar el ídolo."
Inst17Quest2_Location = "Belnistrasz (Zahúrda Rajacieno; "..YELLOW.."[2]"..WHITE..")"
Inst17Quest2_Note = "Después de aceptar la misión, aparececen los monstruous que atacan a Belnistrasz mientras extingue el ídolo. Después de completar la misión, lo entregas al blandón enfrente del ídolo."
Inst17Quest2_Prequest = "La plaga de la Zahúrda" -- 3523
Inst17Quest2_Folgequest = "Ninguno"
--
Inst17Quest2name1 = "Anillo garra de dragón"

--Quest 3 Alliance
Inst17Quest3 = "3. Trae la Luz" -- 3636
Inst17Quest3_Level = "42"
Inst17Quest3_Attain = "39"
Inst17Quest3_Aim = "El arzobispo Benedictus quiere que mates a Amnennar el Gélido en Zahúrda Rajacieno."
Inst17Quest3_Location = "Arzobispo Bendictus (Ventormenta - Catedral de la Luz; "..YELLOW.."39,27"..WHITE..")"
Inst17Quest3_Note = "Amnennar el Gélido es el último jefe en la Zahúrda Rajacieno. Lo encuentras en "..YELLOW.."[6]"..WHITE.."."
Inst17Quest3_Prequest = "Ninguno"
Inst17Quest3_Folgequest = "Ninguno"
--
Inst17Quest3name1 = "Espada del vencedor"
Inst17Quest3name2 = "Dije del Resplandor Ámbar"


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
Inst17Quest2_HORDE = "2. Una alianza impía" -- 6521
Inst17Quest2_HORDE_Level = "36"
Inst17Quest2_HORDE_Attain = "28"
Inst17Quest2_HORDE_Aim = "Lleva la cabeza del embajador Malcin a Bragor Puñosangre, que está en Entrañas."
Inst17Quest2_HORDE_Location = "Varimathras (Entrañas - Barrio Real; "..YELLOW.."56,92"..WHITE..")"
Inst17Quest2_HORDE_Note = "Obtienes la misión previa del último jefe en el Horado Rajacieno. Encuentras a Malcin fuera de la instancia (Los Baldíos; "..YELLOW.."48,92"..WHITE..")."
Inst17Quest2_HORDE_Prequest = "Una alianza impía" -- 6522
Inst17Quest2_HORDE_Folgequest = "Ninguno"
--
Inst17Quest2name1_HORDE = "Partecalaveras"
Inst17Quest2name2_HORDE = "Escupeuñas"
Inst17Quest2name3_HORDE = "Toga de zelote"

--Quest 3 Horde (same as Quest 2 Alliance)
Inst17Quest3_HORDE = "3. Extinguir el ídolo"
Inst17Quest3_HORDE_Level = Inst17Quest2_Level
Inst17Quest3_HORDE_Attain = Inst17Quest2_Attain
Inst17Quest3_HORDE_Aim = Inst17Quest2_Aim
Inst17Quest3_HORDE_Location = Inst17Quest2_Location
Inst17Quest3_HORDE_Note = Inst17Quest2_Note
Inst17Quest3_HORDE_Prequest = Inst17Quest2_Prequest
Inst17Quest3_HORDE_Folgequest = Inst17Quest2_Folgequest
--
Inst17Quest3name1_HORDE = Inst17Quest2name1

--Quest 4 Horde
Inst17Quest4_HORDE = "4. Acaba con la amenaza" -- 3341
Inst17Quest4_HORDE_Level = "42"
Inst17Quest4_HORDE_Attain = "37"
Inst17Quest4_HORDE_Aim = "Andrew Brownell quiere que mates a Amnennar el Gélido y que le lleves su cráneo."
Inst17Quest4_HORDE_Location = "Andrew Brownell (Entrañas - Barrio de la Magia; "..YELLOW.."72,32"..WHITE..")"
Inst17Quest4_HORDE_Note = "Amnennar el Gélido es el último jefe en la Zahúrda Rajacieno. Lo encuentras en "..YELLOW.."[6]"..WHITE.."."
Inst17Quest4_HORDE_Prequest = "Ninguno"
Inst17Quest4_HORDE_Folgequest = "Ninguno"
--
Inst17Quest4name1_HORDE = "Espada del vencedor"
Inst17Quest4name2_HORDE = "Dije del Resplandor Ámbar"



--------------- INST18 - Horado Rajacieno (RFK) ---------------
Inst18Story = "Hace diez mil años, durante la guerra de los Ancestros, el poderoso semidiós, Agamaggan, acudió para combatir a la Legión Ardiente. Aunque el jabalí colosal cayó en combate, sus actos ayudaron a salvar Azeroth de la ruina. Y con el paso del tiempo, en las áreas donde cayó su sangre brotaron de la tierra grandes arbustos repletos de espinas. Los jabaespín, supuesta estirpe mortal del poderoso dios, ocuparon estas regiones y las consideraron sagradas. El corazón de estas colonias de espinas se conoce como Rajacieno. La gran masa de Horado Rajacieno fue conquistada por la vieja bruja Charlga Filonavaja. Bajo su gobierno, los chamánicos jabaespines lanzan ataques sobre las tribus rivales y también sobre las aldeas Horda. Algunos creen que Charlga ha llegado incluso a negociar con agentes de la Plaga, aliando a su ingenua tribu con las filas de los no-muertos para algún propósito insidioso."
Inst18Caption = "Horado Rajacieno"
Inst18QAA = "5 Misiones"
Inst18QAH = "5 Misiones"

--Quest 1 Alliance
Inst18Quest1 = "1. Los tubérculos hojazul" -- 1221
Inst18Quest1_Level = "26"
Inst18Quest1_Attain = "20"
Inst18Quest1_Aim = "Cuando llegues a Horado Rajacieno, usa el cajón con agujeros para invocar un husmeador taltuza; usa la vara para que busque tubérculos. Lleva 6 tubérculos hojazul, la vara de mando de husmeador y el cajón con agujeros a Mebok Mizzyrix a Trinquete."
Inst18Quest1_Location = "Mebok Mizzyrix (Los Baldíos - Trinquete; "..YELLOW.."62,37"..WHITE..")"
Inst18Quest1_Note = "El cajón, la vara, y el manual se encuentran cerca de Mebok Mizzyrix."
Inst18Quest1_Prequest = "Ninguno"
Inst18Quest1_Folgequest = "Ninguno"
--
Inst18Quest1name1 = "Un pequeño contenedor de gemas"

--Quest 2 Alliance
Inst18Quest2 = "2. Decaída mortal" -- 1142
Inst18Quest2_Level = "30"
Inst18Quest2_Attain = "25"
Inst18Quest2_Aim = "Encuentra el colgante de Treshala Arroyobarbecho y llévaselo a Darnassus."
Inst18Quest2_Location = "Heralath Arroyobarbecho (Horado Rajacieno; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest2_Note = "El colgante es botín aleatorio. Llévalo a Trashala Arroyobarbecho en Darnassus - Bancal del Artesano ("..YELLOW.."69,67"..WHITE..")."
Inst18Quest2_Prequest = "Ninguno"
Inst18Quest2_Folgequest = "Ninguno"
--
Inst18Quest2name1 = "Chal de luto"
Inst18Quest2name2 = "Botas de lancero"

--Quest 3 Alliance
Inst18Quest3 = "3. Willix el Importador" -- 1144
Inst18Quest3_Level = "30"
Inst18Quest3_Attain = "23"
Inst18Quest3_Aim = "Escolta a Willix el Importador hasta la salida de Horado Rajacieno."
Inst18Quest3_Location = "Willix el Importador (Horado Rajacieno; "..YELLOW.."[8]"..WHITE..")"
Inst18Quest3_Note = "Escolta a Willix el Importador a la entrada de la instancia. Entrega la misión a él después de escoltarle."
Inst18Quest3_Prequest = "Ninguno"
Inst18Quest3_Folgequest = "Ninguno"
--
Inst18Quest3name1 = "Anillo de mono"
Inst18Quest3name2 = "Aro de culebra"
Inst18Quest3name3 = "Sortija de tigre"

--Quest 4 Alliance
Inst18Quest4 = "4. La bruja del Horado" -- 1101
Inst18Quest4_Level = "34"
Inst18Quest4_Attain = "29"
Inst18Quest4_Aim = "Llévale el medallón de Filonavaja a Díscolo Falfindel de Thalanaar."
Inst18Quest4_Location = "Díscolo Falfindel (Feralas - Thalanaar; "..YELLOW.."89,46"..WHITE..")"
Inst18Quest4_Note = "Despoja a Charlga Filonavaja "..YELLOW.."[7]"..WHITE.." para obtener el medallón."
Inst18Quest4_Prequest = "El diario de Soliceja" -- 1100
Inst18Quest4_Folgequest = "Ninguno"
--
Inst18Quest4name1 = "Libertador de Falfindel"
Inst18Quest4name2 = "Protectores de Berilo"
Inst18Quest4name3 = "Faja Puño de piedra"
Inst18Quest4name4 = "Rodela de mármol"

--Quest 5 Alliance
Inst18Quest5 = "5. Armadura de malla endurecida con fuego" -- 1701
Inst18Quest5_Level = "28"
Inst18Quest5_Attain = "20"
Inst18Quest5_Aim = "Reúne los materiales que necesita Furen Barbalarga y llévaselos a Ventormenta."
Inst18Quest5_Location = "Furen Barbalarga (Ventormenta - Distrito de los Enanos; "..YELLOW.."57,16"..WHITE..")"
Inst18Quest5_Note = "Solamente para Guerreros: Consigues el Vial de flogisto de Roogug en "..YELLOW.."[1]"..WHITE..".\n\nLa misión siguiente es diferente para cada raza. Sangre ardiente para Humanos, Coral férreo para Enanos y Gnomos, y Cáscaras asoladas para Elfos de la Noche." -- 1705, 1710, 1708
Inst18Quest5_Prequest = "El forjador de escudos" -- 1702
Inst18Quest5_Folgequest = "(Ve la Nota)"
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
--
Inst18Quest1name1_HORDE = Inst18Quest1name1

--Quest 2 Horde (same as Quest 3 Alliance)
Inst18Quest2_HORDE = "2. Willix el Importador"
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
Inst18Quest3_HORDE = "3. Guano del Horado" -- 1109
Inst18Quest3_HORDE_Level = "33"
Inst18Quest3_HORDE_Attain = "30"
Inst18Quest3_HORDE_Aim = "Llévale una pila de guano del Horado al maestro boticario Faranell en Entrañas."
Inst18Quest3_HORDE_Location = "Maestro boticario Faranell (Entrañas - El Apothecarium; "..YELLOW.."48,69 "..WHITE..")"
Inst18Quest3_HORDE_Note = "Despoja a cualquier murciélago en la instancia para obtener el Guano del Horado"
Inst18Quest3_HORDE_Prequest = "Ninguno"
Inst18Quest3_HORDE_Folgequest = "Corazones de fanatismo ("..YELLOW.."[Monasterio Escarlata]"..WHITE..")" -- 1113
-- No Rewards for this quest

--Quest 4 Horde
Inst18Quest4_HORDE = "4. Un destino vengador" -- 1102
Inst18Quest4_HORDE_Level = "34"
Inst18Quest4_HORDE_Attain = "29"
Inst18Quest4_HORDE_Aim = "Llévale el corazón de Filonavaja a Auld Picopiedra, que está en Cima del Trueno."
Inst18Quest4_HORDE_Location = "Auld Picopiedra (Cima del Trueno; "..YELLOW.."36,59"..WHITE..")"
Inst18Quest4_HORDE_Note = "Encuentras a Charlga Filonavaja en "..YELLOW.."[7]"..WHITE.."."
Inst18Quest4_HORDE_Prequest = "Ninguno"
Inst18Quest4_HORDE_Folgequest = "Ninguno"
--
Inst18Quest4name1_HORDE = "Protectores de Berilo"
Inst18Quest4name2_HORDE = "Faja Puñopiedra"
Inst18Quest4name3_HORDE = "Rodela de mármol"

--Quest 5 Horde
Inst18Quest5_HORDE = "5. Armadura brutal" -- 1838
Inst18Quest5_HORDE_Level = "30"
Inst18Quest5_HORDE_Attain = "20"
Inst18Quest5_HORDE_Aim = "Lleva 15 lingotes de hierro humeantes, 10 azuritas en polvo, 10 barras de hierro y un vial de flogisto a Thun'grim Vistafuego."
Inst18Quest5_HORDE_Location = "Thun'grim Vistafuego (Los Baldíos; "..YELLOW.."57,30"..WHITE..")"
Inst18Quest5_HORDE_Note = "Solamente para Guerreros: Consigues el Vial de flogisto de Roogug en "..YELLOW.."[1]"..WHITE..".\n\nDespués de completar la misión, abrirá 4 nuevas misiones"
Inst18Quest5_HORDE_Prequest = "Habla con Thun'grim" -- 1825
Inst18Quest5_HORDE_Folgequest = "(Ve la Note)"
-- No Rewards for this quest



--------------- INST19 - SM: Library (SM Lib) ---------------
Inst19Story = "El monasterio fue un orgulloso bastión del sacerdocio de Lordaeron, un centro de aprendizaje e iluminación. Con la llegada de la peste no-muerta durante la Tercera Guerra, el pacífico Monasterio se convirtió en un bastión de la fanática Cruzada Escarlata. Los cruzados no toleran a ninguna de las razas no humanas, sin importarles su alianza o afiliación. Creen que cualquier extranjero es un portador potencial de la peste no-muerta, y por lo tanto debe ser destruido. Los informes indican que los aventureros que entran en el monasterio se ven obligados a enfrentarse al Comandante Escarlata Mograine que dirige una gran plaza fuerte de guerreros fanáticamente devotos. Sin embargo, la verdadera señora del monasterio es la Alta inquisidora Melenablanca, una temible sacerdotisa que posee la facultad de resucitar a guerreros caídos para que luchen en su nombre."
Inst19Caption = "Monasterio Escarlata: Biblioteca"
Inst19QAA = "3 Misiones"
Inst19QAH = "5 Misiones"

--Quest 1 Alliance
Inst19Quest1 = "1. En el nombre de la Luz" -- 1053
Inst19Quest1_Level = "40"
Inst19Quest1_Attain = "34"
Inst19Quest1_Aim = "Mata a la alta inquisidora Melenablanca, al Comandante Escarlata Mograine, a Herod, el Campeón Escarlata y al maestro de canes Loksey. A continuación, preséntate ante Raleigh el Devoto, en Costasur."
Inst19Quest1_Location = "Raleigh el Devoto (Laderas de Trabalomas - Costasur; "..YELLOW.."51,58"..WHITE..")"
Inst19Quest1_Note = "Esta cadena de misiones empieza con Hermano Cuerviz en Ventormenta - Catedral de Luz ("..YELLOW.."42,24"..WHITE..").\nEncuentras a la Alta inquisidora Melenablanca y al Comandante Escarlata Mograine en la "..YELLOW.."Catedral [2]"..WHITE..", a Herod en el "..YELLOW.."Arsenal [1]"..WHITE.." y al Maestro de Canes Loksey en la "..YELLOW.."Biblioteca [1]"..WHITE.."."
Inst19Quest1_Prequest = "Hermano Anton -> El sendero Escarlata" -- 6141 -> 1052
Inst19Quest1_Folgequest = "Ninguno"
--
Inst19Quest1name1 = "Espada de Serenidad"
Inst19Quest1name2 = "Masticahuesos"
Inst19Quest1name3 = "Amenaza negra"
Inst19Quest1name4 = "Orbe de Lorica"

--Quest 2 Alliance
Inst19Quest2 = "2. Mitología de los titanes" -- 1050
Inst19Quest2_Level = "38"
Inst19Quest2_Attain = "28"
Inst19Quest2_Aim = "Coge Mitología de los titanes en el monasterio y llévaselo a la bibliotecaria Mae Palipolvo a Forjaz."
Inst19Quest2_Location = "Bibliotecaria Mae Palipolvo (Forjaz - Sala de los Exploradores; "..YELLOW.."74,12"..WHITE..")"
Inst19Quest2_Note = "El libro está en el piso en el lado izquierdo de uno de los corredores que conducen a Arcanista Doan ("..YELLOW.."[2]"..WHITE..")."
Inst19Quest2_Prequest = "Ninguno"
Inst19Quest2_Folgequest = "Ninguno"
--
Inst19Quest2name1 = "Mención de honor de la Liga de Expedicionarios"

--Quest 3 Alliance
Inst19Quest3 = "3. Rituales de poder" -- 1951
Inst19Quest3_Level = "40"
Inst19Quest3_Attain = "30"
Inst19Quest3_Aim = "Lleva el libro Rituales de poder a Tabetha en el Marjal Revolcafango."
Inst19Quest3_Location = "Tabetha (Marjal Revolcafango; "..YELLOW.."43,57"..WHITE..")"
Inst19Quest3_Note = "Solamente para Magos: Encuentras el libro en el último corredor que conduce a Arcanista Doan ("..YELLOW.."[2]"..WHITE..")."
Inst19Quest3_Prequest = "Santo y seña" -- 1950
Inst19Quest3_Folgequest = "Varitas de mago" -- 1952
-- No Rewards for this quest


--Quest 1 Horde
Inst19Quest1_HORDE = "1. Corazones de fanatismo" -- 1113
Inst19Quest1_HORDE_Level = "33"
Inst19Quest1_HORDE_Attain = "30"
Inst19Quest1_HORDE_Aim = "El maestro boticario Faranell de Entrañas quiere 20 corazones de fanatismo."
Inst19Quest1_HORDE_Location = "Maestro boticario Faranell (Entrañas - El Apothecarium; "..YELLOW.."48,69"..WHITE..")"
Inst19Quest1_HORDE_Note = "Despoja a cualquier persona en el Monasterio Escarlata para obtener los Corazones de fanatismo."
Inst19Quest1_HORDE_Prequest = "Guano del Horado ("..YELLOW.."[Horado Rajacieno]"..WHITE..")" -- 1109
Inst19Quest1_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Horde
Inst19Quest2_HORDE = "2. En el Monasterio Escarlata" -- 1048
Inst19Quest2_HORDE_Level = "42"
Inst19Quest2_HORDE_Attain = "33"
Inst19Quest2_HORDE_Aim = "Mata a la alta inquisidora Melenablanca, al comandante Escarlata Mograine, a Herod el Campeón Escarlata y al maestro de canes Loksey, y después ve a ver de nuevo a Varimathras a Entrañas."
Inst19Quest2_HORDE_Location = "Varimathras (Entrañas - Barrio Real; "..YELLOW.."56,92"..WHITE..")"
Inst19Quest2_HORDE_Note = "Encuentras a la Alta inquisidora Melenablanca y al Comandante Escarlata Mograine en la "..YELLOW.."Catedral [2]"..WHITE..", Herod en el "..YELLOW.."Arsenal [1]"..WHITE.." y al Maestro de Canes Loksey en la "..YELLOW.."Biblioteca [1]"..WHITE.."."
Inst19Quest2_HORDE_Prequest = "Ninguno"
Inst19Quest2_HORDE_Folgequest = "Ninguno"
--
Inst19Quest2name1_HORDE = "Espada de Augurio"
Inst19Quest2name2_HORDE = "Caña profética"
Inst19Quest2name3_HORDE = "Collar de sangre de dragón"

--Quest 3 Horde
Inst19Quest3_HORDE = "3. El Compendio de los Caídos" -- 1049
Inst19Quest3_HORDE_Level = "38"
Inst19Quest3_HORDE_Attain = "28"
Inst19Quest3_HORDE_Aim = "Recupera el Compendio de los Caídos del Monasterio que se encuentra en los Claros de Tirisfal y regresa ante Sabio Buscador de la Verdad, que está en Cima del Trueno."
Inst19Quest3_HORDE_Location = "Sabio Buscador de la Verdad (Cima del Trueno; "..YELLOW.."34,47"..WHITE..")"
Inst19Quest3_HORDE_Note = "Encuentras el libro en la Biblioteca del Monasterio Escarlata."
Inst19Quest3_HORDE_Prequest = "Ninguno"
Inst19Quest3_HORDE_Folgequest = "Ninguno"
--
Inst19Quest3name1_HORDE = "Protector vil"
Inst19Quest3name2_HORDE = "Rodela piedra de fuerza"
Inst19Quest3name3_HORDE = "Orbe omega"

--Quest 4 Horde
Inst19Quest4_HORDE = "4. Prueba de conocimiento" -- 1160
Inst19Quest4_HORDE_Level = "36"
Inst19Quest4_HORDE_Attain = "25"
Inst19Quest4_HORDE_Aim = "Encuentra el libro Comienzos de la amenaza de los no-muertos y devuélveselo a Parqual Fintallas, que está en Entrañas."
Inst19Quest4_HORDE_Location = "Parqual Fintallas (Entrañas - El Apothecarium; "..YELLOW.."57,65"..WHITE..")"
Inst19Quest4_HORDE_Note = "La cadena de misiones empieza con Dorn Acechallanos (Las Mil Agujas; "..YELLOW.."53,41"..WHITE.."). Encuentras el libro en la Biblioteca del Monasterio Escarlata."
Inst19Quest4_HORDE_Prequest = "Prueba de fe - > Prueba de conocimiento" -- 1149 -> 1159
Inst19Quest4_HORDE_Folgequest = "Prueba de conocimiento" -- 6628
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 3 Alliance)
Inst19Quest5_HORDE = "5. Rituales de poder"
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
Inst20Caption = "Monasterio Escarlata: Arsenal"
Inst20QAA = "1 Misión"
Inst20QAH = "2 Misiones"

--Quest 1 Alliance (same as Quest 1 Alliance INST19)
Inst20Quest1 = Inst19Quest1
Inst20Quest1_Level = Inst19Quest1_Level
Inst20Quest1_Attain = Inst19Quest1_Attain
Inst20Quest1_Aim = Inst19Quest1_Aim
Inst20Quest1_Location = Inst19Quest1_Location
Inst20Quest1_Note = Inst19Quest1_Note
Inst20Quest1_Prequest = Inst19Quest1_Prequest
Inst20Quest1_Folgequest = Inst19Quest1_Folgequest
--
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
--
Inst20Quest2name1_HORDE = Inst19Quest2name1_HORDE
Inst20Quest2name2_HORDE = Inst19Quest2name2_HORDE
Inst20Quest2name3_HORDE = Inst19Quest2name3_HORDE



--------------- INST21 - SM: Cathedral (SM Cath) ---------------
Inst21Story = Inst19Story
Inst21Caption = "Monasterio Escarlata: Catedral"
Inst21QAA = "1 Misión"
Inst21QAH = "2 Misiones"

--Quest 1 Alliance (same as Quest 1 Alliance INST19)
Inst21Quest1 = Inst19Quest1
Inst21Quest1_Level = Inst19Quest1_Level
Inst21Quest1_Attain = Inst19Quest1_Attain
Inst21Quest1_Aim = Inst19Quest1_Aim
Inst21Quest1_Location = Inst19Quest1_Location
Inst21Quest1_Note = Inst19Quest1_Note
Inst21Quest1_Prequest = Inst19Quest1_Prequest
Inst21Quest1_Folgequest = Inst19Quest1_Folgequest
--
Inst21Quest1name1 = Inst19Quest1name1
Inst21Quest1name2 = Inst19Quest1name2
Inst21Quest1name3 = Inst19Quest1name3
Inst21Quest1name4 = Inst19Quest1name4


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
--
Inst21Quest2name1_HORDE = Inst19Quest2name1_HORDE
Inst21Quest2name2_HORDE = Inst19Quest2name2_HORDE
Inst21Quest2name3_HORDE = Inst19Quest2name3_HORDE



--------------- INST22 - SM: Graveyard (SM GY) ---------------
Inst22Story = Inst19Story
Inst22Caption = "Monasterio Escarlata: Cementerio"
Inst22QAA = "No Hay Misiones"
Inst22QAH = "2 Misiones"

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
Inst22Quest2_HORDE = "2. La venganza de Vorrel"
Inst22Quest2_HORDE_Level = "33"
Inst22Quest2_HORDE_Attain = "25"
Inst22Quest2_HORDE_Aim = "Lleva la alianza de Vorrel Sengutz a Monika Sengutz de Molino Tarren."
Inst22Quest2_HORDE_Location = "Vorrel Sengutz (Monasterio Escarlata - Cementerio; "..YELLOW.."[1]"..WHITE..")"
Inst22Quest2_HORDE_Note = "Encuentras a Vorrel Sengutz al comienzo del cementerio del Monasterio Escarlata. Nancy Vishas, quien tiene el anillo para esta misión, está en una casa en las Montañas de Alterac ("..YELLOW.."31,32"..WHITE..")."
Inst22Quest2_HORDE_Prequest = "Ninguno"
Inst22Quest2_HORDE_Folgequest = "Ninguno"
--
Inst22Quest2name1_HORDE = "Botas de Vorrel"
Inst22Quest2name2_HORDE = "Manto de Tragedia"
Inst22Quest2name3_HORDE = "Manteo de acero rictus"



--------------- INST23 - Scholomance (Scholo) ---------------
Inst23Story = "Scholomance se encuentra dentro de una serie de criptas que yacen debajo de la fortaleza arruinada de Castel Darrow. Otrora propiedad de la noble familia Barov, ésta cayó en la ruina después de la Segunda Guerra. Mientras el mago Kel’Thuzad reclutaba seguidores para su Culto de los Malditos con la promesa de inmortalidad, la familia Barov sucumbió ante la carismática influencia de Kel’Thuzad y donó la fortaleza y las criptas a la Plaga. Posteriormente, los cultistas mataron a los Barov y convirtieron las ancestrales criptas en una escuela de nigromancia conocida como Scholomance. Aunque Kel’Thuzad ya no reside en las criptas, en ellas permanecen cultistas e instructores devotos. El poderoso exánime Ras Murmuhielo controla el lugar y lo protege en nombre de la Plaga, mientras un nigromante mortal conocido como el Señor Oscuro Gandling funge como insidioso director de la escuela."
Inst23Caption = "Scholomance"
Inst23QAA = "11 Misiones"
Inst23QAH = "11 Misiones"

--Quest 1 Alliance
Inst23Quest1 = "1. Crías de dragón apestadas" -- 5529
Inst23Quest1_Level = "58"
Inst23Quest1_Attain = "55"
Inst23Quest1_Aim = "Mata a 20 crías de dragón apestadas y ve a ver a Betina Bigglezink a la Capilla de la Esperanza de la Luz."
Inst23Quest1_Location = "Betina Bigglezink (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst23Quest1_Note = "Las crías de dragón apestadas están en la situación antes de encontrar a Traquesangre."
Inst23Quest1_Prequest = "Ninguno"
Inst23Quest1_Folgequest = "Escama de dragón sana" -- 5582
-- No Rewards for this quest

--Quest 2 Alliance
Inst23Quest2 = "2. Escama de dragón sana" -- 5582
Inst23Quest2_Level = "58"
Inst23Quest2_Attain = "55"
Inst23Quest2_Aim = "Lleva la escama de dragón sana a Betina Bigglezink a la Capilla de la Esperanza de la Luz, en las Tierras de la Peste del Este."
Inst23Quest2_Location = "Escama de dragón sana (botín aleatorio de Scholomance)"
Inst23Quest2_Note = "Despoja a las crías de dragón apestadas para obtener las Escamas de dragón sana. Encuentras a Betina Bigglezink en las Tierras de la Peste del Este - Capilla de la Esperanza de la Luz ("..YELLOW.."81,59"..WHITE..")."
Inst23Quest2_Prequest = "Crías de dragón apestadas" -- 5529
Inst23Quest2_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Alliance
Inst23Quest3 = "3. Doctor Theolen Krastinov, el Carnicero" -- 5382
Inst23Quest3_Level = "60"
Inst23Quest3_Attain = "55"
Inst23Quest3_Aim = "Busca al doctor Theolen Krastinov en el interior de Scholomance. Acaba con él y quema los restos de Eva Sarkhoff y los restos de Lucien Sarkhoff. Cuando hayas terminado tu tarea regresa con Eva Sarkhoff."
Inst23Quest3_Location = "Eva Sarkhoff (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest3_Note = "Encuentras al Doctor Theolen Krastinov, los restos de Eva Sarkhoff, y los restos de Lucien Sarkhoff en "..YELLOW.."[9]"..WHITE.."."
Inst23Quest3_Prequest = "Ninguno"
Inst23Quest3_Folgequest = "Bolsa de los horrores de Krastinov" -- 5515
-- No Rewards for this quest

--Quest 4 Alliance
Inst23Quest4 = "4. Bolsa de los horrores de Krastinov" -- 5515
Inst23Quest4_Level = "60"
Inst23Quest4_Attain = "55"
Inst23Quest4_Aim = "Localiza a Jandice Barov en Scholomance y destrúyela. En su cadáver encontrarás la Bolsa de los horrores de Krastinov. Devuélvele la bolsa a Eva Sarkhoff."
Inst23Quest4_Location = "Eva Sarkhoff (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest4_Note = "Encuentras a Jandice Barov en "..YELLOW.."[3]"..WHITE.."."
Inst23Quest4_Prequest = "Doctor Theolen Krastinov, el Carcinero" -- 5382
Inst23Quest4_Folgequest = "Kirtonos el Heraldo" -- 5384
-- No Rewards for this quest

--Quest 5 Alliance
Inst23Quest5 = "5. Kirtonos el Heraldo" -- 5384
Inst23Quest5_Level = "60"
Inst23Quest5_Attain = "55"
Inst23Quest5_Aim = "Vuelve a Scholomance con la sangre inocente. Busca el Porche y coloca la Sangre de los inocentes en el blandón. Kirtonos acudirá a devorar tu alma."
Inst23Quest5_Location = "Eva Sarkhoff (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest5_Note = "El Porche está en "..YELLOW.."[2]"..WHITE.."."
Inst23Quest5_Prequest = "Bolsa de los horrores de Krastinov" -- 5515
Inst23Quest5_Folgequest = "El humano, Ras Murmuhielo" -- 5461
--
Inst23Quest5name1 = "Esencia espectral"
Inst23Quest5name2 = "Rosa de Penelope"
Inst23Quest5name3 = "Canción de Mirah"

--Quest 6 Alliance
Inst23Quest6 = "6. El exánime, Ras Murmuhielo" -- 5466
Inst23Quest6_Level = "60"
Inst23Quest6_Attain = "57"
Inst23Quest6_Aim = "Busca a Ras Murmuhielo en Scholomance. Cuando lo hayas encontrado utiliza el Libro de Memorias del Alma sobre su rostro no-muerto. Si consiguieras convertirlo en mortal, derrótale y recupera la Cabeza humana de Ras Murmuhielo. Lleva la cabeza al magistrado Marduke."
Inst23Quest6_Location = "Magistrado Marduke (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."70,73"..WHITE..")"
Inst23Quest6_Note = "Encuentras a Ras Murmuhielo en "..YELLOW.."[7]"..WHITE.."."
Inst23Quest6_Prequest = "El humano, Ras Murmuhielo - > El Libro de Memorias del Alma" -- 5461 -> 5465
Inst23Quest6_Folgequest = "Ninguno"
--
Inst23Quest6name1 = "Guarda fuerte de Villa Darrow"
Inst23Quest6name2 = "Hoja de guerra de Castel Darrow"
Inst23Quest6name3 = "Corona de Castel Darrow"
Inst23Quest6name4 = "Pico Darrow"

--Quest 7 Alliance
Inst23Quest7 = "7. La fortuna de la familia Barov" -- 5343
Inst23Quest7_Level = "60"
Inst23Quest7_Attain = "52"
Inst23Quest7_Aim = "Aventúrate a Scholomance y recupera la fortuna familiar de los Barov. La fortuna se compone de cuatro escrituras: Las escrituras de Castel Darrow, Las escrituras de Rémol, Las escrituras de Molino Tarren y Las escrituras de Costasur. Regresa con Weldon Barov cuando hayas terminado esta tarea."
Inst23Quest7_Location = "Weldon Barov (Tierras de la Peste del Oeste - Campamento del Orvallo; "..YELLOW.."43,83"..WHITE..")"
Inst23Quest7_Note = "Encuentras las escrituras de Castel Darrow en "..YELLOW.."[12]"..WHITE..", las escrituras de Rémol en "..YELLOW.."[7]"..WHITE..", las escrituras de Molino Tarren en "..YELLOW.."[4]"..WHITE..", y las escrituras de Costasur en "..YELLOW.."[1]"..WHITE.."."
Inst23Quest7_Prequest = "Ninguno"
Inst23Quest7_Folgequest = "El último de los Barov" -- 5344
-- No Rewards for this quest
--Quest 8 Alliance
Inst23Quest8 = "8. Gambito del Alba" -- 4771
Inst23Quest8_Level = "60"
Inst23Quest8_Attain = "57"
Inst23Quest8_Aim = "Coloca el Gambito del Alba en la Sala de la Visión de Scholomance. Derrota a Vectus y ve a ver a Betina Bigglezink."
Inst23Quest8_Location = "Betina Bigglezink (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst23Quest8_Note = "La misión \'Esencia de cría\' empieza con Tinkee Vaporio (Las Estepas Ardientes - Peñasco Llamarada; "..YELLOW.."65,23"..WHITE.."). La Sala de visión está en "..YELLOW.."[6]"..WHITE.."."
Inst23Quest8_Prequest = "Esencia de cría - > Betina Bigglezink" -- 4726 -> 5531
Inst23Quest8_Folgequest = "Ninguno"
--
Inst23Quest8name1 = "Segadora de viento"
Inst23Quest8name2 = "Esquirla danzante"

--Quest 9 Alliance
Inst23Quest9 = "9. Entrega de diablillo" -- 7629
Inst23Quest9_Level = "60"
Inst23Quest9_Attain = "60"
Inst23Quest9_Aim = "Llévale el diablillo en un tarro al laboratorio de alquimia de Scholomance. Después de crear el papiro llévale el tarro a Gorzeeki Ojovago."
Inst23Quest9_Location = "Gorzeeki Ojovago (Las Estepas Ardientes; "..YELLOW.."12,31"..WHITE..")"
Inst23Quest9_Note = "Solamente para Brujos: Encuentras el Laboratorio de alquimia en "..YELLOW.."[7]"..WHITE.."."
Inst23Quest9_Prequest = "Mor'zul Sangredoble - > Polvo estelar xorothiano" -- 7562 -> 7625
Inst23Quest9_Folgequest = "Corcel nefasto xorothiano ("..YELLOW.."La Masacre Oeste"..WHITE..")" -- 7631
-- No Rewards for this quest

--Quest 10 Alliance
Inst23Quest10 = "10. La parte izquierda del amuleto de Lord Valthalak" -- 8969
Inst23Quest10_Level = "60"
Inst23Quest10_Attain = "58"
Inst23Quest10_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Kormok y mátalo. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con la parte izquierda del amuleto de Lord Valthalak y el Blandón de Señalización."
Inst23Quest10_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst23Quest10_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Kormok en "..YELLOW.."[7]"..WHITE.."."
Inst23Quest10_Prequest = "Componentes importantes" -- 8965
Inst23Quest10_Folgequest = "En tu destino veo la Isla de Alcaz..." -- 8970
-- No Rewards for this quest

--Quest 11 Alliance
Inst23Quest11 = "11. La parte derecha del amuleto de Lord Valthalak" -- 8992
Inst23Quest11_Level = "60"
Inst23Quest11_Attain = "58"
Inst23Quest11_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Kormok y mátalo. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con el amuleto de Lord Valthalak recompuesto y el Blandón de Señalización."
Inst23Quest11_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst23Quest11_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Kormok en "..YELLOW.."[7]"..WHITE.."."
Inst23Quest11_Prequest = "Más componentes importantes" -- 8988
Inst23Quest11_Folgequest = "Últimos preparativos ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 8994
-- No Rewards for this quest


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
--
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
--
Inst23Quest6name1_HORDE = Inst23Quest6name1
Inst23Quest6name2_HORDE = Inst23Quest6name2
Inst23Quest6name3_HORDE = Inst23Quest6name3
Inst23Quest6name4_HORDE = Inst23Quest6name4

--Quest 7 Horde
Inst23Quest7_HORDE = "7. La fortuna de la familia Barov" -- 5341
Inst23Quest7_HORDE_Level = "60"
Inst23Quest7_HORDE_Attain = "52"
Inst23Quest7_HORDE_Aim = "Aventúrate a Scholomance y recupera la fortuna familiar de los Barov. La fortuna se compone de cuatro escrituras: Las escrituras de Castel Darrow, Las escrituras de Rémol, Las escrituras de Molino Tarren y Las escrituras de Costasur. Regresa con Alexi Barov cuando hayas terminado esta tarea."
Inst23Quest7_HORDE_Location = "Alexi Barov (Claros de Tirisfal - El Baluarte; "..YELLOW.."80,73"..WHITE..")"
Inst23Quest7_HORDE_Note = "Encuentras las escrituras de Castel Darrow en "..YELLOW.."[12]"..WHITE..", las escrituras de Rémol en "..YELLOW.."[7]"..WHITE..", las escrituras de Molino Tarren en "..YELLOW.."[4]"..WHITE..", y las escrituras de Costasur en "..YELLOW.."[1]"..WHITE.."."
Inst23Quest7_HORDE_Prequest = "Ninguno"
Inst23Quest7_HORDE_Folgequest = "El último de los Barov" -- 5342
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
--
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



--------------- INST24 - Shadowfang Keep (SFK) ---------------
Inst24Story = "Durante la Tercera Guerra, los zahoríes del Kirin Tor lucharon contra los ejércitos no-muertos de la Plaga. Cuando los zahoríes de Dalaran morían en combate, se alzaban al poco tiempo, añadiendo su poder inicial a la creciente Plaga. Frustrado por su falta de progresos (y en contra de los consejos de sus compañeros), el archimago Arugal decidió invocar a entidades extradimensionales para reforzar las filas de Dalaran. Su invocación trajo a los voraces ferocanis al mundo de Azeroth. Los ferales lobizones no solo masacraron a la Plaga, sino que acabaron con los zahoríes rápidamente. Asediaron el castillo del noble Barón Filargenta. Situado sobre la diminuta aldea Piroleña, tardó poco en caer en las sombras y la ruina. Enloquecido por la culpabilidad, Arugal adoptó a los ferocanis como sus hijos y se retiró al ahora llamado \"Castillo de Colmillo Oscuro\". Se dice que todavía reside allí, protegido por su enorme mascota, Fenrus, y acosado por el fantasma vengativo del Barón Filargenta."
Inst24Caption = "Castillo de Colmillo Oscuro"
Inst24QAA = "2 Misiones"
Inst24QAH = "4 Misiones"

--Quest 1 Alliance
Inst24Quest1 = "1. La prueba de rectitud" -- 1654
Inst24Quest1_Level = "22"
Inst24Quest1_Attain = "20"
Inst24Quest1_Aim = "Consulta la lista y llévale a Jordan Fontana de Forjaz lo siguiente: madera de roble de Piedrablanca, envío de oro refinado de Bailor, el martillo de herrero de Jordan y una gema Kor."
Inst24Quest1_Location = "Jordan Fontana (Dun Morogh - Entrada de Forjaz; "..YELLOW.."52,36"..WHITE..")"
Inst24Quest1_Note = "Solamente para Paladines: Para ver la nota haz clic en "..YELLOW.."[Información de La prueba de rectitud]"..WHITE.."."
Inst24Quest1_Page = { "¡Esta misión está disponible solamente para paladines!\n\n1. Despoja a los Talladores de madera goblin en "..YELLOW.."[Las Minas de la Muerte]"..WHITE.." cerca de "..YELLOW.."[3]"..WHITE.." para obtener la Madera de roble de Piedrablanca.\n\n2. Habla con Bailor Petramano (Loch Modan - Thelsamar; "..YELLOW.."35,44"..WHITE..") para obtener el Envío de mena refinada de Jordan. Te da la misión 'Envío de mena de Bailor'. Encuentras el Envío de mena de Jordan detrás de un árbol a "..YELLOW.."71,21"..WHITE.."\n\n3. Encuentras el Martillo de herrería de Jordan en "..YELLOW.."[Castillo de Colmillo Oscuro]"..WHITE.." en "..YELLOW.."[3]"..WHITE..".\n\n4. para obtener la Gema kor purificada habla con Thundris Tejevientos (Costa Oscura - Auberdine; "..YELLOW.."37,40"..WHITE..") y haga su misión 'La búsqueda de la gema Kor'. Para esta misión, tienes que matar Oráculos Brazanegras o Sacerdotisas de las mareas Brazanegras afuera de "..YELLOW.."[Cavernas de Brazanegra]"..WHITE..". Los despojas para obtener la Gema kor corrupta. Thundris Tejevientos la limpiará para ti.", };
Inst24Quest1_Prequest = "Escrito sobre valor -> La prueba de rectitud" -- 1651 -> 1653
Inst24Quest1_Folgequest = "La prueba de rectitud" -- 1806
--
Inst24Quest1name1 = "Puño de Verigan"

--Quest 2 Alliance
Inst24Quest2 = "2. El orbe de Soran'ruk" -- 1740
Inst24Quest2_Level = "25"
Inst24Quest2_Attain = "20"
Inst24Quest2_Aim = "Encuentra 3 trozos de Soran'ruk y 1 trozo de Soran'ruk grande y llévaselos a Doan Karhan en Los Baldíos."
Inst24Quest2_Location = "Doan Karhan (Los Baldíos; "..YELLOW.."49,57"..WHITE..")"
Inst24Quest2_Note = "Solamente para Brujos: Consigues los 3 Trozos de Soran'ruk de los Acólitos Crepusculares en "..YELLOW.."[Cavernas de Brazanegra]"..WHITE..". Consigues el Trozo de Soran'ruk grande en "..YELLOW.."[Castillo de Colmillo Oscuro]"..WHITE.." de los Almanegras Colmillo Oscuro."
Inst24Quest2_Prequest = "Ninguno"
Inst24Quest2_Folgequest = "Ninguno"
--
Inst24Quest2name1 = "Orbe de Soran'ruk"
Inst24Quest2name2 = "Bastón de Soran'ruk"


--Quest 1 Horde
Inst24Quest1_HORDE = "1. Mortacechadores en Colmillo Oscuro" -- 1098
Inst24Quest1_HORDE_Level = "25"
Inst24Quest1_HORDE_Attain = "18"
Inst24Quest1_HORDE_Aim = "Encuentra a los mortacechadores Adamant y Vincent."
Inst24Quest1_HORDE_Location = "Sumo ejecutor Hadrec (Bosque de Argénteos - El Sepulcro; "..YELLOW.."43,40"..WHITE..")"
Inst24Quest1_HORDE_Note = "Encuentras al Mortacechador Adamant en "..YELLOW.."[1]"..WHITE..". Mortacechador Vincent está en el lado derecho cuando vayas en el patio en "..YELLOW.."[2]"..WHITE.."."
Inst24Quest1_HORDE_Prequest = "Ninguno"
Inst24Quest1_HORDE_Folgequest = "Ninguno"
--
Inst24Quest1name1_HORDE = "Manto fantasmal"

--Quest 2 Horde
Inst24Quest2_HORDE = "2. El Libro de Ur" -- 1013
Inst24Quest2_HORDE_Level = "26"
Inst24Quest2_HORDE_Attain = "16"
Inst24Quest2_HORDE_Aim = "Lleva el Libro de Ur al vigilante Bel'dugur al Apothecarium de Entrañas."
Inst24Quest2_HORDE_Location = "Vigilante Bel'dugur (Entrañas - El Apothecarium; "..YELLOW.."53,54"..WHITE..")"
Inst24Quest2_HORDE_Note = "Encuentras el libro en "..YELLOW.."[8]"..WHITE.." en el lado izquierdo cuando entres la sala."
Inst24Quest2_HORDE_Prequest = "Ninguno"
Inst24Quest2_HORDE_Folgequest = "Ninguno"
--
Inst24Quest2name1_HORDE = "Botas grisáceas"
Inst24Quest2name2_HORDE = "Brazales con cierre de acero"

--Quest 3 Horde
Inst24Quest3_HORDE = "3. Arugal debe morir" -- 1014
Inst24Quest3_HORDE_Level = "27"
Inst24Quest3_HORDE_Attain = "18"
Inst24Quest3_HORDE_Aim = "Mata a Arugal y lleva su cabeza a Dalar Tejealba en El Sepulcro."
Inst24Quest3_HORDE_Location = "Dalar Tejealba (Bosque de Argénteos - El Sepulcro; "..YELLOW.."44,39"..WHITE..")"
Inst24Quest3_HORDE_Note = "Encuentras al Archimago Arugal en "..YELLOW.."[10]"..WHITE.."."
Inst24Quest3_HORDE_Prequest = "Ninguno"
Inst24Quest3_HORDE_Folgequest = "Ninguno"
--
Inst24Quest3name1_HORDE = "Sello de Sylvanas"

--Quest 4 Horde (same as Quest 2 Alliance)
Inst24Quest4_HORDE = "4. El Orbe de Soran'ruk"
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
Inst25Story = "Antaño joya del norte de Lordaeron, la ciudad de Stratholme es donde el Príncipe Arthas se volvió contra su mentor, Uther el Iluminado, y masacró a cientos de sus propios súbditos, ya que se suponía que habían contraído la terrible peste de los no-muertos. La espiral descendente de Arthas y su rendición final ante el Rey Exánime tuvieron lugar al poco tiempo. La ciudad arrasada es ahora el hogar de la Plaga no-muerta, liderada por el poderoso exánime, Kel'thuzad. Un contingente de Cruzados Escarlatas, liderados por el Gran Cruzado Dathrohan también controlan una parte de la ciudad arrasada. Los dos bandos están enzarzados en un combate constante y violento. Aquellos aventureros lo bastante valientes (o insensatos) como para entrar en Stratholme se verán obligados a enfrentarse a ambas facciones en breve. Se dice que la ciudad está protegida por tres enormes atalayas, y por poderosos necrománticos, almas en pena y abominaciones. También hay informes sobre un maléfico Caballero de la Muerte que cabalga sobre una montura perversa repartiendo su ira indiscriminada por entre aquellos que se aventuren al reino de la Plaga."
Inst25Caption = "Stratholme"
Inst25QAA = "17 Misiones"
Inst25QAH = "18 Misiones"

--Quest 1 Alliance
Inst25Quest1 = "1. La carne no miente" -- 5212
Inst25Quest1_Level = "60"
Inst25Quest1_Attain = "55"
Inst25Quest1_Aim = "Recoge 10 muestras de carne apestada de Stratholme y vuelve con Betina Bigglezink. Sospechas que podrías obtener una muestra de cualquier criatura de Stratholme."
Inst25Quest1_Location = "Betina Bigglezink (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest1_Note = "Despoja a cualquier criatura para obtener una muestra de carne apestada."
Inst25Quest1_Prequest = "Ninguno"
Inst25Quest1_Folgequest = "El agente activo" -- 5213
-- No Rewards for this quest

--Quest 2 Alliance
Inst25Quest2 = "2. El agente activo" -- 5213
Inst25Quest2_Level = "60"
Inst25Quest2_Attain = "55"
Inst25Quest2_Aim = "Viaja a Stratholme y busca los zigurats. Encuentra información sobre la Plaga y llévasela a Betina Bigglezink."
Inst25Quest2_Location = "Betina Bigglezink (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest2_Note = "La información sobre la Plaga está en los 3 zigurats que se encuentran cerca de "..YELLOW.."[15]"..WHITE..", "..YELLOW.."[16]"..WHITE.." y "..YELLOW.."[17]"..WHITE.."."
Inst25Quest2_Prequest = "La carne no miente" -- 5212
Inst25Quest2_Folgequest = "Ninguno"
--
Inst25Quest2name1 = "Sello del Alba"
Inst25Quest2name2 = "Runa del Alba"

--Quest 3 Alliance
Inst25Quest3 = "3. Las casas de lo sagrado" -- 5243
Inst25Quest3_Level = "60"
Inst25Quest3_Attain = "55"
Inst25Quest3_Aim = "Viaja al norte, a Stratholme. Registra los cajones de provisiones que hay por toda la ciudad y recupera 5 de agua bendita de Stratholme. Vuelve junto a Leonid Barthalomew el Venerado cuando hayas reunido suficiente líquido bendecido."
Inst25Quest3_Location = "Leonid Barthalomew el Venerado (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest3_Note = "Encuentras el Agua bendita en las cajas en Stratholme. Es posible que aparezcan insectos que te atacan cuando abras una caja."
Inst25Quest3_Prequest = "Ninguno"
Inst25Quest3_Folgequest = "Ninguno"
--
Inst25Quest3name1 = "Poción de sanación excelente"
Inst25Quest3name2 = "Poción de maná superior"
Inst25Quest3name3 = "Corona del Penitente"
Inst25Quest3name4 = "Sortija del Penitente"

--Quest 4 Alliance
Inst25Quest4 = "4. El gran Fras Siabi" -- 5214
Inst25Quest4_Level = "60"
Inst25Quest4_Attain = "55"
Inst25Quest4_Aim = "Encuentra la Tienda de humo de Fras Siabi en Stratholme y recupera una caja del tabaco de calidad de Siabi. Cuando lo hayas hecho, vuelve con Smokey LaRue."
Inst25Quest4_Location = "Smokey LaRue (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest4_Note = "Encuentras la Tienda de humo cerca de "..YELLOW.."[1]"..WHITE..". Fras Siabi aparece después de abrir la caja."
Inst25Quest4_Prequest = "Ninguno"
Inst25Quest4_Folgequest = "Ninguno"
--
Inst25Quest4name1 = "Mechero de Smokey"

--Quest 5 Alliance
Inst25Quest5 = "5. Espíritus inquietos" -- 5282
Inst25Quest5_Level = "60"
Inst25Quest5_Attain = "55"
Inst25Quest5_Aim = "Utiliza el libertador de Egan en los ciudadanos espectrales y fantasmas de Stratholme. Cuando las almas se liberen de sus recipientes fantasmales, vuelve a usarlo y lograrás liberarlos para siempre.\nLibera 15 almas y regresa a Egan."
Inst25Quest5_Location = "Egan (Tierras de la Peste del Este; "..YELLOW.."14,33"..WHITE..")"
Inst25Quest5_Note = "Obtienes la misión previa de Custodio Alen (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."79,63"..WHITE.."). Los ciudadanos espectrales caminan sobre todas las partes de Stratholme."
Inst25Quest5_Prequest = "Espíritus inquietos" -- 5281
Inst25Quest5_Folgequest = "Ninguno"
--
Inst25Quest5name1 = "Testamento de Esperanza"

--Quest 6 Alliance
Inst25Quest6 = "6. Del amor y la familia" -- 5848
Inst25Quest6_Level = "60"
Inst25Quest6_Attain = "52"
Inst25Quest6_Aim = "Viaja a Stratholme, en la zona norte de las Tierras de la Peste. En El Bastión Escarlata encontrarás el cuadro 'Del amor y la familia', oculto tras otra pintura que representa las lunas gemelas de nuestro mundo.\nDevuelve la pintura a Tirion Vadín."
Inst25Quest6_Location = "Artista Renfray (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."65,75"..WHITE..")"
Inst25Quest6_Note = "Obtienes la misión previa de Tirion Vadín (Tierras de la Peste del Oeste; "..YELLOW.."7,43"..WHITE.."). Encuentras la pintura cerca de "..YELLOW.."[10]"..WHITE.."."
Inst25Quest6_Prequest = "Redención - > Del amor y la familia" -- 5742 -> 5846
Inst25Quest6_Folgequest = "Encuentra a Myranda" -- 5861
-- No Rewards for this quest

--Quest 7 Alliance
Inst25Quest7 = "7. El Obsequio de Menethil" -- 5463
Inst25Quest7_Level = "60"
Inst25Quest7_Attain = "57"
Inst25Quest7_Aim = "Viaja a Stratholme y encuentra el Obsequio de Menethil. Coloca el Libro de los Recuerdos en suelo no consagrado."
Inst25Quest7_Location = "Leonid Barthalomew el Venerado (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."80,58"..WHITE..")"
Inst25Quest7_Note = "Obtienes la misión previa de Magistrado Marduke (Tierras de la Peste del Oeste - Castel Darrow; "..YELLOW.."70,73"..WHITE.."). Encuentras el Obsequio de Menethil cerca de "..YELLOW.."[19]"..WHITE..". Ver También: "..YELLOW.."[El exánime, Ras Murmuhielo]"..WHITE.." en Scholomance."
Inst25Quest7_Prequest = "El humano, Ras Murmuhielo - > El moribundo, Ras Murmuhielo" -- 5461 -> 5462
Inst25Quest7_Folgequest = "El Obsequio de Menethil" -- 5464
-- No Rewards for this quest

--Quest 8 Alliance
Inst25Quest8 = "8. La estimación de Aurius" -- 5125
Inst25Quest8_Level = "60"
Inst25Quest8_Attain = "55"
Inst25Quest8_Aim = "Mata al Barón."
Inst25Quest8_Location = "Aurius (Stratholme; "..YELLOW.."[13]"..WHITE..")"
Inst25Quest8_Note = "Para empezar la misión tienes que darle a Aurius [El medallón de Fe]. Encuentras el medallón en una caja (Caja fuerte de Malor "..YELLOW.."[7]"..WHITE..") en la primera sala del bastión. Después de entregarle a Aurius el medallón, te ayuda cuando tu grupo luche contra Barón Osahendido "..YELLOW.."[19]"..WHITE..". Después de matar al Barón Osahendido, habla con Aurius para obtener las recompensas."
Inst25Quest8_Prequest = "Ninguno"
Inst25Quest8_Folgequest = "Ninguno"
--
Inst25Quest8name1 = "Voluntad del Mártir"
Inst25Quest8name2 = "Sangre del Mártir"

--Quest 9 Alliance
Inst25Quest9 = "9. El archivista" -- 5251
Inst25Quest9_Level = "60"
Inst25Quest9_Attain = "55"
Inst25Quest9_Aim = "Viaja a Stratholme y encuentra al archivista Galford de La Cruzada Escarlata. Acaba con él y quema el Archivo Escarlata."
Inst25Quest9_Location = "Duque Nicholas Zverenhoff (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest9_Note = "Encuentras el Archivo y al Archivista en "..YELLOW.."[10]"..WHITE.."."
Inst25Quest9_Prequest = "Ninguno"
Inst25Quest9_Folgequest = "La verdad cae del cielo" -- 5262
-- No Rewards for this quest

--Quest 10 Alliance
Inst25Quest10 = "10. La verdad cae del cielo" -- 5262
Inst25Quest10_Level = "60"
Inst25Quest10_Attain = "55"
Inst25Quest10_Aim = "Lleva la cabeza de Balnazzar al duque Nicolas Zverenhoff en las Tierras de la Peste del Este."
Inst25Quest10_Location = "Balnazzar (Stratholme; "..YELLOW.."[11]"..WHITE..")"
Inst25Quest10_Note = "Encuentras al Duque Nicholas Zverenhoff en las Tierras de la Peste del Este - Capilla de la Esperanza de la Luz ("..YELLOW.."81,59"..WHITE..")."
Inst25Quest10_Prequest = "El archivista" -- 5251
Inst25Quest10_Folgequest = "Por encima y más allá" -- 5263
-- No Rewards for this quest

--Quest 11 Alliance
Inst25Quest11 = "11. Por encima y más allá" -- 5263
Inst25Quest11_Level = "60"
Inst25Quest11_Attain = "55"
Inst25Quest11_Aim = "Viaja a Stratholme y acaba con el barón Osahendido. Coge su cabeza y vuelve con el duque Nicolas Zverenhoff."
Inst25Quest11_Location = "Duque Nicholas Zverenhoff (Tierras de la Peste del Este - Capilla de la Esperanza de la Luz; "..YELLOW.."81,59"..WHITE..")"
Inst25Quest11_Note = "Encuentras al Barón Osahendido en "..YELLOW.."[19]"..WHITE.."."
Inst25Quest11_Prequest = "La verdad cae del cielo" -- 5262
Inst25Quest11_Folgequest = "Ninguno"
--
Inst25Quest11name1 = "Defensor Argenta"
Inst25Quest11name2 = "Cruzado Argenta"
Inst25Quest11name3 = "Vengador Argenta"

--Quest 12 Alliance
Inst25Quest12 = "12. La súplica de un muerto" -- 8945
Inst25Quest12_Level = "60"
Inst25Quest12_Attain = "58"
Inst25Quest12_Aim = "Ve a Stratholme y rescata a Ysida Harmon del Barón Osahendido."
Inst25Quest12_Location = "Anthion Harmon (Tierras de la Peste del Este - Stratholme)"
Inst25Quest12_Note = "Anthion está fuera del portal a Stratholme. Tienes que llevar el Detector de fantasmas extradimensional para verlo. Lo obtienes de la misión previa. La cadena de misiones empieza con Una compensación justa. Deliana en Forjaz ("..YELLOW.."43,52"..WHITE..") para la Alianza, Mokvar en Orgrimmar ("..YELLOW.."38,37"..WHITE..") para la Horda.\nTienes que matar al Barón Osahendido en 45 minutos o menos."
Inst25Quest12_Prequest = "Buscando a Anthion" -- 8929
Inst25Quest12_Folgequest = "Prueba de vida" -- 8946
-- No Rewards for this quest

--Quest 13 Alliance
Inst25Quest13 = "13. La parte izquierda del amuleto de Lord Valthalak" -- 8968
Inst25Quest13_Level = "60"
Inst25Quest13_Attain = "58"
Inst25Quest13_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Jarien y Sothos y mátalos. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con la parte izquierda del amuleto de Lord Valthalak y el Blandón de Señalización."
Inst25Quest13_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst25Quest13_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Jarien y Sothos en "..YELLOW.."[11]"..WHITE.."."
Inst25Quest13_Prequest = "Componentes importantes" -- 8964
Inst25Quest13_Folgequest = "En tu destino veo la Isla de Alcaz..." -- 8970
-- No Rewards for this quest

--Quest 14 Alliance
Inst25Quest14 = "14. La parte derecha del amuleto de Lord Valthalak" -- 8991
Inst25Quest14_Level = "60"
Inst25Quest14_Attain = "58"
Inst25Quest14_Aim = "Usa el Blandón de Señalización para invocar al espíritu de Jarien y Sothos y mátalos. Vuelve junto a Bodley en el interior de la Montaña Roca Negra con el amuleto de Lord Valthalak recompuesto y el Blandón de Señalización."
Inst25Quest14_Location = "Bodley (Montaña Roca Negra; "..YELLOW.."[D] en el mapa de la Entrada"..WHITE..")"
Inst25Quest14_Note = "Necesitas el Detector de fantasmas extradimensional para ver a Bodley. Lo consigues de la misión 'Buscando a Anthion'.\n\nInvoca a Jarien y Sothos en "..YELLOW.."[11]"..WHITE.."."
Inst25Quest14_Prequest = "Más componentes importantes" -- 8987
Inst25Quest14_Folgequest = "Últimos preparativos ("..YELLOW.."Cumbre de Roca Negra Superior"..WHITE..")" -- 8994
-- No Rewards for this quest

--Quest 15 Alliance
Inst25Quest15 = "15. Atiesh, el gran báculo del guardián"
Inst25Quest15_Level = "60"
Inst25Quest15_Attain = "60"
Inst25Quest15_Aim = "Anacronos, en las Cavernas del Tiempo en Tanaris, quiere que lleves a Atiesh, el gran báculo del guardián, a Stratholme y lo uses en la Tierra consagrada. Derrota al ser diabólico exorcizado del báculo y vuelve a ver a Anacronos."
Inst25Quest15_Location = "Anacronos (Tanaris - Cavernas del Tiempo; "..YELLOW.."65,49"..WHITE..")"
Inst25Quest15_Note = "Invoca a Atiesh en "..YELLOW.."[2]"..WHITE.."."
Inst25Quest15_Prequest = "Cuerpo de Atiesh -> Atiesh, el gran báculo maligno" -- 9250 -> 9251 
Inst25Quest15_Folgequest = "Ninguno"
--
Inst25Quest15name1 = "Atiesh, gran báculo del Guardián"
Inst25Quest15name2 = "Atiesh, gran báculo del Guardián"
Inst25Quest15name3 = "Atiesh, gran báculo del Guardián"
Inst25Quest15name4 = "Atiesh, gran báculo del Guardián"

--Quest 16 Alliance
Inst25Quest16 = "16. Corrupción" -- 5307
Inst25Quest16_Level = "60"
Inst25Quest16_Attain = "50"
Inst25Quest16_Aim = "Encuentra al armero Guardia Negra en Stratholme y acaba con él. Recupera la Insignia de La Guardia Negra y regresa con Seril Finiquiplaga."
Inst25Quest16_Location = "Seril Finiquiplaga (Cuna del Invierno - Vista Eterna; "..YELLOW.."61,37"..WHITE..")"
Inst25Quest16_Note = "Solamente para Herreros: Invoca al Armero Guardia Negra cerca de "..YELLOW.."[15]"..WHITE.."."
Inst25Quest16_Prequest = "Ninguno"
Inst25Quest16_Folgequest = "Ninguno"
--
Inst25Quest16name1 = "Diseño: Estoque llameante"

--Quest 17 Alliance
Inst25Quest17 = "17. Dulce serenidad" -- 5305
Inst25Quest17_Level = "60"
Inst25Quest17_Attain = "50"
Inst25Quest17_Aim = "Viaja a Stratholme y mata al forjamartillos Carmesí. Consigue el delantal del forjamartillos Carmesí y regresa con Lilith."
Inst25Quest17_Location = "Lilith la Ágil (Cuna del Invierno - Vista Eterna; "..YELLOW.."61,37"..WHITE..")"
Inst25Quest17_Note = "Solamente para Herreros: Invoca al Forjamartillos Carmesí en "..YELLOW.."[8]"..WHITE.."."
Inst25Quest17_Prequest = "Ninguno"
Inst25Quest17_Folgequest = "Ninguno"
--
Inst25Quest17name1 = "Diseño: martillo de batalla encantado"


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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
Inst25Quest17name1_HORDE = Inst25Quest17name1

--Quest 18 Horde
Inst25Quest18_HORDE = "18. Ramstein" -- 6163
Inst25Quest18_HORDE_Level = "60"
Inst25Quest18_HORDE_Attain = "56"
Inst25Quest18_HORDE_Aim = "Viaja a Stratholme y mata a Ramstein el Empachador. Coge su cabeza y llévasela como souvenir a Nathanos."
Inst25Quest18_HORDE_Location = "Nathanos Clamañublo (Tierras de la Peste del Este; "..YELLOW.."26,74"..WHITE..")"
Inst25Quest18_HORDE_Note = "Obtienes la misión previa de Nathanos Clamañublo también. Encuentras a Ramstein en "..YELLOW.."[18]"..WHITE.."."
Inst25Quest18_HORDE_Prequest = "La orden del Señor forestal -> Alaocaso, cómo te odio..." -- 6133 -> 6135
Inst25Quest18_HORDE_Folgequest = "Ninguno"
--
Inst25Quest18name1_HORDE = "Sello real de Alexis"
Inst25Quest18name2_HORDE = "Círculo elemental"



--------------- INST26 - The Ruins of Ahn'Qiraj (AQ20) ---------------
Inst26Story = "Durante las últimas horas de la Guerra del Mar de Dunas, las fuerzas combinadas de los elfos de la noche y los cuatro vuelos de dragones llevaron la batalla al mismo corazón del imperio qiraji: la ciudad fortificada de Ahn'Qiraj. Pero ante las puertas de la ciudad, los ejércitos de Kalimdor se encontraron la mayor concentración de esclavos de guerra silítidos que jamás se habían encontrado. Al final, los silítidos y sus maestros qiraji no fueron derrotados, solamente aprisionados dentro de una barrera mágica, y la guerra dejó a la ciudad maldita en ruinas. Desde ese día han pasado mil años, pero las fuerzas qiraji no han estado paradas. Un ejército nuevo y terrible ha nacido de las colmenas y las ruinas de Ahn'Qiraj están volviendo a vibrar una vez más con enormes masas de silítidos y qiraji. Esta amenaza debe se eliminada o de lo contrario, todo Azeroth podría caer ante el terrible poder del nuevo ejército qiraji."
Inst26Caption = "Ruinas de Ahn'Qiraj"
Inst26QAA = "2 Misiones"
Inst26QAH = "2 Misiones"

--Quest 1 Alliance
Inst26Quest1 = "1. La caída de Osirio" -- 8791
Inst26Quest1_Level = "60"
Inst26Quest1_Attain = "60"
Inst26Quest1_Aim = "Entrégale la cabeza de Osirio el Sinmarcas al comandante Mar'alith de Fuerte Cenarion en Silithus."
Inst26Quest1_Location = "Cabeza de Osirio el Sinmarcas (botín de Osirio el Sinmarcas; "..YELLOW.."[6]"..WHITE..")"
Inst26Quest1_Note = "Comandante Mar'alith (Silithus - Fuerte Cenarion; "..YELLOW.."49,34"..WHITE..")"
Inst26Quest1_Prequest = "Ninguno"
Inst26Quest1_Folgequest = "Ninguno"
--
Inst26Quest1name1 = "Talismán del Mar de Dunas"
Inst26Quest1name2 = "Amuleto del Mar de Dunas"
Inst26Quest1name3 = "Gargantilla del Mar de Dunas"
Inst26Quest1name4 = "Colgante del Mar de Dunas"

--Quest 2 Alliance
Inst26Quest2 = "2. El veneno perfecto" -- 9023
Inst26Quest2_Level = "60"
Inst26Quest2_Attain = "60"
Inst26Quest2_Aim = "Dirk Truenedera quiere que le lleves glándulas de veneno de Venoxis y Kurinnaxx al Fuerte Cenarion."
Inst26Quest2_Location = "Dirk Truenedera (Silithus - Fuerte Cenarion; "..YELLOW.."52,39"..WHITE..")"
Inst26Quest2_Note = "Despoja al Sumo sacerdote Venoxis en "..YELLOW.."Zul'Gurub"..WHITE.." para obtener la glándula de veneno de Venoxis. Despoja a Kurinnaxx en las "..YELLOW.."Ruinas de Ahn'Qiraj"..WHITE.." en "..YELLOW.."[1]"..WHITE.." para obtener la glándula de veneno de Kurinnaxx."
Inst26Quest2_Prequest = "Ninguno"
Inst26Quest2_Folgequest = "Ninguno"
--
Inst26Quest2name1 = "Cercenadora Ravenholdt"
Inst26Quest2name2 = "Chafarote de Shivsprocket"
Inst26Quest2name3 = "El atizador Truenedera"
Inst26Quest2name4 = "Prima de Condemulus"
Inst26Quest2name5 = "Ballesta de repetición de recarga de Fahrad"
Inst26Quest2name6 = "Martillo de cultivo de Simone"


--Quest 1 Horde (same as Quest 1 Alliance)
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

--Quest 2 Horde (same as Quest 2 Alliance)
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
Inst27Story = "Las Mazmorras son un complejo penitenciario de alta seguridad ocultas bajo el distrito de Los Canales de la ciudad de Ventormenta. Presididas por el alcaide Thelagua, Las Mazmorras son el hogar de bandidos mezquinos, insurgentes políticos, asesinos y una colección de los criminales más peligrosos de la tierra. Recientemente, una revuelta liderada por los prisioneros ha creado un estado de pandemonio en su interior; los guardias no han podido contenerlos y los convictos vagan libres. El alcaide ha logrado escapar de la zona de contención y en la actualidad está alistando a valientes ansiosos de emociones para aventurarse en la prisión y asesinar al líder del alzamiento: el astuto felón Bazil Thredd."
Inst27Caption = "Las Mazmorras"
Inst27QAA = "6 Misiones"
Inst27QAH = "No Hay Misiones"

--Quest 1 Alliance
Inst27Quest1 = "1. Lo que sucede alrededor..." -- 386
Inst27Quest1_Level = "25"
Inst27Quest1_Attain = "22"
Inst27Quest1_Aim = "Lleva la cabeza de Targorr el Pavoroso al guardia Berton a Villa del Lago."
Inst27Quest1_Location = "Guardia Berton (Montañas Crestagrana - Villa del Lago; "..YELLOW.."26,46"..WHITE..")"
Inst27Quest1_Note = "Encuentras a Targorr en "..YELLOW.."[1]"..WHITE.."."
Inst27Quest1_Prequest = "Ninguno"
Inst27Quest1_Folgequest = "Ninguno"
--
Inst27Quest1name1 = "Tizona Lucine"
Inst27Quest1name2 = "Bastón de raíz endurecido"

--Quest 2 Alliance
Inst27Quest2 = "2. Crimen y castigo" -- 377
Inst27Quest2_Level = "26"
Inst27Quest2_Attain = "22"
Inst27Quest2_Aim = "El consejero Tallolino de Villa Oscura quiere que le lleves la mano de Dextren Ward."
Inst27Quest2_Location = "Consejero Tallolino (Bosque del Ocaso - Villa Oscura; "..YELLOW.."72,47"..WHITE..")"
Inst27Quest2_Note = "Encuentras a Dextren Ward en "..YELLOW.."[5]"..WHITE.."."
Inst27Quest2_Prequest = "Ninguno"
Inst27Quest2_Folgequest = "Ninguno"
--
Inst27Quest2name1 = "Botas de embajador"
Inst27Quest2name2 = "Leotardos de malla Villa Oscura"

--Quest 3 Alliance
Inst27Quest3 = "3. Detener el motín" -- 387
Inst27Quest3_Level = "26"
Inst27Quest3_Attain = "22"
Inst27Quest3_Aim = "El celador Thelagua de Ventormenta quiere que mates 10 prisioneros, 8 presidiarios, y 8 insurgentes en Las Mazmorras."
Inst27Quest3_Location = "Celador Thelagua (Ventormenta - Las Mazmorras; "..YELLOW.."41,58"..WHITE..")"
Inst27Quest3_Note = ""
Inst27Quest3_Prequest = "Ninguno"
Inst27Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst27Quest4 = "4. El color de la sangre" -- 388
Inst27Quest4_Level = "26"
Inst27Quest4_Attain = "22"
Inst27Quest4_Aim = "Nikova Raskol, de Ventormenta, quiere que consigas 10 pañuelos de lana roja."
Inst27Quest4_Location = "Nikova Raskol (Ventormenta - Casco Antiguo; "..YELLOW.."73,46"..WHITE..")"
Inst27Quest4_Note = "Despoja a cualquier criatura en la instancia para obtener los pañuelos de lana roja."
Inst27Quest4_Prequest = "Ninguno"
Inst27Quest4_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 5 Alliance
Inst27Quest5 = "5. La furia mora en las profundidades" -- 378
Inst27Quest5_Level = "27"
Inst27Quest5_Attain = "22"
Inst27Quest5_Aim = "Motley Garmason quiere que le lleves la cabeza de Kam Furiahonda a Dun Modr."
Inst27Quest5_Location = "Motley Garmason (Los Humedales - Dun Modr; "..YELLOW.."49,18"..WHITE..")"
Inst27Quest5_Note = "Obtienes la misión previa de Motley también. Encuentras a Kam Furiahonda en "..YELLOW.."[2]"..WHITE.."."
Inst27Quest5_Prequest = "La guerra contra los Hierro Negro" -- 303
Inst27Quest5_Folgequest = "Ninguno"
--
Inst27Quest5name1 = "Cinturón de Vindicación"
Inst27Quest5name2 = "Azotacabezas"

--Quest 6 Alliance
Inst27Quest6 = "6. El motín de Las Mazmorras" -- 391
Inst27Quest6_Level = "29"
Inst27Quest6_Attain = "16"
Inst27Quest6_Aim = "Mata a Bazil Thredd y lleva su cabeza al celador Thelagua en las Mazmorras."
Inst27Quest6_Location = "Celador Thelagua (Ventormenta - Las Mazmorras; "..YELLOW.."41,58"..WHITE..")"
Inst27Quest6_Note = "Para obtener más información sobre la misión previa, ve "..YELLOW.."[Las Minas de la Muerte, La hermandad de los Defias]"..WHITE..".\nEncuentras a Bazil Thredd en "..YELLOW.."[4]"..WHITE.."."
Inst27Quest6_Prequest = "La hermandad de los Defias -> Bazil Thredd" -- 65 -> 389
Inst27Quest6_Folgequest = "Extraño visitante" -- 392
-- No Rewards for this quest



--------------- INST28 - Sunken Temple (ST) ---------------
Inst28Story = "Hace más de mil años, el poderoso Imperio Gurubashi quedó destrozado ante una enorme guerra civil. Un grupo influyente de sacerdotes trol, conocidos como los Atal'ai, intentaron traer de vuelta a un antiguo dios de la sangre llamado Hakkar el Cazador de Almas. Aunque al final los sacerdotes fueron derrotados y exiliados, el gran imperio trol se colapsó sobre si mismo. Los sacerdotes exiliados huyeron hacia el norte, hacia el Pantano de las Penas. Allí erigieron un gran templo a Hakkar donde podrían preparar su llegada al mundo físico. El gran Aspecto del dragón, Ysera, descubrió los planes de los Atal'ai y hundió el templo bajo el pantano. En la actualidad, las ruinas hundidas del templo están vigiladas por dragones verdes que evitan que se pueda entrar o salir. Sin embargo, se cree que algunos de los fanáticos Atal'ai pueden haber sobrevivido a la ira de Ysera y se han vuelto a entregar al oscuro servicio de Hakkar."
Inst28Caption = "Templo Sumergido"
Inst28QAA = "16 Misiones"
Inst28QAH = "16 Misiones"

--Quest 1 Alliance
Inst28Quest1 = "1. En El Templo de Atal'Hakkar" -- 1475
Inst28Quest1_Level = "50"
Inst28Quest1_Attain = "41"
Inst28Quest1_Aim = "Consigue 10 tablillas de Atal'ai para Brohann Barriliga, en Ventormenta."
Inst28Quest1_Location = "Brohann Barriliga (Ventormenta - Distrito de los Enanos; "..YELLOW.."64,20"..WHITE..")"
Inst28Quest1_Note = "Obtienes la misión previa del mismo PNJ.\n\nEncuentras las tablillas en todas las partes del templo, igual fuera y dentro de la instancia."
Inst28Quest1_Prequest = "En búsqueda del templo -> El relato de Rapsodio" -- 1448 -> 1469
Inst28Quest1_Folgequest = "Ninguno"
--
Inst28Quest1name1 = "Dije guardián"

--Quest 2 Alliance
Inst28Quest2 = "2. En las profundidades" -- 3446
Inst28Quest2_Level = "51"
Inst28Quest2_Attain = "46"
Inst28Quest2_Aim = "Encuentra el Altar de Hakkar en el Templo Sumergido, en el Pantano de las Penas."
Inst28Quest2_Location = "Marvon Buscarroblones (Tanaris; "..YELLOW.."52,45"..WHITE..")"
Inst28Quest2_Note = "El Altar está en "..YELLOW.."[1]"..WHITE.."."
Inst28Quest2_Prequest = "El Círculo de Piedras" -- 3444
Inst28Quest2_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Alliance
Inst28Quest3 = "3. El secreto del círculo" -- 3447
Inst28Quest3_Level = "51"
Inst28Quest3_Attain = "46"
Inst28Quest3_Aim = "Ve al Templo Sumergido y descubre el secreto oculto en el círculo de estatuas."
Inst28Quest3_Location = "Marvon Buscarroblones (Tanaris; "..YELLOW.."52,45"..WHITE..")"
Inst28Quest3_Note = "Encuentras las estatuas en "..YELLOW.."[1]"..WHITE..". Ve en el mapa para ver la orden de activarlas."
Inst28Quest3_Prequest = "El Círculo de Piedras" -- 3444
Inst28Quest3_Folgequest = "Ninguno"
--
Inst28Quest3name1 = "Urna Hakkari"

--Quest 4 Alliance
Inst28Quest4 = "4. Bruma del mal" -- 4143
Inst28Quest4_Level = "52"
Inst28Quest4_Attain = "47"
Inst28Quest4_Aim = "Reúne 5 muestras de calima Atal'ai y después ve a ver de nuevo a Muigin al Cráter de Un'Goro."
Inst28Quest4_Location = "Gregan Tirabirras (Feralas; "..YELLOW.."45,25"..WHITE..")"
Inst28Quest4_Note = "La misión previa 'Muigin y Larion' empieza con Muigin (Cráter de Un'Goro - Refugio de Marshal; "..YELLOW.."42,9"..WHITE.."). Despoja a los Rondadores de lo profundo, Gusanos de la oscuridad, y Mocos saturados para obtener las calimas."
Inst28Quest4_Prequest = "Muigin y Larion -> Visita a Gregan" -- 4141 -> 4142
Inst28Quest4_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 5 Alliance
Inst28Quest5 = "5. El dios Hakkar" -- 3528
Inst28Quest5_Level = "53"
Inst28Quest5_Attain = "40"
Inst28Quest5_Aim = "Llévale el huevo de Hakkar relleno a Yeh'kinya, que está en Tanaris."
Inst28Quest5_Location = "Yeh'kinya (Tanaris - Puerto Bonvapor; "..YELLOW.."66,22"..WHITE..")"
Inst28Quest5_Note = "La cadena de misiones empieza con 'Los espíritus de los estridadores' al mismo PNJ (Ve "..YELLOW.."[Zul'Farrak]"..WHITE..").\nUsas el huevo en "..YELLOW.."[3]"..WHITE.." para comenzar el evento. Aparecerán criaturas que te atacan. Despójalos para obtener la sangre de Hakkar. Usa la sangre para extinguir la antorcha en el círculo. Después de extinguir la antorcha, aparece el Avatar de Hakkar. Mátalo y despójalo para obtener la 'Esencia de Hakkar' para llenar el huevo."
Inst28Quest5_Prequest = "Los espíritus de los estridadores -> El huevo antiguo" -- 3520 -> 4787
Inst28Quest5_Folgequest = "Ninguno"
--
Inst28Quest5name1 = "Yelmo de guardia vengador"
Inst28Quest5name2 = "Puntilla de fuerza de vida"
Inst28Quest5name3 = "Aro Ráfaga de gemas"

--Quest 6 Alliance
Inst28Quest6 = "6. Jammal'an el Profeta" -- 1446
Inst28Quest6_Level = "53"
Inst28Quest6_Attain = "38"
Inst28Quest6_Aim = "El exiliado Atal'ai, en las Tierras del Interior, quiere la cabeza de Jammal'an."
Inst28Quest6_Location = "El Exiliado Atal'ai (Tierras del Interior; "..YELLOW.."33,75"..WHITE..")"
Inst28Quest6_Note = "Encuentras a Jammal'an en "..YELLOW.."[4]"..WHITE.."."
Inst28Quest6_Prequest = "Ninguno"
Inst28Quest6_Folgequest = "Ninguno"
--
Inst28Quest6name1 = "Leotardos de zancalluvia"
Inst28Quest6name2 = "Yelmo de Exilio"

--Quest 7 Alliance
Inst28Quest7 = "7. La esencia de Eranikus" -- 3373
Inst28Quest7_Level = "55"
Inst28Quest7_Attain = "48"
Inst28Quest7_Aim = "Coloca la esencia de Eranikus en la fuente de esencia situada en su guarida del Templo Sumergido."
Inst28Quest7_Location = "Esencia de Eranikus (botín de la Sombra de Eranikus; "..YELLOW.."[6]"..WHITE..")"
Inst28Quest7_Note = "Encuentras la Fuente de esencia justo al lado de la Sombra de Eranikus en "..YELLOW.."[6]"..WHITE.."."
Inst28Quest7_Prequest = "Ninguno"
Inst28Quest7_Folgequest = "Ninguno"
--
Inst28Quest7name1 = "Esencia encadenada de Eranikus"

--Quest 8 Alliance
Inst28Quest8 = "8. Plumas de trol" -- 8422
Inst28Quest8_Level = "52"
Inst28Quest8_Attain = "50"
Inst28Quest8_Aim = "Reúne un total de 6 plumas vudú en el Templo Sumergido."
Inst28Quest8_Location = "Diblis (Frondavil; "..YELLOW.."42,45"..WHITE..")"
Inst28Quest8_Note = "Solamente para Brujos: Despoja a los minijefes trol para obtener las plumas."
Inst28Quest8_Prequest = "Pedido de un diablillo -> La mercancía equivocada" -- 8419 -> 8421
Inst28Quest8_Folgequest = "Ninguno"
--
Inst28Quest8name1 = "Cosechador de almas"
Inst28Quest8name2 = "Fragmento Abisal"
Inst28Quest8name3 = "Togas de Servidumbre"

--Quest 9 Alliance
Inst28Quest9 = "9. Plumas Vudú" -- 8425
Inst28Quest9_Level = "52"
Inst28Quest9_Attain = "50"
Inst28Quest9_Aim = "Llévale las plumas vudú de los trols del Templo Sumergido al héroe caído de la Horda."
Inst28Quest9_Location = "Héroe caído de la Horda (Pantano de las Penas; "..YELLOW.."34,66"..WHITE..")"
Inst28Quest9_Note = "Solamente para Guerreros: Despoja a los minijefes trol para obtener las plumas."
Inst28Quest9_Prequest = "Un espíritu afligido -> La guerra contra los Sombra Jurada" -- 8417 -> 8424
Inst28Quest9_Folgequest = "Ninguno"
--
Inst28Quest9name1 = "Visor de furia"
Inst28Quest9name2 = "Frasco de diamante"
Inst28Quest9name3 = "Sobrehombros Acero afilado"

--Quest 10 Alliance
Inst28Quest10 = "10. Un ingrediente mejor" -- 9053
Inst28Quest10_Level = "52"
Inst28Quest10_Attain = "50"
Inst28Quest10_Aim = "Consigue una vid pútrida de las que custodia el guardián en las profundidades del Templo Sumergido y después ve a ver de nuevo a Torwa Abrecaminos."
Inst28Quest10_Location = "Torwa Abrecaminos (Cráter de Un'Goro; "..YELLOW.."72,76"..WHITE..")"
Inst28Quest10_Note = "Solamente para Druidas: Despoja a Atal'alarion que está invocado en "..YELLOW.."[1]"..WHITE.." por activar las estatuas en la orden especificada en el mapa para obtener la vid pútrida."
Inst28Quest10_Prequest = "Torwa Abrecaminos -> Prueba de toxicidad" -- 9063 -> 9051
Inst28Quest10_Folgequest = "Ninguno"
--
Inst28Quest10name1 = "Pellejo grisáceo"
Inst28Quest10name2 = "Abrazo de matorral"
Inst28Quest10name3 = "Bastón Sombra Lunar"

--Quest 11 Alliance
Inst28Quest11 = "11. El draco verde" -- 8232
Inst28Quest11_Level = "52"
Inst28Quest11_Attain = "50"
Inst28Quest11_Aim = "Llévale el diente de Morphaz a Ogtinc en Azshara. Ogtinc vive en lo alto del precipicio al noreste de las Ruinas de Eldarath."
Inst28Quest11_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst28Quest11_Note = "Solamente para Cazadores: Morphaz está en "..YELLOW.."[5]"..WHITE.."."
Inst28Quest11_Prequest = "El talismán del cazador -> Los vándalos marinos" -- 8151 -> 8231
Inst28Quest11_Folgequest = "Ninguno"
--
Inst28Quest11name1 = "Lanza de caza"
Inst28Quest11name2 = "Ojo de demosaurio"
Inst28Quest11name3 = "Diente de demosaurio"

--Quest 12 Alliance
Inst28Quest12 = "12. Destruye a Morphaz" -- 8253
Inst28Quest12_Level = "52"
Inst28Quest12_Attain = "50"
Inst28Quest12_Aim = "Recupera el fragmento arcano de Morphaz y llévaselo al archimago Xylem."
Inst28Quest12_Location = "Archimago Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst28Quest12_Note = "Solamente para Magos: Morphaz está en "..YELLOW.."[5]"..WHITE.."."
Inst28Quest12_Prequest = "El polvo mágico -> El coral de las sirenas" -- 8251 -> 8252
Inst28Quest12_Folgequest = "Ninguno"
--
Inst28Quest12name1 = "Punta glacial"
Inst28Quest12name2 = "Colgante de cristal Arcano"
Inst28Quest12name3 = "Rubí de fuego"

--Quest 13 Alliance
Inst28Quest13 = "13. La sangre de Morphaz" -- 8257
Inst28Quest13_Level = "52"
Inst28Quest13_Attain = "50"
Inst28Quest13_Aim = "Mata a Morphaz en El Templo Sumergido de Atal'Hakkar y lleva su sangre a Greta Pezuñamusgo en Frondavil. Encontrarás la entrada al Templo Sumergido en el Pantano de las Penas."
Inst28Quest13_Location = "Ogtinc (Azshara; "..YELLOW.."42,43"..WHITE..")"
Inst28Quest13_Note = "Solamente para Sacerdotes: Morphaz está en "..YELLOW.."[5]"..WHITE..". Greta Pezuñamusgo está en Frondavil - Santuario Esmeralda ("..YELLOW.."51,82"..WHITE..")."
Inst28Quest13_Prequest = "Ayuda a Cenarion -> El icor de los no-muertos" -- 8254 -> 8256
Inst28Quest13_Folgequest = "Ninguno"
--
Inst28Quest13name1 = "Cuentas de rezo benditas"
Inst28Quest13name2 = "Báculo de aflicción"
Inst28Quest13name3 = "Círculo de Esperanza"

--Quest 14 Alliance
Inst28Quest14 = "14. La llave azur" -- 8236
Inst28Quest14_Level = "52"
Inst28Quest14_Attain = "50"
Inst28Quest14_Aim = "Devuélvele la llave azur a Lord Jorach Ravenholdt."
Inst28Quest14_Location = "Archimago Xylem (Azshara; "..YELLOW.."29,40"..WHITE..")"
Inst28Quest14_Note = "Solamente para Pícaros: Despoja a Morphaz en "..YELLOW.."[5]"..WHITE.." para obtener la llave azur. Lord Jorach Ravenholdt está en Montañas de Alterac - Ravenholdt ("..YELLOW.."86,79"..WHITE..")."
Inst28Quest14_Prequest = "Un pedido sencillo -> Los trozos codificados" -- 8233 -> 8235
Inst28Quest14_Folgequest = "Ninguno"
--
Inst28Quest14name1 = "Máscara de ébano"
Inst28Quest14name2 = "Botas Caminasusurro"
Inst28Quest14name3 = "Mantón de Murciumbrío"

--Quest 15 Alliance
Inst28Quest15 = "15. La forja de la piedra de poderío" -- 8418
Inst28Quest15_Level = "52"
Inst28Quest15_Attain = "50"
Inst28Quest15_Aim = "Obtén plumas vudú ámbar, azules y verdes de los trols del Templo Sumergido."
Inst28Quest15_Location = "Comandante Ashlam Puñovalor (Tierras de la Peste del Oeste - Campamento del Orvallo; "..YELLOW.."43,85"..WHITE..")"
Inst28Quest15_Note = "Solamente para Paladines: Despoja a los minijefes trol para obtener las plumas."
Inst28Quest15_Prequest = "Piedras de la Plaga inertes" -- 8416
Inst28Quest15_Folgequest = "Ninguno"
--
Inst28Quest15name1 = "Piedra de poderío sagrada"
Inst28Quest15name2 = "Hoja forjada con luz"
Inst28Quest15name3 = "Orbe santificado"
Inst28Quest15name4 = "Sello caballeresco"

--Quest 16 Alliance
Inst28Quest16 = "16. Eranikus, el Tirano del Sueño" -- 8733
Inst28Quest16_Level = "60"
Inst28Quest16_Attain = "60"
Inst28Quest16_Aim = "Viaja al continente de Teldrassil y busca al agente de Malfurion. Lo encontrarás a lo largo de los muros de Darnassus."
Inst28Quest16_Location = "Malfurion Tempestira (aparece a la Sombra de Eranikus; "..YELLOW.."[8]"..WHITE..")"
Inst28Quest16_Note = "Fuego fatuo del bosque (Teldrassil; "..YELLOW.."37,47"..WHITE..")"
Inst28Quest16_Prequest = "Encomienda a los Vuelos" -- 8555
Inst28Quest16_Folgequest = "Tyrande y Remulos" --8734
-- No Rewards for this quest


--Quest 1 Horde
Inst28Quest1_HORDE = "1. El Templo de Atal'Hakkar" -- 1445
Inst28Quest1_HORDE_Level = "50"
Inst28Quest1_HORDE_Attain = "38"
Inst28Quest1_HORDE_Aim = "Reúne 20 fetiches de Hakkar y llévaselos a Fel'Zerul en Rocal."
Inst28Quest1_HORDE_Location = "Fel'Zerul (Pantano de las Penas - Rocal; "..YELLOW.."47,54"..WHITE..")"
Inst28Quest1_HORDE_Note = "Despoja a cualquier criatura para obtener los fetiches."
Inst28Quest1_HORDE_Prequest = "Charca de Lágrimas -> Regresa junto a Fel'Zerul" -- 1424 -> 1444
Inst28Quest1_HORDE_Folgequest = "Ninguno"
--
Inst28Quest1name1_HORDE = "Dije guardián"

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
--
Inst28Quest3name1_HORDE = Inst28Quest3name1

--Quest 4 Horde
Inst28Quest4_HORDE = "4. Combustible de irradior" -- 4146
Inst28Quest4_HORDE_Level = "52"
Inst28Quest4_HORDE_Attain = "47"
Inst28Quest4_HORDE_Aim = "Entrega el Controlador descargado y 5 muestras de calima Atal'ai a Larion, en el Refugio de Marshal."
Inst28Quest4_HORDE_Location = "Liv Rizzlefix (Los Baldíos; "..YELLOW.."62,38"..WHITE..")"
Inst28Quest4_HORDE_Note = "La misión previa 'Larion y Muigin' empieza con Larion (Cráter de Un'Goro; "..YELLOW.."45,8"..WHITE.."). Despoja a los Rondadores de lo profundo, Gusanos de la oscuridad, y Mocos saturados para obtener las calimas."
Inst28Quest4_HORDE_Prequest = "Larion y Muigin -> El taller de Marvon" -- 4145 -> 4147
Inst28Quest4_HORDE_Folgequest = "Ninguno"
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
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
--
Inst28Quest14name1_HORDE = Inst28Quest14name1
Inst28Quest14name2_HORDE = Inst28Quest14name2
Inst28Quest14name3_HORDE = Inst28Quest14name3

--Quest 15 Horde
Inst28Quest15_HORDE = "15. Vudú" -- 8413
Inst28Quest15_HORDE_Level = "52"
Inst28Quest15_HORDE_Attain = "50"
Inst28Quest15_HORDE_Aim = "Lleva las plumas vudú a Bath'rah el Vigía del viento."
Inst28Quest15_HORDE_Location = "Bath'rah el Vigía del viento (Montañas de Alterac; "..YELLOW.."80,67"..WHITE..")"
Inst28Quest15_HORDE_Note = "Solamente para Chamanes: Despoja a los minijefes trol para obtener las plumas."
Inst28Quest15_HORDE_Prequest = "Tótem de espíritu" -- 8412
Inst28Quest15_HORDE_Folgequest = "Ninguno"
--
Inst28Quest15name1_HORDE = "Puños azurita"
Inst28Quest15name2_HORDE = "Espíritu de agua enamorado"
Inst28Quest15name3_HORDE = "Bastón salvaje"

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



--------------- INST29 - The Temple of Ahn'Qiraj (AQ40) ---------------
Inst29Story = "En el corazón de Ahn'Qiraj yace un antiguo complejo de templos. Construido antes de la historia conocida, es tanto un monumento a dioses innombrables como un campo de cría enorme para el ejército qiraji. Desde que la Guerra del Mar de Dunas acabó hace mil años, los Emperadores Gemelos del imperio qiraji han estado atrapados dentro de su templo, apenas contenidos tras la barrera mágica levantada por el dragón de bronce Anacronos y los elfos de la noche. Ahora que el Cetro del Mar de Dunas se ha vuelto a unir y el sello se ha roto, el camino hacia el santuario interior de Ahn'Qiraj está abierto. Más allá de la locura reptante de las colmenas, bajo el Templo de Ahn'Qiraj, legiones de qiraji se preparan para la invasión. Es necesario detenerlos a cualquier precio antes de que liberen a sus voraces ejércitos de insectoides sobre Kalimdor de nuevo ¡y comience una segunda Guerra del Mar de Dunas!"
Inst29Caption = "Templo de Ahn'Qiraj"
Inst29QAA = "2 Misiones"
Inst29QAH = "2 Misiones"

--Quest 1 Alliance
Inst29Quest1 = "1. El legado de C'Thun" -- 8801
Inst29Quest1_Level = "60"
Inst29Quest1_Attain = "60"
Inst29Quest1_Aim = "Llévale el ojo de C'Thun a Caelastrasz en el Templo de Ahn'Qiraj."
Inst29Quest1_Location = "Ojo de C'Thun (botín de C'Thun; "..YELLOW.."[9]"..WHITE..")"
Inst29Quest1_Note = "Caelestrasz (Templo de Ahn'Qiraj; "..YELLOW.."2'"..WHITE..")\nLas recompensas son para la misión siguiente."
Inst29Quest1_Prequest = "Ninguno"
Inst29Quest1_Folgequest = "La salvación de Kalimdor" -- 8802
--
Inst29Quest1name1 = "Amuleto del Dios caído"
Inst29Quest1name2 = "Capa del Dios caído"
Inst29Quest1name3 = "Anillo del Dios caído"

--Quest 2 Alliance
Inst29Quest2 = "2. Los secretos de los qiraji" -- 8784
Inst29Quest2_Level = "60"
Inst29Quest2_Attain = "60"
Inst29Quest2_Aim = "Llévale el artefacto antiguo qiraji a los dragones ocultos cerca de la entrada del templo."
Inst29Quest2_Location = "Artefacto antiguo qiraji (botín aleatorio en Templo de Ahn'Qiraj)"
Inst29Quest2_Note = "Llévalo a Andorgos (Templo de Ahn'Qiraj; "..YELLOW.."1'"..WHITE..")."
Inst29Quest2_Prequest = "Ninguno"
Inst29Quest2_Folgequest = "Ninguno"
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
--
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
Inst30Story = "Esta ciudad castigada por el sol es el hogar de los trols Furiarena, conocidos por su particular crueldad y oscuro misticismo. Las leyendas trol hablan de una poderosa espada llamada Sul'thraze la Azotadora, un arma capaz de llenar de miedo y debilidad incluso al más formidable de los enemigos. Hace mucho, el arma se dividió en dos. Sin embargo, circulan rumores de que las dos mitades se podrían encontrar dentro de los muros de Zul'Farrak. También hay informes que sugieren que un grupo de mercenarios, que huyó de Gadgetzan, entró en la ciudad y quedaron atrapados. Su destino es un misterio. Pero quizás lo más preocupante de todo sean los silenciosos susurros que hablan de una antigua criatura que duerme en una poza sagrada en el corazón de la ciudad; un poderoso semidiós que destruiría a cualquier aventurero lo bastante insensato como para despertarlo."
Inst30Caption = "Zul'Farrak"
Inst30QAA = "7 Misiones"
Inst30QAH = "7 Misiones"

--Quest 1 Alliance
Inst30Quest1 = "1. Medallón de Nekrum" -- 2991
Inst30Quest1_Level = "47"
Inst30Quest1_Attain = "40"
Inst30Quest1_Aim = "Lleva el medallón de Nekrum a Thadius Sombramacabra a Las Tierras Devastadas."
Inst30Quest1_Location = "Thadius Sombramacabra (Las Tierras Devastadas - Castillo de Nethergarde; "..YELLOW.."66,19"..WHITE..")"
Inst30Quest1_Note = "La cadena de misiones empieza con Maestro de grifos Garracha (Tierras del Interior - Pico Nidal; "..YELLOW.."9,44"..WHITE..").\nNekrum aparece en "..YELLOW.."[4]"..WHITE.." durante el evento de las escaleras."
Inst30Quest1_Prequest = "Las jaulas de Secacorteza -> Thadius Sombramacabra" -- 2988 -> 2990
Inst30Quest1_Folgequest = "El ritual de adivinación" -- 2992
-- No Rewards for this quest

--Quest 2 Alliance
Inst30Quest2 = "2. Temple trol" -- 3042
Inst30Quest2_Level = "45"
Inst30Quest2_Attain = "40"
Inst30Quest2_Aim = "Lleva 20 viales de temple trol a Trenton Mazaligera en Gadgetzan."
Inst30Quest2_Location = "Trenton Mazaligera (Tanaris - Gadgetzan; "..YELLOW.."51,28"..WHITE..")"
Inst30Quest2_Note = "Despoja a cualquier trol para obtener los temples."
Inst30Quest2_Prequest = "Ninguno"
Inst30Quest2_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Alliance
Inst30Quest3 = "3. Caparazones de escarabajo" -- 2865
Inst30Quest3_Level = "45"
Inst30Quest3_Attain = "40"
Inst30Quest3_Aim = "Lleva 5 caparazones de escarabajo sin rajar a Tran'rek en Gadgetzan."
Inst30Quest3_Location = "Tran'rek (Tanaris - Gadgetzan; "..YELLOW.."51,26"..WHITE..")"
Inst30Quest3_Note = "La misión previa empieza con Krazek (Vega de Tuercespina - Bahía del Botín; "..YELLOW.."25,77"..WHITE..").\nDespoja a cualquier escarabajo para obtener los caparazones. Hay muchos escarabajos que están en "..YELLOW.."[2]"..WHITE.."."
Inst30Quest3_Prequest = "Tran'rek" -- 2864
Inst30Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst30Quest4 = "4. Tiara de las profundidades" -- 2846
Inst30Quest4_Level = "46"
Inst30Quest4_Attain = "40"
Inst30Quest4_Aim = "Lleva la tiara de las profundidades a Tabetha en el Marjal Revolcafango."
Inst30Quest4_Location = "Tabetha (Marjal Revolcafango; "..YELLOW.."46,57"..WHITE..")"
Inst30Quest4_Note = "Despoja a Hidromántica Velratha en "..YELLOW.."[6]"..WHITE.." para obtener la tiara de las profundidades."
Inst30Quest4_Prequest = "La tarea de Tabetha" -- 2861
Inst30Quest4_Folgequest = "Ninguno"
--
Inst30Quest4name1 = "Vara de tramoyista de hechizos"
Inst30Quest4name2 = "Espaldares de pizarra"

--Quest 5 Alliance
Inst30Quest5 = "5. La profecía de Mosh'aru" -- 3527
Inst30Quest5_Level = "47"
Inst30Quest5_Attain = "40"
Inst30Quest5_Aim = "Llévale la primera y segunda tablillas Mosh'aru a Yeh'kinya, que está en Tanaris."
Inst30Quest5_Location = "Yeh'kinya (Tanaris - Puerto Bonvapor; "..YELLOW.."66,22"..WHITE..")"
Inst30Quest5_Note = "Obtienes la misión previa de Yeh'kinya también.\nDespoja a Theka el Martír en "..YELLOW.."[2]"..WHITE.." y Hidromántica Velratha en "..YELLOW.."[6]"..WHITE.." para obtener la primera y segunda tablillas Mosh'aru."
Inst30Quest5_Prequest = "Los espíritus de los estridadores" -- 3520
Inst30Quest5_Folgequest = "El huevo antiguo" -- 4787
-- No Rewards for this quest

--Quest 6 Alliance
Inst30Quest6 = "6. Vara divinomática" -- 2768
Inst30Quest6_Level = "47"
Inst30Quest6_Attain = "40"
Inst30Quest6_Aim = "Lleva la vara divinomática al ingeniero jefe Pasaquillas en Gadgetzan."
Inst30Quest6_Location = "Ingeniero Jefe Pasaquillas (Tanaris - Gadgetzan; "..YELLOW.."52,28"..WHITE..")"
Inst30Quest6_Note = "Obtienes la vara del Sargento Bly. Lo encuentras en "..YELLOW.."[4]"..WHITE.." después del evento en las escaleras."
Inst30Quest6_Prequest = "Ninguno"
Inst30Quest6_Folgequest = "Ninguno"
--
Inst30Quest6name1 = "Anillo de fraternidad masona"
Inst30Quest6name2 = "Sombrero de hermandad de ingeniero"

--Quest 7 Alliance
Inst30Quest7 = "7. Gahz'rilla" -- 2770
Inst30Quest7_Level = "50"
Inst30Quest7_Attain = "40"
Inst30Quest7_Aim = "Llévale la escama electrificada de Gahz'rilla a Wizzle Pernolatón, que está en El Desierto de Sal."
Inst30Quest7_Location = "Wizzle Pernolatón (Las Mil Agujas - Circuito del Espejismo; "..YELLOW.."78,77"..WHITE..")"
Inst30Quest7_Note = "Obtienes la misión previa de Klockmort Palmalicate (Forjaz - Ciudad Manitas; "..YELLOW.."68,46"..WHITE.."). No es necesario tener la misión previa para obtener la misión de Gahz'rilla.\nInvoca a Gahz'rilla en "..YELLOW.."[6]"..WHITE.." con la Marra de Zul'Farrak.\nObtienes la marra sacra de Qiaga la Vigilante (Tierras del Interior - El Altar de Zul; "..YELLOW.."49,70"..WHITE.."). Úsala al Altar de Jinta'Alor en "..YELLOW.."59,77"..WHITE.." para crear la Marra de Zul'Farrak."
Inst30Quest7_Prequest = "Los hermanos Pernolatón" -- 2769
Inst30Quest7_Folgequest = "Ninguno"
--
Inst30Quest7name1 = "Zanahoria pinchada en un palo"


--Quest 1 Horde
Inst30Quest1_HORDE = "1. Diosa araña" -- 2936
Inst30Quest1_HORDE_Level = "45"
Inst30Quest1_HORDE_Attain = "40"
Inst30Quest1_HORDE_Aim = "Lee el nombre de la diosa araña de los Secacorteza en la tablilla de Theka y vuelve a ver al maestro Gadrin."
Inst30Quest1_HORDE_Location = "Maestro Gadrin (Durotar - Poblado Sen'jin; "..YELLOW.."55,74"..WHITE..")"
Inst30Quest1_HORDE_Note = "La cadena de misiones empieza con la Botella de veneno, que está en las mesas en los poblados trol en las Tierras del Interior.\nEncuentras la tablilla en "..YELLOW.."[2]"..WHITE.."."
Inst30Quest1_HORDE_Prequest = "Botellas de veneno -> Consulta al maestro Gadrin" -- 2933 -> 2935
Inst30Quest1_HORDE_Folgequest = "Invocar a Shadra" -- 2937
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
--
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
--
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
--
Inst30Quest7name1_HORDE = Inst30Quest7name1



--------------- INST31 - Zul'Gurub (ZG) ---------------
Inst31Story = "Zul'Gurub era la capital de los trols de la jungla Gurubashi, una tribu que controlaba antaño las vastas junglas del sur. Aquí fue donde Jin'do el Aojador invocó a Hakkar el Cazador de Almas a Azeroth. Últimamente, estos esfuerzos se han retomado con ocasión de la alianza entre los trols Gurubashi y los Zandalar, que pretenden establecer un imperio trol unificado.\n\nLa influencia de esta civilización salvaje se puede ver en las altas plataformas y arcos cubiertos de enredaderas de Zul'Gurub. Sin embargo, podría afirmarse que no hace falta echar la vista muy atrás para conocer la parte más importante de la historia de la ciudad. Fue en Zul'Gurub donde Jin'do el Aojador esclavizó a varios sumos sacerdotes Gurubashi para que le ayudaran a invocar en Azeroth a su temido dios, Hakkar el Cazador de Almas. La presencia del Cazador de Almas supuso una grave amenaza para el mundo y, antes de que Hakkar y sus sacerdotes dominaran el continente, fueron derrotados gracias a la entrega y el esfuerzo de héroes que acudieron desde todos los rincones de Azeroth. Jin'do fue asesinado durante el conflicto; su espíritu, torturado por la deshonra que supuso su fracaso e incapaz de encontrar descanso, vagó por el mundo de los espíritus en busca de una forma de regresar... y de un nuevo plan. Jin'do regresó a Azeroth por la fuerza para reunir a sus nuevos y antiguos aliados: los veneradores de Hakkar, los Zanzil exiliados, e incluso a los antiguos enemigos de Hakkar, entre los cuales se encuentra la tribu Zandalar. Juntos, reconstruirán Zul'Gurub; no por la gloria de su dios derrotado, sino para hacerse con su brutal poder y asistir al triunfo de la raza trol sobre un mundo devastado."
Inst31Caption = "Zul'Gurub"
Inst31QAA = "4 Misiones"
Inst31QAH = "4 Misiones"

--Quest 1 Alliance
Inst31Quest1 = "1. Una colección de cabezas" -- 8201
Inst31Quest1_Level = "60"
Inst31Quest1_Attain = "58"
Inst31Quest1_Aim = "Ata 5 cabezas de canalizadores y regresa con ellas a Exzhal en la Isla Yojamba."
Inst31Quest1_Location = "Exzhal (Vega de Tuercespina - Isla Yojamba; "..YELLOW.."15,15"..WHITE..")"
Inst31Quest1_Note = "Despoja a todos los sacerdotes."
Inst31Quest1_Prequest = "Ninguno"
Inst31Quest1_Folgequest = "Ninguno"
--
Inst31Quest1name1 = "Cinturón de Cabezas encogidas"
Inst31Quest1name2 = "Cinturón de Cabezas secas"
Inst31Quest1name3 = "Cinturón de Cabezas conservadas"
Inst31Quest1name4 = "Cinturón de cabezas diminutas"

--Quest 2 Alliance
Inst31Quest2 = "2. El corazón de Hakkar" -- 8183
Inst31Quest2_Level = "60"
Inst31Quest2_Attain = "58"
Inst31Quest2_Aim = "Lleva el corazón de Hakkar a Molthor en Isla Yojamba."
Inst31Quest2_Location = "Corazón de Hakkar (botín de Hakkar; "..YELLOW.."[11]"..WHITE..")"
Inst31Quest2_Note = "Molthor (Vega de Tuercespina - Isla Yojamba; "..YELLOW.."15,15"..WHITE..")"
Inst31Quest2_Prequest = "Ninguno"
Inst31Quest2_Folgequest = "Ninguno"
--
Inst31Quest2name1 = "Distintivo de héroe Zandalar"
Inst31Quest2name2 = "Talismán de héroe Zandalar"
Inst31Quest2name3 = "Medallón de héroe Zandalar"

--Quest 3 Alliance
Inst31Quest3 = "3. Cinta métrica de Nat" -- 8227
Inst31Quest3_Level = "60"
Inst31Quest3_Attain = "58"
Inst31Quest3_Aim = "Devuelve la Cinta métrica de Nat a Nat Pagle en el Marjal Revolcafango."
Inst31Quest3_Location = "Caja de aparejos maltrecha (Zul'Gurub - Noreste cerca del agua de la Isla de Hakkar)"
Inst31Quest3_Note = "Nat Pagle está en el Marjal Revolcafango ("..YELLOW.."59,60"..WHITE.."). Después de entregar la misión, puedes comprar el Cebo de Fangoapestoso de Nat Pagle para invocar a Gahz'ranka en Zul'Gurub."
Inst31Quest3_Prequest = "Ninguno"
Inst31Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst31Quest4 = "4. El veneno perfecto" -- 9023
Inst31Quest4_Level = "60"
Inst31Quest4_Attain = "60"
Inst31Quest4_Aim = "Dirk Truenedera quiere que le lleves glándulas de veneno de Venoxis y Kurinnaxx al Fuerte Cenarion."
Inst31Quest4_Location = "Dirk Truenedera (Silithus - Fuerte Cenarion; "..YELLOW.."52,39"..WHITE..")"
Inst31Quest4_Note = "Despoja al Sumo sacerdote Venoxis en "..YELLOW.."Zul'Gurub"..WHITE.." para obtener la glándula de veneno de Venoxis. Despoja a Kurinnaxx en las "..YELLOW.."Ruinas de Ahn'Qiraj"..WHITE.." en "..YELLOW.."[1]"..WHITE.." para obtener la glándula de veneno de Kurinnaxx."
Inst31Quest4_Prequest = "Ninguno"
Inst31Quest4_Folgequest = "Ninguno"
--
Inst31Quest4name1 = "Cercenadora Ravenholdt"
Inst31Quest4name2 = "Chafarote de Shivsprocket"
Inst31Quest4name3 = "El atizador Truenedera"
Inst31Quest4name4 = "Prima de Condemulus"
Inst31Quest4name5 = "Ballesta de repetición de recarga de Fahrad"
Inst31Quest4name6 = "Martillo de cultivo de Simone"

--Quest 1 Horde (same as Quest 1 Alliance)
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

--Quest 2 Horde (same as Quest 2 Alliance)
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
--
Inst31Quest4name1_HORDE = Inst31Quest4name1
Inst31Quest4name2_HORDE = Inst31Quest4name2
Inst31Quest4name3_HORDE = Inst31Quest4name3
Inst31Quest4name4_HORDE = Inst31Quest4name4
Inst31Quest4name5_HORDE = Inst31Quest4name5
Inst31Quest4name6_HORDE = Inst31Quest4name6



--------------- INST32 - Gnomeregan (Gnomer) ---------------
Inst32Story = "Situada en Dun Morogh, la maravilla tecnológica conocida como Gnomeregan ha sido la capital de los gnomos durante generaciones. Recientemente, una raza hostil de troggs mutantes infestaron varias regiones de Dun Morogh, incluyendo la gran ciudad gnómica. En un intento desesperado por destruir a los troggs invasores, el Manitas Mayor Mekkatorque ordenó la ventilación de emergencia de los tanques de desechos radioactivos de la ciudad. Algunos gnomos se refugiaron de los contaminantes del aire mientras esperaban a que los troggs murieran o huyeran. Por desgracia, a pesar de que los troggs se irradiaron por el asalto tóxico, su asalto continuó, imparable. Los gnomos que no murieron intoxicados se vieron obligados a huir, buscando refugio en la ciudad enana cercana de Forjaz. Allí, el Manitas Mayor Mekkatorque se dedica a alistar a almas valientes para que ayuden a su pueblo a reclamar su amada ciudad. Se dice que el antaño consejero de confianza de Mekkatorque, Mekigeniero Termochufe, traicionó a su pueblo permitiendo que la invasión tuviera lugar. Ahora, con su cordura destrozada, Termochufe vive en Gnomeregan y continúan con sus oscuros planes y actuando como el nuevo tecno-señor supremo de la ciudad."
Inst32Caption = "Gnomeregan"
Inst32QAA = "10 Misiones"
Inst32QAH = "5 Misiones"

--Quest 1 Alliance
Inst32Quest1 = "1. ¡Salva el cerebro de Tecnobot!" -- 2922
Inst32Quest1_Level = "26"
Inst32Quest1_Attain = "20"
Inst32Quest1_Aim = "Lleva el procesador central de memoria del Tecnobot al maestro manitas Sobrechispa a Forjaz."
Inst32Quest1_Location = "Maestro manitas Sobrechispa (Forjaz - Ciudad Manitas; "..YELLOW.."69,50"..WHITE..")"
Inst32Quest1_Note = "Obtienes la misión previa de Hermano Sarno (Ventormenta - Plaza de la Catedral; "..YELLOW.."40,30"..WHITE..").\nEncuentras a Tecnobot antes de entrar la instancia cerca de la entrada trasera en "..YELLOW.."[4] en el mapa de la Entrada"..WHITE.."."
Inst32Quest1_Prequest = "Maestro manitas Sobrechispa" -- 2923
Inst32Quest1_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Alliance
Inst32Quest2 = "2. Gnogaine" -- 2926
Inst32Quest2_Level = "27"
Inst32Quest2_Attain = "20"
Inst32Quest2_Aim = "Usa la ampolla de plomo con invasores o saqueadores radiactivos para recoger restos radiactivos. Cuando esté llena, llévasela a Ozzie Voltiflop a Kharanos."
Inst32Quest2_Location = "Ozzie Voltiflop (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst32Quest2_Note = "Obtienes la misión previa de Gnoarn (Forjaz - Ciudad Manitas; "..YELLOW.."69,50"..WHITE..").\nPara obtener los restos radiactivos, tienes que usar la ampolla con los invasores o saqueadores "..RED.."vivos"..WHITE.."."
Inst32Quest2_Prequest = "Al día siguiente" -- 2927
Inst32Quest2_Folgequest = "Necesitamos más material verdoso" -- 2962
-- No Rewards for this quest

--Quest 3 Alliance
Inst32Quest3 = "3. Necesitamos más material verdoso" -- 2962
Inst32Quest3_Level = "30"
Inst32Quest3_Attain = "20"
Inst32Quest3_Aim = "Viaja hasta Gnomeregan y recupera los restos radiactivos de gran potencia. Pero ten cuidado, ya que es inestable y podría explotar en cualquier momento.\nOzzie también quiere que traigas la ampolla pesada de plomo una vez que hayas terminado el trabajo."
Inst32Quest3_Location = "Ozzie Voltiflop (Dun Morogh - Kharanos; "..YELLOW.."45,49"..WHITE..")"
Inst32Quest3_Note = "Usa la ampolla con los rondadores y horrores irradiados "..RED.."vivos"..WHITE.."."
Inst32Quest3_Prequest = "Gnogaine" -- 2926
Inst32Quest3_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 4 Alliance
Inst32Quest4 = "4. Excavadoras gyroagujereamáticas" -- 2928
Inst32Quest4_Level = "30"
Inst32Quest4_Attain = "20"
Inst32Quest4_Aim = "Lleva veinticuatro entrañas robomecánicas a Shoni en Ventormenta."
Inst32Quest4_Location = "Shoni la Shilenshiosha (Ventormenta - Distrito de los Enanos; "..YELLOW.."55,12"..WHITE..")"
Inst32Quest4_Note = "Despoja a cualquier robot para obtener las entrañas robomecánicas."
Inst32Quest4_Prequest = "Ninguno"
Inst32Quest4_Folgequest = "Ninguno"
--
Inst32Quest4name1 = "Herramienta de desarme de Shoni"
Inst32Quest4name2 = "Mitones llamativos"

--Quest 5 Alliance
Inst32Quest5 = "5. Esencias artificiales" -- 2924
Inst32Quest5_Level = "30"
Inst32Quest5_Attain = "24"
Inst32Quest5_Aim = "Lleva 12 esencias artificiales a Klockmort Palmalicate a Forjaz."
Inst32Quest5_Location = "Klockmort Palmalicate (Forjaz - Ciudad Manitas; "..YELLOW.."68,46"..WHITE..")"
Inst32Quest5_Note = "Obtienes la misión previa de Mathiel (Darnassus - Bancal del Guerrero; "..YELLOW.."59,45"..WHITE.."). No es necesario obtener la misión previa para empezar esta misión.\nConsigues las Esencias artificiales de los Extrapoladores artificiales que están desperdigados por todas las partes de la instancia."
Inst32Quest5_Prequest = "Klockmort Palmalicate" -- 2925
Inst32Quest5_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 6 Alliance
Inst32Quest6 = "6. Rescatar los datos" -- 2930
Inst32Quest6_Level = "30"
Inst32Quest6_Attain = "25"
Inst32Quest6_Aim = "Lleva una tarjeta perforada prismática al maestro mecánico Funditubo a Forjaz."
Inst32Quest6_Location = "Maestro mecánico Funditubo (Forjaz - Ciudad Manitas; "..YELLOW.."69,48"..WHITE..")"
Inst32Quest6_Note = "Obtienes la misión previa de Gaxim Silvóxido (Sierra Espolón; "..YELLOW.."59,67"..WHITE.."). No es necesario obtener la misión previa para empezar esta misión.\nLa Tarjeta perforada blanca es botín aleatorio de las criaturas fuera de la instancia. Encuentras el Perforágrafo Matriz 3005-A cerca de la entrada trasera antes de entrar la instancia en "..YELLOW.."[3] en el mapa de la Entrada"..WHITE..". Perforágrafo Matriz 3005-B está en "..YELLOW.."[3]"..WHITE..", 3005-C está en "..YELLOW.."[5]"..WHITE.." y 3005-D está en "..YELLOW.."[6]"..WHITE.."."
Inst32Quest6_Prequest = "Trabajar para Funditubo" -- 2931
Inst32Quest6_Folgequest = "Ninguno"
--
Inst32Quest6name1 = "Manteo de mecánico"
Inst32Quest6name2 = "Martillo de mecánico"

--Quest 7 Alliance
Inst32Quest7 = "7. Un buen lío" -- 2904
Inst32Quest7_Level = "30"
Inst32Quest7_Attain = "24"
Inst32Quest7_Aim = "Acompaña a Kernobee a La Rampa del Engranaje y luego ve a ver a Scooty a Bahía del Botín."
Inst32Quest7_Location = "Kernobee (Gnomeregan; "..YELLOW.."[3]"..WHITE..")"
Inst32Quest7_Note = "Es una misión de escolta. Encuentras a Scooty en Vega de Tuercespina - Bahía del Botín ("..YELLOW.."27,77"..WHITE..")."
Inst32Quest7_Prequest = "Ninguno"
Inst32Quest7_Folgequest = "Ninguno"
--
Inst32Quest7name1 = "Brazales soldados con fuego"
Inst32Quest7name2 = "Manto alas de hada"

--Quest 8 Alliance
Inst32Quest8 = "8. La gran traición" -- 2929
Inst32Quest8_Level = "35"
Inst32Quest8_Attain = "25"
Inst32Quest8_Aim = "Ve a Gnomeregan y mata al mekigeniero Termochufe. Ve a ver al Manitas Mayor Mekkatorque cuando hayas terminado."
Inst32Quest8_Location = "Manitas Mayor Mekkatorque (Forjaz - Ciudad Manitas; "..YELLOW.."68,48"..WHITE..")"
Inst32Quest8_Note = "Encuentras a Termochufe en "..YELLOW.."[8]"..WHITE..". Él es el último jefe de Gnomeregan.\nDesactiva las columnas por oprimir los botónes rojos durante la pelea."
Inst32Quest8_Prequest = "Ninguno"
Inst32Quest8_Folgequest = "Ninguno"
--
Inst32Quest8name1 = "Togas civinad"
Inst32Quest8name2 = "Peto de corredor"
Inst32Quest8name3 = "Leotardos duales reforzados"

--Quest 9 Alliance
Inst32Quest9 = "9. Un anillo sucio" -- 2945
Inst32Quest9_Level = "34"
Inst32Quest9_Attain = "28"
Inst32Quest9_Aim = "Encuentra la manera de limpiar el anillo sucio."
Inst32Quest9_Location = "Anillo con mugre incrustada (botín aleatorio de Gnomeregan)"
Inst32Quest9_Note = "Limpia el anillo con El Destellamatic 5200 en el Punto de Limpieza en "..YELLOW.."[2]"..WHITE.."."
Inst32Quest9_Prequest = "Ninguno"
Inst32Quest9_Folgequest = "La devolución del anillo" -- 2947
-- No Rewards for this quest

--Quest 10 Alliance
Inst32Quest10 = "10. La devolución del anillo" -- 2947
Inst32Quest10_Level = "34"
Inst32Quest10_Attain = "28"
Inst32Quest10_Aim = "Puedes quedarte el anillo o buscar a quien realizó los grabados de la parte interior."
Inst32Quest10_Location = "Anillo de oro luminoso (obtenido por la misión 'Un anillo sucio')"
Inst32Quest10_Note = "Entrega la misión a Talvash del Kissel (Forjaz - La Sala Mística; "..YELLOW.."36,3"..WHITE.."). La misión siguiente para mejorar el anillo es opcional."
Inst32Quest10_Prequest = "Un anillo sucio" -- 2945
Inst32Quest10_Folgequest = "Mejora gnómica" -- 2948
--
Inst32Quest10name1 = "Anillo de oro luminoso"


--Quest 1 Horde
Inst32Quest1_HORDE = "1. ¡Gnomer-yaaaaa!" -- 2843
Inst32Quest1_HORDE_Level = "35"
Inst32Quest1_HORDE_Attain = "20"
Inst32Quest1_HORDE_Aim = "Espera a que Scooty calibre el transpondedor goblin."
Inst32Quest1_HORDE_Location = "Scooty (Vega de Tuercespina - Bahía del Botín; "..YELLOW.."27,77"..WHITE..")"
Inst32Quest1_HORDE_Note = "Obtienes la misión previa de Sovik (Orgrimmar - El Valle del Honor; "..YELLOW.."75,25"..WHITE..").\nDespués de terminar la misión, puedes usar el transpondedor en Bahía del Botín."
Inst32Quest1_HORDE_Prequest = "Scooty, ingeniero jefe" -- 2842
Inst32Quest1_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Horde (same as Quest 7 Alliance)
Inst32Quest2_HORDE = "2. Un buen lío"
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

--Quest 3 Horde
Inst32Quest3_HORDE = "3. Las guerras de la plataforma" -- 2841
Inst32Quest3_HORDE_Level = "35"
Inst32Quest3_HORDE_Attain = "25"
Inst32Quest3_HORDE_Aim = "Consigue la combinación de la caja fuerte de Termochufe en Gnomeregan y lleva los planos de la plataforma a Nogg a Orgrimmar."
Inst32Quest3_HORDE_Location = "Nogg (Orgrimmar - El Valle del Honor; "..YELLOW.."75,25"..WHITE..")"
Inst32Quest3_HORDE_Note = "Encuentras a Termochufe en "..YELLOW.."[8]"..WHITE..". Él es el último jefe de Gnomeregan.\nDesactiva las columnas por oprimir los botónes rojos durante la pelea."
Inst32Quest3_HORDE_Prequest = "Ninguno"
Inst32Quest3_HORDE_Folgequest = "Ninguno"
--
Inst32Quest3name1_HORDE = "Togas civinad"
Inst32Quest3name2_HORDE = "Peto de corredor"
Inst32Quest3name3_HORDE = "Leotardos duales reforzados"

--Quest 4 Horde (same as Quest 9 Alliance)
Inst32Quest4_HORDE = "4. Un anillo sucio"
Inst32Quest4_HORDE_Level = Inst32Quest9_Level
Inst32Quest4_HORDE_Attain = Inst32Quest9_Attain
Inst32Quest4_HORDE_Aim = Inst32Quest9_Aim
Inst32Quest4_HORDE_Location = Inst32Quest9_Location
Inst32Quest4_HORDE_Note = Inst32Quest9_Note
Inst32Quest4_HORDE_Prequest = Inst32Quest9_Prequest
Inst32Quest4_HORDE_Folgequest = Inst32Quest9_Folgequest
-- No Rewards for this quest

--Quest 5 Horde (same as Quest 10 Alliance)
Inst32Quest5_HORDE = "5. La devolución del anillo" -- 2949
Inst32Quest5_HORDE_Level = Inst32Quest10_Level
Inst32Quest5_HORDE_Attain = Inst32Quest10_Attain
Inst32Quest5_HORDE_Aim = Inst32Quest10_Aim
Inst32Quest5_HORDE_Location = Inst32Quest10_Location
Inst32Quest5_HORDE_Note = "Entrega la misión a Nogg (Orgrimmar - El Valle del Honor; "..YELLOW.."75,25"..WHITE.."). La misión siguiente para mejorar el anillo es opcional."
Inst32Quest5_HORDE_Prequest = Inst32Quest10_Prequest
Inst32Quest5_HORDE_Folgequest = "Nogg mejora el anillo" -- 2950
--
Inst32Quest5name1_HORDE = "Anillo de oro luminoso"



---------------------------------------------------
---------------- OUTDOOR RAIDS --------------------
---------------------------------------------------

--------------- INST33 - Dragons of Nightmare ---------------
Inst33Story = {
	[1] = "Algo va mal en el Sueño Esmeralda. Inmensos dragones con las escamas esmeralda brillantes del Vuelo Verde han sido vistos protegiendo los portales a los Grandes Árboles... pero estas antaño nobles criaturas se han convertido en una nueva y extraña amenaza, ya no son los agentes pacíficos por los que se conoce a Ysera. Si llevas muchos aliados, puedes osar a enfrentarte a ellos; sus poderes son formidables y no dudarán en aplastar a cualquiera que se acerque.",
	[2] = "Ysera, the great Dreaming dragon Aspect rules over the enigmatic green dragonflight. Her domain is the fantastic, mystical realm of the Emerald Dream - and it is said that from there she guides the evolutionary path of the world itself. She is the protector of nature and imagination, and it is the charge of her flight to guard all of the Great Trees across the world, which only druids use to enter the Dream itself. In recent times, Ysera's most trusted Tenientes have been warped by a dark new power within the Emerald Dream. Now these wayward sentinels have passed through the Great Trees into Azeroth, intending to spread madness and terror throughout the mortal kingdoms. Even the mightiest of adventurers would be well advised to give the dragons a wide berth, or suffer the consequences of their misguided wrath.",
	[3] = "Lethon's exposure to the aberration within the Emerald Dream not only darkened the hue of the mighty dragon's scales, but also empowered him with the ability to extract malevolent shades from his enemies. Once joined with their master, the shades imbue the dragon with healing energies. It should come as no surprise, then, that Lethon is considered to be among the most formidable of Ysera's wayward Tenientes",
	[4] = "A  mysterious dark power within the Emerald Dream has transformed the once-majestic Emeriss into a rotting, diseased monstrosity. Reports from the few who have survived encounters with the dragon have told horrifying tales of putrid mushrooms erupting from the corpses of their dead companions. Emeriss is truly the most gruesome and appalling of Ysera's estranged green dragons.",
	[5] = "Taerar fue tal vez el más afectado de los lugartenientes de Ysera. Su interacción con la fuerza oscura del Sueño Esmeralda destrozó la cordura de Taerar, así como su forma corpórea. El dragón ahora existe como un espectro con la capacidad de dividirse en múltiples entidades, cada una de as cuales posee poderes mágicos destructivos. Taerar es un enemigo astuto e implacable que tiene la intención de convertir la locura de su existencia en la realidad de los habitantes de Azeroth.",
	[6] = "Una vez fue uno de los lugartenientes de mayor confianza de Ysera, Ysondre se había corrompido, sembrando el terror y el caos a través de todo Azeroth. Sus antiguos poderes curativos dieron paso a la magia oscura, lo que le permitió lanzar un rayo ardiente y convocar a los espíritus enloquecidos de druidas atrapados en el Sueño Esmeralda para ayudarla.",
	
};
Inst33Caption = "Dragones de la Pesadilla"
Inst33Caption2 = "Ysera y el Vuelo Verde"
Inst33Caption3 = "Lethon"
Inst33Caption4 = "Emeriss"
Inst33Caption5 = "Taerar"
Inst33Caption6 = "Ysondre"
Inst33QAA = "1 Misión"
Inst33QAH = "1 Misión"

--Quest 1 Alliance
Inst33Quest1 = "1. Inundación de Pesadilla" -- 8446
Inst33Quest1_Level = "60"
Inst33Quest1_Attain = "60"
Inst33Quest1_Aim = "Encuentra a alguien que pueda descifrar el significado del objeto envuelto en pesadillas."
Inst33Quest1_Location = "Objeto envuelto en pesadillas (botín de Emeriss, Taerar, Lethon o Ysondre)"
Inst33Quest1_Note = "Entrega el objeto a Guardián Remulos (Claro de la Luna - Santuario de Remulos; "..YELLOW.."36,41"..WHITE.."). La recompensa es para la misión siguiente."
Inst33Quest1_Prequest = "Ninguno"
Inst33Quest1_Folgequest = "Leyendas veraces" -- 8447
--
Inst33Quest1name1 = "Sello de Malfurion"


--Quest 1 Horde (same as Quest 1 Alliance)
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
Inst34Story = "Antes del Gran Diluvio, la ciudad de los elfos de la noche de Eldarath florecía en las tierras que hoy se conocen como Azshara. Se cuenta que se pueden encontrar numerosos artefactos Altonatos antiguos y poderosos entre las ruinas de este antaño poderoso bastión. Durante incontables generaciones, el Vuelo Azul ha salvaguardado poderosos artefactos y conocimientos mágicos, asegurándose de que no caigan en manos mortales. La presencia de Azuregos, el dragón azul, parece indicar que objetos de extrema importancia, quizás los legendarios Viales de la Eternidad, se pueden encontrar en las tierras salvajes de Azshara. Sea lo que sea lo que busca Azuregos, una cosa es segura: luchará hasta la muerte para defender los tesoros mágicos de Azshara."
Inst34Caption = "Azuregos"
Inst34QAA = "2 Misiones"
Inst34QAH = "2 Misiones"

--Quest 1 Alliance
Inst34Quest1 = "1. Carcaj antiguo cosido con tendón" -- 7634
Inst34Quest1_Level = "60"
Inst34Quest1_Attain = "60"
Inst34Quest1_Aim = "Hastat el anciano te ha pedido que le lleves 1 tendón de dragón Azul maduro. Si lo encuentras, llévaselo a Hastat a Frondavil."
Inst34Quest1_Location = "Hastat el Anciano (Frondavil - Bosque de Troncoferro; "..YELLOW.."48,24"..WHITE..")"
Inst34Quest1_Note = "Solamente para Cazadores: Mata a Azuregos para obtener el Tendón de dragón Azul maduro. Azuregos rodea en el centro de la península sureña cerca de "..YELLOW.."[1]"..WHITE.."."
Inst34Quest1_Prequest = "La hoja antigua ("..YELLOW.."Núcleo de Magma"..WHITE..")" -- 7632
Inst34Quest1_Folgequest = "Ninguno"
--
Inst34Quest1name1 = "Carcaj antiguo cosido con tendón"

--Quest 2 Alliance
Inst34Quest2 = "2. El libro de contabilidad mágico de Azuregos" -- 8575
Inst34Quest2_Level = "60"
Inst34Quest2_Attain = "60"
Inst34Quest2_Aim = "Entrega el libro de contabilidad mágico de Azuregos a Narain Sabelotodo de Tanaris."
Inst34Quest2_Location = "Espíritu de Azuregos (Azshara; "..YELLOW.."56,83"..WHITE..")"
Inst34Quest2_Note = "Encuentras a Narain Sabelotodo en Tanaris en "..YELLOW.."65,17"..WHITE.."."
Inst34Quest2_Prequest = "Encomienda a los Vuelos" -- 8555
Inst34Quest2_Folgequest = "La traducción del libro de contabilidad" -- 8576
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
--
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
Inst35Story = "Viendo que la Tercera Guerra estaba decidida, Kazzak reunió a sus fuerzas restantes y las llevó a las Tierras Devastadas, donde ocuparon un territorio conocido como la Escara Impía, mientras que Kazzak habitó en una torre oculta en la niebla venenosa."
Inst35Caption = "Lord Kazzak"
Inst35QAA = "No Hay Misiones"
Inst35QAH = "No Hay Misiones"



---------------------------------------------------
---------------- BATTLEGROUNDS --------------------
---------------------------------------------------

--------------- INST36 - Valle de Alterac (AV) ---------------
Inst36Story = "Hace mucho tiempo, el brujo Gul'dan exilió a un clan de orcos llamados los Lobo Gélido a un valle oculto en lo más hondo del corazón de las Montañas de Alterac. El clan Lobo Gélido sobrevivió a duras penas hasta que Thrall unió triunfalmente a muchos de los orcos de Azeroth. Los Lobo Gélido, sin embargo, prefirieron quedarse en el valle en lugar de unirse a Thrall en Orgrimmar, y su paz relativa se ha visto amenazada desde entonces por la llegada de los enanos de la Expedición Pico Tormenta. El deseo de la Expedición Pico Tormenta de minar y sondear las cuevas inexploradas en busca de reliquias ha provocado conflictos con el clan Lobo Gélido, pero hay división de opiniones sobre quién atacó primero. ¿Los enanos que llegaron al valle eran pacíficos exploradores que fueron masacrados por los orcos, o tenían planes de saqueo y conquista?"
Inst36Caption = "Valle de Alterac"
Inst36QAA = "17 Misiones"
Inst36QAH = "17 Misiones"

--Quest 1 Alliance
Inst36Quest1 = "1. El imperativo soberano" -- 7261
Inst36Quest1_Level = "60"
Inst36Quest1_Attain = "51"
Inst36Quest1_Aim = "Dirígete al Valle de Alterac en las Laderas de Trabalomas. Delante de la entrada del túnel, encuentra al teniente Haggerdin y habla con él."
Inst36Quest1_Location = "Teniente Rotimer (Forjaz - La Plaza; "..YELLOW.."30,62"..WHITE..")"
Inst36Quest1_Note = "Teniente Haggerdin está en (Montañas de Alterac; "..YELLOW.."39,81"..WHITE..")."
Inst36Quest1_Prequest = "Ninguno"
Inst36Quest1_Folgequest = "Terreno de Pruebas" -- 7162
-- No Rewards for this quest

--Quest 2 Alliance
Inst36Quest2 = "2. Terreno de Pruebas" -- 7162
Inst36Quest2_Level = "60"
Inst36Quest2_Attain = "51"
Inst36Quest2_Aim = "Viaja hasta la cueva Ala Gélida ubicada al suroeste de Dun Baldar en el Valle de Alterac y recupera el estandarte Pico Tormenta. Devuélveselo al teniente Haggerdin en las Montañas de Alterac."
Inst36Quest2_Location = "Teniente Haggerdin (Montañas de Alterac; "..YELLOW.."39,81"..WHITE..")"
Inst36Quest2_Note = "El estandarte Pico Tormenta está en la cueva Ala Gélida en "..YELLOW.."[11]"..WHITE.." en el mapa Valle de Alterac - Norte. Habla con el mismo PNJ cada vez que subes tu reputación para obtener una insignia mejorada.\n\nLa misión previa no es necesaria para obtener esta misión."
Inst36Quest2_Prequest = "El imperativo soberano" -- 7261
Inst36Quest2_Folgequest = "Ascender y darse a conocer -> El ojo del orden" -- 7168 -> 7172
--
Inst36Quest2name1 = "Insignia Pico Tormenta Rango 1"
Inst36Quest2name2 = "La alcachofa Lobo Gélido"

--Quest 3 Alliance
Inst36Quest3 = "3. La batalla de Alterac" -- 7141
Inst36Quest3_Level = "60"
Inst36Quest3_Attain = "51"
Inst36Quest3_Aim = "Adéntrate en el Valle de Alterac, derrota al general Drek'Thar de la Horda y vuelve junto a la prospectora Tallapiedra en las Montañas de Alterac."
Inst36Quest3_Location = "Prospectora Tallapiedra (Montañas de Alterac; "..YELLOW.."41,80"..WHITE..") y\n(Valle de Alterac - Norte; "..YELLOW.."[B]"..WHITE..")"
Inst36Quest3_Note = "Drek'thar está en (Valle de Alterac - Sur; "..YELLOW.."[B]"..WHITE..")."
Inst36Quest3_Prequest = "Ninguno"
Inst36Quest3_Folgequest = "Héroe Pico Tormenta" -- 8271
--
Inst36Quest3name1 = "Buscasangre"
Inst36Quest3name2 = "Lanza con púas de hielo"
Inst36Quest3name3 = "Varita de Frío cortante"
Inst36Quest3name4 = "Martillo forjado en frío"

--Quest 4 Alliance
Inst36Quest4 = "4. El intendente" -- 7121
Inst36Quest4_Level = "60"
Inst36Quest4_Attain = "51"
Inst36Quest4_Aim = "Habla con el intendente Pico Tormenta."
Inst36Quest4_Location = "Montaraz Bramibum (Valle de Alterac- Norte; "..YELLOW.."Cerca de [3] delante de la puente"..WHITE..")"
Inst36Quest4_Note = "El Intendente Pico Tormenta está en (Valle de Alterac - Norte; "..YELLOW.."[7]"..WHITE..")."
Inst36Quest4_Prequest = "Ninguno"
Inst36Quest4_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 5 Alliance
Inst36Quest5 = "5. Suministros de Dentefrío" -- 6982
Inst36Quest5_Level = "60"
Inst36Quest5_Attain = "51"
Inst36Quest5_Aim = "Lleva 10 suministros de Dentefrío al intendente de la Alianza en Dun Baldar."
Inst36Quest5_Location = "Intendente Pico Tormenta (Valle de Alterac - Norte; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest5_Note = "Encuentras los suministros en la Mina Dentefrío (Valle de Alterac - Sur; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest5_Prequest = "Ninguno"
Inst36Quest5_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 6 Alliance
Inst36Quest6 = "6. Suministros de Ferrohondo" -- 5892
Inst36Quest6_Level = "60"
Inst36Quest6_Attain = "51"
Inst36Quest6_Aim = "Lleva 10 suministros de Ferrohondo al intendente de la Alianza en Dun Baldar."
Inst36Quest6_Location = "Intendente Pico Tormenta (Valle de Alterac - Norte; "..YELLOW.."[7]"..WHITE..")"
Inst36Quest6_Note = "Encuentras los suministros en la Mina Ferrohondo (Valle de Alterac - Norte; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest6_Prequest = "Ninguno"
Inst36Quest6_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 7 Alliance
Inst36Quest7 = "7. Los restos de armadura" -- 7223
Inst36Quest7_Level = "60"
Inst36Quest7_Attain = "51"
Inst36Quest7_Aim = "Llévale 20 restos de armadura a Murgot Forjahonda en Dun Baldar."
Inst36Quest7_Location = "Murgot Forjahonda (Valle de Alterac - Norte; "..YELLOW.."[4]"..WHITE..")"
Inst36Quest7_Note = "Despoja los cuerpos de jugadores enemigos para obtener los restos de armadura."
Inst36Quest7_Prequest = "Ninguno"
Inst36Quest7_Folgequest = "Más restos de armadura" -- 6781
-- No Rewards for this quest

--Quest 8 Alliance
Inst36Quest8 = "8. Capturar una mina" -- 7122
Inst36Quest8_Level = "60"
Inst36Quest8_Attain = "51"
Inst36Quest8_Aim = "Captura una mina que no esté bajo control de los Pico Tormenta y vuelve junto al sargento Durgen Pico Tormenta en las Montañas de Alterac."
Inst36Quest8_Location = "Sargento Durgen Pico Tormenta (Montañas de Alterac; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest8_Note = "Mata a Morloch en la Mina Ferrohondo (Valle de Alterac - Norte; "..YELLOW.."[1]"..WHITE..") o Capataz Snivvle en la Mina Dentefrío (Valle de Alterac - Sur; "..YELLOW.."[6]"..WHITE..") mientras está bajo control de la Horda."
Inst36Quest8_Prequest = "Ninguno"
Inst36Quest8_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 9 Alliance
Inst36Quest9 = "9. Las torres y los búnkeres" -- 7102
Inst36Quest9_Level = "60"
Inst36Quest9_Attain = "51"
Inst36Quest9_Aim = "Destruye el estandarte de una torre enemiga o de un búnker y vuelve junto al sargento Durgen Pico Tormenta en las Montañas de Alterac."
Inst36Quest9_Location = "Sargento Durgen Pico Tormenta (Montañas de Alterac; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest9_Note = "Asalta una torre o un búnker para completar la misión."
Inst36Quest9_Prequest = "Ninguno"
Inst36Quest9_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 10 Alliance
Inst36Quest10 = "10. Los cementerios del Valle de Alterac" -- 7081
Inst36Quest10_Level = "60"
Inst36Quest10_Attain = "51"
Inst36Quest10_Aim = "Asalta un cementerio y vuelve con el sargento Durgen Pico Tormenta en las Montañas de Alterac."
Inst36Quest10_Location = "Sargento Durgen Pico Tormenta (Montañas de Alterac; "..YELLOW.."37,77"..WHITE..")"
Inst36Quest10_Note = "Tienes que estar cerca de un cementerio cuando la Alianza lo asalte."
Inst36Quest10_Prequest = "Ninguno"
Inst36Quest10_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 11 Alliance
Inst36Quest11 = "11. Establos vacíos" -- 7027
Inst36Quest11_Level = "60"
Inst36Quest11_Attain = "51"
Inst36Quest11_Aim = "Encuentra un carnero de Alterac en el Valle de Alterac. Usa la collera de entrenamiento Pico Tormenta cuando estés junto al carnero de Alterac para domarlo. Cuando lo consigas, te seguirá hasta el maestro de establos. Habla con el maestro de establos para ganarte el crédito por la captura."
Inst36Quest11_Location = "Maestra de establos Pico Tormenta (Valle de Alterac - Norte; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest11_Note = "Encuentras a un carnero fuera del base. Puedes hacer la misión 25 veces por partido. Después de entregar la misión 25 veces, la caberellía Pico Tormenta vendrá a ayudarles."
Inst36Quest11_Prequest = "Ninguno"
Inst36Quest11_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 12 Alliance
Inst36Quest12 = "12. Arneses de pellejo de carnero" -- 7026
Inst36Quest12_Level = "60"
Inst36Quest12_Attain = "51"
Inst36Quest12_Aim = "You must strike at our enemy's base, slaying the frostwolves they use as mounts and taking their hides. Return their hides to me so that harnesses may be made for the cavalry. Go!"
Inst36Quest12_Location = "Comandante de jinetes de carneros Pico Tormenta (Valle de Alterac - Norte; "..YELLOW.."[6]"..WHITE..")"
Inst36Quest12_Note = "Los Lobos Gélidos se encuentran al sur del Valle de Alterac."
Inst36Quest12_Prequest = "Ninguno"
Inst36Quest12_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 13 Alliance
Inst36Quest13 = "13. Recogida de cristal" -- 7386
Inst36Quest13_Level = "60"
Inst36Quest13_Attain = "51"
Inst36Quest13_Aim = "There are times which you may be entrenched in battle for days or weeks on end. During those longer periods of activity you may end up collecting large clusters of the Frostwolf's storm crystals.\n\nThe Circle accepts such offerings."
Inst36Quest13_Location = "Archidruida Renferal (Valle de Alterac - Norte; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest13_Note = "Despúes de entregar alrededor 200 cristales, Archidruida Renferal caminará hacia (Valle de Alterac - Norte; "..YELLOW.."[19]"..WHITE.."). Empezará el ritual de invocación que requiere 10 jugadores para asistirle. Si lo completa, invocará Ivus, el Señor del Bosque para ayudarles en la batalla."
Inst36Quest13_Prequest = "Ninguno"
Inst36Quest13_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 14 Alliance
Inst36Quest14 = "14. Ivus, el Señor del Bosque" -- 6881
Inst36Quest14_Level = "60"
Inst36Quest14_Attain = "51"
Inst36Quest14_Aim = "The Frostwolf Clan is protected by a taint of elemental energy. Their shaman meddle in powers that will surely destroy us all if left unchecked.\n\nThe Frostwolf soldiers carry elemental charms called storm crystals. We can use the charms to conjure Ivus. Venture forth and claim the crystals."
Inst36Quest14_Location = "Archidruida Renferal (Valle de Alterac - Norte; "..YELLOW.."[2]"..WHITE..")"
Inst36Quest14_Note = "Despúes de entregar alrededor 200 cristales, Archidruida Renferal caminará hacia (Valle de Alterac - Norte; "..YELLOW.."[19]"..WHITE.."). Empezará el ritual de invocación que requiere 10 jugadores para asistirle. Si lo completa, invocará Ivus, el Señor del Bosque para ayudarles en la batalla."
Inst36Quest14_Prequest = "Ninguno"
Inst36Quest14_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 15 Alliance
Inst36Quest15 = "15. La llamada del aire: la flota de Slidore" -- 6942
Inst36Quest15_Level = "60"
Inst36Quest15_Attain = "51"
Inst36Quest15_Aim = "My gryphons are poised to strike at the front lines but cannot make the attack until the lines are thinned out.\n\nThe Frostwolf warriors charged with holding the front lines wear medals of service proudly upon their chests. Rip those medals off their rotten corpses and bring them back here.\n\nOnce the front line is sufficiently thinned out, I will make the call to air! Death from above!"
Inst36Quest15_Location = "Comandante del aire Slidore (Valle de Alterac - Norte; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest15_Note = "Mata a los PNJs Horda para obtener las Medallas de Soldado Lobo Gélido."
Inst36Quest15_Prequest = "Ninguno"
Inst36Quest15_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 16 Alliance
Inst36Quest16 = "16. La llamada del aire: la flota de Vipore" -- 6941
Inst36Quest16_Level = "60"
Inst36Quest16_Attain = "51"
Inst36Quest16_Aim = "The elite Frostwolf units that guard the lines must be dealt with, soldier! I'm tasking you with thinning out that herd of savages. Return to me with medals from their Tenientes and legionnaires. When I feel that enough of the riff-raff has been dealt with, I'll deploy the air strike."
Inst36Quest16_Location = "Comandante del aire Vipore (Valle de Alterac - Norte; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest16_Note = "Mata a los PNJs Horda para obtener las Medallas de Teniente Lobo Gélido."
Inst36Quest16_Prequest = "Ninguno"
Inst36Quest16_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 17 Alliance
Inst36Quest17 = "17. La llamada del aire: la flota de Ichman" -- 6943
Inst36Quest17_Level = "60"
Inst36Quest17_Attain = "51"
Inst36Quest17_Aim = "Return to the battlefield and strike at the heart of the Frostwolf's command. Take down their commanders and guardians. Return to me with as many of their medals as you can stuff in your pack! I promise you, when my gryphons see the bounty and smell the blood of our enemies, they will fly again! Go now!"
Inst36Quest17_Location = "Comandante del aire Ichman (Valle de Alterac - Norte; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest17_Note = "Mata a los PNJs Horda para obtener las Medallas de Comandante Lobo Gélido. Después de entregarlas 50 veces, el Comandante del aire Ichman enviará grifos para atacar el base de la Horda o un señal al Cementerio Avalancha. Si el señal está protegido bastante tiempo, un grifo lo defenderá."
Inst36Quest17_Prequest = "Ninguno"
Inst36Quest17_Folgequest = "Ninguno"
-- No Rewards for this quest


--Quest 1 Horde
Inst36Quest1_HORDE = "1. En defensa de los Lobo Gélido" -- 7241
Inst36Quest1_HORDE_Level = "60"
Inst36Quest1_HORDE_Attain = "51"
Inst36Quest1_HORDE_Aim = "Dirígete al Valle de Alterac en las Montañas de Alterac. Encuentra al maestro de guerra Laggrond y habla con él para empezar tu carrera como soldado Lobo Gélido; lo encontrarás en la entrada del túnel. El Valle de Alterac se sitúa al norte de Molino Tarren en la falda de las Montañas de Alterac."
Inst36Quest1_HORDE_Location = "Embajadora Rokhstrom Lobo Gélido (Orgrimmar - Valle de Fuerza; "..YELLOW.."50,71"..WHITE..")"
Inst36Quest1_HORDE_Note = "Maestro de guerra Laggrond está en (Montañas de Alterac; "..YELLOW.."62,59"..WHITE..")."
Inst36Quest1_HORDE_Prequest = "Ninguno"
Inst36Quest1_HORDE_Folgequest = "Terreno de Pruebas" -- 7161
-- No Rewards for this quest

--Quest 2 Horde
Inst36Quest2_HORDE = "2. Terreno de Pruebas" -- 7161
Inst36Quest2_HORDE_Level = "60"
Inst36Quest2_HORDE_Attain = "51"
Inst36Quest2_HORDE_Aim = "Viaja hasta la caverna Zarpa Salvaje, al sureste del campamento base en el Valle de Alterac y encuentra el estandarte Lobo Gélido. Devuélveselo al maestro de guerra Laggrond."
Inst36Quest2_HORDE_Location = "Maestro de guerra Laggrond (Montañas de Alterac; "..YELLOW.."62,59"..WHITE..")"
Inst36Quest2_HORDE_Note = "El estandarte Lobo Gélido está en la caverna Zarpa Salvaje en "..YELLOW.."[15]"..WHITE.." en el mapa Valle de Alterac - Sur. Habla con el mismo PNJ cada vez que subes tu reputación para obtener una insignia mejorada.\n\nLa misión previa no es necesaria para obtener esta misión."
Inst36Quest2_HORDE_Prequest = "En defensa de los Lobo Gélido" -- 7241
Inst36Quest2_HORDE_Folgequest = "Ascender y darse a conocer -> El ojo del orden" -- 7163 -> 7167
--
Inst36Quest2name1_HORDE = "Insignia Lobo Gélido Rango 1"
Inst36Quest2name2_HORDE = "Pelar la cebolla"

--Quest 3 Horde
Inst36Quest3_HORDE = "3. La batalla por Alterac" -- 7142
Inst36Quest3_HORDE_Level = "60"
Inst36Quest3_HORDE_Attain = "51"
Inst36Quest3_HORDE_Aim = "Adéntrate en el Valle de Alterac y derrota al general enano Vanndar Pico Tormenta. Vuelve entonces junto a Voggah Agarre Letal en las Montañas de Alterac."
Inst36Quest3_HORDE_Location = "Voggah Agarre Letal (Montañas de Alterac; "..YELLOW.."64,60"..WHITE..")"
Inst36Quest3_HORDE_Note = "Vanndar Pico Tormenta está en (Valle de Alterac - Norte; "..YELLOW.."[B]"..WHITE..")."
Inst36Quest3_HORDE_Prequest = "Ninguno"
Inst36Quest3_HORDE_Folgequest = "Héroe de Lobo Gélido" -- 8272
--
Inst36Quest3name1_HORDE = "Buscasangre"
Inst36Quest3name2_HORDE = "Lanza con púas de hielo"
Inst36Quest3name3_HORDE = "Varita de Frío cortante"
Inst36Quest3name4_HORDE = "Martillo forjado en frío"

--Quest 4 Horde
Inst36Quest4_HORDE = "4. Habla con nuestro intendente" -- 7123
Inst36Quest4_HORDE_Level = "60"
Inst36Quest4_HORDE_Attain = "51"
Inst36Quest4_HORDE_Aim = "Habla con el intendente de Lobo Gélido."
Inst36Quest4_HORDE_Location = "Jotek (Valle de Alterac - Sur; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest4_HORDE_Note = "El Intendente Lobo Gélido está en "..YELLOW.."[10]"..WHITE.."."
Inst36Quest4_HORDE_Prequest = "Ninguno"
Inst36Quest4_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 5 Horde
Inst36Quest5_HORDE = "5. Suministros de Dentefrío" -- 5893
Inst36Quest5_HORDE_Level = "60"
Inst36Quest5_HORDE_Attain = "51"
Inst36Quest5_HORDE_Aim = "Lleva 10 suministros de Dentefrío al intendente de la Horda en el Bastión Lobo Gélido."
Inst36Quest5_HORDE_Location = "Intendente Lobo Gélido (Valle de Alterac - Sur; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest5_HORDE_Note = "Encuentras los suministros en la Mina Dentefrío en (Valle de Alterac - Sur; "..YELLOW.."[6]"..WHITE..")."
Inst36Quest5_HORDE_Prequest = "Ninguno"
Inst36Quest5_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 6 Horde
Inst36Quest6_HORDE = "6. Suministros de Ferrohondo" -- 6985
Inst36Quest6_HORDE_Level = "60"
Inst36Quest6_HORDE_Attain = "51"
Inst36Quest6_HORDE_Aim = "Lleva 10 suministros de Ferrohondo al intendente de la Horda en el Bastión Lobo Gélido."
Inst36Quest6_HORDE_Location = "Intendente Lobo Gélido (Valle de Alterac - Sur; "..YELLOW.."[10]"..WHITE..")"
Inst36Quest6_HORDE_Note = "Encuentras los suministros en la Mina Ferrohondo (Valle de Alterac - Norte; "..YELLOW.."[1]"..WHITE..")."
Inst36Quest6_HORDE_Prequest = "Ninguno"
Inst36Quest6_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 7 Horde
Inst36Quest7_HORDE = "7. Botín enemigo" -- 7224
Inst36Quest7_HORDE_Level = "60"
Inst36Quest7_HORDE_Attain = "51"
Inst36Quest7_HORDE_Aim = "Llévale 20 restos de armadura al herrero Regzar en Aldea Lobo Gélido."
Inst36Quest7_HORDE_Location = "Herrero Regzar (Valle de Alterac - Sur; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest7_HORDE_Note = "Despoja los cuerpos de jugadores enemigos para obtener los restos de armadura."
Inst36Quest7_HORDE_Prequest = "Ninguno"
Inst36Quest7_HORDE_Folgequest = "¡Más botines!" -- 6741
-- No Rewards for this quest

--Quest 8 Horde
Inst36Quest8_HORDE = "8. Capturar una mina" -- 7124
Inst36Quest8_HORDE_Level = "60"
Inst36Quest8_HORDE_Attain = "51"
Inst36Quest8_HORDE_Aim = "Captura una mina y vuelve con el cabo Teeka Gruñido Sangriento en las Montañas de Alterac."
Inst36Quest8_HORDE_Location = "Cabo Teeka Gruñido Sangriento (Montañas de Alterac; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest8_HORDE_Note = "Mata a Morloch en la Mina Ferrohondo (Valle de Alterac - Norte; "..YELLOW.."[1]"..WHITE..") o Capataz Snivvle en la Mina Dentefrío (Valle de Alterac - Sur; "..YELLOW.."[6]"..WHITE..") mientras está bajo control de la Alianza."
Inst36Quest8_HORDE_Prequest = "Ninguno"
Inst36Quest8_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 9 Horde
Inst36Quest9_HORDE = "9. Las torres y los búnkeres" -- 7101
Inst36Quest9_HORDE_Level = "60"
Inst36Quest9_HORDE_Attain = "51"
Inst36Quest9_HORDE_Aim = "Captura una torre enemiga y vuelve con el cabo Teeka Gruñido Sangriento en las Montañas de Alterac."
Inst36Quest9_HORDE_Location = "Cabo Teeka Gruñido Sangriento (Montañas de Alterac; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest9_HORDE_Note = "Asalta una torre o un búnker para completar la misión."
Inst36Quest9_HORDE_Prequest = "Ninguno"
Inst36Quest9_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 10 Horde
Inst36Quest10_HORDE = "10. Los cementerios de Alterac" -- 7082
Inst36Quest10_HORDE_Level = "60"
Inst36Quest10_HORDE_Attain = "51"
Inst36Quest10_HORDE_Aim = "Asalta un cementerio y vuelve con el cabo Teeka Gruñido Sangriento en las Montañas de Alterac."
Inst36Quest10_HORDE_Location = "Cabo Teeka Gruñido Sangriento (Montañas de Alterac; "..YELLOW.."66,55"..WHITE..")"
Inst36Quest10_HORDE_Note = "Tienes que estar cerca de un cementerio cuando la Horda lo asalte."
Inst36Quest10_HORDE_Prequest = "Ninguno"
Inst36Quest10_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 11 Horde
Inst36Quest11_HORDE = "11. Establos vacíos" -- 7001
Inst36Quest11_HORDE_Level = "60"
Inst36Quest11_HORDE_Attain = "51"
Inst36Quest11_HORDE_Aim = "Encuentra a un Lobo Gélido en el Valle de Alterac. Usa el bozal Lobo Gélido cuando estés junto a él para domarlo. Cuando lo consigas, te seguirá hasta el maestro de establos de los Lobo Gélido. Habla con el maestro de establos para ganarte el crédito por la captura."
Inst36Quest11_HORDE_Location = "Maestra de establos Lobo Gélido (Valle de Alterac - Sur; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest11_HORDE_Note = "Encuentras a un Lobo Gélido fuera del base. Puedes hacer la misión 25 veces por partido. Después de entregar la misión 25 veces, la caberellía Lobo Gélido vendrá a ayudarles."
Inst36Quest11_HORDE_Prequest = "Ninguno"
Inst36Quest11_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 12 Horde
Inst36Quest12_HORDE = "12. Arneses de pellejo de carnero" -- 7002
Inst36Quest12_HORDE_Level = "60"
Inst36Quest12_HORDE_Attain = "51"
Inst36Quest12_HORDE_Aim = "You must strike at the indigenous rams of the region. The very same rams that the Stormpike cavalry uses as mounts!\n\nSlay them and return to me with their hides. Once we have gathered enough hides, we will fashion harnesses for the riders. The Frostwolf Wolf Riders will ride once more!"
Inst36Quest12_HORDE_Location = "Comandante jinete de lobos Lobo Gélido (Valle de Alterac - Sur; "..YELLOW.."[9]"..WHITE..")"
Inst36Quest12_HORDE_Note = "Los carneros se encuentran al norte del Valle de Alterac."
Inst36Quest12_HORDE_Prequest = "Ninguno"
Inst36Quest12_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 13 Horde
Inst36Quest13_HORDE = "13. Un galón de sangre" -- 7385
Inst36Quest13_HORDE_Level = "60"
Inst36Quest13_HORDE_Attain = "51"
Inst36Quest13_HORDE_Aim = "You have the option of offering larger quantities of the blood taken from our enemies. I will be glad to accept gallon sized offerings."
Inst36Quest13_HORDE_Location = "Primalista Thurloga (Valle de Alterac - Sur; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest13_HORDE_Note = "Despúes de entregar alrededor 150 galones de sangre, Primalista Thurloga caminará hacia (Valle de Alterac - Sur; "..YELLOW.."[14]"..WHITE.."). Empezará el ritual de invocación que requiere 10 jugadores para asistirle. Si lo completa, invocará Lokholar, el Señor del Hielo para ayudarles en la batalla."
Inst36Quest13_HORDE_Prequest = "Ninguno"
Inst36Quest13_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 14 Horde
Inst36Quest14_HORDE = "14. Lokholar, el Señor del Hielo" -- 6801
Inst36Quest14_HORDE_Level = "60"
Inst36Quest14_HORDE_Attain = "51"
Inst36Quest14_HORDE_Aim = "You must strike down our enemies and bring to me their blood. Once enough blood has been gathered, the ritual of summoning may begin.\n\nVictory will be assured when the elemental lord is loosed upon the Stormpike army."
Inst36Quest14_HORDE_Location = "Primalista Thurloga (Valle de Alterac - Sur; "..YELLOW.."[8]"..WHITE..")"
Inst36Quest14_HORDE_Note = "Despúes de entregar alrededor 150 galones de sangre, Primalista Thurloga caminará hacia (Valle de Alterac - Sur; "..YELLOW.."[14]"..WHITE.."). Empezará el ritual de invocación que requiere 10 jugadores para asistirle. Si lo completa, invocará Lokholar, el Señor del Hielo para ayudarles en la batalla."
Inst36Quest14_HORDE_Prequest = "Ninguno"
Inst36Quest14_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 15 Horde
Inst36Quest15_HORDE = "15. La llamada del aire: flota de Guse" -- 6825
Inst36Quest15_HORDE_Level = "60"
Inst36Quest15_HORDE_Attain = "51"
Inst36Quest15_HORDE_Aim = "My riders are set to make a strike on the central battlefield; but first, I must wet their appetites - preparing them for the assault.\n\nI need enough Stormpike Soldier Flesh to feed a fleet! Hundreds of pounds! Surely you can handle that, yes? Get going!"
Inst36Quest15_HORDE_Location = "Comandante del aire Guse (Valle de Alterac - Sur; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest15_HORDE_Note = "Mata a los PNJs Horda para obtener la Carne de Soldado Pico Tormenta."
Inst36Quest15_HORDE_Prequest = "Ninguno"
Inst36Quest15_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 16 Horde
Inst36Quest16_HORDE = "16. La llamada del aire: flota de Jeztor" -- 6826
Inst36Quest16_HORDE_Level = "60"
Inst36Quest16_HORDE_Attain = "51"
Inst36Quest16_HORDE_Aim = "My War Riders must taste in the flesh of their targets. This will ensure a surgical strike against our enemies!\n\nMy fleet is the second most powerful in our air command. Thusly, they will strike at the more powerful of our adversaries. For this, then, they need the flesh of the Stormpike Tenientes."
Inst36Quest16_HORDE_Location = "Comandante del aire Jeztor (Valle de Alterac - Sur; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest16_HORDE_Note = "Mata a los PNJs Horda para obtener la Carne de Teniente Pico Tormenta."
Inst36Quest16_HORDE_Prequest = "Ninguno"
Inst36Quest16_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 17 Horde
Inst36Quest17_HORDE = "17. La llamada del aire: flota de Mulverick" -- 6827
Inst36Quest17_HORDE_Level = "60"
Inst36Quest17_HORDE_Attain = "51"
Inst36Quest17_HORDE_Aim = "First, my war riders need targets to gun for - high priority targets. I'm going to need to feed them the flesh of Stormpike Commanders. Unfortunately, those little buggers are entrenched deep behind enemy lines! You've definitely got your work cut out for you."
Inst36Quest17_HORDE_Location = "Comandante del aire Mulverick (Valle de Alterac - Sur; "..YELLOW.."[13]"..WHITE..")"
Inst36Quest17_HORDE_Note = "Mata a los PNJs Horda para obtener la Carne de Comandante Pico Tormenta."
Inst36Quest17_HORDE_Prequest = "Ninguno"
Inst36Quest17_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest



--------------- INST37 - Arathi Basin (AB) ---------------
Inst37Story = "La Cuenca de Arathi, situada en las Tierras Altas de Arathi, es un campo de batalla rápido y emocionante. La cuenca es una rica fuente de recursos, codiciados tanto por la Horda como la Alianza. Los Rapiñadores renegados y la Liga de Arathor han llegado a la Cuenca de Arathi para combatir por estos recursos y reclamarlos para sus respectivas facciones. La Liga de Arathor reclama las tierras perdidas para sus benefactores en Ventormenta, mientras que los Rapiñadores (tropas de élite bajo el ojo vigilante de Varimathas), desean cortar la vital conexión entre los humanos y sus aliados enanos al sur."
Inst37Caption = "Cuenca de Arathi"
Inst37QAA = "3 Misiones"
Inst37QAH = "3 Misiones"

--Quest 1 Alliance
Inst37Quest1 = "1. La batalla por la Cuenca de Arathi" -- 8105
Inst37Quest1_Level = "55"
Inst37Quest1_Attain = "50"
Inst37Quest1_Aim = "Asalta la mina, el aserradero, la herrería y la granja y vuelve entonces junto al mariscal de campo Uluz en el Refugio de la Zaga."
Inst37Quest1_Location = "Mariscal de campo Uluz (Tierras Altas de Arathi - Refugio de la Zaga; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest1_Note = "Las localizaciones que asaltas están marcadas en el mapa 2 a 5."
Inst37Quest1_Prequest = "Ninguno"
Inst37Quest1_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Alliance
Inst37Quest2 = "2. Controla cuatro bases" -- 8114
Inst37Quest2_Level = "60"
Inst37Quest2_Attain = "60"
Inst37Quest2_Aim = "Adéntrate en la Cuenca de Arathi, toma el control de las cuatro bases a la vez y vuelve entonces junto al mariscal de campo Uluz en el Refugio de la Zaga."
Inst37Quest2_Location = "Mariscal de campo Uluz (Tierras Altas de Arathi - Refugio de la Zaga; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest2_Note = "Necesitas la reputación de amistoso con la Liga de Arathor para obtener esta misión."
Inst37Quest2_Prequest = "Ninguno"
Inst37Quest2_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Alliance
Inst37Quest3 = "3. Controla cinco bases" -- 8115
Inst37Quest3_Level = "60"
Inst37Quest3_Attain = "60"
Inst37Quest3_Aim = "Toma el control de 5 bases a la vez en la Cuenca de Arathi y vuelve entonces junto al mariscal de campo Uluz en el Refugio de la Zaga."
Inst37Quest3_Location = "Mariscal de campo Uluz (Tierras Altas de Arathi - Refugio de la Zaga; "..YELLOW.."46,45"..WHITE..")"
Inst37Quest3_Note = "Necesitas la reputación de exaltado con la Liga de Arathor para obtener esta misión."
Inst37Quest3_Prequest = "Ninguno"
Inst37Quest3_Folgequest = "Ninguno"
--
Inst37Quest3name1 = "Tabardo de batalla de Arathor"


--Quest 1 Horde
Inst37Quest1_HORDE = "1. La batalla por la Cuenca de Arathi" -- 8120
Inst37Quest1_HORDE_Level = "25"
Inst37Quest1_HORDE_Attain = "25"
Inst37Quest1_HORDE_Aim = "Asalta la mina de la Cuenca de Arathi, el aserradero, la herrería y el establo y vuelve entonces junto a la maestra de la muerte Duire en Sentencia."
Inst37Quest1_HORDE_Location = "Maestra de la Muerte Duire (Tierras Altas de Arathi - Sentencia; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest1_HORDE_Note = "Las localizaciones que asaltas están marcadas en el mapa 1 a 4."
Inst37Quest1_HORDE_Prequest = "Ninguno"
Inst37Quest1_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 2 Horde
Inst37Quest2_HORDE = "2. Toma el control de cuatro bases" -- 8121
Inst37Quest2_HORDE_Level = "60"
Inst37Quest2_HORDE_Attain = "60"
Inst37Quest2_HORDE_Aim = "Toma el control de cuatro bases al mismo tiempo en la Cuenca de Arathi y vuelve entonces junto a la maestra de la muerte Duire en Sentencia."
Inst37Quest2_HORDE_Location = "Maestra de la Muerte Duire (Tierras Altas de Arathi - Sentencia; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest2_HORDE_Note = "Necesitas la reputación de amistoso con los Rapiñadores para obtener esta misión."
Inst37Quest2_HORDE_Prequest = "Ninguno"
Inst37Quest2_HORDE_Folgequest = "Ninguno"
-- No Rewards for this quest

--Quest 3 Horde
Inst37Quest3_HORDE = "3. Toma el control de cinco bases" -- 8122
Inst37Quest3_HORDE_Level = "60"
Inst37Quest3_HORDE_Attain = "60"
Inst37Quest3_HORDE_Aim = "Toma el control de cinco bases al mismo tiempo en la Cuenca de Arathi y vuelve entonces junto a la maestra de la muerte Duire en Sentencia."
Inst37Quest3_HORDE_Location = "Maestra de la Muerte Duire (Tierras Altas de Arathi - Sentencia; "..YELLOW.."74,35"..WHITE..")"
Inst37Quest3_HORDE_Note = "Necesitas la reputación de exaltado con los Rapiñadores para obtener esta misión."
Inst37Quest3_HORDE_Prequest = "Ninguno"
Inst37Quest3_HORDE_Folgequest = "Ninguno"
--
Inst37Quest3name1_HORDE = "Tabardo de batalla de los Rapiñadores"



--------------- INST38 - Warsong Gulch (WSG) ---------------
Inst38Story = "Situado en la región sur del bosque de Vallefresno, la Garganta Grito de Guerra se localiza cerca a la zona donde Grom y sus orcos talaron buena parte del lugar durante la Tercera Guerra. A pesar de los desacuerdos con Thrall y los chamanes, algunos orcos permanecieron en la zona, continuando la deforestación para estimular el avance de la Horda. Se llamaron a sí mismos Escoltas Grito de Guerra.\nLos elfos de la noche, que a gran escala trataron de retomar los bosques, intentan de una vez por todas expulsar a la Escoltas de la Horda. De esta manera, los Centinelas Ala de Plata respondieron a la llamada y han jurado que no descansarán hasta que el último orco sea derrotado y expulsado de la Garganta Grito de Guerra."
Inst38Caption = "Garganta Grito de Guerra"
Inst38QAA = "No Hay Misiones"
Inst38QAH = "No Hay Misiones"

---
-- end
---

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
-- 8  = Cumbre de Roca Negra Inferior (LBRS)
-- 9  = Cumbre de Roca Negra Superior (UBRS)
-- 10 = Dire Maul East (DM)
-- 11 = Dire Maul Norte (DM)
-- 12 = Dire Maul West (DM)
-- 13 = Maraudon (Mara)
-- 14 = Molten Core (MC)
-- 15 = Naxxramas (Naxx)
-- 16 = Onyxia's Lair (Ony)
-- 17 = Razorfen Downs (RFD)
-- 18 = Horado Rajacieno (RFK)
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
-- 36 = Valle de Alterac (AV)
-- 37 = Arathi Basin (AB)
-- 38 = Warsong Gulch (WSG)
-- 99 =  default "rest"
