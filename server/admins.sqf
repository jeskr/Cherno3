//	@file Name: A3Wasteland_settings\admins.sqf

// Admin menu (U key) access levels

/*******************************************************
 Player UID examples :

	"1234567887654321", // Meatwad
	"8765432112345678", // Master Shake
	"1234876543211234", // Frylock
	"1337133713371337"  // Carl

 Important: The player UID must always be placed between
            double quotes (") and all lines need to have
            a comma (,) except the last one.
********************************************************/

// Low Administrators: manage & spectate players, remove hacked vehicles
lowAdmins = 
[
	//"76561198150671586"  // Tom Hawks
	"76561198039235452",   //Po Tato
	"76561197962647925",   //Rambo_BD
	"76561198142034493",   //VUKDK
	"76561197999556118",   //Nescius
	"76561198024246757"    //TheMiniGlossy
];

// High Administrators: manage & spectate players, remove hacked vehicles, show player tags
highAdmins = 
[
	
];

// Server Owners: access to everything, including god mode, money, guns, and vehicles
serverOwners = 
[
	"76561198078557321", // <Jes>
	"76561198074851801"  // <Magnus>
];

if (typeName lowAdmins == "ARRAY") then { lowAdmins = compileFinal str lowAdmins };
if (typeName highAdmins == "ARRAY") then { highAdmins = compileFinal str highAdmins };
if (typeName serverOwners == "ARRAY") then { serverOwners = compileFinal str serverOwners };

publicVariable "lowAdmins";
publicVariable "highAdmins";
publicVariable "serverOwners";
