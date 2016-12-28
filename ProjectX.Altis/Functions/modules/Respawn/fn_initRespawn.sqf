//player addEventHandler["Respawn", {_this call client_fnc_startFresh}];
player addEventHandler["Killed", {_this spawn client_fnc_onPlayerKilled}];