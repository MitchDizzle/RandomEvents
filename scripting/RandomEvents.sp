#pragma semicolon 1
#include <sdktools>

#define PLUGIN_VERSION "1.0.0"

//Event Settings
new CurrentEvent = -1;
new NextEvent = -1;
new NextEventTime = 0;
new EventTimeEnd = 0;

//Event Config:
enum REEnum {
	String:EventName[32],
	String:EventPlugin[32],
	Float:EventChance,
	String:EventArgs[256],
	String:EventCmdStart[64],
	String:EventCmdSEnd[64],
	EventTime,
	
}
new Handle:EventConfig = INVALID_HANDLE;

//Convars:
new Handle:cRE_Enabled 	= INVALID_HANDLE;
new bool:bRE_Enabled 	= true;
new RE_EventCacheType 	= 0;
new RE_EventCacheAmount	= 0;

//Forwards:
new Handle:fEventStart 	= INVALID_HANDLE;
new Handle:fEventEnd 	= INVALID_HANDLE;

public Plugin:myinfo = {
	name = "Random Events Core",
	author = "Mitchell",
	description = "Random Events will happen throughout the game.",
	version = PLUGIN_VERSION,
	url = "SnBx.info"
}

public APLRes:AskPluginLoad2(Handle:myself, bool:late, String:error[], err_max)
{
	fEventStart = CreateGlobalForward("RE_EventStart", ET_Event, Param_String, Param_String, Param_String, Param_String, Param_Cell);
	fEventEnd = CreateGlobalForward("RE_EventEnd", ET_Event, Param_String, Param_String, Param_String, Param_String);
	//forward Action:RE_EventStart(const String:plugin[], const String:name[], const String:args[], const String:command[], lasts=0);
	//forward Action:RE_EventEnd(const String:plugin[], const String:name[], const String:args[], const String:command[]);
	
	/*CreateNative("RE_GetEvent", Native_GetEvent);
	CreateNative("RE_SetEvent", Native_SetEvent);
	CreateNative("RE_NextEvent", Native_GetNextEvent);
	CreateNative("RE_NextEventTime", Native_GetNextEventTime); //returns a date stamp or 0
	CreateNative("RE_GetEventEndTime", Native_GetEventEndTime); //returns a date stamp or 0
	*/
	RegPluginLibrary("RandomEvents");
	return APLRes_Success;
}

public OnPluginStart()
{
	CreateConVar("sm_randomevents_version", PLUGIN_VERSION, "Random Events will happen throughout the game.", FCVAR_PLUGIN|FCVAR_NOTIFY|FCVAR_DONTRECORD);
	cRE_Enabled = CreateConVar("re_enabled", "1", "Random Event enabled", FCVAR_PLUGIN, true, 0.0, true, 1.0);
}
public OnConfigsExecuted()
{
	ReloadConfig();
}

/*>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
----------------------Random Event Configs----------------------------------------------
<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<*/
public ReloadConfig()
{
	//Get configs/RandomEvents/config.txt
	//Get configs/RandomEvents/events.txt
}
