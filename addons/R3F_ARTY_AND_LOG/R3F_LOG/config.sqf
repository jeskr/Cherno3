/****** TOW WITH VEHICLE  ******/

/**
 * List of class names of (ground or air) vehicles which can tow towables objects.
 */
R3F_LOG_CFG_remorqueurs =
[
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"Truck_01_base_F",
	"Truck_02_base_F",
	"Truck_03_base_F",
	"Wheeled_APC_F",
	"Tank_F",
	"Boat_Armed_01_base_F"
];

/**
 * List of class names of towables objects.
 */
R3F_LOG_CFG_objets_remorquables =
[
	"Hatchback_01_base_F",
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"UGV_01_base_F",
	"SDV_01_base_F",
	"Boat_Civil_01_base_F",
	"Boat_Armed_01_base_F",
	"Helicopter_Base_F",
	"Plane"
];

/****** LIFT WITH VEHICLE  ******/

/**
 * List of class names of air vehicles which can lift liftables objects.
 */
R3F_LOG_CFG_heliporteurs =
[
	"Helicopter_Base_F"
];

/**
 * List of class names of liftables objects.
 */
R3F_LOG_CFG_objets_heliportables =
[
	"Hatchback_01_base_F",
	"SUV_01_base_F",
	"Offroad_01_base_F",
	"Van_01_base_F",
	"MRAP_01_base_F",
	"MRAP_02_base_F",
	"MRAP_03_base_F",
	"UGV_01_base_F",
	"SDV_01_base_F",
	"Boat_Civil_01_base_F",
	"Boat_Armed_01_base_F"
];


/****** LOAD IN VEHICLE / CHARGER DANS LE VEHICULE ******/


/**
 * List of class names of (ground or air) vehicles which can transport transportables objects.
 * The second element of the arrays is the load capacity (in relation with the capacity cost of the objects).
 */
