class interaction
{
	idd = 1014;
	class controls 
	{
		/*
		class RscFrame_1800: RscText
		{
			idc = 1800;
			x = 0.419792 * safezoneW + safezoneX;
			y = 0.247099 * safezoneH + safezoneY;
			w = 0.1375 * safezoneW;
			h = 0.46182 * safezoneH;
			colorBackground[] = {0,0,0,0.8};
		};
		class RscText_1000: RscText
		{
			idc = 1000;
			text = "RLP"; //--- ToDo: Localize;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.258094 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
		};
		class RscButton_1600: RscButton
		{
			idc = 1600;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.302077 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [0] call Client_fnc_interactionAction;
		};
		class RscButton_1601: RscButton
		{
			idc = 1601;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.34606 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [1] call Client_fnc_interactionAction;
		};
		class RscButton_1602: RscButton
		{
			idc = 1602;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.390043 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [2] call Client_fnc_interactionAction;
		};
		class RscButton_1603: RscButton
		{
			idc = 1603;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.434026 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [3] call Client_fnc_interactionAction;
		};
		class RscButton_1604: RscButton
		{
			idc = 1604;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.478009 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [4] call Client_fnc_interactionAction;
		};
		class RscButton_1605: RscButton
		{
			idc = 1605;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.521991 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [5] call Client_fnc_interactionAction;
		};
		class RscButton_1606: RscButton
		{
			idc = 1606;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.565974 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [6] call Client_fnc_interactionAction;
		};
		class RscButton_1607: RscButton
		{
			idc = 1607;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.609957 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [7] call Client_fnc_interactionAction;
		};
		class RscButton_1608: RscButton
		{
			idc = 1608;
			x = 0.43125 * safezoneW + safezoneX;
			y = 0.65394 * safezoneH + safezoneY;
			w = 0.114583 * safezoneW;
			h = 0.0329871 * safezoneH;
			action = [8] call Client_fnc_interactionAction;
		}; */
		
		class RscText_1000: RscText
{
	idc = 1000;

	text = "Real Life Project"; //--- ToDo: Localize;
	x = 0.4;
	y = 0.12;
	w = 0.2625;
	h = 0.08;
};
class RscButton_1600: RscButton
{
	idc = 1600;
	action = "[0] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.2172;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1601: RscButton
{
	idc = 1601;
	action = "[1] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.28;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1602: RscButton
{
	idc = 1602;
	action = "[2] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.3428;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1603: RscButton
{
	idc = 1603;
	action = "[3] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.4056;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1604: RscButton
{
	idc = 1604;
	action = "[4] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.4684;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1605: RscButton
{
	idc = 1605;
	action = "[5] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.5316;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1606: RscButton
{
	idc = 1606;
	action = "[6] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.5944;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1607: RscButton
{
	idc = 1607;
	action = "[7] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.6572;
	w = 0.196428;
	h = 0.0471244;
};
class RscButton_1608: RscButton
{
	idc = 1608;
	action = "[8] call Client_fnc_interactionAction";

	x = 0.38225;
	y = 0.72;
	w = 0.196428;
	h = 0.0471244;
};

	};
};