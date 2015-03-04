#include <macro.h>

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
                  case (__GETC__(life_donatorlevel) == 1):
                  {
                        ["Equipement Gendarmerie",
                        ["arifle_mas_bizon",nil,60000],
                        ["64Rnd_mas_9x18_mag",nil,5000],
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
                  case (__GETC__(life_coplevel) >= 0):
                  case (__GETC__(life_donatorlevel) == 1):
                  {
                        ["Armurerie Dontaor",
                        ["R3F_MP5SD","MP5",0],
                        ["R3F_30Rnd_9x19_MP5","Chargeur MP5",0],
                        ]
                        ];
                  };
                  
                  };
            };
      };


  case "med_basic":
  {
    switch (true) do 
    {
      case (playerSide != independent): {"Vous n'êtes pas Médecin"};
      case (__GETC__(life_donatorlevel) == 1):
      {
        ["Equipements Médecin",
          [
            ["civ_tenue_Samu",nil,0],
            ["ItemGPS",nil,100],
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
      case (__GETC__(life_donatorlevel) == 1):
      {
        ["Mohammed's Jihadi Shop",
          [    
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
      case (__GETC__(life_donatorlevel) == 1):
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
      case (__GETC__(life_donatorlevel) == 1):
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
};