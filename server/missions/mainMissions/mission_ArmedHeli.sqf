// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"B_Heli_Light_01_armed_F",
		"B_Heli_Transport_01_F",
		"B_Heli_Attack_01_F",
		"O_Heli_Light_02_F",
		"O_Heli_Attack_02_F",
		"I_Heli_light_03_F",
		"CUP_O_KA50_RU",
		"CUP_B_SA330_Puma_HC1_BAF",
		"CUP_B_AW159_Hellfire_GB",
		"CUP_B_Mi35_CZ",
		"CUP_B_Mi24_D_CDF",
		"CUP_B_Mi171Sh_Unarmed_ACR",
		"CUP_O_Mi8_CHDKZ",
		"CUP_B_UH1Y_GUNSHIP_USMC",
		"CUP_B_AH1_AT_BAF",
		"CUP_B_AH1Z",
		"CUP_B_AH64D_ES_USA",
		"CUP_B_CH47F_GB",
		"CUP_I_UH1H_TK_GUE"
		
	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
