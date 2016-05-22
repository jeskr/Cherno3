// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refilltruck.sqf
//	@file Author: AgentRev
//	@file Created: 30/06/2013 15:28

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_truck", "_truckItems", "_item", "_qty", "_mag"];
_truck = _this;

// Clear prexisting cargo first
clearMagazineCargoGlobal _truck;
clearWeaponCargoGlobal _truck;
clearItemCargoGlobal _truck;

// Item type, Item, # of items, # of magazines per weapon
_truckItems =
[
	["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(0,2)],
	["itm", "FirstAidKit", RANDOM_BETWEEN(3,6)],
	["itm", "Medikit", RANDOM_BETWEEN(1,3)],
	["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
	["itm", ["muzzle_snds_M", "muzzle_snds_H", "muzzle_snds_H_MG", "muzzle_snds_B", "muzzle_snds_acp"], RANDOM_BETWEEN(0,3)],
	["itm", ["optic_Aco", "optic_ACO_grn", "optic_MRCO", "optic_Hamr", "optic_Arco"], RANDOM_BETWEEN(2,4)],
	["wep", ["arifle_Katiba_GL_F", "arifle_MX_GL_F"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(4,5)],
	["mag", "1Rnd_HE_Grenade_shell", RANDOM_BETWEEN(5,10)],
	["wep", ["srifle_GM6_LRPS_F", "srifle_LRR_LRPS_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
	["wep", ["launch_RPG32_F", "launch_Titan_short_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,3)],
	["wep", ["CUP_arifle_AK107_GL_kobra", "CUP_arifle_FNFAL_ANPVS4"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
    ["wep", ["CUP_arifle_G36A_camo", "CUP_arifle_L85A2_GL_Holo_laser", "CUP_arifle_M16A4_ACOG_Laser"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
	["wep", ["CUP_arifle_Sa58V_ACOG_Laser", "CUP_arifle_Mk16_STD_EGLM_ACOG_Laser", "CUP_arifle_Mk17_CQC_SFG_Aim_mfsup"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
	["wep", ["LMG_Mk200_F", "LMG_Zafir_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
	["wep", ["CUP_srifle_M24_wdl_LeupoldMk4LRT", "CUP_srifle_SVD_wdl_ghillie", "CUP_srifle_DMR_LeupoldMk4"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
	["wep", ["CUP_srifle_M110", "CUP_srifle_ksvk"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
	["wep", ["CUP_srifle_AS50", "CUP_srifle_M107_LeupoldVX3"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,3)],
	["wep", ["launch_RPG32_F", "launch_NLAW_F", "launch_Titan_short_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
	["wep", ["CUP_launch_Igla", "CUP_launch_FIM92Stinger", "CUP_launch_9K32Strela"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(1,2)],
	["wep", ["launch_Titan_F"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
	["wep", ["CUP_launch_Javelin", "CUP_launch_Metis"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
    ["wep", ["CUP_launch_M47", "CUP_launch_M136", "CUP_launch_MAAWS_Scope", "CUP_launch_NLAW"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
    ["wep", ["CUP_launch_RPG7V", "CUP_launch_RPG18", "CUP_launch_Mk153Mod0_SMAWOptics", "CUP_launch_Mk153Mod0"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
	["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(3,8)],
	["mag", "HandGrenade", RANDOM_BETWEEN(0,5)]
];

[_truck, _truckItems] call processItems;
