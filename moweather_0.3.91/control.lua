MLC = {
	Math=true,
	Timers=true,
	Misc=true,
	Entity=true,
	Debug=false
}
MoSave = require "mologiccore.base" 
Random = MoMisc.Random --Localise the psuedo random function.

ModInterface,MoConfig = {},{}
require "config"

--------------Data Saving/Setup-----------------
MoWeatherSaved = {Surfaces={}}

function LoadSurfaceConfig(surf,cfg)
	MoWeatherSaved.Surfaces[surf]=cfg
	local LT = MoWeatherSaved.Surfaces[surf]
	
	LT.ID = surf
	LT.Time = {Override=false,DayStart=0,DayTurn=0,DayEnd=0,Light=100,Name="Day"}
	LT.Weather = {Override=false,Name="Clear",CoolDown=0,Data={}}
	LT.Wind = {Override=false,Wind=0.02,Rate=0.018}
	LT.Data = {DayFroze=false,NoWeather=false,IgnoreLight=false,LightOver=false,WindOver=false,ModLight={Generic=0}}
end

for i,d in pairs(MoConfig.Surfaces) do
	LoadSurfaceConfig(i,d)
end

local Save=function(T) DefaultSaveLoad(MoWeatherSaved,T) end
RegisterSaveTable("MoWeather",MoWeatherSaved,Save,true)
------------------------------------------------

require "scripts.day-night"
require "scripts.wind"
require "scripts.weathers"

require "weather.weather"
	
function MoManageWeather()
	for i,d in pairs(MoConfig.Surfaces) do
		DayNightCycle(d) ManageWind(d) ManageWeather(d)
		
		local Wind,Sun = CalculateValues(d)
		
		local Surface = game.surfaces[i]
		if not d.Data.WindOver then Surface.wind_speed = MoMath.Approach(Surface.wind_speed,Wind,0.001) end
		if not d.Data.LightOver then Surface.daytime = MoMath.Approach(Surface.daytime,Sun,(d.TimeSettings.DayLength/d.TimeSettings.TransitionMult)) end
	end
end

MoTimers.CacheFunction("MoWeatherManage",MoManageWeather)

function Intialize()
	for i,d in pairs(MoConfig.Surfaces) do
		if d.ManageTime == true then
			local Surface = game.surfaces[i]
			Surface:freeze_daytime()
			Surface.daytime=0.99
		end
	end
	MoTimers.CreateTimer("MoWeatherManage",0.1,0,false,MoManageWeather)
end

script.on_configuration_changed(Intialize)
script.on_init(Intialize) 

function CalculateValues(Dat)
	local W = Dat.Weather.Data
	
	if Dat.Data.IgnoreLight then W = 0 end --No Weather lighting wanted...
	
	local ModLighting = 0
	for i,d in pairs(Dat.Data.ModLight or {}) do
		ModLighting = ModLighting+d
	end
	
	local Wind = (Dat.Wind.Wind+W.W)/2
	local Sun = ((MoMath.Clamp((Dat.Time.Light-W.L)+ModLighting,0,100)/100)/2)+0.49
	return Wind,Sun
end

ModInterface.stopweather = function(surf,bool) CurrentWeather.SVars.NoWeather = bool or false end
ModInterface.ignoreweatherlight = function(surf,bool) CurrentWeather.SVars.IgnoreLight = bool or false end
ModInterface.freezedaytime = function(surf,bool) CurrentWeather.SVars.DayFroze = bool or false end
ModInterface.overridedaylight = function(surf,bool) CurrentWeather.SVars.LightOver = bool or false end
ModInterface.overridewindspeed = function(surf,bool) CurrentWeather.SVars.WindOver = bool or false end

ModInterface.addlightchange = function(surf,name,val)
	CurrentWeather.SVars.ModLight = CurrentWeather.SVars.ModLight or {}
	CurrentWeather.SVars.ModLight[name or "Generic"] = val or 0 
end

remote.add_interface("MoWeather", ModInterface)


















