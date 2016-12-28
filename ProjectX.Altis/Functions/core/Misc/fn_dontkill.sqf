/*private["_unit","_damage","_source"];


	if (player _unit == _unit) then
		{
			if ( _source isKindOf "RPF_ownedFurniture") then
			{
				diag_log "Não funcionou.";
			}
			else
			{
				_isVehicle = player _source;
				if (_isVehicle isKindOf "RPF_ownedFurniture") then
				{
					_damage = 0.9;
					_damageHandle = false;
					hint "Funcionou!";
				//	[[player,"amovppnemstpsraswrfldnon"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
					player setDamage 0.9;
				};
			};
	};*/