R3F_LOG_CFG_transporteurs =
[
	["Quadbike_01_base_F", 5],
	["UGV_01_base_F", 10],
	["Hatchback_01_base_F", 10],
	["SUV_01_base_F", 20],
	["Offroad_01_base_F", 30],
	["Van_01_base_F", 40],
	["MRAP_01_base_F", 20],
	["MRAP_02_base_F", 20],
	["MRAP_03_base_F", 20],
	["B_Truck_01_box_F", 150],
	["Truck_F", 75],
	["Wheeled_APC_F", 30],
	["Tank_F", 30],
	["Rubber_duck_base_F", 10],
	["Boat_Civil_01_base_F", 10],
	["Boat_Armed_01_base_F", 20],
	["Heli_Light_01_base_F", 10],
	["Heli_Light_02_base_F", 20],
	["I_Heli_light_03_base_F", 20],
	["Heli_Transport_01_base_F", 25],
	["Heli_Transport_02_base_F", 30],
	["B_Heli_Transport_03_base_F", 30],
	["Heli_Transport_04_base_F", 30],
	["Heli_Attack_01_base_F", 10],
	["Heli_Attack_02_base_F", 20],
	
	//CUP Wheeled
	
	     ["CUP_C_UAZ_Open_TK_CIV", 30],
         ["CUP_C_UAZ_Unarmed_TK_CIV", 30],
         ["CUP_O_UAZ_AGS30_CHDKZ", 15],
         ["CUP_O_UAZ_AGS30_RU", 15],
         ["CUP_O_UAZ_AGS30_TKA", 15],
         ["CUP_O_UAZ_MG_CHDKZ", 15],
         ["CUP_O_UAZ_MG_RU", 15],
         ["CUP_O_UAZ_MG_TKA", 15],
         ["CUP_O_UAZ_Open_CHDKZ", 15],
         ["CUP_O_UAZ_Open_RU", 15],
         ["CUP_O_UAZ_Open_TKA", 15],
         ["CUP_O_UAZ_SPG9_CHDKZ", 15],
         ["CUP_O_UAZ_SPG9_RU", 15],
         ["CUP_O_UAZ_SPG9_TKA", 15],
         ["CUP_O_UAZ_Unarmed_CHDKZ", 15],
         ["CUP_O_UAZ_Unarmed_RU", 15],
         ["CUP_O_UAZ_Unarmed_TKA", 15],
         ["CUP_B_UAZ_AGS30_ACR", 15],
         ["CUP_B_UAZ_AGS30_CDF", 15],
         ["CUP_B_UAZ_MG_ACR", 15],
         ["CUP_B_UAZ_MG_CDF", 15],
         ["CUP_B_UAZ_Open_ACR", 15],
         ["CUP_B_UAZ_Open_CDF", 15],
         ["CUP_B_UAZ_SPG9_ACR", 15],
         ["CUP_B_UAZ_SPG9_CDF", 15],
         ["CUP_B_UAZ_Unarmed_ACR", 15],
         ["CUP_B_UAZ_Unarmed_CDF", 15],
         ["CUP_I_UAZ_AGS30_UN", 15],
         ["CUP_I_UAZ_MG_UN", 15],
         ["CUP_I_UAZ_Open_UN", 15],
         ["CUP_I_UAZ_SPG9_UN", 15],
         ["CUP_I_UAZ_Unarmed_UN", 15],
         ["CUP_B_Ural_CDF", 80],
         ["CUP_B_Ural_Empty_CDF", 90],
         ["CUP_B_Ural_Open_CDF", 80],
         ["CUP_B_Ural_Reammo_CDF", 50],
         ["CUP_B_Ural_Refuel_CDF", 100],
         ["CUP_B_Ural_Repair_CDF", 50],
         ["CUP_B_Ural_ZU23_CDF", 15],
         ["CUP_O_Ural_CHDKZ", 15],
         ["CUP_O_Ural_Empty_CHDKZ", 80],
         ["CUP_O_Ural_Empty_RU", 60],
         ["CUP_O_Ural_Empty_SLA", 15],
         ["CUP_O_Ural_Empty_TKA", 15],
         ["CUP_O_Ural_Open_CHDKZ", 15],
         ["CUP_O_Ural_Open_RU", 15],
         ["CUP_O_Ural_Open_SLA", 15],
         ["CUP_O_Ural_Open_TKA", 15],
         ["CUP_O_Ural_RU", 15],
         ["CUP_O_Ural_Reammo_CHDKZ", 15],
         ["CUP_O_Ural_Reammo_RU", 15],
         ["CUP_O_Ural_Reammo_SLA", 15],
         ["CUP_O_Ural_Reammo_TKA", 15],
         ["CUP_O_Ural_Refuel_CHDKZ", 15],
         ["CUP_O_Ural_Refuel_RU", 15],
         ["CUP_O_Ural_Refuel_SLA", 15],
         ["CUP_O_Ural_Refuel_TKA", 15],
         ["CUP_O_Ural_Repair_CHDKZ", 15],
         ["CUP_O_Ural_Repair_RU", 15],
         ["CUP_O_Ural_Repair_SLA", 15],
         ["CUP_O_Ural_Repair_TKA", 15],
         ["CUP_O_Ural_SLA", 15],
         ["CUP_O_Ural_TKA", 15],
         ["CUP_O_Ural_ZU23_CHDKZ", 15],
         ["CUP_O_Ural_ZU23_RU", 15],
         ["CUP_O_Ural_ZU23_SLA", 15],
         ["CUP_O_Ural_ZU23_TKA", 15],
         ["CUP_O_Ural_ZU23_TKM", 15],
         ["CUP_C_Ural_Civ_01", 80],
         ["CUP_C_Ural_Civ_02", 15],
         ["CUP_C_Ural_Civ_03", 15],
         ["CUP_C_Ural_Open_Civ_01", 80],
         ["CUP_C_Ural_Open_Civ_02", 15],
         ["CUP_C_Ural_Open_Civ_03", 15],
         ["CUP_I_Ural_Empty_UN", 15],
         ["CUP_I_Ural_Reammo_UN", 15],
         ["CUP_I_Ural_Repair_UN", 15],
         ["CUP_I_Ural_UN", 90],
         ["CUP_I_Ural_ZU23_NAPA", 15],
         ["CUP_I_Ural_ZU23_TK_Gue", 15],
         ["CUP_C_Datsun", 15],
         ["CUP_C_Datsun_4seat", 15],
         ["CUP_C_Datsun_Covered", 15],
		 ["CUP_C_Datsun_Plain", 15],
		 ["CUP_C_Datsun_Tubeframe", 15],
		 ["CUP_I_Datsun_PK", 15],
		 ["CUP_I_Datsun_PK_Random", 15],
		 ["CUP_I_Datsun_PK_TK", 15],
		 ["CUP_I_Datsun_PK_TK_Random", 15],
		 ["CUP_O_Datsun_PK", 15],
		 ["CUP_O_Datsun_PK_Random", 15],
		 ["CUP_C_LR_Transport_CTK", 15],
		 ["CUP_B_M1030", 15],
		 ["CUP_BAF_Jackal2_GMG_D", 15],
		 ["CUP_BAF_Jackal2_GMG_W", 15],
		 ["CUP_BAF_Jackal2_L2A1_D", 15],
		 ["CUP_BAF_Jackal2_L2A1_W", 15],
		 ["CUP_B_Dingo_Des", 15],
		 ["CUP_B_Dingo_GL_Des", 15],
		 ["CUP_B_Dingo_GL_Wdl", 15],
		 ["CUP_B_Dingo_Wdl", 15],
		 ["CUP_B_HMMWV_AGS_GPK_ACR", 15],
		 ["CUP_B_HMMWV_Ambulance_ACR", 15],
		 ["CUP_B_HMMWV_Ambulance_USA", 15],
		 ["CUP_B_HMMWV_Ambulance_USMC", 15],
		 ["CUP_B_HMMWV_Avenger_USA", 15],
		 ["CUP_B_HMMWV_Avenger_USMC", 15],
		 ["CUP_B_HMMWV_Crows_M2_USA", 15],
		 ["CUP_B_HMMWV_Crows_MK19_USA", 15],
		 ["CUP_B_HMMWV_DSHKM_GPK_ACR", 15],
		 ["CUP_B_HMMWV_M1114_USMC", 15],
		 ["CUP_B_HMMWV_M2_GPK_ACR", 15],
		 ["CUP_B_HMMWV_M2_GPK_USA", 15],
		 ["CUP_B_HMMWV_M2_USA", 15],
		 ["CUP_B_HMMWV_M2_USMC", 15],
		 ["CUP_B_HMMWV_MK19_USA", 15],
		 ["CUP_B_HMMWV_MK19_USMC", 15],
		 ["CUP_B_HMMWV_SOV_USA", 15],
		 ["CUP_B_HMMWV_TOW_USA", 15],
		 ["CUP_B_HMMWV_TOW_USMC", 15],
		 ["CUP_B_HMMWV_Terminal_USA", 15],
		 ["CUP_B_HMMWV_Transport_USA", 30],
		 ["CUP_B_HMMWV_Unarmed_USA", 15],
		 ["CUP_B_HMMWV_Unarmed_USMC", 15],
		 ["CUP_B_LR_Ambulance_CZ_D", 15],
		 ["CUP_B_LR_Ambulance_CZ_W", 15],
		 ["CUP_B_LR_Ambulance_GB_D", 15],
		 ["CUP_B_LR_Ambulance_GB_W", 15],
		 ["CUP_B_LR_MG_CZ_W", 15],
		 ["CUP_B_LR_MG_GB_W", 15],
		 ["CUP_B_LR_Special_CZ_W", 15],
		 ["CUP_B_LR_Special_Des_CZ_D", 15],	
		 ["CUP_B_LR_Transport_CZ_D", 15],
		 ["CUP_B_LR_Transport_CZ_W", 15],
		 ["CUP_B_LR_Transport_GB_D", 15],
		 ["CUP_B_LR_Transport_GB_W", 15],
		 ["CUP_O_LR_Ambulance_TKA", 15],
		 ["CUP_O_LR_MG_TKA", 15],
		 ["CUP_O_LR_MG_TKM", 15],
		 ["CUP_O_LR_SPG9_TKA", 15],
		 ["CUP_O_LR_SPG9_TKM", 15],
		 ["CUP_O_LR_Transport_TKA", 15],
		 ["CUP_O_LR_Transport_TKM", 15],
		 ["CUP_I_LR_Transport_RACS", 15],
		 ["CUP_I_LR_MG_RACS", 15],
		 ["CUP_I_LR_Ambulance_RACS", 15],            
		 ["CUP_I_BRDM2_ATGM_NAPA", 15],
		 ["CUP_I_BRDM2_ATGM_TK_Gue", 15],
		 ["CUP_I_BRDM2_HQ_NAPA", 15],
 		 ["CUP_I_BRDM2_HQ_TK_Gue", 15],
		 ["CUP_I_BRDM2_HQ_UN", 15],
		 ["CUP_I_BRDM2_NAPA", 15],
		 ["CUP_I_BRDM2_TK_Gue", 15],
		 ["CUP_I_BRDM2_UN", 15],
		 ["CUP_O_BRDM2_ATGM_CHDKZ", 15],
		 ["CUP_O_BRDM2_ATGM_SLA", 15],
		["CUP_O_BRDM2_ATGM_TKA", 15],
		["CUP_O_BRDM2_CHDKZ", 15],
		["CUP_O_BRDM2_HQ_CHDKZ", 15],
		["CUP_O_BRDM2_HQ_SLA", 15],
		["CUP_O_BRDM2_HQ_TKA", 15],
		["CUP_O_BRDM2_SLA", 15],
		["CUP_O_BRDM2_TKA", 15],
		["CUP_B_BRDM2_ATGM_CDF", 15],
		["CUP_B_BRDM2_CDF", 15],
		["CUP_B_BRDM2_HQ_CDF", 15],
		["CUP_B_LAV25M240_USMC", 15],
		["CUP_B_LAV25_HQ_USMC", 15],
		["CUP_B_LAV25_USMC", 15],
		["CUP_B_BM21_CDF", 15],
		["CUP_O_BM21_CHDKZ", 15],
		["CUP_O_BM21_RU", 15],
		["CUP_O_BM21_SLA", 15],
		["CUP_O_BM21_TKA", 15],
		["CUP_O_BTR60_TK", 15],
		["CUP_O_BTR90_HQ_RU", 15],
		["CUP_O_BTR90_RU", 15],
		["CUP_C_Octavia_CIV", 15],
		["CUP_C_Skoda_Red_Civ", 15],
		["CUP_C_Skoda_White_Civ", 15],
		["CUP_C_Skoda_Blue_Civ", 15],
		["CUP_C_Skoda_Green_Civ", 15],
		["CUP_C_Golf4_red_Civ", 15],
		["CUP_C_Golf4_black_Civ", 15],
		["CUP_C_Golf4_yellow_Civ", 15],
		["CUP_C_Golf4_blue_Civ", 15],
		["CUP_C_Golf4_white_Civ", 15],
		["CUP_C_Golf4_green_Civ", 15],
		["CUP_C_Golf4_random_Civ", 15],
		["CUP_C_Golf4_whiteblood_Civ", 15],
		["CUP_C_Golf4_camo_Civ", 15],
		["CUP_C_Golf4_camodigital_Civ", 15],
		["CUP_C_Golf4_camodark_Civ", 15],
		["CUP_C_Golf4_reptile_Civ", 15],
		["CUP_C_Golf4_kitty_Civ", 15],
		["CUP_B_M1126_ICV_M2_Desert", 15],
		["CUP_B_M1126_ICV_M2_Desert_Slat", 15],
		["CUP_B_M1126_ICV_M2_Woodland", 15],
		["CUP_B_M1126_ICV_M2_Woodland_Slat", 15],
		["CUP_B_M1126_ICV_Mk19_Desert", 15],
		["CUP_B_M1126_ICV_Mk19_Desert_Slat", 15],
		["CUP_B_M1126_ICV_Mk19_Woodland", 15],
		["CUP_B_M1126_ICV_Mk19_Woodland_Slat", 15],
		["CUP_B_M1128_MGS_Desert", 15],
		["CUP_B_M1128_MGS_Desert_Slat", 15],
		["CUP_B_M1128_MGS_Woodland", 15],
		["CUP_B_M1128_MGS_Woodland_Slat", 15],
		["CUP_B_M1129_MC_MK19_Desert", 15],
		["CUP_B_M1129_MC_MK19_Desert_Slat", 15],
		["CUP_B_M1129_MC_MK19_Woodland", 15],
		["CUP_B_M1129_MC_MK19_Woodland_Slat", 15],
		["CUP_B_M1130_CV_M2_Desert", 15],
		["CUP_B_M1130_CV_M2_Desert_Slat", 15],
		["CUP_B_M1130_CV_M2_Woodland", 15],
		["CUP_B_M1130_CV_M2_Woodland_Slat", 15],
		["CUP_B_M1133_MEV_Desert", 15],
		["CUP_B_M1133_MEV_Desert_Slat", 15],
		["CUP_B_M1133_MEV_Woodland", 15],
		["CUP_B_M1133_MEV_Woodland_Slat", 15],
		["CUP_B_M1135_ATGMV_Desert", 15],
		["CUP_B_M1135_ATGMV_Desert_Slat", 15],
		["CUP_B_M1135_ATGMV_Woodland", 15],
		["CUP_B_M1135_ATGMV_Woodland_Slat", 15],
		["CUP_B_TowingTractor_USMC", 15],
		
		// Tracked
		
		["CUP_B_AAV_USMC", 30],
		["CUP_B_M113_Med_USA", 30],
		["CUP_B_M113_USA", 30],
		["CUP_I_M113_Med_RACS", 30],
		["CUP_I_M113_Med_UN", 30],
		["CUP_I_M113_RACS", 30],
		["CUP_I_M113_UN", 30],
		["CUP_O_M113_Med_TKA", 30],
		["CUP_O_M113_TKA", 30],
		["CUP_B_M163_USA", 30],
		["CUP_I_M163_RACS", 30],
		["CUP_B_M1A1_DES_USMC", 30],
		["CUP_B_M1A1_DES_US_Army", 30],
		["CUP_B_M1A1_Woodland_USMC", 30],
		["CUP_B_M1A1_Woodland_US_Army", 30],
		["CUP_B_M1A2_TUSK_MG_DES_USMC", 30],
		["CUP_B_M1A2_TUSK_MG_DES_US_Army", 30],
		["CUP_B_M1A2_TUSK_MG_USMC", 30],
		["CUP_B_M1A2_TUSK_MG_US_Army", 30],
		["CUP_B_M270_DPICM_USA", 45],
		["CUP_B_M270_DPICM_USMC", 45],
		["CUP_B_M270_HE_USA", 45],
		["CUP_B_M270_HE_USMC", 45],
		["CUP_B_M2Bradley_USA_D", 45],
		["CUP_B_M2Bradley_USA_W", 45],
		["CUP_B_M2A3Bradley_USA_D", 45],
		["CUP_B_M2A3Bradley_USA_W", 45],
		["CUP_I_T55_TK_GUE", 45],
		["CUP_O_T55_TK", 45],
		["CUP_O_T72_CHDKZ", 45],
		["CUP_O_T72_RU", 45],
		["CUP_O_T72_SLA", 45],
		["CUP_O_T72_TKA", 45],
		["CUP_B_T72_CDF", 45],
		["CUP_I_T72_NAPA", 45],
		["CUP_I_T72_RACS", 45],
		["CUP_B_ZSU23_CDF", 45],
		["CUP_O_ZSU23_ChDKZ", 45],
		["CUP_O_ZSU23_SLA", 45],
		["CUP_O_ZSU23_TK", 45],
		["CUP_T34_BASE", 45],
		["CUP_I_T34_NAPA", 45],
		["CUP_I_T34_TK_GUE", 45],
		["CUP_O_T34_TKA", 45],
		
		// Helis
		
		["CUP_B_AH1Z", 30],
		["CUP_B_AH1Z_7RndHydra", 30],
		["CUP_B_AH1Z_AT", 30],
		["CUP_B_AH1Z_Escort", 15],
		["CUP_B_AH1Z_NOAA", 15],
		["CUP_B_AH1Z_NoWeapons", 15],
		["CUP_B_AH1_AT_BAF", 15],
		["CUP_B_AH1_BAF", 15],
		["CUP_B_AH1_ES_BAF", 15],
		["CUP_B_AH1_MR_BAF", 15],
		["CUP_B_AH1_NO_BAF", 15],
		["CUP_B_AH64D_AT_USA", 30],
		["CUP_B_AH64D_ES_USA", 30],
		["CUP_B_AH64D_MR_USA", 30],
		["CUP_B_AH64D_NO_USA", 30],
		["CUP_B_AH64D_USA", 30],
		["CUP_B_AW159_Armed_BAF", 15],
		["CUP_B_AW159_Unarmed_BAF", 15],
		["CUP_B_CH47F_GB", 15],
		["CUP_B_CH47F_USA", 15],
		["CUP_B_CH53E_USMC", 15],
		["CUP_B_MH60S_FFV_USMC", 15],
		["CUP_B_MH60S_USMC", 15],
		["CUP_B_UH1Y_GUNSHIP_USMC", 30],
		["CUP_B_UH1Y_MEV_USMC", 15],
		["CUP_B_UH1Y_UNA_USMC", 15],
		["CUP_B_UH60L_FFV_US", 15],
		["CUP_B_UH60L_US", 30],
		["CUP_B_UH60L_Unarmed_FFV_MEV_US", 15],
		["CUP_B_UH60L_Unarmed_FFV_US", 15],
		["CUP_B_UH60L_Unarmed_US", 15],
		["CUP_I_UH60L_FFV_RACS", 15],
		["CUP_I_UH60L_RACS", 15],
		["CUP_I_UH60L_Unarmed_FFV_MEV_Racs", 15],
		["CUP_I_UH60L_Unarmed_FFV_Racs", 15],
		["CUP_I_UH60L_Unarmed_RACS", 15],
		["CUP_B_UH60M_FFV_US", 15],
		["CUP_B_UH60M_US", 15],
		["CUP_B_UH60M_Unarmed_FFV_MEV_US", 15],
		["CUP_B_UH60M_Unarmed_FFV_US", 15],
		["CUP_B_UH60M_Unarmed_US", 15],
		["CUP_O_Mi8_CHDKZ", 15],
		["CUP_O_Mi8_RU", 15],
		["CUP_O_Mi8_SLA_1", 15],
		["CUP_O_Mi8_SLA_2", 15],
		["CUP_O_Mi8_medevac_CHDKZ", 15],
		["CUP_O_Mi8_medevac_RU", 15],
		["CUP_B_Mi171Sh_ACR", 15],
		["CUP_B_Mi171Sh_Unarmed_ACR", 15],
		["CUP_B_Mi17_CDF", 15],
		["CUP_B_Mi17_medevac_CDF", 30],
		["CUP_I_Mi17_UN", 15],
		["CUP_O_Mi17_TK", 15],
		["CUP_C_Mi17_Civilian_RU", 15],
		["CUP_B_Mi24_D_CDF", 15],
		["CUP_I_Mi24_D_ION", 15],
		["CUP_I_Mi24_D_UN", 15],
		["CUP_O_Mi24_D_TK", 15],
		["CUP_O_Mi24_P_RU", 15],
		["CUP_O_Mi24_V_RU", 15],
		["CUP_B_Mi35_CZ", 15],
		["CUP_O_UH1H_TKA", 15],
		["CUP_I_UH1H_TK_GUE", 15],
		["CUP_B_UH1D_GER_KSK", 15],
		["CUP_B_UH1D_GER_KSK_DES", 15],
		["CUP_B_Merlin_HC3_GB", 15],
		["CUP_B_Merlin_HC3A_GB", 15],
		["CUP_B_AW159_Unarmed_GB", 15],
		["CUP_B_AW159_Hellfire_GB", 15],
		["CUP_B_AW159_Cannon_GB", 15],
		["CUP_B_SA330_Puma_HC1_BAF", 15],
		["CUP_B_SA330_Puma_HC2_BAF", 15],
		["CUP_I_SA330_Puma_HC1_RACS", 15],
		["CUP_I_SA330_Puma_HC2_RACS", 15],
		["CUP_O_KA50_SLA", 15],
		["CUP_O_KA50_AA_SLA", 15],
		["CUP_O_KA50_RU", 15],
		["CUP_O_KA50_AA_RU", 15],
		
		// Planes
		
		["CUP_C_C47_CIV", 15],
		["CUP_C_DC3_CIV", 90],
		["CUP_B_MV22_USMC", 80],
		["CUP_B_A10_AT_USA", 15],
		["CUP_B_A10_CAS_USA", 15],
		["CUP_B_Su25_CDF", 15],
		["CUP_O_Su25_RU_1", 15],
		["CUP_O_Su25_RU_2", 15],
		["CUP_O_Su25_RU_3", 15],
		["CUP_O_Su25_SLA", 15],
		["CUP_O_Su25_TKA", 15],
		["CUP_B_C130J_USMC", 90],
		["CUP_B_C130J_Cargo_USMC", 200],
		["CUP_B_C130J_GB", 150],
		["CUP_B_C130J_Cargo_GB", 150],
		["CUP_I_C130J_AAF", 140],
		["CUP_I_C130J_Cargo_AAF", 140],
		["CUP_I_C130J_RACS", 140],
		["CUP_I_C130J_Cargo_RACS", 140],
		["CUP_O_C130J_TKA", 140],
		["CUP_O_C130J_Cargo_TKA", 140],
		["CUP_B_F35B_AA_USMC", 15],
		["CUP_B_F35B_CAS_USMC", 15],
		["CUP_B_F35B_LGB_USMC", 15],
		["CUP_B_F35B_AA_BAF", 15],
		["CUP_B_F35B_CAS_BAF", 15],
		["CUP_B_F35B_LGB_BAF", 15],
		["CUP_B_AV8B_CAP_USMC", 15],
		["CUP_B_AV8B_MK82_USMC", 15],
		["CUP_B_AV8B_GBU12_USMC", 15],
		["CUP_B_AV8B_AGM_USMC", 15],
		["CUP_I_AV8B_CAP_AAF", 15],
		["CUP_I_AV8B_MK82_AAF", 15],
		["CUP_I_AV8B_GBU12_AAF", 15],
		["CUP_I_AV8B_AGM_AAF", 15],
		["CUP_B_GR9_CAP_GB", 15],
		["CUP_B_GR9_MK82_GB", 15],
		["CUP_B_GR9_GBU12_GB", 15],
		["CUP_B_GR9_AGM_GB", 15],
		["CUP_O_SU34_LGB_RU", 15],
		["CUP_O_SU34_LGB_SLA", 15],
		["CUP_O_SU34_AGM_RU", 15],
		["CUP_O_SU34_AGM_SLA", 15],
		["CUP_I_SU34_LGB_AAF", 15],
		["CUP_I_SU34_AGM_AAF", 15],
		["CUP_B_SU34_LGB_CDF", 15],
		["CUP_B_SU34_AGM_CDF", 15],
		
		// Boats
		
		 ["CUP_C_Fishing_Boat_Chernarus", 15],
         ["CUP_B_RHIB2Turret_USMC", 15],
         ["CUP_B_RHIB_USMC", 15],
         ["CUP_B_RHIB2Turret_RACS", 15],
         ["CUP_B_RHIB_RACS", 15],
         ["CUP_B_Seafox_USMC", 15],
         ["CUP_B_Seafox_USV_USMC", 15],
         ["CUP_B_Zodiac_USMC", 15]
					
];


