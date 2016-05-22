// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_LightArmVeh.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"B_MRAP_01_hmg_F",
		"B_MRAP_01_gmg_F",
		"O_MRAP_02_hmg_F",
		"O_MRAP_02_gmg_F",
		"I_MRAP_03_hmg_F",
		"I_MRAP_03_gmg_F",
		"CUP_O_LR_MG_TKA",
		"CUP_B_LR_Special_CZ_W",
		"CUP_B_HMMWV_Terminal_USA",
		"CUP_B_HMMWV_Avenger_USA",
		"CUP_I_SUV_Armored_ION",
		"CUP_B_HMMWV_AGS_GPK_ACR",
		"CUP_B_Dingo_GL_Des",
		"CUP_B_Dingo_Des",
		"CUP_BAF_Jackal2_GMG_D",
		"CUP_I_Datsun_PK",
		"CUP_O_Ural_CHDKZ",
		"CUP_B_Ural_ZU23_CDF",
		"CUP_O_UAZ_AGS30_CHDKZ",
		"CUP_O_UAZ_MG_CHDKZ"
		
	] call BIS_fnc_selectRandom;

	_missionType = "Light Armed Vehicle";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
