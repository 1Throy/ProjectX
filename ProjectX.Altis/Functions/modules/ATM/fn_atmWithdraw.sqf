/*
Author: Kerkkoh
Edit: Throy
*/
_amount = parseNumber (ctrlText 1400);
//_amount = round (parseNumber (ctrlText 1400));
closeDialog 0;

if (_amount > 999999) exitWith {hint "Precisa ser menor que 1.000.000";};
if (_amount < 0) exitWith {};
if (!([str(_amount)] call TON_fnc_isnumber)) exitWith {hint "Apenas numeros!"};
if (_amount < 100 && player getVariable "cash" > 20000000) exitWith {hint "Trava de Segurança"}; //Temp fix for something.

if (_amount > 0) then {
	_check = [2, _amount] call Client_fnc_checkMoney;
	if (_check) then {
	//	_bank = player getVariable "bank";
	//	_cash = player getVariable "cash";
		
	//	[_bank, _amount, 0, 0] call ClientModules_fnc_atmRefresh;
	//	[_cash, _amount, 1, 1] call ClientModules_fnc_atmRefresh;
	
		[_amount] call Client_fnc_removeBank;
		[_amount] call Client_fnc_addCash;
		hint "Dinheiro retirado com sucesso!";
		
	} else {
		hint "Você não tem o valor necessário!";
	};
} else {
	hint "Coloque um valor maior do que $0!";
};