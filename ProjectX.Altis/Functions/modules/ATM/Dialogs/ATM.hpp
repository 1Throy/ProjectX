class ATM
{
	idd = 1015;
	class controls 
	{		
class RscPicture: RscPicture
{
	idc = 1200;
	text = "\RPF_General\data\atm.paa";
	x = -0.0125;
	y = -0.16;
	w = 1.05;
	h = 1.32;
};
class RscText_1002: RscText  // Banco
{ 
	idc = 1002;
	text = "";
	x = 0.5;
	y = 0.2;
	w = 0.2375;
	h = 0.06;
};
class RscText_1004: RscText // Carteira
{
	idc = 1004;
	text = "";
	x = 0.5;
	y = 0.3;
	w = 0.2375;
	h = 0.06;
};
class RscEdit_1400: RscEdit // Amount
{
	idc = 1400;
	x = 0.2375;
	y = 0.46;
	w = 0.225;
	h = 0.06;
};
class RscButton_1600: client_RscButtonMenu  // Sacar
{
	idc = 1600;
	x = 0.52433;
	y = 0.38933;
	w = 0.2;
	h = 0.06;
	onButtonClick = "[] call ClientModules_fnc_atmWithdraw;";
};
class RscButton_1601: client_RscButtonMenu // Depositar
{
	idc = 1601;
	x = 0.525;
	y = 0.46;
	w = 0.2;
	h = 0.06;
	onButtonClick = "[] call ClientModules_fnc_atmDeposit;"; //--- ToDo: Localize;
};
class RscEdit_1401: RscEdit
{
	idc = 1401;
	x = 0.475;
	y = 0.78;
	w = 0.2625;
	h = 0.08;
};
class RscEdit_1402: RscEdit
{
	idc = 1402;
	x = 0.475;
	y = 0.68;
	w = 0.2625;
	h = 0.08;
};
class RscButton_1602: client_RscButtonMenu // Transferir
{
	idc = 1602;
	x = 0.525;
	y = 0.9;
	w = 0.2;
	h = 0.06;
	onButtonClick = "[] call ClientModules_fnc_atmTransfer;"; //--- ToDo: Localize;
};
class RscButton_1604: client_RscButtonMenu // Fechar
{
	idc = 1604;
	x = 0.269978;
	y = 0.89814;
	w = 0.2;
	h = 0.06;
	onButtonClick = "closeDialog 0;"; //--- ToDo: Localize;
};
	};
};