R3F_LOG_CFG_objets_transportables =
[
	["Static_Designator_01_base_F", 2],
	["Static_Designator_02_base_F", 2],
	["StaticWeapon", 5],
	["Box_NATO_AmmoVeh_F", 10],
	["B_supplyCrate_F", 5],
	["ReammoBox_F", 3],
	["Kart_01_Base_F", 5],
	["Quadbike_01_base_F", 10],
	["Rubber_duck_base_F", 10],
	["UAV_01_base_F", 2],
	["Land_BagBunker_Large_F", 10],
	["Land_BagBunker_Small_F", 5],
	["Land_BagBunker_Tower_F", 7],
	["Land_BagFence_Corner_F", 2],
	["Land_BagFence_End_F", 2],
	["Land_BagFence_Long_F", 3],
	["Land_BagFence_Round_F", 2],
	["Land_BagFence_Short_F", 2],
	["Land_BarGate_F", 3],
	["Land_Canal_WallSmall_10m_F", 4],
	["Land_Canal_Wall_Stairs_F", 3],
	["Land_CargoBox_V1_F", 5],
	["Land_Cargo_Patrol_V1_F", 7],
	["Land_Cargo_Tower_V1_F", 30],
	["Land_CncBarrier_F", 4],
	["Land_CncBarrierMedium_F", 4],
	["Land_CncBarrierMedium4_F", 4],
	["Land_CncShelter_F", 2],
	["Land_CncWall1_F", 3],
	["Land_CncWall4_F", 5],
	["Land_Crash_barrier_F", 5],
	["Land_HBarrierBig_F", 5],
	["Land_HBarrierTower_F", 8],
	["Land_HBarrierWall4_F", 4],
	["Land_HBarrierWall6_F", 6],
	["Land_HBarrier_1_F", 3],
	["Land_HBarrier_3_F", 4],
	["Land_HBarrier_5_F", 5],
	["Land_LampHarbour_F", 2],
	["Land_LampShabby_F", 2],
	["Land_MetalBarrel_F", 2],
	["Land_Mil_ConcreteWall_F", 5],
	["Land_Mil_WallBig_4m_F", 5],
	["Land_Obstacle_Ramp_F", 5],
	["Land_Pipes_large_F", 5],
	["Land_Razorwire_F", 5],
	["Land_Sacks_goods_F", 2],
	["Land_Scaffolding_F", 5],
	["Land_Shoot_House_Wall_F", 3],
	["Land_Stone_8m_F", 5],
	["Land_ToiletBox_F", 2],
	["Land_BarrelWater_F", 2],
	["Land_MetalBarrel_F", 2],
	["Land_Mil_ConcreteWall_F", 2],
	["Land_Mil_WallBig_4m_F", 2],
	["Land_Obstacle_Ramp_F", 2],
	["Land_Pipes_large_F", 2],
	["Land_Razorwire_F", 2],
	["Land_Sacks_goods_F", 2],
	["Land_Scaffolding_F", 2],
	["Land_Shoot_House_Wall_F", 2],
	["Land_Stone_8m_F", 2],
	["Land_ToiletBox_F", 2],
	["Land_BarrelWater_F", 2],
	["Land_Cargo40_red_F", 2],
	["Land_Cargo20_grey_F", 2],
	["Land_RampConcrete_F", 2],
	["Land_RampConcreteHigh_F", 2],
	["BlockConcrete_F", 2],
	["Land_GH_Platform_F", 2]
];

