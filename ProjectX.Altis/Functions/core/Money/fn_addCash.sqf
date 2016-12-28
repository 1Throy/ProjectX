/*
Author: Kerkkoh
First Edit: 23.11.2015

params ["_amount"];

_bankAccount = player getVariable "bankAccount";

[player, _bankAccount, _amount, 1, 1] remoteExecCall ["Server_fnc_replicateMoney", 2]; */

private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "cash";
_new = _old + _amount;
if(_new < 0) then { _new = 0; };
if(_amount > 1000) then {
	[player, "cash", _new] remoteExec ["Server_fnc_setVariable",2];
};

player setVariable ["cash", _new, false];