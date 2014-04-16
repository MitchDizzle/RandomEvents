#pragma semicolon 1

#define PLUGIN_VERSION "1.0.0"

new Handle:cRE_Enabled 	= INVALID_HANDLE;
new bool:bRE_Enabled 	= true;

public Plugin:myinfo = {
	name = "Random Events Core",
	author = "Mitchell",
	description = "Random Events will happen throughout the game.",
	version = PLUGIN_VERSION,
	url = "SnBx.info"
}

public OnPluginStart()
{
	CreateConVar("sm_randomevents_version", PLUGIN_VERSION, "Random Events will happen throughout the game.", FCVAR_PLUGIN|FCVAR_NOTIFY|FCVAR_DONTRECORD);
	cRE_Enabled = CreateConVar("re_enabled", "1", "Random Event enabled", FCVAR_PLUGIN, true, 0.0, true, 1.0);
}