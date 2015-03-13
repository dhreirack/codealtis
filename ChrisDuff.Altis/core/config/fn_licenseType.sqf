/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; //Permis de conduire 
			case "boat": {_var = "license_civ_boat"}; //Permis de Bateaux 
			case "pilot": {_var = "license_civ_air"}; //License de Pilote
			case "gun": {_var = "license_civ_gun"}; //License d'arme à feux 
			case "dive": {_var = "license_civ_dive"}; //License de Plongé
			case "oil": {_var = "license_civ_oil"}; //Traitement du Pétrole 
			case "cair": {_var = "license_cop_air"}; //License de pilote
			case "swat": {_var = "license_cop_swat"}; //License du Swat
			case "cg": {_var = "license_cop_cg"}; //licence de garde-côte
			case "heroin": {_var = "license_civ_heroin"}; //Traitement de Heroin
			case "marijuana": {_var = "license_civ_marijuana"}; //Traitement de Marijuana
			case "medmarijuana": {_var = "license_civ_medmarijuana"}; //Medical Marijuana processing license cost
			case "gang": {_var = "license_civ_gang"}; //License de gang
			case "rebel": {_var = "license_civ_rebel"}; //License Rebelle
			case "truck":{_var = "license_civ_truck"}; //License de Camions
			case "diamond": {_var = "license_civ_diamond"}; //Traitement de Diamant
			case "salt": {_var = "license_civ_salt"}; //Traitement de Sel
			case "cocaine": {_var = "license_civ_coke"}; //Traitement de Cocaine
			case "sand": {_var = "license_civ_sand"}; //Traitement de Sable
			case "iron": {_var = "license_civ_iron"}; //Traitement du Fer
			case "copper": {_var = "license_civ_copper"}; //Traitement du Cuivre
			case "cement": {_var = "license_civ_cement"}; //Traitement du Ciment
			case "mair": {_var = "license_med_air"};
			case "home": {_var = "license_civ_home"}; //License de Popriéter
			case "presse": {_var = "license_civ_presse"}; //License de Presse
			case "dep": {_var = "license_civ_dep"};
			case "donateurarmes": {_var = "license_civ_donateurarmes"};
			case "donateurvehicules": {_var = "license_civ_donateurvehicules"};
			case "donateurcoparmes": {_var = "license_cop_donateurcoparmes"};
			case "donateurcopvehicules": {_var = "license_cop_donateurcopvehicules"};
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; //Permis de conduire 
			case "license_civ_boat": {_var = "boat"}; //Permis de Bateaux 
			case "license_civ_air": {_var = "pilot"}; //License de Pilote
			case "license_civ_gun": {_var = "gun"}; //License d'arme à feux 
			case "license_civ_dive": {_var = "dive"}; //License de Plongé
			case "license_civ_oil": {_var = "oil"}; //Traitement du Pétrole
			case "license_cop_air": {_var = "cair"}; //Traitement du Pétrole
			case "license_cop_swat": {_var = "swat"}; //License du Swat
			case "license_cop_cg": {_var = "cg"}; //License du Garde-côte
			case "license_civ_heroin": {_var = "heroin"}; //Traitement de Heroin
			case "license_civ_marijuana": {_var = "marijuana"}; //Traitement de Marijuana
			case "license_civ_medmarijuana": {_var = "medmarijuana"}; //Medical Marijuana processing license cost
			case "license_civ_gang": {_var = "gang"}; //License de gang
			case "license_civ_rebel": {_var = "rebel"}; //License Rebelle
			case "license_civ_truck":{_var = "truck"}; //License de Camions
			case "license_civ_diamond": {_var = "diamond"}; //Traitement de Diamant
			case "license_civ_salt": {_var = "salt"}; //Traitement de Sel
			case "license_civ_coke": {_var = "cocaine"}; //Traitement de Cocaine
			case "license_civ_sand": {_var = "sand"}; //Traitement de Sable
			case "license_civ_iron": {_var = "iron"}; //Traitement du Fer
			case "license_civ_copper": {_var = "copper"}; //Traitement du Cuivre
			case "license_civ_cement": {_var = "cement"}; //Traitement du Ciment
			case "license_med_air": {_var = "mair"};
			case "license_civ_home": {_var = "home"}; //License de Popriéter
			case "license_civ_presse": {_var = "presse"}; //License de Presse
			case "license_civ_dep": {_var = "dep"};
			case "license_civ_donateurarmes": {_var = "donateurarmes"};
			case "license_civ_donateurvehicules": {_var = "donateurvehicules"};
			case "license_cop_donateurcoparmes": {_var = "donateurcoparmes"};
			case "license_cop_donateurcopvehicules": {_var = "donateurcopvehicules"};
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;