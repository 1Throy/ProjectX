/*
Author: Kerkkoh
First Edit: 23.11.2015
*/

RPF_Handcuffs = "RPF_Items_Handcuffs";
RPF_HandcuffKeys = "RPF_Items_HandcuffKeys";

RPF_TrunkDivide = 300;

/* ## https://community.bistudio.com/wiki/ListOfKeyCodes You're welcome! ## */
RPF_InteractionKey = 15;

RPF_PoliceCars = [
	"B_MRAP_01_F",
	"O_Heli_Light_02_unarmed_F"
];
RPF_MedicCars = [
	
];

RPF_PoliceStations = [];
RPF_MedicStations = [];

RPF_Edibles = [
	["RPF_Items_Salema", 50],
	["RPF_Items_Olives", 40],
	["RPF_Items_BakedBeans", 60],
	["RPF_Items_Cereal", 40],
	["RPF_Items_RiceBox", 50]
];
RPF_Drinkables = [
	["RPF_Items_CleanerSpray", 30],
	["RPF_Items_Canteen", 100],
	["RPF_Items_WaterBottle", 90]
];

RPF_Usables = [
	["RPF_Items_Meth", "player removeItem 'RPF_Items_Meth';"],
	["RPF_Items_Poppy", "player removeItem 'RPF_Items_Poppy';"],
	
	["RPF_Items_Salema", "['RPF_Items_Salema']call Client_fnc_eatItem"],
	["RPF_Items_Olives", "['RPF_Items_Olives']call Client_fnc_eatItem"],
	["RPF_Items_BakedBeans", "['RPF_Items_BakedBeans']call Client_fnc_eatItem"],
	["RPF_Items_Cereal", "['RPF_Items_Cereal']call Client_fnc_eatItem"],
	["RPF_Items_RiceBox", "['RPF_Items_RiceBox']call Client_fnc_eatItem"],
	
	["RPF_Items_CleanerSpray", "['RPF_Items_CleanerSpray']call Client_fnc_drinkItem"],
	["RPF_Items_Canteen", "['RPF_Items_Canteen']call Client_fnc_drinkItem"],
	["RPF_Items_WaterBottle", "['RPF_Items_WaterBottle']call Client_fnc_drinkItem"]
];

//RPF_PhysicalItems = [];
RPF_ownedFurniture = [];

client_crazy = 0;
DeadPlayer = false;
client_istazed = false;
escorting = false;

KK_fnc_forceRagdoll = compileFinal
"
	if (vehicle player != player || godMode) exitWith {};
	private ""_rag"";
	godMode = true;
	player allowdamage false;
	_rag = ""Land_Can_V3_F"" createVehicleLocal [0,0,0];
	_rag setMass 1e10;
	_rag attachTo [player, [0,0,0], ""Spine3""];
	_rag setVelocity [0,0,8];
	detach _rag;
	0 = _rag spawn {
		deleteVehicle _this;
		uisleep 1;
		godMode = false;
		player allowdamage true;
	};
";

client_fnc_animSync = compileFinal
"
	private[""_unit"",""_anim""];
	_unit = param [0,ObjNull,[Objnull]];
	_anim = param [1,"""",[""""]];
	if(isNull _unit) exitWith {};
	_unit switchMove _anim;
";