/*
Author: Kerkkoh
First Edit: 24.4.2016
*/

params ["_item"];

{
	_class = _x select 0;
	if (_class == _item) then {
		_hungerAmount = _x select 1;
		RLP_hunger = RLP_hunger - _hungerAmount;
	};
}forEach RPF_Edibles;

if (RLP_hunger < 0) then {
	RLP_hunger = 0;
};

false