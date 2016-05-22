// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: serverVars.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer && hasInterface) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

if (isServer) then
{
	#include "setupServerPVars.sqf"
};

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
	"C_Quadbike_01_F",
	"CUP_B_M1030",
	"CUP_C_Golf4_red_Civ",
	"CUP_O_UAZ_Unarmed_CHDKZ",
	"CUP_B_HMMWV_Unarmed_USA",
	"CUP_B_HMMWV_Transport_USA",
	"CUP_C_LR_Transport_CTK",
	"CUP_C_SUV_CIV"

];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
	"I_G_Offroad_01_armed_F",
	"CUP_O_UAZ_MG_CHDKZ",
	"CUP_I_Datsun_PK"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
//	"I_Truck_02_Fuel_F",
//	"O_Truck_02_Fuel_F",
//	"I_Truck_02_medical_F",
//	"O_Truck_02_medical_F",
	"B_MRAP_01_F",
	"O_MRAP_02_F",
	"I_MRAP_03_F"
];

//Water Vehicles - Random Spawns
waterVehicles =
[
//	"B_Lifeboat",
//	"O_Lifeboat",
//	"C_Rubberboat",
//	"B_SDV_01_F",
//	"O_SDV_01_F",
//	"I_SDV_01_F",
//	"B_Boat_Transport_01_F",
//	"O_Boat_Transport_01_F",
//	"I_Boat_Transport_01_F",
//	"I_G_Boat_Transport_01_F",
	"B_Boat_Armed_01_minigun_F",
	"O_Boat_Armed_01_hmg_F",
	"I_Boat_Armed_01_minigun_F",
	"C_Boat_Civil_01_F",
	"C_Boat_Civil_01_police_F",
	"C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
	"B_supplyCrate_F",
	"Land_Sacks_goods_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
	"B_supplyCrate_F",
	"B_supplyCrate_F",
	"CamoNet_INDP_open_F",
	"CamoNet_INDP_open_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Large_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Small_F",
	"Land_BagBunker_Tower_F",
	"Land_BagBunker_Tower_F",
	"Land_BarGate_F",
	"Land_Canal_Wall_Stairs_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_Canal_WallSmall_10m_F",
	"Land_CncBarrierMedium4_F",
	"Land_CncShelter_F",
	"Land_CncWall4_F",
	"Land_HBarrier_1_F",
	"Land_HBarrier_3_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrier_5_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierBig_F",
	"Land_HBarrierTower_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall4_F",
	"Land_HBarrierWall6_F",
	"Land_HBarrierWall6_F",
	"Land_MetalBarrel_F",
	"Land_Mil_ConcreteWall_F",
//	"Land_Mil_WallBig_4m_F",
	"Land_Pipes_large_F",
	"Land_RampConcrete_F",
	"Land_RampConcreteHigh_F",
	"Land_Sacks_goods_F",
	"Land_Shoot_House_Wall_F",
	"Land_BarrelWater_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
];

//Object List - Random Helis.
staticHeliList =
[
	"B_Heli_Light_01_F",
	"B_Heli_Light_01_F",
	"CUP_B_UH60L_Unarmed_FFV_MEV_US",
	"CUP_B_UH60L_Unarmed_FFV_US",
	"CUP_B_Mi171Sh_Unarmed_ACR",
	"CUP_B_AW159_Unarmed_GB"
];

//Object List - Random Planes.
staticPlaneList =
[
	"B_Plane_CAS_01_F",
	"O_Plane_CAS_02_F",
	"I_Plane_Fighter_03_CAS_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
	"arifle_Katiba_F",
	"arifle_Katiba_C_F",
	"arifle_Katiba_GL_F",
	"arifle_MXC_F",
	"arifle_MX_F",
	"arifle_MX_GL_F",
	"arifle_MX_SW_F",
	"arifle_MXM_F",
	"srifle_EBR_F",
	"LMG_Mk200_F",
	"LMG_Zafir_F",
    "CUP_arifle_AKM",
    "CUP_arifle_AKS",
    "CUP_arifle_AK107_kobra",
    "CUP_arifle_AKS74UN_kobra_snds",
    "CUP_arifle_AK74_GL_kobra",
    "CUP_arifle_MG36_camo",
	"CUP_arifle_L85A2_Holo_laser",
	"CUP_arifle_L85A2_ACOG_Laser",
	"CUP_arifle_M16A4_Aim_Laser",
	"CUP_arifle_M4A1_camo_AIM_snds",
	"CUP_arifle_Sa58V_Aim_Laser",
	"CUP_arifle_Mk16_STD_EGLM_ACOG_Laser",
	"CUP_hgun_M9",
	"CUP_hgun_glock17_snds"
];

vehicleAddition =
[
	"muzzle_snds_L", // 9mm
	"muzzle_snds_M", // 5.56mm
	"muzzle_snds_H", // 6.5mm
	"muzzle_snds_H_MG", // 6.5mm LMG
	"muzzle_snds_B", // 7.62mm
	"muzzle_snds_acp", // .45 ACP
    "CUP_muzzle_snds_M14",
    "CUP_muzzle_snds_M9",
    "CUP_muzzle_snds_G36_black",
    "CUP_muzzle_snds_L85",
    "CUP_muzzle_snds_M16_camo",
    "CUP_muzzle_snds_M16",
    "CUP_muzzle_snds_SCAR_L",
    "CUP_muzzle_mfsup_SCAR_L",
    "CUP_muzzle_snds_SCAR_H",
    "CUP_muzzle_mfsup_SCAR_H",
	"optic_Hamr",
	"optic_Aco",
	"optic_ACO_grn",
	"optic_aco_smg",
	"optic_Holosight",
	"optic_Holosight_smg",
    "CUP_optic_PSO_1",
    "CUP_optic_PSO_3",
    "CUP_optic_Kobra",
    "CUP_optic_LeupoldMk4",
    "CUP_optic_HoloBlack",
    "CUP_optic_Eotech533",
    "CUP_optic_ACOG",
    "CUP_optic_CompM2_Black",
    "CUP_optic_RCO",
	"Medikit",
	"Medikit",
	"FirstAidKit",
	"ToolKit"
];

vehicleAddition2 =
[

	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_yellow",
	"Chemlight_red",
	"CUP_6Rnd_HE_M203",
	"CUP_6Rnd_FlareWhite_M203",
    "CUP_6Rnd_FlareGreen_M203",
    "CUP_6Rnd_FlareRed_M203"

];
