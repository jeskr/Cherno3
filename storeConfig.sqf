// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	// Handguns
	["P07 Pistol", "hgun_P07_F", 200],
	["Rook-40 Pistol", "hgun_Rook40_F", 200],
	["ACP-C2 Pistol", "hgun_ACPC2_F", 250],
	["Zubr Revolver", "hgun_Pistol_heavy_02_F", 250],
	["4-Five Pistol", "hgun_Pistol_heavy_01_F", 300],

	["------------CUP Pistol------------", "error", 1],

	["M1911", "CUP_hgun_Colt1911", 200],
	["CZ___75___P__07___Compact", "CUP_hgun_Compact", 200],
	//["CZ___75___P__07___Duty", "CUP_hgun_Duty_M3X", 500],
	["Glock___17", "CUP_hgun_glock17_flashlight", 200],
	["M9", "CUP_hgun_M9", 200],
	//["M9", "CUP_hgun_M9_snds", 500],
	["Makarov", "CUP_hgun_Makarov", 200],
	["PB___6P9", "CUP_hgun_PB6P9_snds", 200],
	["Micro___UZI___PDW", "CUP_hgun_MicroUzi", 200],
	//["Micro___UZI___PDW", "CUP_hgun_MicroUzi_snds", 500],
	["CZ___75___SP__01___Phantom", "CUP_hgun_Phantom_Flashlight", 200],
	//["CZ___75___SP__01___Phantom", "CUP_hgun_Phantom_Flashlight_snds", 500],
	["Taurus___Tracker___Model___455", "CUP_hgun_TaurusTracker455", 200],
	//["Taurus___Tracker___Model___455___(Gold)", "CUP_hgun_TaurusTracker455_gold", 500],
	["SA__61", "CUP_hgun_SA61", 200],
	["CZ___75___P__07___Duty", "CUP_hgun_Duty", 200],
	//["CZ___75___SP__01___Phantom", "CUP_hgun_Phantom", 500],
	//["Glock___17", "CUP_hgun_Glock17", 500],
	//["Glock___17", "CUP_hgun_glock17_flashlight_snds", 500],
	//["Glock___17", "CUP_hgun_glock17_snds", 500],
	["PB___6P9", "CUP_hgun_PB6P9", 200],
	["M1911", "CUP_hgun_Colt1911_snds", 200]
];

smgArray = compileFinal str
[
	["PDW2000 SMG", "hgun_PDW2000_F", 200],
	["Sting SMG", "SMG_02_F", 250],
	["Vermin SMG", "SMG_01_F", 250],

	["------------CUP LMG------------", "error", 1],

	["PP__19___Bizon", "CUP_smg_bizon", 300],
	//["PP__19___Bizon", "CUP_smg_bizon_snds", 1000],
	["Scorpion___EVO", "CUP_smg_EVO_MRad_Flashlight", 300],
	//["Scorpion___EVO", "CUP_smg_EVO_MRad_Flashlight_Snds", 1000],
	["MP5___SD6", "CUP_smg_MP5SD6", 300],
	//["MP5A5", "CUP_smg_MP5A5", 1000],
	["Scorpion___EVO", "CUP_smg_EVO", 300],

	["------------CUP ShotGuns------------", "error", 1],

	["AA__12", "CUP_sgun_AA12", 300],
	["M1014", "CUP_sgun_M1014", 300],
	["Saiga12K", "CUP_sgun_Saiga12K", 300]
];

