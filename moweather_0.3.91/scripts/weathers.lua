WeatherFuncs,WeatherTables = {},{}

function EndWeather() end --Lets test this.

--Cache the function, so MoTimers can run it after a save game was loaded.
MoTimers.CacheFunction("MoWeatherEvent",EndWeather)

function CreateWeather(Name,EndFunc,StartFunc,ThinkFunk,NextWeather,locale,WindSpeed,LightDimper,DurHigh,DurLow,CoolDown,Chance)
	WeatherTables[Name]={
		Name=Name,
		EF=EndFunc,
		SF=StartFunc,
		TF=ThinkFunk,
		NT=NextWeather,
		locale=locale,
		W=WindSpeed,
		L=LightDimper,
		DH=DurHigh,
		DL=DurLow,
		C=CoolDown,
		R=Chance
	}	
end

function SetWeather(dat,Weather)
	local W = dat.Weather
	if W.Name ~= Weather.Name then
		if W.Data.EF then WeatherTables[W.Name].EF() end
		--MoTimers.CreateTimer("MoWeatherEvent",math.random(Weather.DL,Weather.DH),1,false,EndWeather,Weather.Name)
		W.Name = Weather.Name
		W.Data = Weather
		W.Data.SF()
		W.WeatherEnd = game.tick+(math.random(Weather.DL,Weather.DH)*60)
		--MoMisc.Print(game.localise(Weather.locale)[1])
	else
		W.Data = Weather
	end
end

function PickWeather(dat)
	if dat.Data.NoWeather or dat.ManageWeather == false then
		SetWeather(dat,WeatherTables["Clear"])
		return
	end

	if game.tick > dat.Weather.CoolDown then
		for i,d in pairs(WeatherTables) do
			if d.R >= math.random(1,10000) then
				SetWeather(dat,d)
				return
			end
		end
	end
	SetWeather(dat,WeatherTables[dat.Weather.Data.NT] or WeatherTables["Clear"])
end

function ManageWeather(dat)
	--if MoTimers.TimerTimeLeft("MoWeatherEvent")<=0 or (dat.Data.NoWeather and not dat.Weather.Name~= "Clear") then
	if game.tick>=(dat.Weather.WeatherEnd or 0) or (dat.Data.NoWeather and not dat.Weather.Name~= "Clear") then
		PickWeather(dat)
	else
		if dat.Weather.Data.TF then
			dat.Weather.Data.TF(dat)
		end
	end
end

ModInterface.weathertimeleft = function(surf)
	if surf == nil then surf = 1 end
	local SurfDat = MoConfig.Surfaces[surf]
	return (SurfDat.Weather.WeatherEnd-game.tick) or 0 --MoTimers.TimerTimeLeft("MoWeatherEvent") or 0 
end

ModInterface.forceweather = function(surf,Want)
	if surf == nil then surf = 1 end
	local Surface = MoConfig.Surfaces[surf]
	if not Surface or Surface == nil then return false end
	if Surface.ManageWeather == true then
		if WeatherTables[Want] ~= nil then
			SetWeather(Surface,WeatherTables[Want])
			return true
		end
	end
	return false	
end














