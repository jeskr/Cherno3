// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
		"B_MBT_01_cannon_F",
		"O_MBT_02_cannon_F",
		"I_MBT_03_cannon_F",
		"CUP_I_T34_NAPA",
		"CUP_O_ZSU23_TK",
		"CUP_B_ZSU23_CDF",
		"CUP_O_T72_TKA",
		"CUP_O_T72_CHDKZ",
		"CUP_I_T55_TK_GUE",
		"CUP_B_M2Bradley_USA_D",
		"CUP_B_M1A2_TUSK_MG_DES_USMC",
		"CUP_B_M1A1_DES_US_Army",
		"CUP_B_M163_USA",
		"CUP_B_M113_USA",
		"CUP_B_M113_Med_USA",
		"CUP_B_AAV_USMC"
		
	] call BIS_fnc_selectRandom;

	_missionType = "Main Battle Tank";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
