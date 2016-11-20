
function DayNightCycle(dat)
	local T = dat.Time
	
	if T.DayFroze then return end
	
	local Tick = game.tick
	if dat.Time.DayEnd <= Tick then
		local DayLength=((dat.TimeSettings.DayLength*60)*60)
		T.DayEnd = Tick+DayLength
		T.DayTurn = Tick+(DayLength-(DayLength*(dat.TimeSettings.DayNightRatio/100)))
		T.DayStart = Tick
	else
		if T.DayTurn>=Tick then
			T.Light = 100
			T.Name="Day"
		else
			T.Light = 0
			T.Name="Night"
		end
	end
end

ModInterface.getdaystart = function(surf) if surf == nil then surf = 1 end return MoConfig.Surfaces[surf].Time.DayStart end
ModInterface.getdayend = function(surf) if surf == nil then surf = 1 end return MoConfig.Surfaces[surf].Time.DayEnd end
ModInterface.getdayturn = function(surf) if surf == nil then surf = 1 end return MoConfig.Surfaces[surf].Time.DayTurn end
ModInterface.daytimeleft = function(surf) if surf == nil then surf = 1 end return (MoConfig.Surfaces[surf].Time.DayEnd-game.tick)/60 or 0 end
ModInterface.getdaylight = function(surf) if surf == nil then surf = 1 end return MoConfig.Surfaces[surf].Time.Light end

ModInterface.getdaytime = function(surf)
	if surf == nil then surf = 1 end
	local Dat = MoConfig.Surfaces[surf]
	if game.tick == 0 or Dat.Time.DayEnd == 0 then return 0 end
	local T,DE = game.tick-Dat.Time.DayStart,Dat.Time.DayEnd-Dat.Time.DayStart
	return (T/DE)+0.25
end

ModInterface.setdaylight = function(surf,light) MoConfig.Surfaces[surf].Time.Light = light or 0 end

ModInterface.debugprint = function(surf)
	if surf == nil then surf = 1 end
	local Dat = MoConfig.Surfaces[surf]
	MoMisc.Print("DS "..tostring(Dat.Time.DayStart))
	MoMisc.Print("DE "..tostring(Dat.Time.DayEnd))
	--MoMisc.Print("DT "..tostring(CurrentWeather.Time.DayTurn))
	MoMisc.Print("T "..tostring(game.tick))
	--MoMisc.Print("TL "..tostring((CurrentWeather.Time.DayEnd-game.tick)/60 or 0))
	local T,DE = game.tick-Dat.Time.DayStart,Dat.Time.DayEnd-Dat.Time.DayStart
	MoMisc.Print("M "..tostring((T/DE)))
end
