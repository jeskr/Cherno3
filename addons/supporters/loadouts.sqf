// Supporter Loadouts Start here 

_uid = getPlayerUID player;


_Hancock = [
"76561198116676674"
];




switch (true) do {
	case (_uid in _Hancock):
		{
		removeVest _player;
		removeBackpack _player;
		removeUniform _player;
		removeHeadgear _player;
		_player addBackpack "B_Kitbag_mcamo";
		_player forceAddUniform "U_B_CombatUniform_mcam";
		_player addVest "V_PlateCarrierGL_mtp";
		_player addGoggles "G_Balaclava_combat";
		_player addHeadgear "H_HelmetSpecB_sand";	
		_player addBackpack "B_Kitbag_mcamo";
        _player addItemtoBackpack "NVGoggles";
        _player addMagazine "30Rnd_556x45_Stanag";
        _player addWeapon "arifle_Mk20C_F";
        _player addPrimaryWeaponItem "optic_aco_smg";
        _player addMagazine "30Rnd_556x45_Stanag";
        _player addItem "HandGrenade";
        _player addItem "SmokeShell";
		_player addItem "Medikit";
		};
		

			
	default
	
		{
		//_player addBackpack "B_FieldPack_cbr";
		//_player addWeapon "hgun_mas_mak_F";
		//_player addWeapon "hgun_mas_mp7_F";
		//_player addMagazine "40Rnd_mas_46x30_Mag";
		//_player addMagazine "8Rnd_mas_9x18_Mag";
		//_player addMagazine "8Rnd_mas_9x18_Mag";
		//_player addItem "Medikit";
		//_player addItem "FirstAidKit";
		//_player selectWeapon "hgun_mas_mp7_F"
		};
	
		
	};
