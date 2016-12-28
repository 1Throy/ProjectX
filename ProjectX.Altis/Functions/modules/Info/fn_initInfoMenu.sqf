/*
Author: Throy
*/

_menuItems = [
	[
		["alive player"],
		["Informações", "[] call ClientModules_fnc_hintInfo"]
	]
];
{
	RPF_InteractionMenuItems pushBack _x;
}forEach _menuItems;
