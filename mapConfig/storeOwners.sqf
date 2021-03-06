// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
storeOwnerConfig = compileFinal str
[
	["GenStore1", 2, [26,0.25], []],
	["GenStore2", 2, [125,0.25], []],
	["GenStore3", 2, [130,0.25], []],
	["GenStore4", 1, [240,0.25], []],

	["GunStore2", 1, [100,0.25], []],
	["GunStore3", 1, [310,0.25], []],
	//["GunStore4", 3, [209,0.25], []],
	["GunStore5", 2, [310,0.25], []],

	["VehStore1", 1, [270,0.25], ["Boats"]],
	["VehStore2", 1, [47.3,0.25], ["Boats"]],
	["VehStore3", 1, [245,0.25], ["Boats"]],
	["VehStore4", 1, [175,0.25], ["Boats"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	['GenStore1', [['weapon', ''], ['uniform', 'U_B_PilotCoveralls']]],
	['GenStore2', [['weapon', ''], ['uniform', 'U_O_PilotCoveralls']]],
	['GenStore3', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],
	['GenStore4', [['weapon', ''], ['uniform', 'U_I_pilotCoveralls']]],


	["GunStore2", [["weapon", ''], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore3", [["weapon", ''], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore5", [["weapon", ''], ["uniform", "U_IG_Guerilla1_1"]]],


	['VehStore1', [['weapon', ''], ['uniform', 'U_BG_Guerilla2_1']]],
	['VehStore2', [['weapon', ''], ['uniform', 'U_Rangemaster']]],
	['VehStore3', [['weapon', ''], ['uniform', 'U_B_HeliPilotCoveralls']]],
	['VehStore4', [['weapon', ''], ['uniform', 'U_Competitor']]]
];
