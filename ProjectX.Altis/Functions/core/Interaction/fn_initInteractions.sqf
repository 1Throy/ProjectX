/*
Author: Kerkkoh
First Edit: 16.4.2016
*/
RPF_InteractionButtons = [1600, 1601, 1602, 1603, 1604, 1605, 1606, 1607, 1608];
RPF_InteractionMenuItems = [
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "(player distance cursorObject) <= 5"],
		["Abrir Veiculo", "[cursorObject] call Client_fnc_useKey"]
	],
	[
		["(vehicle player) != player", "(vehicle player) in RPF_Cars"],
		["Abrir Veiculo", "[vehicle player] call Client_fnc_useKey"]
	],
	[
		["isPlayer cursorObject", "(player distance cursorObject) <= 5"],
		["Dar dinheiro", "[cursorObject] call Client_fnc_giveCash"]
	],
	[
		["RPF_Holstered == 1", "alive player"],
		["Tirar Arma", "[] call Client_fnc_holster"]
	],
	[
		["RPF_Holstered == 0", "handgunWeapon player != ''", "alive player"],
		["Guardar Arma", "[] call Client_fnc_holster"]
	],
	[
		["(RPF_Handcuffs in (items player)) || (RPF_Handcuffs in (magazines player))", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 5"],
		["Algemar", "[cursorObject] spawn Client_fnc_cuff"]
	],
	[
		["(RPF_HandcuffKeys in (items player)) || (RPF_HandcuffKeys in (magazines player))", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Abrir Algema", "[cursorObject] call Client_fnc_unCuff"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject isKindOf 'Man'", "cursorObject getVariable ['cuffed',false]", "(player distance cursorObject) <= 5"],
		["Escoltar", "[cursorObject] call Client_fnc_escort"]
	],	
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'"],
		["Soltar", "[] call Client_fnc_escortStop"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) isKindOf 'Man'", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		["Por no Carro", "[cursorObject] call Client_fnc_putInCar"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Car'", "(player distance cursorObject) <= 5"],
		["Tirar do Carro", "[cursorObject] call Client_fnc_pullOut"]
	],
	[
		["player getVariable ['cop', 0] > 0", "cursorObject isKindOf 'Man'", "(player distance cursorObject) <= 5"],
		["Verificar", "[cursorObject] call Client_fnc_search"]
	],
	[
		["cursorObject isKindOf 'Car'", "cursorObject in RPF_Cars", "[10, 'garage']call Client_fnc_nearMarker", "(player distance cursorObject) <= 5"],
		["Guardar Veiculo", "[cursorObject] call Client_fnc_storeCar"]
	],
	[
		["!(isNil {cursorObject getVariable 'garage'})", "(player distance cursorObject) <= 5"],
		["Abrir Garagem", "[cursorObject] call Client_fnc_openGarage"]
	],
	[
		["(count (attachedObjects player)) <= 0", "cursorObject in RPF_ownedFurniture", "(player distance cursorObject) <= 5"],
		["Pegar", "[cursorObject] call Client_fnc_pickUp"]
	],
	[
		["(count (attachedObjects player)) > 0", "((attachedObjects player) select 0) in RPF_ownedFurniture"],
		["Soltar", "[] call Client_fnc_escortStop"]
	],
	[
		["(cursorObject isKindOf 'Car') || (cursorObject isKindOf 'Air') || (cursorObject isKindOf 'Ship')", "(player distance cursorObject) <= 5", "(locked cursorObject) == 0"],
		["Porta Malas", "[cursorObject] call Client_fnc_openTrunk"]
	],
	[
		["alive player"],
		["Usar Item", "[] call Client_fnc_openUseItem"]
	],
	[
		["!(isNil {cursorObject getVariable 'money'})", "(player distance cursorObject) <= 5"],
		["Pegar dinheiro", "[cursorObject] call Client_fnc_takeMoney"]
	],
	[
		["player getVariable ['copoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		["Entrar Plantao", "[1, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['emsoffduty', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		["Entrar Plantao", "[1, 1] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['cop', 0] > 0", "!(isNil {cursorObject getVariable 'policeStation'})", "(player distance cursorObject) <= 5"],
		["Sair Plantao", "[0, 0] call Client_fnc_switchDutyStatus"]
	],
	[
		["player getVariable ['ems', 0] > 0", "!(isNil {cursorObject getVariable 'medicStation'})", "(player distance cursorObject) <= 5"],
		["Sair Plantao", "[0, 1] call Client_fnc_switchDutyStatus"]
	],

	// Add
	/*

	[
		["CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Air' || CurrentCursorTarget isKindOf 'Boat' "],
		["Repair", "['Repairing',25,client_fnc_repair,CurrentCursorTarget,'AinvPknlMstpSnonWnonDnon_medic_1',CurrentCursorTarget,""cg_sndimg\sounds\repair.ogg"",100] spawn client_fnc_dotask",2]
	],

	[
		[" (currentcursortarget isKindOf ""Air"" || currentcursortarget isKindOf ""Car"" || currentcursortarget isKindOf ""Boat"") && currentcursortarget in current_cars "],
		["Flip car", " currentcursortarget setpos (getposatl currentcursortarget) ",2]
	],

	[
		[" (CurrentCursorTarget isKindOf 'Car' || CurrentCursorTarget isKindOf 'Ship') && player distance currentcursortarget < 11 && currentcursortarget in current_cars "],
		["Push Vehicle", "[] spawn Client_fnc_pushveh",2]
	],

    */

    [
		["getplayerUID player IN ['76561198102935470']"],
		["AdminV2", "[] call Client_fnc_openAdminV2"]
	]
];
