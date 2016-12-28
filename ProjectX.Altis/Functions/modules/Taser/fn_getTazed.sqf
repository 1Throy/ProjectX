/*
Author: Throy
*/
		
	player playmovenow "DeadState";
	disableUserInput true;
	//player setVariable ["tazed", true];
	sleep 10;
		
	player allowDamage false;
	player setFatigue 1;
	disableUserInput false;
	//player setVariable ["tazed", false];
	[player,""] remoteExecCall ["client_fnc_animSync"];
