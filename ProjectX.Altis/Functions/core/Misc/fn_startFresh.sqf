/*
Author: Throy
*/

// Remover Seus itens
removeAllItems player;
removeAllContainers player;
removeAllWeapons player;
removeAllAssignedItems player;
removeVest player;
removeBackpack player;
removeHeadgear player;

// Add itens
player addUniform "U_C_Poloshirt_blue";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";

//Local do Respawn
player setpos [16736.5,12502.5,0.00124454];

//Deletar a camera
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

hint "Não se esqueça da Regra NLR!!";

closeDialog 0;