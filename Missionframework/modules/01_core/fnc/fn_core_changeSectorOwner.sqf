/*
    KPLIB_fnc_core_changeSectorOwner

    File: fn_core_changeSectorOwner.sqf
    Author: KP Liberation Dev Team - https://github.com/KillahPotatoes
    Date: 2018-05-07
    Last Update: 2018-05-07
    License: GNU General Public License v3.0 - https://www.gnu.org/licenses/gpl-3.0.html

    Description:
    Changes the ownership of a given sector to the player or enemy side by updating the blufor sectors array.

    Parameter(s):
        0: STRING - Sector marker name.
        1: BOOL - True if it should be changed to player side, false if to enemy side. (Default: true)

    Returns:
    BOOL
*/

params ["_sectorToChange", ["_toPlayerSide", true]];

if (_toPlayerSide) then {
    KPLIB_sectors_blufor pushBack _sectorToChange;
    call KPLIB_fnc_core_checkWinCond;
} else {
    KPLIB_sectors_blufor = KPLIB_sectors_blufor - [_sectorToChange];
};

publicVariable "KPLIB_sectors_blufor";

true