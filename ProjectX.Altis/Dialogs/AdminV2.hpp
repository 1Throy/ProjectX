class AdminV2
{
	idd = 7777;
	class controls 
	{
	class Background_2200: IGUIBack
	{
		idc = 2200;
		x = 0.2;
		y = 0.24;
		w = 0.225;
		h = 0.3;
	};
	class godmodbtn_1600: client_RscButtonMenu
	{
		idc = 1600;
		text = "GodMode"; //--- ToDo: Localize;
		onButtonClick = "[] spawn client_fnc_godmode;";
		x = 0.2375;
		y = 0.28;
		w = 0.15;
		h = 0.06;
	};
	class tpmap_1601: client_RscButtonMenu
	{
		idc = 1601;
		text = "TP MAP"; //--- ToDo: Localize;
		onButtonClick = "[] spawn client_fnc_tpmap;";
		x = 0.2375;
		y = 0.36;
		w = 0.15;
		h = 0.06;
	};
	class curar_1602: client_RscButtonMenu
	{
		idc = 1602;
		text = "Curar"; //--- ToDo: Localize;
		onButtonClick = "[] spawn client_fnc_curar;";
		x = 0.2375;
		y = 0.44;
		w = 0.15;
		h = 0.06;
	};
	};
};