/*
File: fn_gatherCrack.sqf

Description:
Stealing Crack
*/
private["_sum"];
_sum = ["cracku",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
life_action_in_use = true;
titleText["Ottenendo gli elementi...","PLAIN"];
titleFadeOut 5;
sleep 5;
if(([true,"cracku",1] call life_fnc_handleInv)) then
{
playSound "bag"; // this only if you want the sound for the bag when you gather it 
titleText["Elementi ottenuti.","PLAIN"];
};
};

life_action_in_use = false;