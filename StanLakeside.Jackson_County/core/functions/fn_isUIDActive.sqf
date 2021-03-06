/*
	File: fn_isUIDActive.sqf
	
	
	Description:
	Sees if the UID passed to it is in the server.
	
	Returns:
	True if there was a match, false if not in server.
*/
private["_uid","_ret"];
_uid = param [0,"",[""]];
if(_uid isEqualTo "") exitWith {false}; //Bad UID
_ret = false;
{
	if(getPlayerUID _x isEqualTo _uid) exitWith {_ret = true;};
} foreach playableUnits;

_ret;