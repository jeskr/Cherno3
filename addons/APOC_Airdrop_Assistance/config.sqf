//Configuration for Airdrop Assistance
//Author: Apoc

APOC_AA_coolDownTime = 300; //Expressed in sec

APOC_AA_VehOptions =
[ // ["Menu Text",		ItemClassname,				Price,	"Drop Type"]
["Quadbike (Civilian)", "C_Quadbike_01_F", 			5000, 	"vehicle"],
["Offroad HMG", 		"B_G_Offroad_01_armed_F",	15000, 	"vehicle"],
["Strider HMG", 		"I_MRAP_03_hmg_F", 			25000, 	"vehicle"]
];

APOC_AA_SupOptions =
[// ["stringItemName", 	"Crate Type for fn_refillBox 	,Price," drop type"]
["Base in a Box (Small)","Land_CargoBox_V1_F",			30000, "base"],
["Base in a Box (Medium)","Land_Cargo20_yellow_F",		60000, "base1"],
["Base in a Box (Large)","Land_Cargo40_white_F",		85000, "base2"],
["Launchers", 			"mission_USLaunchers", 			40000, "supply"],
["Assault Rifle", 		"mission_USSpecial", 			30000, "supply"],
["Sniper Rifles", 		"airdrop_Snipers", 				40000, "supply"],
["DLC Rifles", 			"airdrop_DLC_Rifles", 			30000, "supply"],
["DLC LMGs", 			"airdrop_DLC_LMGs", 			35000, "supply"],

//"Menu Text",			"Crate Type", 			"Cost", "drop type"
["Food",				"Land_Sacks_goods_F",	5000, 	"picnic"],
["Water",				"Land_BarrelWater_F",	5000, 	"picnic"]
];