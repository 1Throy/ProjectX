/*
Author: Kerkkoh
First Edit: 23.11.2015
*/
/*
params ["_amount"];

_bankAccount = player getVariable "bankAccount";

[player, _bankAccount, _amount, 1, 0] remoteExecCall ["Server_fnc_replicateMoney", 2]; */

private ["_old", "_new"];
params ["_amount"];
_old = player getVariable "bank";
_new = _old + _amount;
player setVariable ["bank", _new, false];
[player, "bank", _new] remoteExec ["Server_fnc_setVariable",2];