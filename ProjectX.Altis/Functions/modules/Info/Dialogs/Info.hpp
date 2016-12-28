class Info
{
	idd = 1013;
	class controls 
	{

class CloseB: client_RscButtonMenu
{
	idc = 1600;
	onButtonClick = "closeDialog 0;";

	text = "Fechar"; //--- ToDo: Localize;
	x = 0.6625;
	y = 0.56;
	w = 0.0875;
	h = 0.04;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0,0,0,0.8};
};
class background1: IGUIBack
{
	idc = 2200;

	x = 0.25;
	y = 0.24;
	w = 0.55;
	h = 0.38;
};
class RscListbox_1500: RscListBox
{
	idc = 1500;

	x = 0.5375;
	y = 0.32;
	w = 0.2375;
	h = 0.22;
};
class text_l: RscText
{
	idc = 1000;

	text = "Licenças"; //--- ToDo: Localize;
	x = 0.5375;
	y = 0.24;
	w = 0.125;
	h = 0.08;
};
class text_info: RscText
{
	idc = 1001;

	text = "Informações"; //--- ToDo: Localize;
	x = 0.2625;
	y = 0.24;
	w = 0.175;
	h = 0.08;
};
class RscFrame_1800: RscText
{
	idc = 1800;
	text = "";
	x = 0.275;
	y = 0.4;
	w = 0.1625;
	h = 0.04;
};
class RscFrame_1801: RscText
{
	idc = 1801;
	text = "";
	x = 0.275;
	y = 0.54;
	w = 0.1625;
	h = 0.04;
};
class text_b: RscText
{
	idc = 1002;

	text = "Banco"; //--- ToDo: Localize;
	x = 0.2625;
	y = 0.34;
	w = 0.1;
	h = 0.04;
};
class text_d: RscText
{
	idc = 1003;

	text = "Dinheiro"; //--- ToDo: Localize;
	x = 0.2625;
	y = 0.48;
	w = 0.15;
	h = 0.04;
};

	};
};