rifleArray = compileFinal str
[
    ["------------Rifle---------", "error", 1],

	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 300],

	// Assault Rifles
	["Mk20 Carbine", "arifle_Mk20C_plain_F", 300],
	["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 300],
	["Mk20 Rifle", "arifle_Mk20_plain_F", 400],
	["Mk20 Rifle (Camo)", "arifle_Mk20_F", 400],
	["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 500],
	["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 500],

	["TRG-20 Carbine", "arifle_TRG20_F", 300],
	["TRG-21 Rifle ", "arifle_TRG21_F", 400],
	["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 500],

	["Katiba Carbine", "arifle_Katiba_C_F", 300],
	["Katiba Rifle", "arifle_Katiba_F", 400],
	["Katiba GL Rifle", "arifle_Katiba_GL_F", 500],

	["MX Carbine", "arifle_MXC_F", 300],
	["MX Carbine (Black)", "arifle_MXC_Black_F", 350],
	["MX Rifle", "arifle_MX_F", 400],
	["MX Rifle (Black)", "arifle_MX_Black_F", 450],
	["MX 3GL Rifle", "arifle_MX_GL_F", 500],
	["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 550],

	// Markman Rifles
	["MXM Rifle", "arifle_MXM_F", 600],
	["MXM Rifle (Black)", "arifle_MXM_Black_F", 650],
	["DMR Rifle", "srifle_DMR_01_F", 650],
	["Mk14 7.62 mm (Camo)", "srifle_DMR_06_camo_F", 900], // DLC Sniper Rifle
	["Mk14 7.62 mm (Olive)", "srifle_DMR_06_olive_F", 900], // DLC Sniper Rifle
	["Mk18 ABR Rifle", "srifle_EBR_F", 1200],
	["Mk-1 EMR 7.62 mm (Camo)", "srifle_DMR_03_multicam_F", 1200], // DLC Sniper Rifle
	["Mk-1 EMR 7.62 mm (Khaki)", "srifle_DMR_03_khaki_F", 1200], // DLC Sniper Rifle
	["Mk-1 EMR 7.62 mm (Sand)", "srifle_DMR_03_tan_F", 1200], // DLC Sniper Rifle
	["Mk-1 EMR 7.62 mm (Woodland)", "srifle_DMR_03_woodland_F", 1200], // DLC Sniper Rifle
	["Mk-1 EMR 7.62 mm (Black)", "srifle_DMR_03_F", 1200], // DLC Sniper Rifle

    ["------------Sniper Rifles---------", "error", 1],

	// Sniper Rifles
	["MAR-10 .338 (Black)", "srifle_DMR_02_F", 1500], // DLC Sniper Rifle
	["MAR-10 .338 (Camo)", "srifle_DMR_02_camo_F", 1500], // DLC Sniper Rifle
	["MAR-10 .338 (Sand)", "srifle_DMR_02_sniper_F", 1500], // DLC Sniper Rifle
	["M320 LRR Sniper", "srifle_LRR_SOS_F", 3000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_SOS_F", 3500],
	["Cyrus 9.3 mm (Black)", "srifle_DMR_05_blk_F", 2000], // DLC Sniper Rifle
	["Cyrus 9.3 mm (Hex)", "srifle_DMR_05_hex_F", 2000], // DLC Sniper Rifle
	["Cyrus 9.3 mm (Tan)", "srifle_DMR_05_tan_f", 2000], // DLC Sniper Rifle
	["ASP-1 Kir 12.7 mm (Black)", "srifle_DMR_04_F", 2000], // DLC Sniper Rifle
	["ASP-1 Kir 12.7 mm (Tan)", "srifle_DMR_04_Tan_F", 2000], // DLC Sniper Rifle
	["GM6 Lynx Sniper", "srifle_GM6_SOS_F", 4000],
	["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_SOS_F", 4500],

	["------------CUP Rifle------------", "error", 1],

	["AK__74", "CUP_arifle_AK74", 1000],
	//["AK__107", "CUP_arifle_AK107", 1000],
	["AKS__74", "CUP_arifle_AKS74", 1000],
	["AKS__74U", "CUP_arifle_AKS74U", 1000],
	//["AK__74___GP__25", "CUP_arifle_AK74_GL", 1000],
	["AKM", "CUP_arifle_AKM", 1000],
	//["AKS", "CUP_arifle_AKS", 1000],
	//["AKS", "CUP_arifle_AKS_Gold", 1000],
	["RPK", "CUP_arifle_RPK74", 1000],
	["AK107___GL", "CUP_arifle_AK107_GL_kobra", 1000],
	["AK__107", "CUP_arifle_AK107_kobra", 1000],
	["AK107___GL", "CUP_arifle_AK107_GL_pso", 1000],
	["AK__107", "CUP_arifle_AK107_pso", 1500],
	//["AKS__74", "CUP_arifle_AKS74_kobra", 1000],
	["AKS__74", "CUP_arifle_AKS74_pso", 1500],
	//["AKS__74U", "CUP_arifle_AKS74UN_kobra_snds", 1000],
	//["AKS__74", "CUP_arifle_AKS74_Goshawk", 1000],
	//["AKS__74", "CUP_arifle_AKS74_NSPU", 1000],
	//["AK__74___GP__25", "CUP_arifle_AK74_GL_kobra", 1000],
	["CZ___805___A1", "CUP_arifle_CZ805_A1_ZDDot_Laser", 1000],
	//["CZ___805___A1___GL", "CUP_arifle_CZ805_GL_ZDDot_Laser", 1000],
	["CZ___805___A2", "CUP_arifle_CZ805_A2", 1000],
	["CZ___805___A2", "CUP_arifle_CZ805_A2_ZDDot_Flashlight_Snds", 1000],
	["CZ___805___B___GL", "CUP_arifle_CZ805B_GL_ACOG_Laser", 1000],
	["FN___FAL", "CUP_arifle_FNFAL", 1000],
	["FN___FAL___(Railed)", "CUP_arifle_FNFAL_ANPVS4", 1000],
	["G36A", "CUP_arifle_G36A", 1000],
	["G36A___(desert)", "CUP_arifle_G36A_camo", 1000],
	["G36K", "CUP_arifle_G36K", 1000],
	["G36K___(desert)", "CUP_arifle_G36K_camo", 1000],
	["G36C", "CUP_arifle_G36C", 1000],
	["G36C___(desert)", "CUP_arifle_G36C_camo", 1000],
	["MG36", "CUP_arifle_MG36", 1000],
	["MG36___(desert)", "CUP_arifle_MG36_camo", 1000],
	["G36C", "CUP_arifle_G36C_holo_snds", 1000],
	["G36C___(desert)", "CUP_arifle_G36C_camo_holo_snds", 1000],
	["L85A2___Assault___Rifle", "CUP_arifle_L85A2_Holo_laser", 1000],
	["L85A2___UGL___Assault___Rifle", "CUP_arifle_L85A2_GL_Holo_laser", 1000],
	["L85A2___Assault___Rifle", "CUP_arifle_L85A2_SUSAT_Laser", 1000],
	["L85A2___UGL___Assault___Rifle", "CUP_arifle_L85A2_GL_SUSAT_Laser", 1000],
	["L85A2___Assault___Rifle", "CUP_arifle_L85A2_CWS_Laser", 1000],
	["L85A2___Assault___Rifle", "CUP_arifle_L85A2_ACOG_Laser", 1000],
	["L85A2___UGL___Assault___Rifle", "CUP_arifle_L85A2_GL_ACOG_Laser", 1000],
	["L86A2___LSW", "CUP_arifle_L86A2_ACOG", 1000],
	["M16A2", "CUP_arifle_M16A2", 1000],
	["M16A2___GL", "CUP_arifle_M16A2_GL", 1000],
	["M16A4", "CUP_arifle_M16A4_Aim_Laser", 1000],
	["M16A4", "CUP_arifle_M16A4_ACOG_Laser", 1000],
	["M16A4___GL", "CUP_arifle_M16A4_GL", 1000],
	["M16A4___GL", "CUP_arifle_M16A4_GL_ACOG_Laser", 1000],
	["M4A1", "CUP_arifle_M4A1", 1000],
	["M4A1___(camo)", "CUP_arifle_M4A1_camo", 1000],
	["M4A1___(camo aim)", "CUP_arifle_M4A1_camo_Aim", 1000],
	["M4A3___(desert)", "CUP_arifle_M4A3_desert_Aim_Flashlight", 1000],
	["M4A1___GL___(desert)", "CUP_arifle_M4A3_desert_GL_ACOG_Laser", 1000],
	["M4A1___(black)", "CUP_arifle_M4A1_Aim", 1000],
	["M4A1___(camo)", "CUP_arifle_M4A1_camo_AIM_snds", 1000],
	["M4A1___GL___(black)", "CUP_arifle_M4A1_GL_Holo_Flashlight", 1000],
	["M4A1___GL___(black)", "CUP_arifle_M4A1_GL_ACOG_Flashlight", 1000],
	["M4A1___GL___(woodland)", "CUP_arifle_M4A1_camo_GL_Holo_Flashlight", 1000],
	["M4A1___GL___(woodland)", "CUP_arifle_M4A1_camo_GL_Holo_Flashlight_Snds", 1000],
	["vz.___58___P", "CUP_arifle_Sa58P", 1000],
	["vz.___58___V", "CUP_arifle_Sa58V", 1000],
	["vz.___58___V", "CUP_arifle_Sa58V_ACOG_Laser", 1000],
	["vz.___58___V", "CUP_arifle_Sa58V_Aim_Laser", 1000],
	["Mk16___Mod___0___CQC", "CUP_arifle_Mk16_CQC", 1000],
	["Mk16___Mod___0___CQC___Foregrip", "CUP_arifle_Mk16_CQC_FG_Aim_Laser_snds", 1000],
	["Mk16___Mod___0___CQC___Surefire", "CUP_arifle_Mk16_CQC_SFG_Holo", 1000],
	["Mk16___Mod___0___Standard___EGLM", "CUP_arifle_Mk16_STD_EGLM_ACOG_Laser", 1000],
	["Mk16___Mod___0___Standard___EGLM", "CUP_arifle_Mk16_STD_EGLM_ANPAS13c1_Laser_mfsup", 1000],
	["Mk16___Mod___0___Standard___Fore___Grip", "CUP_arifle_Mk16_STD_FG_Holo_Laser", 1000],
	["Mk16___Mod___0___Standard___Fore___Grip", "CUP_arifle_Mk16_STD_FG_LeupoldMk4CQT_Laser", 1000],
	["Mk17___Mod___0___CQC___SureFire", "CUP_arifle_Mk17_CQC_SFG_Aim_mfsup", 1000],

    ["------------CUP Sniper Rifle------------", "error", 1],

	["AS50", "CUP_srifle_AS50_SBPMII", 2400],
	//["AS50", "CUP_srifle_AS50_AMPAS13c2", 1000],
	["L115A1___(Desert)", "CUP_srifle_AWM_des_SBPMII", 2800],
	//["L115A1___(Woodland)", "CUP_srifle_AWM_wdl_SBPMII", 1000],
	["CZ___750___S1___M1", "CUP_srifle_CZ750_SOS_bipod", 2000],
	["M14___DMR", "CUP_srifle_DMR_LeupoldMk4", 3500],
	["CZ___550", "CUP_srifle_CZ550", 2000],
	["Lee___Enfield", "CUP_srifle_LeeEnfield", 2000],
	["Mk___12___SPR", "CUP_srifle_Mk12SPR_LeupoldM3LR", 2000],
	["M24___(woodland)", "CUP_srifle_M24_wdl_LeupoldMk4LRT", 2000],
	["M24___(desert)", "CUP_srifle_M24_des_LeupoldMk4LRT", 2000],
	["M40A3", "CUP_srifle_M40A3", 3600],
	["M107", "CUP_srifle_M107_LeupoldVX3", 5000],
	//["M107", "CUP_srifle_M107_ANPAS13c2", 2000],
	//["M110", "CUP_srifle_M110_ANPAS13c2", 1000],
	//["M110", "CUP_srifle_M110_ANPVS10", 1000],
	["Dragunov___SVD", "CUP_srifle_SVD_pso", 3000],
	["SVD___Camo", "CUP_srifle_SVD_wdl_ghillie", 3000],
	//["SVD___Desert___Camo", "CUP_srifle_SVD_des_ghillie_pso", 1000],
	["Dragunov___SVD", "CUP_srifle_SVD_NSPU", 3000],
	//["M14___DMR", "CUP_srifle_DMR", 1000],
	["KSVK", "CUP_srifle_ksvk", 3000],
	["M110", "CUP_srifle_M110", 3000],
	["M14", "CUP_srifle_M14", 3000],
	["M24___(desert)", "CUP_srifle_M24_des", 2000],
	["M24___(woodland)", "CUP_srifle_M24_wdl", 2000],
	["M24___(camo___woodland)", "CUP_srifle_M24_ghillie", 2000],
	//["Dragunov___SVD", "CUP_srifle_SVD", 1000],
	//["Dragunov___SVD___Desert", "CUP_srifle_SVD_des", 1000],
	//["Dragunov___SVD___Desert", "CUP_srifle_SVD_Des_pso", 1000],
	["VSS___Vintorez", "CUP_srifle_VSSVintorez", 2000],
	//["VSS___Vintorez", "CUP_srifle_VSSVintorez_pso", 1000],
	["AS50", "CUP_srifle_AS50", 2000]
	//["L115A1___(Desert)", "CUP_srifle_AWM_des", 1000],
	//["L115A1___(Woodland)", "CUP_srifle_AWM_wdl", 1000],
	//["CZ___750___S1___M1", "CUP_srifle_CZ750", 1000],
	//["M107", "CUP_srifle_M107_Base", 1000],
	//["Mk___12___SPR", "CUP_srifle_Mk12SPR", 1000]
];

lmgArray = compileFinal str
[
	["MX SW LMG", "arifle_MX_SW_F", 600],
	["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 650],
	["Mk200 LMG", "LMG_Mk200_F", 700],
	["Zafir LMG", "LMG_Zafir_F", 900],

    ["------------DLC LMG------------", "error", 1],
	//DLC LMG
	["SPMG .338 (Black)", "MMG_02_black_F", 1300],
	["SPMG .338 (MTP)", "MMG_02_camo_F", 1300],
	["SPMG .338 (Sand)", "MMG_02_sand_F", 1300],
	["Navid 9.3 mm (Hex)", "MMG_01_hex_F", 1500],
	["Navid 9.3 mm (Tan)", "MMG_01_tan_F", 1500],

	["------------CUP LMG------------", "error", 1],

	["L7A2", "CUP_lmg_L7A2", 1000],
	["L110A1", "CUP_lmg_L110A1_Aim_Laser", 1400],
	//["M240", "CUP_lmg_M240", 1000],
	["M240", "CUP_lmg_M240_ElcanM143", 1400],
	//["M249", "CUP_lmg_M249_ElcanM145_Laser", 700],
	["M249", "CUP_lmg_M249_Laser", 1400],
	//["M249", "CUP_lmg_M249_ANPAS13c2_Laser", 1000],
	//["M249", "CUP_lmg_M249", 1000],
	["Mk48___Mod___0___(desert)", "CUP_lmg_Mk48_des_Aim_Laser", 1000],
	//["Mk48___Mod___0___(woodland)", "CUP_lmg_Mk48_wdl_Aim_Laser", 1000],
	["PKM", "CUP_lmg_PKM", 1400],
	["PKP___Pecheneg", "CUP_lmg_Pecheneg_PScope", 1400],
	["UK59", "CUP_lmg_UK59", 1100],
	//["PKP___Pecheneg", "CUP_lmg_Pecheneg", 1000],
	["L110A1", "CUP_lmg_L110A1", 1400],
	["M249", "CUP_lmg_M249_para", 1400]
	//["Mk48___Mod___0___(desert)", "CUP_lmg_Mk48_des", 1000],
	//["Mk48___Mod___0___(woodland)", "CUP_lmg_Mk48_wdl", 1000]

];

launcherArray = compileFinal str
[
	["RPG-42 Alamut", "launch_RPG32_F", 500],
	["PCML", "launch_NLAW_F", 1000],
	["Titan MPRL Compact (Tan)", "launch_Titan_short_F", 1500],
	["Titan MPRL Compact (Brown)", "launch_O_Titan_short_F", 1500],
	["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 1500],
	["Titan MPRL AA (Desert)", "launch_Titan_F", 1600],
	["Titan MPRL AA (Hex)", "launch_O_Titan_F", 1600],
	["Titan MPRL AA (Digi)", "launch_I_Titan_F", 1600],

	["------------CUP Launcher------------", "error", 1],

	["M32", "CUP_glaunch_M32", 1500],
	["M79", "CUP_glaunch_M79", 1600],
	["Mk13___EGLM", "CUP_glaunch_Mk13", 1200],
	["Igla___9K38", "CUP_launch_Igla", 1400],
	["FGM__148___Javelin", "CUP_launch_Javelin", 1800],
	["M47___Dragon", "CUP_launch_M47", 1200],
	["M136___AT__4___launcher", "CUP_launch_M136", 1300],
	["M3___MAAWS", "CUP_launch_MAAWS_Scope", 1000],
	["Metis___Launcher", "CUP_launch_Metis", 2500],
	//["NLAW", "CUP_launch_NLAW", 5000],
	["RPG__7V", "CUP_launch_RPG7V", 500],
	["RPG___18", "CUP_launch_RPG18", 750],
	["Mk153___Mod___0___SMAW", "CUP_launch_Mk153Mod0_SMAWOptics", 2000],
	["FIM__92___Stinger", "CUP_launch_FIM92Stinger", 1400],
	["M3___MAAWS", "CUP_launch_MAAWS", 1300],
	["Mk153___Mod___0___SMAW", "CUP_launch_Mk153Mod0", 1400],
	["Strela__2___9K32", "CUP_launch_9K32Strela", 1700]
];

allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);

staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd (NATO)", "B_static_AT_F", 5000], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd (CSAT)", "O_static_AT_F", 5000],
	["Static Titan AT 4Rnd (AAF)", "I_static_AT_F", 5000],
	["Static Titan AA 4Rnd (NATO)", "B_static_AA_F", 6000],
	["Static Titan AA 4Rnd (CSAT)", "O_static_AA_F", 6000],
	["Static Titan AA 4Rnd (AAF)", "I_static_AA_F", 6000],
	["Mk30 HMG .50 Low tripod (NATO)", "B_HMG_01_F", 4000],
	["Mk30 HMG .50 Low tripod (CSAT)", "O_HMG_01_F", 4000],
	["Mk30 HMG .50 Low tripod (AAF)", "I_HMG_01_F", 4000],
	//["Mk30A HMG .50 Sentry (NATO)", "B_HMG_01_A_F", 100000], // "A" = Autonomous = Overpowered
	//["Mk30A HMG .50 Sentry (CSAT)", "O_HMG_01_A_F", 100000],
	//["Mk30A HMG .50 Sentry (AAF)", "I_HMG_01_A_F", 100000],
	["Mk30 HMG .50 High tripod (NATO)", "B_HMG_01_high_F", 6000],
	["Mk30 HMG .50 High tripod (CSAT)", "O_HMG_01_high_F", 6000],
	["Mk30 HMG .50 High tripod (AAF)", "I_HMG_01_high_F", 6000]
//	["Mk32 GMG 20mm Low tripod (NATO)", "B_GMG_01_F", 10000],
//	["Mk32 GMG 20mm Low tripod (CSAT)", "O_GMG_01_F", 10000],
//	["Mk32 GMG 20mm Low tripod (AAF)", "I_GMG_01_F", 10000],
    //["Mk32A GMG 20mm Sentry (NATO)", "B_GMG_01_A_F", 100000],
	//["Mk32A GMG 20mm Sentry (CSAT)", "O_GMG_01_A_F", 100000],
	//["Mk32A GMG 20mm Sentry (AAF)", "I_GMG_01_A_F", 100000],
//	["Mk32 GMG 20mm High tripod (NATO)", "B_GMG_01_high_F", 12000],
//	["Mk32 GMG 20mm High tripod (CSAT)", "O_GMG_01_high_F", 12000],
//	["Mk32 GMG 20mm High tripod (AAF)", "I_GMG_01_high_F", 12000]
];

throwputArray = compileFinal str
[
	["Mini Grenade", "MiniGrenade", 150],
	["Frag Grenade", "HandGrenade", 300],
	["Tear Gas Grenade", "SmokeShellYellow", 750],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 500],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 600],
	["APERS Mine", "APERSMine_Range_Mag", 650],
	["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 550],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 550],
	["AT Mine", "ATMine_Range_Mag", 700],
	["Explosive Charge", "DemoCharge_Remote_Mag", 700],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 750],
	["Smoke Grenade (White)", "SmokeShell", 100],
	["Smoke Grenade (Purple)", "SmokeShellPurple", 100],
	["Smoke Grenade (Blue)", "SmokeShellBlue", 100],
	["Smoke Grenade (Green)", "SmokeShellGreen", 100],
	["Smoke Grenade (Yellow)", "SmokeShellYellow", 100],
	["Smoke Grenade (Orange)", "SmokeShellOrange", 100],
	["Smoke Grenade (Red)", "SmokeShellRed", 100]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[
	["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	["7.62mm 10Rnd Mag", "10Rnd_762x54_Mag", 15],
	["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	["7.62mm 150Rnd Box", "150Rnd_762x54_Box", 150],
	["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x54_Box_Tracer", 125],
	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 35], //DLC Ammo
	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150], //DLC Ammo
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 35], //DLC Ammo
	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150], //DLC Ammo
	["12.7mm 10Rnd Mag", "10Rnd_127x54_Mag", 55], //DLC Ammo
	["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 160],
	["RPG-42 Anti-Tank Rocket", "RPG32_F", 500],              // Direct damage: high      | Splash damage: low    | Guidance: none
	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 500],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	["PCML Anti-Tank Missile", "NLAW_F", 800],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	["Titan Anti-Tank Missile", "Titan_AT", 1000],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	//["Titan Anti-Personnel Missile", "Titan_AP", 1500],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	["Titan Anti-Air Missile", "Titan_AA", 1200],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50],

	["------------CUP Ammo------------", "error", 1],

	["CUP_20Rnd_B_AA12_Pellets", "CUP_20Rnd_B_AA12_Pellets", 15],
	["CUP_20Rnd_B_AA12_74Slug", "CUP_20Rnd_B_AA12_74Slug", 15],
	["CUP_20Rnd_B_AA12_HE", "CUP_20Rnd_B_AA12_HE", 15],
	["CUP_30Rnd_545x39_AK_M", "CUP_30Rnd_545x39_AK_M", 15],
	["CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M", "CUP_30Rnd_TE1_Green_Tracer_545x39_AK_M", 15],
	["CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", "CUP_30Rnd_TE1_Red_Tracer_545x39_AK_M", 15],
	["CUP_30Rnd_TE1_White_Tracer_545x39_AK_M", "CUP_30Rnd_TE1_White_Tracer_545x39_AK_M", 15],
	["CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M", "CUP_30Rnd_TE1_Yellow_Tracer_545x39_AK_M", 15],
	["CUP_30Rnd_762x39_AK47_M", "CUP_30Rnd_762x39_AK47_M", 15],
	["CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", "CUP_75Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M", 15],
	["CUP_5Rnd_127x99_as50_M", "CUP_5Rnd_127x99_as50_M", 15],
	["CUP_5Rnd_86x70_L115A1", "CUP_5Rnd_86x70_L115A1", 15],
	["CUP_64Rnd_9x19_Bizon_M", "CUP_64Rnd_9x19_Bizon_M", 15],
	["CUP_64Rnd_Green_Tracer_9x19_Bizon_M", "CUP_64Rnd_Green_Tracer_9x19_Bizon_M", 15],
	["CUP_64Rnd_Red_Tracer_9x19_Bizon_M", "CUP_64Rnd_Red_Tracer_9x19_Bizon_M", 15],
	["CUP_64Rnd_White_Tracer_9x19_Bizon_M", "CUP_64Rnd_White_Tracer_9x19_Bizon_M", 15],
	["CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M", "CUP_64Rnd_Yellow_Tracer_9x19_Bizon_M", 15],
	["CUP_7Rnd_45ACP_1911", "CUP_7Rnd_45ACP_1911", 15],
	["CUP_10Rnd_9x19_Compact", "CUP_10Rnd_9x19_Compact", 15],
	["CUP_10Rnd_762x51_CZ750_Tracer", "CUP_10Rnd_762x51_CZ750_Tracer", 15],
	["CUP_10Rnd_762x51_CZ750", "CUP_10Rnd_762x51_CZ750", 15],
	["CUP_30Rnd_556x45_Stanag", "CUP_30Rnd_556x45_Stanag", 15],
	["CUP_30Rnd_556x45_G36", "CUP_30Rnd_556x45_G36", 15],
	["CUP_30Rnd_TE1_Red_Tracer_556x45_G36", "CUP_30Rnd_TE1_Red_Tracer_556x45_G36", 15],
	["CUP_30Rnd_TE1_Green_Tracer_556x45_G36", "CUP_30Rnd_TE1_Green_Tracer_556x45_G36", 15],
	["CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36", "CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36", 15],
	["CUP_100Rnd_556x45_BetaCMag", "CUP_100Rnd_556x45_BetaCMag", 15],
	["CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", "CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag", 15],
	["CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag", "CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag", 15],
	["CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag", "CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag", 15],
	["CUP_20Rnd_556x45_Stanag", "CUP_20Rnd_556x45_Stanag", 15],
	["CUP_20Rnd_762x51_CZ805B", "CUP_20Rnd_762x51_CZ805B", 15],
	["CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_CZ805B", 15],
	["CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B", "CUP_20Rnd_TE1_Red_Tracer_762x51_CZ805B", 15],
	["CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B", "CUP_20Rnd_TE1_Green_Tracer_762x51_CZ805B", 15],
	["CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B", "CUP_20Rnd_TE1_White_Tracer_762x51_CZ805B", 15],
	["CUP_20Rnd_762x51_DMR", "CUP_20Rnd_762x51_DMR", 15],
	["CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_DMR", 15],
	["CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", "CUP_20Rnd_TE1_Red_Tracer_762x51_DMR", 15],
	["CUP_20Rnd_TE1_Green_Tracer_762x51_DMR", "CUP_20Rnd_TE1_Green_Tracer_762x51_DMR", 15],
	["CUP_20Rnd_TE1_White_Tracer_762x51_DMR20Rnd_762x51_Mag", "CUP_20Rnd_TE1_White_Tracer_762x51_DMR20Rnd_762x51_Mag", 15],
	["CUP_30Rnd_9x19_EVO", "CUP_30Rnd_9x19_EVO", 15],
	["CUP_20Rnd_762x51_FNFAL_M", "CUP_20Rnd_762x51_FNFAL_M", 15],
	["CUP_17Rnd_9x19_glock17", "CUP_17Rnd_9x19_glock17", 15],
	["CUP_6Rnd_HE_M203", "CUP_6Rnd_HE_M203", 15],
	["CUP_6Rnd_FlareWhite_M203", "CUP_6Rnd_FlareWhite_M203", 15],
	["CUP_6Rnd_FlareGreen_M203", "CUP_6Rnd_FlareGreen_M203", 15],
	["CUP_6Rnd_FlareRed_M203", "CUP_6Rnd_FlareRed_M203", 15],
	["CUP_6Rnd_FlareYellow_M203", "CUP_6Rnd_FlareYellow_M203", 15],
	["CUP_6Rnd_Smoke_M203", "CUP_6Rnd_Smoke_M203", 15],
	["CUP_6Rnd_SmokeRed_M203", "CUP_6Rnd_SmokeRed_M203", 15],
	["CUP_6Rnd_SmokeGreen_M203", "CUP_6Rnd_SmokeGreen_M203", 15],
	["CUP_6Rnd_SmokeYellow_M203", "CUP_6Rnd_SmokeYellow_M203", 15],
	["CUP_1Rnd_HE_M203", "CUP_1Rnd_HE_M203", 15],
	["CUP_1Rnd_HEDP_M203", "CUP_1Rnd_HEDP_M203", 15],
	["CUP_FlareWhite_M203", "CUP_FlareWhite_M203", 15],
	["CUP_FlareGreen_M203", "CUP_FlareGreen_M203", 15],
	["CUP_FlareRed_M203", "CUP_FlareRed_M203", 15],
	["CUP_FlareYellow_M203", "CUP_FlareYellow_M203", 15],
	["CUP_1Rnd_Smoke_M203", "CUP_1Rnd_Smoke_M203", 15],
	["CUP_1Rnd_SmokeRed_M203", "CUP_1Rnd_SmokeRed_M203", 15],
	["CUP_1Rnd_SmokeGreen_M203", "CUP_1Rnd_SmokeGreen_M203", 15],
	["CUP_1Rnd_SmokeYellow_M2031Rnd_HE_Grenade_shell", "CUP_1Rnd_SmokeYellow_M2031Rnd_HE_Grenade_shell", 15],
	["CUP_5x_22_LR_17_HMR_M", "CUP_5x_22_LR_17_HMR_M", 15],
	["CUP_Igla_M", "CUP_Igla_M", 500],
	["CUP_Javelin_M", "CUP_Javelin_M", 500],
	["CUP_5Rnd_127x108_KSVK_M", "CUP_5Rnd_127x108_KSVK_M", 15],
	["CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M", 15],
	["CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", "CUP_100Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M", 15],
	["CUP_200Rnd_TE4_Red_Tracer_556x45_M249", "CUP_200Rnd_TE4_Red_Tracer_556x45_M249", 15],
	["CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_M249", 15],
	["CUP_200Rnd_TE1_Red_Tracer_556x45_M249", "CUP_200Rnd_TE1_Red_Tracer_556x45_M249", 15],
	["CUP_100Rnd_TE4_Green_Tracer_556x45_M249", "CUP_100Rnd_TE4_Green_Tracer_556x45_M249", 15],
	["CUP_100Rnd_TE4_Red_Tracer_556x45_M249", "CUP_100Rnd_TE4_Red_Tracer_556x45_M249", 15],
	["CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249", "CUP_100Rnd_TE4_Yellow_Tracer_556x45_M249", 15],
	["CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1", "CUP_200Rnd_TE4_Green_Tracer_556x45_L110A1", 15],
	["CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1", "CUP_200Rnd_TE4_Red_Tracer_556x45_L110A1", 15],
	["CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1", "CUP_200Rnd_TE4_Yellow_Tracer_556x45_L110A1", 15],
	["CUP_10x_", "CUP_10x_", 15],
	["CUP_15Rnd_9x19_M9", "CUP_15Rnd_9x19_M9", 15],
	["CUP_5Rnd_762x51_M24", "CUP_5Rnd_762x51_M24", 15],
	["CUP_Dragon_EP1_M", "CUP_Dragon_EP1_M", 15],
	["CUP_10Rnd_127x99_m107", "CUP_10Rnd_127x99_m107", 15],
	["CUP_20Rnd_762x51_B_M110", "CUP_20Rnd_762x51_B_M110", 15],
	["CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_M110", 15],
	["CUP_20Rnd_TE1_Red_Tracer_762x51_M110", "CUP_20Rnd_TE1_Red_Tracer_762x51_M110", 15],
	["CUP_20Rnd_TE1_Green_Tracer_762x51_M110", "CUP_20Rnd_TE1_Green_Tracer_762x51_M110", 15],
	["CUP_20Rnd_TE1_White_Tracer_762x51_M110", "CUP_20Rnd_TE1_White_Tracer_762x51_M110", 15],
	["CUP_M136_M", "CUP_M136_M", 500],
	["CUP_8Rnd_B_Beneli_74Slug", "CUP_8Rnd_B_Beneli_74Slug", 15],
	["CUP_MAAWS_HEAT_M", "CUP_MAAWS_HEAT_M", 500],
	["CUP_MAAWS_HEDP_M", "CUP_MAAWS_HEDP_M", 500],
	["CUP_8Rnd_9x18_Makarov_M", "CUP_8Rnd_9x18_Makarov_M", 15],
	["CUP_8Rnd_9x18_MakarovSD_M", "CUP_8Rnd_9x18_MakarovSD_M", 15],
	["CUP_AT13_M", "CUP_AT13_M", 500],
	["CUP_30Rnd_9x19_UZI", "CUP_30Rnd_9x19_UZI", 15],
	["CUP_30Rnd_9x19_MP5", "CUP_30Rnd_9x19_MP5", 15],
	["CUP_NLAW_M", "CUP_NLAW_M", 500],
	["CUP_18Rnd_9x19_Phantom", "CUP_18Rnd_9x19_Phantom", 15],
	["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", "CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M", 15],
	["CUP_6Rnd_45ACP_M", "CUP_6Rnd_45ACP_M", 15],
	["CUP_PG7V_M", "CUP_PG7V_M", 300],
	["CUP_PG7VL_M", "CUP_PG7VL_M", 300],
	["CUP_PG7VR_M", "CUP_PG7VR_M", 300],
	["CUP_OG7_M", "CUP_OG7_M", 300],
	["CUP_RPG18_M", "CUP_RPG18_M", 300],
	["CUP_30Rnd_Sa58_M_TracerG", "CUP_30Rnd_Sa58_M_TracerG", 15],
	["CUP_30Rnd_Sa58_M_TracerR", "CUP_30Rnd_Sa58_M_TracerR", 15],
	["CUP_30Rnd_Sa58_M_TracerY", "CUP_30Rnd_Sa58_M_TracerY", 15],
	["CUP_30Rnd_Sa58_M", "CUP_30Rnd_Sa58_M", 15],
	["CUP_8Rnd_B_Saiga12_74Slug_M", "CUP_8Rnd_B_Saiga12_74Slug_M", 15],
	["CUP_20Rnd_762x51_B_SCAR", "CUP_20Rnd_762x51_B_SCAR", 15],
	["CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR", "CUP_20Rnd_TE1_Yellow_Tracer_762x51_SCAR", 15],
	["CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR", "CUP_20Rnd_TE1_Red_Tracer_762x51_SCAR", 15],
	["CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR", "CUP_20Rnd_TE1_Green_Tracer_762x51_SCAR", 15],
	["CUP_20Rnd_TE1_White_Tracer_762x51_SCAR", "CUP_20Rnd_TE1_White_Tracer_762x51_SCAR", 15],
	["CUP_SMAW_HEAA_M", "CUP_SMAW_HEAA_M", 15],
	["CUP_SMAW_HEDP_M", "CUP_SMAW_HEDP_M", 15],
	["CUP_Stinger_M", "CUP_Stinger_M", 15],
	["CUP_10Rnd_762x54_SVD_M", "CUP_10Rnd_762x54_SVD_M", 15],
	["CUP_50Rnd_UK59_762x54R_Tracer", "CUP_50Rnd_UK59_762x54R_Tracer", 15],
	["CUP_20Rnd_B_765x17_Ball_M", "CUP_20Rnd_B_765x17_Ball_M", 15],
	["CUP_20Rnd_B_765x17_Ball_MLaserbatteries", "CUP_20Rnd_B_765x17_Ball_MLaserbatteries", 15],
	["CUP_Strela_2_M", "CUP_Strela_2_M", 15],
	["CUP_10Rnd_9x39_SP5_VSS_M", "CUP_10Rnd_9x39_SP5_VSS_M", 15],
	["CUP_20Rnd_9x39_SP5_VSS_M", "CUP_20Rnd_9x39_SP5_VSS_M", 15]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Suppressor .338 Black", "muzzle_snds_338_black", 150, "item"], // DLC Item
	["Suppressor .338 Green", "muzzle_snds_338_green", 150, "item"], // DLC Item
	["Suppressor .338 Sand", "muzzle_snds_338_sand", 175, "item"], // DLC Item
	["Suppressor 9.3mm Black", "muzzle_snds_93mmg", 175, "item"], // DLC Item
	["Suppressor 9.3mm Tan", "muzzle_snds_93mmg_tan", 175, "item"], // DLC Item
	["Bipod (Black) (NATO)", "bipod_01_F_blk", 500, "item"], // DLC Item
	["Bipod (Black) (CSAT)", "bipod_02_F_blk", 500, "item"], // DLC Item
	["Bipod (Black) (AAF)", "bipod_03_F_blk", 500, "item"], // DLC Item
	["Bipod (MTP) (NATO)", "bipod_01_F_mtp", 500, "item"], // DLC Item
	["Bipod (Hex) (CSAT)", "bipod_02_F_hex", 500, "item"], // DLC Item
	["Bipod (Olive) (AAF)", "bipod_03_F_oli", 500, "item"], // DLC Item
	["Bipod (Sand) (NATO)", "bipod_01_F_snd", 500, "item"], // DLC Item
	["Bipod (Tan) (CSAT)", "bipod_02_F_tan", 500, "item"], // DLC Item
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 75, "item"],
	["ACO (Green)", "optic_Aco_grn", 75, "item"],
	["Holosight", "optic_Holosight", 75, "item"],
	["MRCO", "optic_MRCO", 100, "item"],
	["ARCO", "optic_Arco", 125, "item"],
	["RCO", "optic_Hamr", 150, "item"],
	["DMS", "optic_DMS", 175, "item"],
	["MOS", "optic_SOS", 200, "item"],
	["AMS (Black)", "optic_AMS", 300, "item"], // DLC Item
	["AMS (Khaki)", "optic_AMS_khk", 300, "item"], // DLC Item
	["AMS (Sand)", "optic_AMS_snd", 300, "item"], // DLC Item
	["Kahlia (Black)", "optic_KHS_blk", 400, "item"], // DLC Item
	["Kahlia (Hex)", "optic_KHS_hex", 400, "item"], // DLC Item
	["Kahlia (Old)", "optic_KHS_old", 400, "item"], // DLC Item
	["Kahlia (Tan)", "optic_KHS_tan", 300, "item"], // DLC Item
	["LRPS", "optic_LRPS", 500, "item"],
	["NVS", "optic_NVS", 2000, "item"],
//	["TWS", "optic_tws", 12000, "item"],
//	["TWS MG", "optic_tws_mg", 12000, "item"],
//	["Nightstalker", "optic_Nightstalker", 12000, "item"],

	["------------CUP Muzzle------------", "error", 1],

	["PBS4___silencer", "CUP_muzzle_PBS4", 100, "item"],
	["PB___6P9___silencer", "CUP_muzzle_PB6P9", 100, "item"],
	["PP__19___Bizon___silencer", "CUP_muzzle_Bizon", 100, "item"],
	["Silencer___M110", "CUP_muzzle_snds_M110", 100, "item"],
	["Silencer___M14", "CUP_muzzle_snds_M14", 100, "item"],
	["Silencer___(M9)", "CUP_muzzle_snds_M9", 100, "item"],
	["Silencer___(M9)", "CUP_muzzle_snds_MicroUzi", 100, "item"],
	["Silencer___L115A1/AWM", "CUP_muzzle_snds_AWM", 100, "item"],
	["G36___Silencer___(black)", "CUP_muzzle_snds_G36_black", 100, "item"],
	["G36___Silencer___(desert)", "CUP_muzzle_snds_G36_desert", 100, "item"],
	["L85___Silencer", "CUP_muzzle_snds_L85", 100, "item"],
	["M16___/___M4___Silencer___(camo)", "CUP_muzzle_snds_M16_camo", 100, "item"],
	["M16___/___M4___Silencer___(black)", "CUP_muzzle_snds_M16", 100, "item"],
    ["Mk16___Silencer", "CUP_muzzle_snds_SCAR_L", 1000, "item"],
	["Mk16___Flash___Hider", "CUP_muzzle_mfsup_SCAR_L", 100, "item"],
	["Mk17___Silencer", "CUP_muzzle_snds_SCAR_H", 100, "item"],
	["Mk17___Flash___Hider", "CUP_muzzle_mfsup_SCAR_H", 100, "item"],
	["XM8___Silencer", "CUP_muzzle_snds_XM8", 100, "item"],

	["------------CUP Accessories------------", "error", 1],

	["Glock___17___Flashlight", "CUP_acc_Glock17_Flashlight", 100, "item"],
	["AN/PEQ__15___Laser", "CUP_acc_ANPEQ_15", 100, "item"],
	["AN/PEQ__2___Laser", "CUP_acc_ANPEQ_2", 100, "item"],
	["Flashlight___(black)", "CUP_acc_Flashlight", 100, "item"],
	["Flashlight___(woodland)", "CUP_acc_Flashlight_wdl", 100, "item"],
	["Flashlight___(desert)", "CUP_acc_Flashlight_desert", 100, "item"],
	["XM8___Underbarrel___Light___Module", "CUP_acc_XM8_light_module", 100, "item"],
	["AN/PEQ__2___Laser___(camo)", "CUP_acc_ANPEQ_2_camo", 100, "item"],
	["AN/PEQ__2___Laser___(camo)", "CUP_acc_ANPEQ_2_desert", 100, "item"],
	["AN/PEQ__2___Laser___(grey)", "CUP_acc_ANPEQ_2_grey", 100, "item"],
	["CZ___M3X___Pistol___Flashlight", "CUP_acc_CZ_M3X", 100, "item"],

	["------------CUP Optic------------", "error", 1],

	["PSO__1___Scope", "CUP_optic_PSO_1", 350, "item"],
	["PSO__3___Scope", "CUP_optic_PSO_3", 350, "item"],
	["Kobra___Reflex___Sight", "CUP_optic_Kobra", 350, "item"],
//	["GOSHAWK___TWS", "CUP_optic_GOSHAWK", 5000, "item"],
	["NSPU___Scope", "CUP_optic_NSPU", 350, "item"],
	["Pecheneg___Scope", "CUP_optic_PechenegScope", 400, "item"],
	["MAAWS___Aiming___Scope", "CUP_optic_MAAWS_Scope", 400, "item"],
	["SMAW___Optical___Scope", "CUP_optic_SMAW_Scope", 400, "item"],
	["Schmidt___&___Bender___3__12x60___PM___II", "CUP_optic_SB_3_12x50_PMII", 400, "item"],
	["AN/PAS___13C2___Heavy___Thermal___Weapon___Sight", "CUP_optic_AN_PAS_13c2", 100, "item"],
	["Leupold___Mk4", "CUP_optic_LeupoldMk4", 100, "item"],
	["EoTech___Holo___(black)", "CUP_optic_HoloBlack", 100, "item"],
	["EoTech___Holo___(Woodland)", "CUP_optic_HoloWdl", 100, "item"],
	["EoTech___Holo___(black)", "CUP_optic_HoloDesert", 100, "item"],
	["EoTech___533___HWS___(tan)", "CUP_optic_Eotech533", 100, "item"],
	["EoTech___533___HWS___(grey)", "CUP_optic_Eotech533Grey", 100, "item"],
	["Aimpoint___CompM4___(black)", "CUP_optic_CompM4", 100, "item"],
	["SUSAT___L9A1", "CUP_optic_SUSAT", 100, "item"],
	["Trijicon___ACOG___TA31F", "CUP_optic_ACOG", 100, "item"],
	["Advanced___Weapon___Sight___CWS", "CUP_optic_CWS", 100, "item"],
	["Leupold___VX__3___4.5__14x50mm", "CUP_optic_Leupold_VX3", 100, "item"],
	["AN/PVS__10___Night___Vision___Scope", "CUP_optic_AN_PVS_10", 100, "item"],
	["M68___CCO___(Black)", "CUP_optic_CompM2_Black", 100, "item"],
	["M68___CCO___(Woodland)", "CUP_optic_CompM2_Woodland", 100, "item"],
	["M68___CCO___(Woodland___2)", "CUP_optic_CompM2_Woodland2", 100, "item"],
	["M68___CCO___(Desert)", "CUP_optic_CompM2_Desert", 100, "item"],
	["Trijicon___ACOG", "CUP_optic_RCO", 100, "item"],
	["Trijicon___ACOG___(desert)", "CUP_optic_RCO_desert", 290, "item"],
	["Leupold___Mark___4___3__9x36mm___MR/T", "CUP_optic_LeupoldM3LR", 100, "item"],
	["Leupold___Mark___4___10x40mm___LR/T___(Desert)", "CUP_optic_LeupoldMk4_10x40_LRT_Desert", 100, "item"],
	["Leupold___Mark___4___10x40mm___LR/T___(Woodland)", "CUP_optic_LeupoldMk4_10x40_LRT_Woodland", 100, "item"],
	["Elcan___M145", "CUP_optic_ElcanM145", 100, "item"],
//	["AN/PAS___13C1___Light___Thermal___Weapon___Sight", "CUP_optic_AN_PAS_13c1", 5000, "item"],
	["Leupold___Mk4___CQ/T___1__3x14mm", "CUP_optic_LeupoldMk4_CQ_T", 100, "item"],
	["Elcan___SpecterDR", "CUP_optic_ELCAN_SpecterDR", 100, "item"],
	["Leupold___Mk4___MR/T___(tan)", "CUP_optic_LeupoldMk4_MRT_tan", 100, "item"],
	["Schmidt___&___Bender___1.1__4x20___PM___ShortDot", "CUP_optic_SB_11_4x20_PM", 100, "item"],
	["Meopta___ZD__Dot", "CUP_optic_ZDDot", 100, "item"],
	["Meopta___Rapid___Acquisition___Dot", "CUP_optic_MRad", 100, "item"],
	["Trijicon___Rx01___Red___Dot___sight___(desert)", "CUP_optic_TrijiconRx01_desert", 100, "item"],
	["Trijicon___Rx01___Red___Dot___sight___(black)", "CUP_optic_TrijiconRx01_black", 100, "item"],
	["AN/PVS__4___Night___Vision___Scope", "CUP_optic_AN_PVS_4", 3500, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["Gas Mask (NATO)", "H_CrewHelmetHeli_B", 200, "hat"],
	["Gas Mask (CSAT)", "H_CrewHelmetHeli_O", 200, "hat"],
	["Gas Mask (AAF)", "H_CrewHelmetHeli_I", 200, "hat"],
	["ECH", "H_HelmetB", 50, "hat"],
	["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	["SF Helmet", "H_HelmetSpecB", 50, "hat"],
	["SF Helmet (Black)", "H_HelmetSpecB_blk", 50, "hat"],
	["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 50, "hat"],
	["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 50, "hat"],
	["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	["Protector Helmet (Hex)", "H_HelmetO_ocamo", 50, "hat"],
	["Protector Helmet (Urban)", "H_HelmetO_oucamo", 50, "hat"],
	["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 50, "hat"],
	["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 50, "hat"],
	// ["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 50, "hat"],
	["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 50, "hat"],
	["MICH", "H_HelmetIA", 50, "hat"],
	// ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	// ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
//	["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
//	["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
//	["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	// ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	["Beret (Black)", "H_Beret_blk", 10, "hat"],
	["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	["Beret (NATO)", "H_Beret_02", 10, "hat"],
	// ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	// ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	// ["Beret (Red)", "H_Beret_red", 10, "hat"],
	// ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	// ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	// ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	// ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	// ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	// ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	// ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	["Booniehat (Tan)", "H_Booniehat_tan", 10, "hat"],
	["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	["Booniehat (Digi)", "H_Booniehat_dgtl", 10, "hat"],
	["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	["Cap (Black)", "H_Cap_blk", 10, "hat"],
	["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	["Cap (Green)", "H_Cap_grn", 10, "hat"],
	["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	["Cap (Red)", "H_Cap_red", 10, "hat"],
	["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"],
	// ["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"],

	["------------CUP Hat------------", "error", 1, "hat"],

	["CUP_H_C_Ushanka_01", "CUP_H_C_Ushanka_01", 50, "hat"],
	["CUP_H_C_Ushanka_02", "CUP_H_C_Ushanka_02", 50, "hat"],
	["CUP_H_C_Ushanka_03", "CUP_H_C_Ushanka_03", 50, "hat"],
	["CUP_H_C_Ushanka_04", "CUP_H_C_Ushanka_04", 50, "hat"],
	["CUP_H_C_Beanie_01", "CUP_H_C_Beanie_01", 50, "hat"],
	["CUP_H_C_Beanie_02", "CUP_H_C_Beanie_02", 50, "hat"],
	["CUP_H_C_Beanie_03", "CUP_H_C_Beanie_03", 50, "hat"],
	["CUP_H_C_Beanie_04", "CUP_H_C_Beanie_04", 50, "hat"],
	["CUP_H_C_Beret_01", "CUP_H_C_Beret_01", 50, "hat"],
	["CUP_H_C_Beret_02", "CUP_H_C_Beret_02", 50, "hat"],
	["CUP_H_C_Beret_03", "CUP_H_C_Beret_03", 50, "hat"],
	["CUP_H_C_Beret_04", "CUP_H_C_Beret_04", 50, "hat"],
	["CUP_H_GER_Boonie_desert", "CUP_H_GER_Boonie_desert", 50, "hat"],
	["CUP_H_GER_Boonie_Flecktarn", "CUP_H_GER_Boonie_Flecktarn", 50, "hat"],
	["CUP_H_NAPA_Fedora", "CUP_H_NAPA_Fedora", 50, "hat"],
	["CUP_H_PMC_PRR_Headset", "CUP_H_PMC_PRR_Headset", 50, "hat"],
	["CUP_H_PMC_EP_Headset", "CUP_H_PMC_EP_Headset", 50, "hat"],
	["CUP_H_PMC_Cap_Tan", "CUP_H_PMC_Cap_Tan", 50, "hat"],
	["CUP_H_PMC_Cap_Grey", "CUP_H_PMC_Cap_Grey", 50, "hat"],
	["CUP_H_PMC_Cap_PRR_Tan", "CUP_H_PMC_Cap_PRR_Tan", 50, "hat"],
	["CUP_H_PMC_Cap_PRR_Grey", "CUP_H_PMC_Cap_PRR_Grey", 50, "hat"],
	["CUP_H_RACS_Beret_Blue", "CUP_H_RACS_Beret_Blue", 50, "hat"],
	["CUP_H_RACS_Helmet_Des", "CUP_H_RACS_Helmet_Des", 50, "hat"],
	["CUP_H_RACS_Helmet_Goggles_Des", "CUP_H_RACS_Helmet_Goggles_Des", 50, "hat"],
	["CUP_H_RACS_Helmet_Headset_Des", "CUP_H_RACS_Helmet_Headset_Des", 50, "hat"],
	["CUP_H_RACS_Helmet_DPAT", "CUP_H_RACS_Helmet_DPAT", 50, "hat"],
	["CUP_H_RACS_Helmet_Goggles_DPAT", "CUP_H_RACS_Helmet_Goggles_DPAT", 50, "hat"],
	["CUP_H_RACS_Helmet_Headset_DPAT", "CUP_H_RACS_Helmet_Headset_DPAT", 50, "hat"],
	["CUP_H_SLA_TankerHelmet", "CUP_H_SLA_TankerHelmet", 50, "hat"],
	["CUP_H_SLA_Helmet", "CUP_H_SLA_Helmet", 50, "hat"],
	["CUP_H_SLA_Pilot_Helmet", "CUP_H_SLA_Pilot_Helmet", 50, "hat"],
	["CUP_H_SLA_OfficerCap", "CUP_H_SLA_OfficerCap", 50, "hat"],
	["CUP_H_SLA_SLCap", "CUP_H_SLA_SLCap", 50, "hat"],
	["CUP_H_SLA_Boonie", "CUP_H_SLA_Boonie", 50, "hat"],
	["CUP_H_SLA_Beret", "CUP_H_SLA_Beret", 50, "hat"],
	["CUP_H_TK_TankerHelmet", "CUP_H_TK_TankerHelmet", 50, "hat"],
	["CUP_H_TK_PilotHelmet", "CUP_H_TK_PilotHelmet", 50, "hat"],
	["CUP_H_TK_Helmet", "CUP_H_TK_Helmet", 50, "hat"],
	["CUP_H_TK_Lungee", "CUP_H_TK_Lungee", 50, "hat"],
	["CUP_H_TK_Beret", "CUP_H_TK_Beret", 50, "hat"],
	["CUP_H_TKI_SkullCap_01", "CUP_H_TKI_SkullCap_01", 50, "hat"],
	["CUP_H_TKI_SkullCap_02", "CUP_H_TKI_SkullCap_02", 50, "hat"],
	["CUP_H_TKI_SkullCap_03", "CUP_H_TKI_SkullCap_03", 50, "hat"],
	["CUP_H_TKI_SkullCap_04", "CUP_H_TKI_SkullCap_04", 50, "hat"],
	["CUP_H_TKI_SkullCap_05", "CUP_H_TKI_SkullCap_05", 50, "hat"],
	["CUP_H_TKI_SkullCap_06", "CUP_H_TKI_SkullCap_06", 50, "hat"],
	["CUP_H_TKI_Lungee_01", "CUP_H_TKI_Lungee_01", 50, "hat"],
	["CUP_H_TKI_Lungee_02", "CUP_H_TKI_Lungee_02", 50, "hat"],
	["CUP_H_TKI_Lungee_03", "CUP_H_TKI_Lungee_03", 50, "hat"],
	["CUP_H_TKI_Lungee_04", "CUP_H_TKI_Lungee_04", 50, "hat"],
	["CUP_H_TKI_Lungee_05", "CUP_H_TKI_Lungee_05", 50, "hat"],
	["CUP_H_TKI_Lungee_06", "CUP_H_TKI_Lungee_06", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_01", "CUP_H_TKI_Lungee_Open_01", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_02", "CUP_H_TKI_Lungee_Open_02", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_03", "CUP_H_TKI_Lungee_Open_03", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_04", "CUP_H_TKI_Lungee_Open_04", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_05", "CUP_H_TKI_Lungee_Open_05", 50, "hat"],
	["CUP_H_TKI_Lungee_Open_06", "CUP_H_TKI_Lungee_Open_06", 50, "hat"],
	["CUP_H_TKI_Pakol_1_01", "CUP_H_TKI_Pakol_1_01", 50, "hat"],
	["CUP_H_TKI_Pakol_1_02", "CUP_H_TKI_Pakol_1_02", 50, "hat"],
	["CUP_H_TKI_Pakol_1_03", "CUP_H_TKI_Pakol_1_03", 50, "hat"],
	["CUP_H_TKI_Pakol_1_04", "CUP_H_TKI_Pakol_1_04", 50, "hat"],
	["CUP_H_TKI_Pakol_1_05", "CUP_H_TKI_Pakol_1_05", 50, "hat"],
	["CUP_H_TKI_Pakol_1_06", "CUP_H_TKI_Pakol_1_06", 50, "hat"],
	["CUP_H_TKI_Pakol_2_01", "CUP_H_TKI_Pakol_2_01", 50, "hat"],
	["CUP_H_TKI_Pakol_2_02", "CUP_H_TKI_Pakol_2_02", 50, "hat"],
	["CUP_H_TKI_Pakol_2_03", "CUP_H_TKI_Pakol_2_03", 50, "hat"],
	["CUP_H_TKI_Pakol_2_04", "CUP_H_TKI_Pakol_2_04", 50, "hat"],
	["CUP_H_TKI_Pakol_2_05", "CUP_H_TKI_Pakol_2_05", 50, "hat"],
	["CUP_H_TKI_Pakol_2_06", "CUP_H_TKI_Pakol_2_06", 50, "hat"],
	["CUP_H_USMC_Officer_Cap", "CUP_H_USMC_Officer_Cap", 50, "hat"],
	["CUP_H_USMC_HelmetWDL", "CUP_H_USMC_HelmetWDL", 50, "hat"],
	["CUP_H_USMC_HeadSet_HelmetWDL", "CUP_H_USMC_HeadSet_HelmetWDL", 50, "hat"],
	["CUP_H_USMC_HeadSet_GoggleW_HelmetWDL", "CUP_H_USMC_HeadSet_GoggleW_HelmetWDL", 50, "hat"],
	["CUP_H_USMC_Crew_Helmet", "CUP_H_USMC_Crew_Helmet", 50, "hat"],
	["CUP_H_USMC_Goggles_HelmetWDL", "CUP_H_USMC_Goggles_HelmetWDL", 50, "hat"],
	["CUP_H_USMC_Helmet_Pilot", "CUP_H_USMC_Helmet_Pilot", 50, "hat"],
	["CUP_H_FR_Headset", "CUP_H_FR_Headset", 50, "hat"],
	["CUP_H_FR_Cap_Headset_Green", "CUP_H_FR_Cap_Headset_Green", 50, "hat"],
	["CUP_H_FR_Cap_Officer_Headset", "CUP_H_FR_Cap_Officer_Headset", 50, "hat"],
	["CUP_H_FR_BandanaGreen", "CUP_H_FR_BandanaGreen", 50, "hat"],
	["CUP_H_FR_BandanaWdl", "CUP_H_FR_BandanaWdl", 50, "hat"],
	["CUP_H_FR_Bandana_Headset", "CUP_H_FR_Bandana_Headset", 50, "hat"],
	["CUP_H_FR_Headband_Headset", "CUP_H_FR_Headband_Headset", 50, "hat"],
	["CUP_H_FR_ECH", "CUP_H_FR_ECH", 50, "hat"],
	["CUP_H_FR_BoonieMARPAT", "CUP_H_FR_BoonieMARPAT", 50, "hat"],
	["CUP_H_FR_BoonieWDL", "CUP_H_FR_BoonieWDL", 50, "hat"],
	["CUP_H_FR_BeanieGreen", "CUP_H_FR_BeanieGreen", 50, "hat"],
	["CUP_H_FR_PRR_BoonieWDL", "CUP_H_FR_PRR_BoonieWDL", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Blue", "CUP_H_Navy_CrewHelmet_Blue", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Brown", "CUP_H_Navy_CrewHelmet_Brown", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Green", "CUP_H_Navy_CrewHelmet_Green", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Red", "CUP_H_Navy_CrewHelmet_Red", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Violet", "CUP_H_Navy_CrewHelmet_Violet", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_White", "CUP_H_Navy_CrewHelmet_White", 50, "hat"],
	["CUP_H_Navy_CrewHelmet_Yellow", "CUP_H_Navy_CrewHelmet_Yellow", 50, "hat"]

];

uniformArray = compileFinal str
[
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 500, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 500, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 500, "uni"],

	//DLC Uniforms
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 1000, "uni"],
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 1000, "uni"],
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 1000, "uni"],
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 1000, "uni"],
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 1000, "uni"],

	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
	["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 50, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 50, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 50, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 50, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 50, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 50, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"],
	/*["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],*/
	["Polo (Competitor)", "U_Competitor", 25, "uni"],
	["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	/*["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 2500, "uni"],
	["Tron Light Suit (Red)", "U_O_Protagonist_VR", 2500, "uni"],
	["Tron Light Suit (Green)", "U_I_Protagonist_VR", 2500, "uni"],

	["------------CUP Uniform------------", "error", 1, "uni"],

	["CUP_O_TKI_Khet_Partug_01", "CUP_O_TKI_Khet_Partug_01", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_02", "CUP_O_TKI_Khet_Partug_02", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_03", "CUP_O_TKI_Khet_Partug_03", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_04", "CUP_O_TKI_Khet_Partug_04", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_05", "CUP_O_TKI_Khet_Partug_05", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_06", "CUP_O_TKI_Khet_Partug_06", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_07", "CUP_O_TKI_Khet_Partug_07", 250, "uni"],
	["CUP_O_TKI_Khet_Partug_08", "CUP_O_TKI_Khet_Partug_08", 250, "uni"],
	["CUP_O_TKI_Khet_Jeans_01", "CUP_O_TKI_Khet_Jeans_01", 250, "uni"],
	["CUP_O_TKI_Khet_Jeans_02", "CUP_O_TKI_Khet_Jeans_02", 250, "uni"],
	["CUP_O_TKI_Khet_Jeans_03", "CUP_O_TKI_Khet_Jeans_03", 250, "uni"],
	["CUP_O_TKI_Khet_Jeans_04", "CUP_O_TKI_Khet_Jeans_04", 250, "uni"],
	["CUP_U_C_Pilot_01", "CUP_U_C_Pilot_01", 250, "uni"],
	["CUP_U_C_Citizen_01", "CUP_U_C_Citizen_01", 250, "uni"],
	["CUP_U_C_Citizen_02", "CUP_U_C_Citizen_02", 250, "uni"],
	["CUP_U_C_Citizen_03", "CUP_U_C_Citizen_03", 250, "uni"],
	["CUP_U_C_Citizen_04", "CUP_U_C_Citizen_04", 250, "uni"],
	["CUP_U_C_Worker_01", "CUP_U_C_Worker_01", 250, "uni"],
	["CUP_U_C_Worker_02", "CUP_U_C_Worker_02", 250, "uni"],
	["CUP_U_C_Worker_03", "CUP_U_C_Worker_03", 250, "uni"],
	["CUP_U_C_Worker_04", "CUP_U_C_Worker_04", 250, "uni"],
	["CUP_U_C_Profiteer_01", "CUP_U_C_Profiteer_01", 250, "uni"],
	["CUP_U_C_Profiteer_02", "CUP_U_C_Profiteer_02", 250, "uni"],
	["CUP_U_C_Profiteer_03", "CUP_U_C_Profiteer_03", 250, "uni"],
	["CUP_U_C_Profiteer_04", "CUP_U_C_Profiteer_04", 250, "uni"],
	["CUP_U_C_Woodlander_01", "CUP_U_C_Woodlander_01", 250, "uni"],
	["CUP_U_C_Woodlander_02", "CUP_U_C_Woodlander_02", 250, "uni"],
	["CUP_U_C_Woodlander_03", "CUP_U_C_Woodlander_03", 250, "uni"],
	["CUP_U_C_Woodlander_04", "CUP_U_C_Woodlander_04", 250, "uni"],
	["CUP_U_C_Villager_01", "CUP_U_C_Villager_01", 250, "uni"],
	["CUP_U_C_Villager_02", "CUP_U_C_Villager_02", 250, "uni"],
	["CUP_U_C_Villager_03", "CUP_U_C_Villager_03", 250, "uni"],
	["CUP_U_C_Villager_04", "CUP_U_C_Villager_04", 250, "uni"],
	["CUP_U_B_CZ_WDL_TShirt", "CUP_U_B_CZ_WDL_TShirt", 250, "uni"],
	["CUP_U_B_GER_Tropentarn_1", "CUP_U_B_GER_Tropentarn_1", 250, "uni"],
	["CUP_U_B_GER_Tropentarn_2", "CUP_U_B_GER_Tropentarn_2", 250, "uni"],
	["CUP_U_B_GER_Flecktarn_1", "CUP_U_B_GER_Flecktarn_1", 250, "uni"],
	["CUP_U_B_GER_Flecktarn_2", "CUP_U_B_GER_Flecktarn_2", 250, "uni"],
	["CUP_U_B_USMC_Officer", "CUP_U_B_USMC_Officer", 250, "uni"],
	["CUP_U_B_USMC_PilotOverall", "CUP_U_B_USMC_PilotOverall", 250, "uni"],
	["CUP_U_B_USMC_MARPAT_WDL_Sleeves", "CUP_U_B_USMC_MARPAT_WDL_Sleeves", 250, "uni"],
	["CUP_U_B_USMC_MARPAT_WDL_RolledUp", "CUP_U_B_USMC_MARPAT_WDL_RolledUp", 250, "uni"],
	["CUP_U_B_USMC_MARPAT_WDL_Kneepad", "CUP_U_B_USMC_MARPAT_WDL_Kneepad", 250, "uni"],
	["CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", "CUP_U_B_USMC_MARPAT_WDL_TwoKneepads", 250, "uni"],
	["CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad", "CUP_U_B_USMC_MARPAT_WDL_RollUpKneepad", 250, "uni"],
	["CUP_U_B_FR_SpecOps", "CUP_U_B_FR_SpecOps", 250, "uni"],
	["CUP_U_B_FR_Scout", "CUP_U_B_FR_Scout", 250, "uni"],
	["CUP_U_B_FR_Scout1", "CUP_U_B_FR_Scout1", 250, "uni"],
	["CUP_U_B_FR_Scout2", "CUP_U_B_FR_Scout2", 250, "uni"],
	["CUP_U_B_FR_Scout3", "CUP_U_B_FR_Scout3", 250, "uni"],
	["CUP_U_B_FR_Officer", "CUP_U_B_FR_Officer", 250, "uni"],
	["CUP_U_B_FR_Corpsman", "CUP_U_B_FR_Corpsman", 250, "uni"],
	["CUP_U_B_FR_DirAction", "CUP_U_B_FR_DirAction", 250, "uni"],
	["CUP_U_B_FR_DirAction2", "CUP_U_B_FR_DirAction2", 250, "uni"],
	["CUP_U_B_FR_Light", "CUP_U_B_FR_Light", 250, "uni"],
	["CUP_U_I_GUE_Flecktarn", "CUP_U_I_GUE_Flecktarn", 250, "uni"],
	["CUP_U_I_GUE_Flecktarn2", "CUP_U_I_GUE_Flecktarn2", 250, "uni"],
	["CUP_U_I_GUE_Flecktarn3", "CUP_U_I_GUE_Flecktarn3", 250, "uni"],
	["CUP_U_I_GUE_Woodland1", "CUP_U_I_GUE_Woodland1", 250, "uni"],
	["CUP_U_I_RACS_PilotOverall", "CUP_U_I_RACS_PilotOverall", 250, "uni"],
	["CUP_U_I_RACS_Desert_1", "CUP_U_I_RACS_Desert_1", 250, "uni"],
	["CUP_U_I_RACS_Desert_2", "CUP_U_I_RACS_Desert_2", 250, "uni"],
	["CUP_U_I_RACS_Urban_1", "CUP_U_I_RACS_Urban_1", 250, "uni"],
	["CUP_U_I_RACS_Urban_2", "CUP_U_I_RACS_Urban_2", 250, "uni"],
	["CUP_U_O_SLA_Officer", "CUP_U_O_SLA_Officer", 250, "uni"],
	["CUP_U_O_SLA_Officer_Suit", "CUP_U_O_SLA_Officer_Suit", 250, "uni"],
	["CUP_U_O_SLA_MixedCamo", "CUP_U_O_SLA_MixedCamo", 250, "uni"],
	["CUP_U_O_SLA_Green", "CUP_U_O_SLA_Green", 250, "uni"],
	["CUP_U_O_SLA_Urban", "CUP_U_O_SLA_Urban", 250, "uni"],
	["CUP_U_O_SLA_Desert", "CUP_U_O_SLA_Desert", 250, "uni"],
	["CUP_U_O_SLA_Overalls_Pilot", "CUP_U_O_SLA_Overalls_Pilot", 250, "uni"],
	["CUP_U_O_SLA_Overalls_Tank", "CUP_U_O_SLA_Overalls_Tank", 250, "uni"],
	["CUP_U_O_Partisan_TTsKO", "CUP_U_O_Partisan_TTsKO", 250, "uni"],
	["CUP_U_O_Partisan_TTsKO_Mixed", "CUP_U_O_Partisan_TTsKO_Mixed", 250, "uni"],
	["CUP_U_O_Partisan_VSR_Mixed1", "CUP_U_O_Partisan_VSR_Mixed1", 250, "uni"],
	["CUP_U_O_Partisan_VSR_Mixed2", "CUP_U_O_Partisan_VSR_Mixed2", 250, "uni"],
	["CUP_U_O_TK_Officer", "CUP_U_O_TK_Officer", 250, "uni"],
	["CUP_U_O_TK_MixedCamo", "CUP_U_O_TK_MixedCamo", 250, "uni"],
	["CUP_U_O_TK_Green", "CUP_U_O_TK_Green", 250, "uni"],
	["CUP_U_B_GER_Ghillie", "CUP_U_B_GER_Ghillie", 500, "uni"],
	["CUP_U_B_GER_Fleck_Ghillie", "CUP_U_B_GER_Fleck_Ghillie", 500, "uni"],
	["CUP_U_B_USMC_Ghillie_WDL", "CUP_U_B_USMC_Ghillie_WDL", 500, "uni"],
	["CUP_U_I_Ghillie_Top", "CUP_U_I_Ghillie_Top", 500, "uni"],
	["CUP_U_O_TK_Ghillie", "CUP_U_O_TK_Ghillie", 500, "uni"],
	["CUP_U_O_TK_Ghillie_Top", "CUP_U_O_TK_Ghillie_Top", 500, "uni"]

];

vestArray = compileFinal str
[
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"], // DLC Vest
	["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"], // DLC Vest
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"], // DLC Vest
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Tactical Vest (Police)", "V_TacVest_blk_POLICE", -1, "vest"],
	["Tactical Vest (Stavrou)", "V_I_G_resistanceLeader_F", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"],
	["CTRG Plate Carrier Rig Mk.1 (Light)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["CTRG Plate Carrier Rig Mk.2 (Heavy)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["Carrier Special Rig (Green)", "V_PlateCarrierSpec_rgr", -1, "vest"],
	["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"], // DLC Vest
	["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"], // DLC Vest
	["Press Vest", "V_Press_F", -1, "vest"],

	["------------CUP Vest------------", "error", 1, "vest"],

	["CUP_V_B_GER_Carrier_Rig", "CUP_V_B_GER_Carrier_Rig", 150, "vest"],
	["CUP_V_B_GER_Carrier_Rig_2", "CUP_V_B_GER_Carrier_Rig_2", 150, "vest"],
	["CUP_V_B_GER_Carrier_Vest", "CUP_V_B_GER_Carrier_Vest", 150, "vest"],
	["CUP_V_B_GER_Carrier_Vest_2", "CUP_V_B_GER_Carrier_Vest_2", 150, "vest"],
	["CUP_V_B_GER_Carrier_Vest_3", "CUP_V_B_GER_Carrier_Vest_3", 150, "vest"],
	["CUP_V_B_GER_Vest_1", "CUP_V_B_GER_Vest_1", 150, "vest"],
	["CUP_V_B_GER_Vest_2", "CUP_V_B_GER_Vest_2", 150, "vest"],
	["CUP_V_B_MTV", "CUP_V_B_MTV", 150, "vest"],
	["CUP_V_B_MTV_Patrol", "CUP_V_B_MTV_Patrol", 150, "vest"],
	["CUP_V_B_MTV_Pouches", "CUP_V_B_MTV_Pouches", 150, "vest"],
	["CUP_V_B_MTV_noCB", "CUP_V_B_MTV_noCB", 150, "vest"],
	["CUP_V_B_MTV_Marksman", "CUP_V_B_MTV_Marksman", 150, "vest"],
	["CUP_V_B_MTV_PistolBlack", "CUP_V_B_MTV_PistolBlack", 150, "vest"],
	["CUP_V_B_MTV_LegPouch", "CUP_V_B_MTV_LegPouch", 150, "vest"],
	["CUP_V_B_MTV_MG", "CUP_V_B_MTV_MG", 150, "vest"],
	["CUP_V_B_MTV_Mine", "CUP_V_B_MTV_Mine", 150, "vest"],
	["CUP_V_B_MTV_TL", "CUP_V_B_MTV_TL", 150, "vest"],
	["CUP_V_B_PilotVest", "CUP_V_B_PilotVest", 150, "vest"],
	["CUP_V_B_RRV_TL", "CUP_V_B_RRV_TL", 150, "vest"],
	["CUP_V_B_RRV_Officer", "CUP_V_B_RRV_Officer", 150, "vest"],
	["CUP_V_B_RRV_Medic", "CUP_V_B_RRV_Medic", 150, "vest"],
	["CUP_V_B_RRV_DA1", "CUP_V_B_RRV_DA1", 150, "vest"],
	["CUP_V_B_RRV_DA2", "CUP_V_B_RRV_DA2", 150, "vest"],
	["CUP_V_B_RRV_MG", "CUP_V_B_RRV_MG", 150, "vest"],
	["CUP_V_B_RRV_Light", "CUP_V_B_RRV_Light", 150, "vest"],
	["CUP_V_B_RRV_Scout", "CUP_V_B_RRV_Scout", 150, "vest"],
	["CUP_V_B_RRV_Scout2", "CUP_V_B_RRV_Scout2", 150, "vest"],
	["CUP_V_B_RRV_Scout3", "CUP_V_B_RRV_Scout3", 150, "vest"],
	["CUP_V_B_LHDVest_Blue", "CUP_V_B_LHDVest_Blue", 150, "vest"],
	["CUP_V_B_LHDVest_Brown", "CUP_V_B_LHDVest_Brown", 150, "vest"],
	["CUP_V_B_LHDVest_Green", "CUP_V_B_LHDVest_Green", 150, "vest"],
	["CUP_V_B_LHDVest_Red", "CUP_V_B_LHDVest_Red", 150, "vest"],
	["CUP_V_B_LHDVest_Violet", "CUP_V_B_LHDVest_Violet", 150, "vest"],
	["CUP_V_B_LHDVest_White", "CUP_V_B_LHDVest_White", 150, "vest"],
	["CUP_V_B_LHDVest_Yellow", "CUP_V_B_LHDVest_Yellow", 150, "vest"],
	["CUP_V_I_Carrier_Belt", "CUP_V_I_Carrier_Belt", 150, "vest"],
	["CUP_V_I_Guerilla_Jacket", "CUP_V_I_Guerilla_Jacket", 150, "vest"],
	["CUP_V_I_RACS_Carrier_Vest", "CUP_V_I_RACS_Carrier_Vest", 150, "vest"],
	["CUP_V_I_RACS_Carrier_Vest_2", "CUP_V_I_RACS_Carrier_Vest_2", 150, "vest"],
	["CUP_V_I_RACS_Carrier_Vest_3", "CUP_V_I_RACS_Carrier_Vest_3", 150, "vest"],
	["CUP_V_O_SLA_Carrier_Belt", "CUP_V_O_SLA_Carrier_Belt", 150, "vest"],
	["CUP_V_O_SLA_Carrier_Belt02", "CUP_V_O_SLA_Carrier_Belt02", 150, "vest"],
	["CUP_V_O_SLA_Carrier_Belt03", "CUP_V_O_SLA_Carrier_Belt03", 150, "vest"],
	["CUP_V_O_SLA_Flak_Vest01", "CUP_V_O_SLA_Flak_Vest01", 150, "vest"],
	["CUP_V_O_SLA_Flak_Vest02", "CUP_V_O_SLA_Flak_Vest02", 150, "vest"],
	["CUP_V_O_SLA_Flak_Vest03", "CUP_V_O_SLA_Flak_Vest03", 150, "vest"],
	["CUP_V_O_TK_CrewBelt", "CUP_V_O_TK_CrewBelt", 150, "vest"],
	["CUP_V_O_TK_OfficerBelt", "CUP_V_O_TK_OfficerBelt", 150, "vest"],
	["CUP_V_O_TK_OfficerBelt2", "CUP_V_O_TK_OfficerBelt2", 150, "vest"],
	["CUP_V_O_TK_Vest_1", "CUP_V_O_TK_Vest_1", 150, "vest"],
	["CUP_V_O_TK_Vest_2", "CUP_V_O_TK_Vest_2", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_01", "CUP_V_OI_TKI_Jacket1_01", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_02", "CUP_V_OI_TKI_Jacket1_02", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_03", "CUP_V_OI_TKI_Jacket1_03", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_04", "CUP_V_OI_TKI_Jacket1_04", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_05", "CUP_V_OI_TKI_Jacket1_05", 150, "vest"],
	["CUP_V_OI_TKI_Jacket1_06", "CUP_V_OI_TKI_Jacket1_06", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_01", "CUP_V_OI_TKI_Jacket2_01", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_02", "CUP_V_OI_TKI_Jacket2_02", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_03", "CUP_V_OI_TKI_Jacket2_03", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_04", "CUP_V_OI_TKI_Jacket2_04", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_05", "CUP_V_OI_TKI_Jacket2_05", 150, "vest"],
	["CUP_V_OI_TKI_Jacket2_06", "CUP_V_OI_TKI_Jacket2_06", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_01", "CUP_V_OI_TKI_Jacket3_01", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_02", "CUP_V_OI_TKI_Jacket3_02", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_03", "CUP_V_OI_TKI_Jacket3_03", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_04", "CUP_V_OI_TKI_Jacket3_04", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_05", "CUP_V_OI_TKI_Jacket3_05", 150, "vest"],
	["CUP_V_OI_TKI_Jacket3_06", "CUP_V_OI_TKI_Jacket3_06", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_01", "CUP_V_OI_TKI_Jacket4_01", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_02", "CUP_V_OI_TKI_Jacket4_02", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_03", "CUP_V_OI_TKI_Jacket4_03", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_04", "CUP_V_OI_TKI_Jacket4_04", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_05", "CUP_V_OI_TKI_Jacket4_05", 150, "vest"],
	["CUP_V_OI_TKI_Jacket4_06", "CUP_V_OI_TKI_Jacket4_06", 150, "vest"]

];

backpackArray = compileFinal str
[
	//["Parachute", "B_Parachute", 200, "backpack"],

	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],

	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Hex)", "B_FieldPack_ocamo", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Olive)", "B_FieldPack_oli", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],

	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],

	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],

	["Carryall (Coyote)", "B_Carryall_cbr", 500, "backpack"],
	["Carryall (Hex)", "B_Carryall_ocamo", 500, "backpack"],
	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["Remote Designator Bag (NATO)", "B_Static_Designator_01_weapon_F", 2000, "backpack"],
	["Remote Designator Bag (CSAT)", "O_Static_Designator_02_weapon_F", 2000, "backpack"],
	["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 1500, "backpack"],
	["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 1500, "backpack"],
	["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 1500, "backpack"],
	["UAV Terminal (NATO)", "B_UavTerminal", 1500, "gps"],
	["UAV Terminal (CSAT)", "O_UavTerminal", 1500, "gps"],
	["UAV Terminal (AAF)", "I_UavTerminal", 1500, "gps"],
	["GPS", "ItemGPS", 500, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles Brown", "NVGoggles", 500, "nvg"],
	["NV Goggles Black", "NVGoggles_OPFOR", 500, "nvg"],
	["NV Goggles Green", "NVGoggles_INDEP", 500, "nvg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator", "Laserdesignator", 5000, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"],
	["Aviator Glasses", "G_Aviator", 25, "gogg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Balaclava (Black)", "G_Balaclava_blk", 100, "gogg"],
	["Balaclava (Olive)", "G_Balaclava_oli", 100, "gogg"],
	["Balaclava (Combat Goggles)", "G_Balaclava_combat", 100, "gogg"],
	["Balaclava (Low Profile Goggles)", "G_Balaclava_lowprofile", 100, "gogg"],
	["Bandanna (Aviator)", "G_Bandanna_aviator", 100, "gogg"],
	["Bandanna (Beast)", "G_Bandanna_beast", 100, "gogg"],
	["Bandanna (Black)", "G_Bandanna_blk", 100, "gogg"],
	["Bandanna (Khaki)", "G_Bandanna_khk", 100, "gogg"],
	["Bandanna (Olive)", "G_Bandanna_oli", 100, "gogg"],
	["Bandanna (Shades)", "G_Bandanna_shades", 100, "gogg"],
	["Bandanna (Sport)", "G_Bandanna_sport", 100, "gogg"],
	["Bandanna (Tan)", "G_Bandanna_tan", 100, "gogg"],
	["Combat Goggles", "G_Combat", 100, "gogg"],
	["VR Goggles", "G_Goggles_VR", 100, "gogg"],
	["Ladies Shades (ICE)", "G_Lady_Blue", 100, "gogg"],
	["Ladies Shades (Sea)", "G_Lady_Dark", 100, "gogg"],
	["Ladies Shades (Iridium)", "G_Lady_Mirror", 100, "gogg"],
	["Ladies Shades (Fire)", "G_Lady_Red", 100, "gogg"],
	["Low Profile Goggles", "G_Lowprofile", 100, "gogg"],
	["Shades (Black)", "G_Shades_Black", 100, "gogg"],
	["Shades (Blue)", "G_Shades_Blue", 100, "gogg"],
	["Shades (Green)", "G_Shades_Green", 100, "gogg"],
	["Shades (Red)", "G_Shades_Red", 100, "gogg"],
	["Spectacle Glasses", "G_Spectacles", 100, "gogg"],
	["Tinted Spectacles", "G_Spectacles_Tinted", 100, "gogg"],
	["Sport Shades (Vulcan)", "G_Sport_Blackred", 100, "gogg"],
	["Sport Shades (Shadow)", "G_Sport_BlackWhite", 100, "gogg"],
	["Sport Shades (Poison)", "G_Sport_Blackyellow", 100, "gogg"],
	["Sport Shades (Style)", "G_Sport_Checkered", 100, "gogg"],
	["Sport Shades (Yetti)", "G_Sport_Greenblack", 100, "gogg"],
	["Sport Shades (Fire)", "G_Sport_Red", 100, "gogg"],
	["Square Spectacles", "G_Squares", 100, "gogg"],
	["Square Shades", "G_Squares_Tinted", 100, "gogg"],
	["Tactical Shades", "G_Tactical_Black", 100, "gogg"],
	["Tactical Glasses", "G_Tactical_Clear", 100, "gogg"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Base in a Box (Small)", "Land_CargoBox_V1_F", 25000, "object"],
	["Base in a Box (Medium)", "Land_Cargo20_yellow_F", 50000, "object"],
	["Base in a Box (Large)", "Land_Cargo40_white_F", 75000, "object"],
	["Base locker (PIN: 0000)", "Land_Device_assembled_F", 25000, "object"],  //Cael817, SNAFU,Used for base operations <-- Destroyable
	["Safe (PIN: 0000)", "Box_NATO_AmmoVeh_F", 10000, "ammocrate"],
	["Portable ATM Machine", "Land_Atm_01_F", 75000, "object"],	
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	["Medium Grey Cargo Container", "Land_Cargo20_grey_F", 1000, "object"],
	["Large Red Cargo Container", "Land_Cargo40_red_F", 3000, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	["Shoot House Wall", "Land_Shoot_House_Wall_F", 800, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 1500, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 5000, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"],
	["Scaffolding", "Land_Scaffolding_F", 250, "object"],
	["Camp Fire", "Land_FirePlace_F", 100, "object"],
	["Small Platform", "Land_GH_Platform_F", 500, "object"],
//	["Basketball Court", "Land_BC_Court_F", 1000, "object"],
	["Concrete Block", "BlockConcrete_F", 500, "object"],
	["Food sacks", "Land_Sacks_goods_F", 2500, "object"], // Added on player request
	["Water Barrel", "Land_BarrelWater_F", 2500, "object"]  // Added on player request
//	["Portable ATM Machine", "Land_Atm_01_F", 150000, "object"]
//	["Large Vehicle Camo Net", "CamoNet_INDP_big_F", 2500, "object"]

];


allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kart", "C_Kart_01_F", 1250, "vehicle"],

	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],

	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],

	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],

	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],

	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],
	["Tempest Device", "O_Truck_03_device_F", 4000, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 2000, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 2000, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 15000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 2000, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 15000, "vehicle"],

	["------------CUP Vehicles------------", "error", 1, "vehicle"],

	["CUP_C_UAZ_Open_TK_CIV", "CUP_C_UAZ_Open_TK_CIV", 1500, "vehicle"],
	["CUP_C_UAZ_Unarmed_TK_CIV", "CUP_C_UAZ_Unarmed_TK_CIV", 1500, "vehicle"],
	["CUP_C_Octavia_CIV", "CUP_C_Octavia_CIV", 1000, "vehicle"],
	["CUP_C_SUV_CIV", "CUP_C_SUV_CIV", 1000, "vehicle"],
	["CUP_C_Ural_Civ_01", "CUP_C_Ural_Civ_01", 5000, "vehicle"],
	["CUP_C_Ural_Open_Civ_01", "CUP_C_Ural_Open_Civ_01", 4000, "vehicle"],
	["CUP_C_Skoda_Red_Civ", "CUP_C_Skoda_Red_Civ", 1000, "vehicle"],
	["CUP_C_Datsun", "CUP_C_Datsun", 1000, "vehicle"],
	["CUP_B_M1030", "CUP_B_M1030", 500, "vehicle"],
	["CUP_C_Datsun_4seat", "CUP_C_Datsun_4seat", 1000, "vehicle"],
	["CUP_C_Datsun_Covered", "CUP_C_Datsun_Covered", 1000, "vehicle"],
	["CUP_C_Datsun_Plain", "CUP_C_Datsun_Plain", 1000, "vehicle"],
	["CUP_C_Datsun_Tubeframe", "CUP_C_Datsun_Tubeframe", 2000, "vehicle"],
	["CUP_C_Golf4_red_Civ", "CUP_C_Golf4_red_Civ", 1000, "vehicle"],
	["CUP_I_Ural_UN", "CUP_I_Ural_UN", 5000, "vehicle"],
	["CUP_B_Ural_Empty_CDF", "CUP_B_Ural_Empty_CDF", 5000, "vehicle"],
	["CUP_O_Ural_Empty_CHDKZ", "CUP_O_Ural_Empty_CHDKZ", 5000, "vehicle"],
	["CUP_O_Ural_Empty_RU", "CUP_O_Ural_Empty_RU", 5000, "vehicle"],
	["CUP_B_Ural_CDF", "CUP_B_Ural_CDF", 5000, "vehicle"],
	["CUP_C_LR_Transport_CTK", "CUP_C_LR_Transport_CTK", 5000, "vehicle"],
	["CUP_B_HMMWV_Transport_USA", "CUP_B_HMMWV_Transport_USA", 3000, "vehicle"],
	["CUP_B_LR_Transport_CZ_D", "CUP_B_LR_Transport_CZ_D", 2500, "vehicle"],
	["CUP_B_Ural_Refuel_CDF", "CUP_B_Ural_Refuel_CDF", 9000, "vehicle"],
	["CUP_B_Ural_Repair_CDF", "CUP_B_Ural_Repair_CDF", 12500, "vehicle"],
	["CUP_B_Ural_Reammo_CDF", "CUP_B_Ural_Reammo_CDF", 27500, "vehicle"],
	["CUP_O_UAZ_Unarmed_CHDKZ", "CUP_O_UAZ_Unarmed_CHDKZ", 1500, "vehicle"],
	["CUP_B_HMMWV_Unarmed_USA", "CUP_B_HMMWV_Unarmed_USA", 2000, "vehicle"],
	["CUP_B_LR_Ambulance_CZ_D", "CUP_B_LR_Ambulance_CZ_D", 1000, "vehicle"],
	["CUP_B_Ural_Open_CDF", "CUP_B_Ural_Open_CDF", 5000, "vehicle"]

];

armoredArray = compileFinal str
[
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"],

	["------------CUP Vehicles------------", "error", 1, "vehicle"],

	["CUP_O_UAZ_AGS30_CHDKZ", "CUP_O_UAZ_AGS30_CHDKZ", 10000, "vehicle"],
	["CUP_O_UAZ_MG_CHDKZ", "CUP_O_UAZ_MG_CHDKZ", 7000, "vehicle"],
	["CUP_O_UAZ_SPG9_CHDKZ", "CUP_O_UAZ_SPG9_CHDKZ", 10000, "vehicle"],
	["CUP_B_Ural_ZU23_CDF", "CUP_B_Ural_ZU23_CDF", 10000, "vehicle"],
	["CUP_O_Ural_CHDKZ", "CUP_O_Ural_CHDKZ", 6000, "vehicle"],
	["CUP_I_Datsun_PK", "CUP_I_Datsun_PK", 7500, "vehicle"],
	["CUP_BAF_Jackal2_GMG_D", "CUP_BAF_Jackal2_GMG_D", 17500, "vehicle"],
	["CUP_B_Dingo_Des", "CUP_B_Dingo_Des", 17500, "vehicle"],
	["CUP_B_Dingo_GL_Des", "CUP_B_Dingo_GL_Des", 17500, "vehicle"],
	["CUP_B_HMMWV_AGS_GPK_ACR", "CUP_B_HMMWV_AGS_GPK_ACR", 25000, "vehicle"],
	["CUP_I_SUV_Armored_ION", "CUP_I_SUV_Armored_ION", 25000, "vehicle"],	
	["CUP_B_HMMWV_Avenger_USA", "CUP_B_HMMWV_Avenger_USA", 30000, "vehicle"],
	["CUP_B_HMMWV_Terminal_USA", "CUP_B_HMMWV_Terminal_USA", 15000, "vehicle"],
	["CUP_B_LR_MG_CZ_W", "CUP_B_LR_MG_CZ_W", 7500, "vehicle"],
	["CUP_B_LR_Special_CZ_W", "CUP_B_LR_Special_CZ_W", 17500, "vehicle"],
	["CUP_O_LR_MG_TKA", "CUP_O_LR_MG_TKA", 17500, "vehicle"],
	["CUP_I_BRDM2_ATGM_NAPA", "CUP_I_BRDM2_ATGM_NAPA", 23000, "vehicle"],
	["CUP_I_BRDM2_ATGM_TK_Gue", "CUP_I_BRDM2_ATGM_TK_Gue", 12000, "vehicle"],
	["CUP_I_BRDM2_HQ_NAPA", "CUP_I_BRDM2_HQ_NAPA", 12000, "vehicle"],
	["CUP_B_LAV25M240_USMC", "CUP_B_LAV25M240_USMC", 32511, "vehicle"],
	["CUP_B_LAV25_USMC", "CUP_B_LAV25_USMC", 32500, "vehicle"],
	["CUP_O_BTR60_TK", "CUP_O_BTR60_TK", 20000, "vehicle"],
	["CUP_O_BTR90_HQ_RU", "CUP_O_BTR90_HQ_RU", 2500, "vehicle"],
	["CUP_B_M1128_MGS_Desert", "CUP_B_M1128_MGS_Desert", 45000, "vehicle"],
	["CUP_B_M1133_MEV_Woodland", "CUP_B_M1133_MEV_Woodland", 7500, "vehicle"],
	["CUP_B_M1135_ATGMV_Desert", "CUP_B_M1135_ATGMV_Desert", 25000, "vehicle"]

];

tanksArray = compileFinal str
[
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 28500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 30000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 34500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 55000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 55000, "vehicle"],

	["------------CUP Vehicles------------", "error", 1, "vehicle"],

	["CUP_B_AAV_USMC", "CUP_B_AAV_USMC", 22500, "vehicle"],
	["CUP_B_M113_Med_USA", "CUP_B_M113_Med_USA", 13000, "vehicle"],
	["CUP_B_M113_USA", "CUP_B_M113_USA", 17500, "vehicle"],
	["CUP_B_M163_USA", "CUP_B_M163_USA", 22500, "vehicle"],
	["CUP_B_M1A1_DES_US_Army", "CUP_B_M1A1_DES_US_Army", 60000, "vehicle"],
	["CUP_B_M1A2_TUSK_MG_DES_USMC", "CUP_B_M1A2_TUSK_MG_DES_USMC", 60000, "vehicle"],
	["CUP_B_M2Bradley_USA_D", "CUP_B_M2Bradley_USA_D", 40000, "vehicle"],
	["CUP_I_T55_TK_GUE", "CUP_I_T55_TK_GUE", 50000, "vehicle"],
	["CUP_O_T72_CHDKZ", "CUP_O_T72_CHDKZ", 50000, "vehicle"],
	["CUP_O_T72_TKA", "CUP_O_T72_TKA", 50000, "vehicle"],
	["CUP_B_ZSU23_CDF", "CUP_B_ZSU23_CDF", 47000, "vehicle"],
	["CUP_O_ZSU23_TK", "CUP_O_ZSU23_TK", 47000, "vehicle"],
	["CUP_I_T34_NAPA", "CUP_I_T34_NAPA", 17500, "vehicle"]

];


helicoptersArray = compileFinal str
[
    ["------------Unarmed Helicopter------------", "error", 1, "vehicle"],

	["M-900 Civilian", "C_Heli_Light_01_civil_F", 3000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159

	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101

	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],

	["-------------Armed Helicopter------------", "error", 1, "vehicle"],

	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 30000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 30000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 35000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 60000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 35000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 60000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 45000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 100000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 100000, "vehicle"], // Mi-28 with gunner

	["------------CUP Unarmed Helicopter------------", "error", 1, "vehicle"],


	["CUP_B_UH60L_Unarmed_FFV_MEV_US", "CUP_B_UH60L_Unarmed_FFV_MEV_US", 7500, "vehicle"],
	["CUP_B_UH60L_Unarmed_FFV_US", "CUP_B_UH60L_Unarmed_FFV_US", 7000, "vehicle"],
	["CUP_B_AW159_Unarmed_GB", "CUP_B_AW159_Unarmed_GB", 9000, "vehicle"],

	["-------------CUP Armed Helicopter------------", "error", 1, "vehicle"],

	["CUP_B_AH1Z", "CUP_B_AH1Z", 70000, "vehicle"],
	["CUP_B_AH1_AT_BAF", "CUP_B_AH1_AT_BAF", 60000, "vehicle"],
	["CUP_B_AH64D_ES_USA", "CUP_B_AH64D_ES_USA", 60000, "vehicle"],
	["CUP_B_AW159_Armed_BAF", "CUP_B_AW159_Armed_BAF", 45000, "vehicle"],
	["CUP_B_CH47F_GB", "CUP_B_CH47F_GB", 30000, "vehicle"],
	["CUP_B_CH53E_USMC", "CUP_B_CH53E_USMC", 10000, "vehicle"],
	["CUP_I_UH1H_TK_GUE", "CUP_I_UH1H_TK_GUE", 20000, "vehicle"],
	["CUP_B_MH60S_FFV_USMC", "CUP_B_MH60S_FFV_USMC", 25000, "vehicle"],
	["CUP_B_MH60S_USMC", "CUP_B_MH60S_USMC", 25000, "vehicle"],
	["CUP_B_UH1Y_GUNSHIP_USMC", "CUP_B_UH1Y_GUNSHIP_USMC", 40000, "vehicle"],
	["CUP_B_UH60L_US", "CUP_B_UH60L_US", 30000, "vehicle"],
	["CUP_O_Mi8_CHDKZ", "CUP_O_Mi8_CHDKZ", 30000, "vehicle"],
	["CUP_B_Mi17_medevac_CDF", "CUP_B_Mi17_medevac_CDF", 27500, "vehicle"],
	["CUP_B_Mi171Sh_Unarmed_ACR", "CUP_B_Mi171Sh_Unarmed_ACR", 30000, "vehicle"],
	["CUP_B_Mi24_D_CDF", "CUP_B_Mi24_D_CDF", 85000, "vehicle"],
	["CUP_B_Mi35_CZ", "CUP_B_Mi35_CZ", 60000, "vehicle"],
	["CUP_B_AW159_Hellfire_GB", "CUP_B_AW159_Hellfire_GB", 25000, "vehicle"],
	["CUP_B_SA330_Puma_HC1_BAF", "CUP_B_SA330_Puma_HC1_BAF", 30000, "vehicle"],
	["CUP_O_KA50_SLA", "CUP_O_KA50_SLA", 90000, "vehicle"],
	["CUP_O_KA50_RU", "CUP_O_KA50_RU", 90000, "vehicle"]

];

planesArray = compileFinal str
[
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 50000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 55000, "vehicle"],
	["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 70000, "vehicle"],
	["To-199 Neophron CAS", "O_Plane_CAS_02_F", 70000, "vehicle"],
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 50000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 50000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 60000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 50000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 60000, "vehicle"],

	["-------------CUP Unarrmed Planes------------", "error", 1, "vehicle"],

	["CUP_C_DC3_CIV", "CUP_C_DC3_CIV", 5000, "vehicle"],
	["CUP_O_C130J_TKA", "CUP_O_C130J_TKA", 3500, "vehicle"],
	["CUP_I_C130J_Cargo_RACS", "CUP_I_C130J_Cargo_RACS", 3500, "vehicle"],
	["CUP_O_C130J_Cargo_TKA", "CUP_O_C130J_Cargo_TKA", 3000, "vehicle"],
	["CUP_B_C130J_USMC", "CUP_B_C130J_USMC", 3000, "vehicle"],
	["CUP_B_C130J_Cargo_USMC", "CUP_B_C130J_Cargo_USMC", 3000, "vehicle"],
	["CUP_B_C130J_GB", "CUP_B_C130J_GB", 4000, "vehicle"],
	["CUP_B_C130J_Cargo_GB", "CUP_B_C130J_Cargo_GB", 4000, "vehicle"],
	["CUP_I_C130J_AAF", "CUP_I_C130J_AAF", 5000, "vehicle"],
	["CUP_I_C130J_Cargo_AAF", "CUP_I_C130J_Cargo_AAF", 5000, "vehicle"],
	["CUP_I_C130J_RACS", "CUP_I_C130J_RACS", 5000, "vehicle"],
	["CUP_B_MV22_USMC", "CUP_B_MV22_USMC", 10000, "vehicle"],

	["-------------CUP Armed Planes------------", "error", 1, "vehicle"],

	["CUP_B_A10_AT_USA", "CUP_B_A10_AT_USA", 70000, "vehicle"],
	["CUP_B_Su25_CDF", "CUP_B_Su25_CDF", 70000, "vehicle"],
	["CUP_B_F35B_AA_USMC", "CUP_B_F35B_AA_USMC", 70000, "vehicle"],
	["CUP_B_AV8B_CAP_USMC", "CUP_B_AV8B_CAP_USMC", 50000, "vehicle"],
	["CUP_B_GR9_MK82_GB", "CUP_B_GR9_MK82_GB", 70000, "vehicle"],
	["CUP_O_SU34_LGB_SLA", "CUP_O_SU34_LGB_SLA", 70000, "vehicle"],
	["CUP_O_SU34_AGM_RU", "CUP_O_SU34_AGM_RU", 70000, "vehicle"]
];

boatsArray = compileFinal str
[
	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_01_rescue_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_01_police_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]
];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", "#(rgb,1,1,1)color(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Grey", "#(rgb,1,1,1)color(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", "#(rgb,1,1,1)color(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", "#(rgb,1,1,1)color(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", "#(rgb,1,1,1)color(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", "#(rgb,1,1,1)color(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", "#(rgb,1,1,1)color(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", "#(rgb,1,1,1)color(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", "#(rgb,1,1,1)color(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", "#(rgb,1,1,1)color(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", "#(rgb,1,1,1)color(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", "#(rgb,1,1,1)color(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["Red Camo", "client\images\vehicleTextures\redcamo.jpg"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.paa"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.paa"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["Bloodshot", _texDir + "bloodshot.paa"],
			["Carbon", _texDir + "carbon.paa"],
			["Confederate", _texDir + "confederate.paa"],
			["Denim", _texDir + "denim.paa"],
			["Digital", _texDir + "digi.paa"],
			["Digital Black", _texDir + "digi_black.paa"],
			["Digital Desert", _texDir + "digi_desert.paa"],
			["Digital Woodland", _texDir + "digi_wood.paa"],
			["Doritos", _texDir + "doritos.paa"],
			["Drylands", _texDir + "drylands.paa"],
			["Hello Kitty", _texDir + "hellokitty.paa"],
			["Hex", _texDir + "hex.paa"],
			["Hippie", _texDir + "hippie.paa"],
			["Leopard", _texDir + "leopard.paa"],
			["Mountain Dew", _texDir + "mtndew.paa"],
			["'Murica", _texDir + "murica.paa"],
			["Orange Camo", _texDir + "camo_orange.paa"],
			["Pink Camo", _texDir + "camo_pink.paa"],
			["Pride", _texDir + "pride.paa"],
			["Psych", _texDir + "psych.paa"],
			["Red Camo", _texDir + "camo_red.paa"],
			["Rusty", _texDir + "rusty.paa"],
			["Sand", _texDir + "sand.paa"],
			["Snake", _texDir + "snake.paa"],
			["Stripes", _texDir + "stripes.paa"],
			["Stripes 2", _texDir + "stripes2.paa"],
			["Stripes 3", _texDir + "stripes3.paa"],
			["Swamp", _texDir + "swamp.paa"],
			["Tiger", _texDir + "tiger.paa"],
			["Trippy", _texDir + "rainbow.paa"],
			["Union Jack", _texDir + "unionjack.paa"],
			["Urban", _texDir + "urban.paa"],
			["Weed", _texDir + "weed.paa"],
			["Woodland", _texDir + "woodland.paa"],
			["Woodland Dark", _texDir + "wooddark.paa"],
			["Woodland Tiger", _texDir + "woodtiger.paa"],
			["Green Camo", "client\images\vehicleTextures\greencamo.jpg"],
			["Pink Camo", "client\images\vehicleTextures\pinkcamo.jpg"],
			["Grey Camo", "client\images\vehicleTextures\greycamo.jpg"],
			["Digital Green Camo", "client\images\vehicleTextures\digicamo.jpg"]

		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]

];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Redbull", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\energydrink.paa", 30, 15],
	["Heinz Beans", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 3000, 1500],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 500, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\jerrycan.paa", 200, 100],
	["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\water.paa", 100, 50],
	["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\briefcase.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
