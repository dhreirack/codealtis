/*
    File: fn_licensePrice.sqf
    Author: Bryan "Tonic" Boardwine
    
    Description:
    Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
    case "driver": {500}; //Permis de conduire 
    case "boat": {1000}; //Permis de Bateaux 
    case "pilot": {25000}; //License de Pilotlot
    case "gun": {10000}; //License d'arme à feux 
    case "dive": {2000}; //License de Plongé
    case "oil": {10000}; //Traitement du Pétrole 
    case "cair": {15000}; //Cop Pilot License cost
    case "swat": {35000}; //License du Swat
    case "cg": {8000}; //Licence de garde-côte
    case "heroin": {25000}; //Traitement de Heroin
    case "marijuana": {19500}; //Traitement de Marijuana
    case "medmarijuana": {1500}; //Medical Marijuana processing license cost
    case "gang": {10000}; //License de gang
    case "rebel": {800000}; //License Rebelle
    case "truck": {20000}; //License de Camions
    case "diamond": {35000}; //Traitement de Diamant
    case "salt": {12000}; //Traitement de Sel
    case "cocaine": {30000}; //Traitement de Cocaine
    case "sand": {14500}; //Traitement de Sable
    case "iron": {9500}; //Traitement du Fer
    case "copper": {8000}; //Traitement du Cuivre
    case "cement": {6500}; //Traitement du Ciment
    case "mair": {15000};
    case "home": {75000}; //License de Popriéter
    case "presse": {500000}; //License de Presse
    case "dep": {50000};
};