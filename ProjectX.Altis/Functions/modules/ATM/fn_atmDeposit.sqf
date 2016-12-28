/*
Author: Kerkkoh
Edit: Throy
*/
//_amount = round (parseNumber (ctrlText 1400));
_amount = parseNumber (ctrlText 1400);
closeDialog 0;

//Algumas verificacoes
if (_amount > 999999) exitWith {hint "Precisa ser menor que 1.000.000";};
if (_amount < 0) exitWith {};
if (!([str(_amount)] call TON_fnc_isnumber)) exitWith {hint "Apenas numeros!"};

if (_amount > 0) then {
	_check = [1, _amount] call Client_fnc_checkMoney;
	if (_check) then {
		//_bank = player getVariable "bank";
		//_cash = player getVariable "cash";
		
		//[_cash, _amount, 0, 1] call ClientModules_fnc_atmRefresh;
		//[_bank, _amount, 1, 0] call ClientModules_fnc_atmRefresh;
		
		[_amount] call Client_fnc_removeCash;
		[_amount] call Client_fnc_addBank;
		hint "Dinheiro depositado com sucesso!";
		
		
	} else {
		hint "Você não tem o valor necessário!";
	};
} else {
	hint "Coloque um valor maior do que $0!";
};