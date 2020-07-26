VALKYRIE INC ONLINE CHANGELOGS HERE.

V1.1

RELACIONADO A BUGS
CORREGIR ATAQUE DE ICE RAPIER - ATAQUE SERA COLOCADO EN 40 LISTO FALTA REEMPLAZAR CODIGO
CORREGIR BUG DE HOLE AL SUR DE THAIS Position: [X: 1104] [Y: 1153] [Z: 7] - LISTO RECORDAR REEMPLAZAR EL MAPA
CORREGIR SUPER RING OF REGENERATION - SE CONSUME EN EL BACKPACK - LISTO FALTA REEMPLAZAR CODIGO Y CAMBIAR EN LA LISTA DE LOTTERY EN ID DEL ANILLO 7697 POR 11253
CORREGIR ASSASSIN STAR - QUE SE ACABE - LISTO FALTA REEMPLAZAR CODIGO
CORREGIR TODAS LAS BOLTS, ARROWS Y SPEAR - NO SE ACABARAN LISTO FALTA REEMPLAZAR CODIGO



RELACIONADO A SISTEMAS Y MAPA
AGREGAR VIP SYSTEM - PENDIENTE
AGREGAR ZONAS VIP - PENDIENTE
PUSH PLAYER CORREGIR - DE 3 SEGUNDOS A 2 SEGUNDOS DEFAULT - LISTO FALTA REEMPLEZAR CODIGO
REVISAR ATAQUE DE MONSTERS EN CONFIG.LUA - LISTO
AUMENTAR EFECTIVIDAD DE POCIONES 10 O 15%. - LISTO AUMENTADO BASE
AÑADIR OUTFIT BONUSES - LISTO - REEMPLAZAR ARCHIVO OUTFIT.XML
AUMENTAR STAGES HASTA LVL 100 - LISTO
AÑADIR LETREROS EN TEMPLO PARA INFORMACIONES - LISTO
AUMENTAR LOOT RATE - SERA CAMBIADO DE 2.5 A 3.0 - LISTO
AGREGAR STAMINA TRAINING REGENERATION - LISTO CADA 2 MINUTOS REGENERA 1 MINUTO DE STAMINA
WHITE SKULL TIME REDUCIR - SERA REDUCIDO DE 10 MINUTOS A 5 MINUTOS. - LISTO

RELACIONADO AL SHOP OFFER
AGREGAR STAMINA POTION
AGREGAR SUPER RING OF REGENERATION
AGREGAR BUY VIP DAYS

RELACIONADO CON LA WEB
MODIFICADO PAGINA DE BUYPOINTS - LISTO FALTA REEMPLAZAR ARCHIVO
AGREGADA PAGINA PARA DONACIONES VENEZUELA - LISTO FALTA AGREGAR ARCHIVO
AGREGADO METODO DE DONACION POR PAYPAL- LISTO FALTA AGREGAR ARCHIVO
MEJORAR ASPECTO DE MENUS EN LA PAGINA - LISTO FALTA REEMPLAZAR ARCHIVO
AGREGADO BOTON DE FACEBBOOK PARA LIKE - LISTO FALTA REEMPLAZAR ARCHIVO
CAMBIOS EN TOP-LEVEL - COLOR TEXT CHANGE - LISTO FALTA REEMPLAZAR ARCHIVO
AÑADIR A LASTEST NEWS TOP GUILDS - FUNCIONANDO OK
AÑADIR SECCION DE TASKS SYSTEM - PENDIENTE
AÑADIR SECCION DE ELFBOT IDS - LISTO FALTA REEMPLAZAR ARCHIVO
AÑADIR SECCION DE ELFBOT HOTKEYS - LISTO FALTA REEMPLAZAR ARCHIVO
AÑADIR SECCION DE OUTFIT BONUSES - LISTO FALTA AÑADIR ARCHIVOS NECESARIOS*
AÑADIR LOGO DISEÑADO POR DREXLER - LISTO FALTA REEMPLAZAR ARCHIVO.GIF*
AÑADIR SECCION DE HUNT ZONES - FUNCIONANDO FALTA AÑADIR ARCHIVOS*
AÑADIR SECCION DE FULL MAP - FUNCIONANDO FALTA AÑADIR ARCHIVOS*




CAMBIOS COMPARATIVOS ANTES Y DESPUES

POTIONS_________ANTES__________AHORA
	
STRONG HEALTH	300/500			300/600
GREAT HEALTH	500/800			600/900
ULTIMATE HEALTH	900/1200		900/1300
MANA POTION	70/130			120/190
STRONG MANA	180/250			220/350
GREAT MANA	300/450			350/490
GREAT SPIRIT	480/600-200/390	480/650-250/400

STAGES___________ANTES_______AHORA
1/51		30		70
51/100		20		50
101/150		15		20
151/200		10		10
201/250		5		5
251/300		3		3
301/999		1		1








REEMPLAZAR LOS SIGUIENTES CODIGOS

STAGES.XML

