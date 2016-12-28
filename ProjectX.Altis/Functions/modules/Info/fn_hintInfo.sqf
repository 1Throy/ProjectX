/*
Author: Throy
*/
createDialog "Info";

_bank = str (player getVariable "bank"); 
ctrlSetText [1800, _bank];

_cash = str (player getVariable "cash"); 
ctrlSetText [1801, _cash];
