/*
Author: Kerkkoh / Throy
First Edit: 14.3.2016
*/
_amount = 10000;

if (_amount > 0) then {

	_bank = player getVariable "bank";
	_cash = player getVariable "cash";
	
	[_bank, _amount, 0, 0] call ClientModules_fnc_atmRefresh;
	[_cash, _amount, 1, 1] call ClientModules_fnc_atmRefresh;
	
	[_amount] call Client_fnc_addCash;

} else {
	hint "Nao funcionou!";
};