<?xml version="1.0" encoding="UTF-8"?>
<stages>
	<world id="0" multiplier="1">
	<stage minlevel="1" maxlevel="50" multiplier="70"/>
	<stage minlevel="51" maxlevel="100" multiplier="50"/>
	<stage minlevel="101" maxlevel="150" multiplier="20"/>	
	<stage minlevel="151" maxlevel="200" multiplier="10"/>
	<stage minlevel="201" maxlevel="250" multiplier="5"/>
	<stage minlevel="251" maxlevel="300" multiplier="3"/>
	<stage minlevel="301" maxlevel="999" multiplier="1"/>
	</world>
</stages>

CONFIG.LUA

	pushCreatureDelay = 2 * 1000
	whiteSkullTime = 5 * 60 * 1000
	rateLoot = 3
	
ITEMS.XML

    <item id="2396" article="an" name="ice rapier">
        <attribute key="description" value="A deadly but fragile weapon." />
        <attribute key="weight" value="1500" />
        <attribute key="attack" value="40" />
        <attribute key="defense" value="1" />
        <attribute key="weaponType" value="sword" />
        <attribute key="elementIce" value="18" />
    </item>
    <item id="3965" article="a" name="hunting spear" plural="hunting spears">
        <attribute key="weight" value="2200" />
        <attribute key="attack" value="32" />
        <attribute key="weaponType" value="distance" />
        <attribute key="shootType" value="huntingspear" />
        <attribute key="range" value="5" />
    </item>
    <item id="7368" article="an" name="assassin star" plural="assassin stars">
        <attribute key="weight" value="200" />
        <attribute key="attack" value="49" />
        <attribute key="weaponType" value="distance" />
        <attribute key="shootType" value="redstar" />
		<attribute key="breakChance" value="9" />
		<attribute key="ammoAction" value="moveback" />
        <attribute key="range" value="5" />
    </item>
	<item id="7697" article="a" name="super ring of healing">		<!-- Valkirye INC -->
		<attribute key="description" value="Only lottery winner have this!." />
		<attribute key="weight" value="100" />
		<attribute key="slotType" value="ring" />
		<attribute key="duration" value="900" />
		<attribute key="decayTo" value="0" />
		<attribute key="healthGain" value="10" />
		<attribute key="healthTicks" value="1000" />
		<attribute key="manaGain" value="10" />
		<attribute key="manaTicks" value="1000" />
		<attribute key="transformDeEquipTo" value="11253" />
		<attribute key="showduration" value="1" />
		</item>
	<item id="11253" article="a" name="super ring of healing">
		<attribute key="weight" value="100" />
		<attribute key="description" value="Only lottery winner have this!." />
		<attribute key="slotType" value="ring" />
		<attribute key="transformEquipTo" value="7697" />
		<attribute key="stopduration" value="1" />
		<attribute key="showduration" value="1" />
	</item>
	
	
MOVEMENTS.XML
	<movevent type="StepIn" itemid="966" event="script" value="stamina_tile.lua" />
    <movevent type="StepOut" itemid="966" event="script" value="stamina_tile.lua" />

	<movevent type="Equip" itemid="11253" slot="ring" event="function" value="onEquipItem"/> <!--SUPER RING OF HEALING-->
	<movevent type="Equip" itemid="7697" slot="ring" event="function" value="onEquipItem"/> <!--SUPER RING OF HEALING-->
	<movevent type="DeEquip" itemid="7697" slot="ring" event="function" value="onDeEquipItem"/> <!--SUPER RING OF HEALING-->
	
POTIONS.LUA
	[8704] = {empty = 7636, splash = 42, health = {50, 100}}, -- small health potion
	[7618] = {empty = 7636, splash = 42, health = {100, 200}}, -- health potion
	[7588] = {empty = 7634, splash = 42, health = {300, 600}, level = 50, vocations = {3, 4, 7, 8}, vocStr = "knights and paladins"}, -- strong health potion
	[7591] = {empty = 7635, splash = 42, health = {600, 900}, level = 80, vocations = {4, 8}, vocStr = "knights"}, -- great health potion
	[8473] = {empty = 7635, splash = 42, health = {900, 1300}, level = 130, vocations = {4, 8}, vocStr = "knights"}, -- ultimate health potion
	[7620] = {empty = 7636, splash = 47, mana = {120, 190}}, -- mana potion
	[7589] = {empty = 7634, splash = 47, mana = {220, 350}, level = 50, vocations = {1, 2, 3, 5, 6, 7}, vocStr = "sorcerers, druids and paladins"}, -- strong mana potion
	[7590] = {empty = 7635, splash = 47, mana = {350, 490}, level = 80, vocations = {1, 2, 5, 6}, vocStr = "sorcerers and druids"}, -- great mana potion
	[8472] = {empty = 7635, splash = 43, health = {480, 650}, mana = {250, 400}, level = 80, vocations = {3, 7}, vocStr = "paladins"} -- great spirit potion


RELACIONADO A LA PAGINA WEB