/****** MOVABLE-BY-PLAYER OBJECTS / OBJETS DEPLACABLES PAR LE JOUEUR ******/

R3F_LOG_CFG_objets_deplacables =
[
	"StaticWeapon",
	"ReammoBox_F",
	"Kart_01_Base_F",
	"Quadbike_01_base_F",
	"Rubber_duck_base_F",
	"SDV_01_base_F",
	"UAV_01_base_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagFence_Corner_F",
	"Land_BagFence_End_F",
	"Land_BagFence_Long_F",
	"Land_BagFence_Round_F",
	"Land_BagFence_Short_F",
	"Land_BarGate_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_CargoBox_V1_F",
	"Land_Cargo_Patrol_V1_F",
	"Land_Cargo_Tower_V1_F",
	"Land_CncBarrier_F",
	"Land_CncBarrierMedium_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall1_F",
	"Land_CncWall4_F",
	"Land_Crash_barrier_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_LampHarbour_F",
	"Land_LampShabby_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
	"Land_Mil_WallBig_4m_F",
	"Land_Obstacle_Ramp_F",
	"Land_Pipes_large_F",
	"Land_Razorwire_F",
	"Land_Sacks_goods_F",
	"Land_Scaffolding_F",
	"Land_Shoot_House_Wall_F",
	"Land_Stone_8m_F",
	"Land_ToiletBox_F",
	"Land_BarrelWater_F",
	"Land_Cargo40_red_F",
	"Land_Cargo20_grey_F",
	"Land_RampConcrete_F",
	"Land_RampConcreteHigh_F",
	"BlockConcrete_F",
	"Land_GH_Platform_F"
	
	
];