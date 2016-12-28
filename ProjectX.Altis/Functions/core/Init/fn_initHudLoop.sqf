/*
Author: Kerkkoh
First Edit: 15.3.2016
*/
disableSerialization;
for "_i" from 0 to 1 step 0 do {
	_hud = uiNamespace getVariable ["HUD",displayNull];

	if(isNull _hud) then 
	{
		2 cutRsc ["HUD","PLAIN"];
	};	
	
	_health = str (round (100 - ((damage player) * 100)));
	(_hud displayCtrl 1001) ctrlSetText _health;
	
	_cash = player getVariable "cash"; 
    _cash = _cash call client_fnc_numberText;	
	(_hud displayCtrl 1000) ctrlSetText _cash;
	
	(_hud displayCtrl 1002) ctrlSetText (str RLP_hunger);
	
	(_hud displayCtrl 1003) ctrlSetText (str RLP_thirst);
	
	sleep 0.5;
};