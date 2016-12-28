/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	_class = _x select 0;
	if (_class == _item) then {
		_thirstAmount = _x select 1;
		RLP_thirst = RLP_thirst - _thirstAmount;
	};
}forEach RPF_Drinkables;

if (RLP_thirst < 0) then {
	RLP_thirst = 0;
};

false