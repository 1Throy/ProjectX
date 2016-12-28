/*
Author: Throy
*/

_money = "Land_Money_F" createVehicle position player;
_cash = player getVariable "cash";
_money setVariable ["money", _cash, true];
[_cash]call Client_fnc_removeCash;
