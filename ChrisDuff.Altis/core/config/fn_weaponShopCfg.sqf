#include <macro.h>
/*
  File: fn_weaponShopCfg.sqf
  Author: Bryan "Tonic" Boardwine
  
  Description:
  Master configuration file for the weapon shops.
  
  Return:
  String: Close the menu
  Array: 
  [Shop Name,
  [ //Array of items to add to the store
    [classname,Custom Name (set nil for default),price]
  ]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
  case "cop_basic":
      {
            switch(true) do
            {
                  case (playerSide != west): {"Vous n'êtes pas Gendarme"};
                  default
                  {
                        ["Equipement Gendarmerie",
                              [
                                    ["DDOPP_X26","Tazer",3000],
                                    ["DDOPP_1Rnd_X26","Recharge Tazer",250],
                                    ["FirstAidKit",nil,500],
                                    ["ToolKit",nil,0],
                                    ["ItemGPS",nil,0],
                                    ["ItemCompass",nil,0],
                                    ["ItemRadio","Téléphone",100],
                                    ["NVGoggles_OPFOR",nil,0],
                                    ["Rangefinder",nil,0],
                                    ["ItemMap",nil,0],
                                    ["MiniGrenade","Flashbang",0],
                                    ["SmokeShell","Fumigène Blanche",0],
                                    ["SmokeShellRed","Fumigène Rouge",0],
                                    ["SmokeShellGreen","Fumigène Verte",0],
                                    ["SmokeShellPurple","Fumigène Violet",0],
                                    ["SmokeShellBlue","Fumigène Bleu",0],
                                    ["SmokeShellOrange","Fumigène Orange",0],
                                    ["SmokeShellYellow","Gaz Lacrimo",0]
                              ]
                        ];
                  };
            };
      };

      case "cop_patrol":
      {
            switch(true) do
            {
                  case (playerside !=west):{"Vous n'êtes pas Policier !"};
                  case (__GETC__(life_coplevel) == 0): {"Vous n'êtes pas un officier inscrit sur la liste!"};
                  case (__GETC__(life_coplevel) == 1):
                  {
                        ["Armurerie Adjoint",
                        [
                        ["optic_ACO_grn_smg",nil,0],
                        ["SMG_02_F","Sting 9mm",0],
                        ["30Rnd_9x21_Mag",0]
                        ]
                        ];
                  };
                  case (__GETC__(life_coplevel) >= 2):
                  {
                        ["Armurerie Brigadier",
                              [
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0],
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                              ["R3F_Famas_F1_HG",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 3):
                  {
                        ["Armurerie Adjudant",
                              [
                              ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_Aco","Viseur Aco",0],
                              ["optic_SOS","Sos",500],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_LAMPE_SURB",nil,0],
                              ["acc_flashlight",nil,0],
                              ["acc_pointer_IR",nil,0], 
                        ["R3F_POINTEUR_SURB",nil,0],              
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                              ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_10Rnd_762x51_FRF2",nil,0]
                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 4):
                  {
                        ["Armurerie Major",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_LAMPE_SURB",nil,0],
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],                      
                        ["arifle_MX_SW_Black_F",nil,0],                       
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],   
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_10Rnd_762x51_FRF2",nil,0]
                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 5):
                  {
                        ["Armurerie Lieutenant",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                        ["R3F_SILENCIEUX_FAMAS",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_G2_M203",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                              ["arifle_mas_hk416_m203",nil,0],
                              ["30Rnd_mas_556x45_Stanag",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        ["arifle_MX_SW_Black_F",nil,0],
                        
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],
                        
                        
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["srifle_mas_m110",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0]
                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 6):
                  {
                        ["Armurerie Capitaine",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                        ["R3F_SILENCIEUX_FAMAS",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_G2_M203",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                        ["R3F_SILENCIEUX_HK416",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        ["arifle_MX_SW_Black_F",nil,0],
                        
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["srifle_mas_m110",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 7):
                  {
                        ["Armurerie Commandant",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                        ["R3F_SILENCIEUX_FAMAS",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_G2_M203",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                        ["R3F_SILENCIEUX_HK416",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        
                        
                        ["arifle_MX_SW_Black_F",nil,0],
                        
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],
                        
                        
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                        
                        ["R3F_SILENCIEUX_HK417",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["srifle_mas_m110",nil,10000],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 8):
                  {
                        ["Armurerie Colonel",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                        ["R3F_SILENCIEUX_FAMAS",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_G2_M203",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                        ["R3F_SILENCIEUX_HK416",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        
                        
                        ["arifle_MX_SW_Black_F",nil,0],
                        
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],
                        
                        
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                        
                        ["R3F_SILENCIEUX_HK417",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_SILENCIEUX_FRF2",nil,7500],
                        ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["srifle_mas_m110",nil,10000],
                        ["muzzle_mas_snds_SM",nil,0],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0]

                              ]
                        ];
                  };
                  case (__GETC__(life_coplevel) == 9):
                  {
                        ["Armurerie Général",
                              [
                                    ["optic_mas_Holosight_blk","Viseur Holographique",0],
                              ["optic_mas_Arco_blk","Viseur Arco noir",0],
                              ["optic_MRCO","Viseur Mrco",0],
                              ["optic_SOS","Viseur Sos",0],
                              ["optic_Hamr","Viseur Rco",0],
                              ["optic_LRPS","Viseur Lrps",0],
                              ["optic_DMS","Viseur Dms",0],
                              ["optic_Aco","Viseur Aco",0],
                        ["R3F_EOTECH",nil,0],
                        ["R3F_AIMPOINT",nil,0],
                        ["R3F_J4",nil,0],
                        ["optic_mas_acog_eo",nil,0],
                        ["optic_mas_DMS",nil,1000],
                        ["R3F_J8_MILDOT",nil,0],
                        ["R3F_J10_MILDOT",nil,0],
                        ["R3F_OB50",nil,0],
                        ["optic_mas_zeiss_eo",nil,0],
                        ["acc_flashlight",nil,0],
                        ["acc_pointer_IR",nil,0],
                        ["R3F_LAMPE_SURB",nil,0],
                        ["R3F_PIRAT",nil,0], 
                              ["R3F_MP5SD","MP5",0],
                              ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                              ["R3F_M4S90",nil,0],
                              ["R3F_7Rnd_M4S90",nil,0],
                              ["R3F_Famas_F1",nil,0],
                        ["R3F_Famas_F1_HG",nil,0],
                        ["R3F_SILENCIEUX_FAMAS",nil,0],
                              ["R3F_25Rnd_556x45_FAMAS",nil,0],
                        ["R3F_Famas_G2",nil,0],
                        ["R3F_Famas_G2_HG",nil,0],
                        ["R3F_Famas_G2_M203",nil,0],
                        ["R3F_Famas_surb",nil,0],
                        ["R3F_Famas_surb_HG",nil,0],
                        ["R3F_30Rnd_556x45_FAMAS",nil,0],
                              ["R3F_HK416M",nil,0],
                        ["R3F_HK416M_HG",nil,0],
                        ["R3F_SILENCIEUX_HK416",nil,0],
                              ["R3F_30Rnd_556x45_HK416",nil,0],
                        ["arifle_MX_Black_F",nil,0],
                        
                        
                        ["arifle_MX_SW_Black_F",nil,0],
                        
                        ["30Rnd_65x39_caseless_mag",nil,0],
                        ["100Rnd_65x39_caseless_mag",nil,0],
                              ["R3F_HK417L",nil,0],
                              ["R3F_HK417M",nil,0],
                              ["R3F_HK417M_HG",nil,0],
                              ["R3F_HK417S_HG",nil,0],
                        
                        ["R3F_SILENCIEUX_HK417",nil,0],
                              ["R3F_20Rnd_762x51_HK417",nil,0],
                        ["1Rnd_SmokeOrange_Grenade_shell",nil,0],
                        ["1Rnd_SmokeBlue_Grenade_shell",nil,0],
                        ["1Rnd_SmokePurple_Grenade_shell",nil,0],
                        ["1Rnd_SmokeYellow_Grenade_shell",nil,0],
                        ["1Rnd_SmokeRed_Grenade_shell",nil,0],
                        ["R3F_Minimi_HG","Minimi",0],
                        ["R3F_200Rnd_556x45_MINIMI","Minutions Minimi",0],
                        ["R3F_FRF2",nil,0],
                        ["R3F_SILENCIEUX_FRF2",nil,7500],
                        ["R3F_10Rnd_762x51_FRF2",nil,0],
                        ["srifle_mas_m110",nil,10000],
                        ["muzzle_mas_snds_SM",nil,0],
                        ["20Rnd_mas_762x51_Stanag",nil,0],
                        ["R3F_PGM_Hecate_II_POLY",nil,25000],
                        ["R3F_7Rnd_127x99_PGM",nil,0]
                              ]
                        ];
                  };
            };
      };


  case "med_basic":
  {
    switch (true) do 
    {
      case (playerSide != independent): {"Vous n'êtes pas Médecin"};
      default {
        ["Equipements Médecin",
          [
            ["civ_tenue_Samu",nil,0],
            ["ItemGPS",nil,100],
            ["ItemRadio","Téléphone",100],
            ["Binocular",nil,150],
            ["ToolKit",nil,250],
            ["FirstAidKit",nil,150],
            ["Medikit",nil,500],
            ["NVGoggles_INDEP",nil,1200],
            ["B_FieldPack_ocamo",nil,3000]
          ]
        ];
      };
    };
  };
  
  case "rebel":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_rebel): {"Vous n'avez pas l'entrainement rebelle"};
      default
      {
        ["Mohammed's Jihadi Shop",
          [
            ["ItemGPS",nil,250],
            ["ItemCompass",nil,50],
            ["ItemRadio","Téléphone",250],
            ["NVGoggles",nil,850],
            ["ItemMap",nil,15],
            ["SmokeShell","Fumigène Blanche",200],
            ["SmokeShellRed","Fumigène Rouge",270],
            ["SmokeShellGreen","Fumigène Verte",270],
            ["SmokeShellPurple","Fumigène Violet",270],
            ["SmokeShellBlue","Fumigène Bleu",270],
            ["SmokeShellOrange","Fumigène Orange",270],
            ["arifle_mas_bizon",nil,100000],
            ["64Rnd_mas_9x18_mag",nil,275],
            ["srifle_DMR_01_F",nil,50000],
            ["10Rnd_762x51_Mag",nil,500],
            ["arifle_SDAR_F",nil,20000],
            ["30Rnd_556x45_Stanag",nil,300],
            ["optic_ACO_grn",nil,3500],
            ["optic_Holosight",nil,3600],
            ["acc_flashlight",nil,1000],
            ["optic_mas_Hamr_camo",nil,5500],
            ["arifle_mas_akm","AK-M",100000],
            ["arifle_mas_akms","AK-MS",100000],
            ["30Rnd_mas_762x39_mag","Munition AK-M/S",2000],
            ["arifle_Katiba_F",nil,100000],
            ["30Rnd_65x39_caseless_green",nil,275],
            ["arifle_mas_aks74","AK-S",30000],
            ["arifle_mas_ak_74m_h",nil,35000],
            ["30Rnd_mas_545x39_mag","Munition AK",2000],
            ["srifle_mas_svd","Dragunov",500000],
            ["10Rnd_mas_762x54_mag","Munition Dragunov",2000],
            ["arifle_mas_m70","Zastava Crosse",700000],
            ["arifle_mas_m70ab","Zastava Sans Crosse",700000],
            ["30Rnd_mas_762x39_mag","Munition Zastava",2000],
            ["LMG_mas_rpk_F","RPK",350000],
            ["30Rnd_mas_545x39_mag","Munition RPK",2000],
            ["hgun_mas_mak_F","Makarov",6500],
            ["8Rnd_mas_9x18_Mag","Munition Makarov",800],
            ["optic_MRD","Viseur Beige",2500],
            ["optic_Yorris","Viseur Noir",2500],
            ["optic_Aco","ACO Rouge",2500],
            ["optic_mas_aim","Point Rouge",30000],
            ["optic_mas_Arco_blk","Arco",20000],
            ["optic_MRCO","Mrco",16500],
            ["optic_mas_pso_nv_eo","Pso Holo",16500],
            ["optic_mas_pso_nv_eo","Pso Holo",20500],
            ["optic_SOS","Sos",38000],
            ["acc_flashlight",nil,1500],
            ["acc_pointer_IR",nil,7500],
            
            //Donateur
            ["srifle_mas_m24_d",240000],
            ["5Rnd_mas_762x51_Stanag","Munition M-24",3800],
            ["arifle_mas_mk16","Scar-LS",100000],              
            ["30Rnd_mas_556x45_Stanag","Munition Scar-LS",2000],    
            ["LMG_mas_M249a_F","M249",450000],              
            ["200Rnd_mas_556x45_Stanag","Munition M249",15000],
            ["optic_Hamr","Rco",4000],
            ["optic_LRPS","Lrps",20000],
            ["optic_mas_acog_eo","Acog Holo",5000],

            //Donateur

            ["arifle_mas_ak_74m_h",nil,75000], //AK74M
            ["arifle_mas_aks74u",nil,75000], // AK74U
            ["30Rnd_mas_545x39_mag",nil,1250],
            ["arifle_mas_bizon",nil,60000],
            ["64Rnd_mas_9x18_mag",nil,5000],
            ["mas_launch_RPG7_F",nil,945000], // RPG7
            ["mas_PG7V",nil,63500], // MUNITIONS RPG7
            ["LMG_mas_pkm_F_h",nil,220000], // PKM
            ["100Rnd_mas_762x54_T_mag",nil,5000], // MUNITIONS PKM
            ["srifle_mas_ksvk",nil,410000], // SNIPER KSVK
            ["5Rnd_mas_127x108_mag",nil,8575], // MUNITIONS SNIPER KSVK
            ["optic_mas_pso_nv","Pso Holo",30500]
          ]
        ];
      };
    };
  };
  
  case "gun":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      case (!license_civ_gun): {"Vous n'avez pas le permis port d'armes"};
      default
      {
        ["Armurerie",
          [
            ["hgun_Rook40_F",nil,6500],
            ["hgun_Pistol_heavy_02_F",nil,9850],
            ["hgun_ACPC2_F",nil,11500],
            ["hgun_PDW2000_F",nil,20000],
            ["optic_ACO_grn_smg",nil,2500],
            ["V_Rangemaster_belt",nil,4900],
            ["16Rnd_9x21_Mag",nil,25],
            ["9Rnd_45ACP_Mag",nil,45],
            ["6Rnd_45ACP_Cylinder",nil,50],
            ["30Rnd_9x21_Mag",nil,75],
            ["NVGoggles",nil,2000]
          ]
        ];
      };
    };
  };
  
  case "gang":
  {
    switch(true) do
    {
      case (playerSide != civilian): {"Vous n'êtes pas civil !"};
      default
      {
        ["Hideout Armament",
          [
            ["hgun_Rook40_F",nil,1500],
            ["hgun_Pistol_heavy_02_F",nil,2500],
            ["hgun_ACPC2_F",nil,4500],
            ["hgun_PDW2000_F",nil,9500],
            ["optic_ACO_grn_smg",nil,950],
            ["V_Rangemaster_belt",nil,1900],
            ["16Rnd_9x21_Mag",nil,25],
            ["9Rnd_45ACP_Mag",nil,45],
            ["6Rnd_45ACP_Cylinder",nil,50],
            ["30Rnd_9x21_Mag",nil,75]
          ]
        ];
      };
    };
  };
  
  case "genstore":
  {
    ["Magasin Général",
      [
        ["Binocular",nil,150],
        ["ItemRadio","Téléphone",100],
        ["ItemGPS",nil,100],
        ["ToolKit",nil,250],
        ["FirstAidKit",nil,150],
        ["NVGoggles",nil,1000]
      ]
    ];
  };
};