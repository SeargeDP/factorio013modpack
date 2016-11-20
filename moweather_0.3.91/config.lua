local M = MoConfig

M.Surfaces = {}
local S = M.Surfaces
--------------------------------------------------------------------------------------
-----------------------------Surface Define-------------------------------------------
--Define how moweather should treat each surface.

--The starter surface.
S[1] = {
	ManageTime = true,
	TimeSettings = {DayLength=7,DayNightRatio=50,TransitionMult = 1500},
	
	ManageWeather = true,
	WeatherSettings = {}
}

--------------------------------------------------------------------------------------
-----------------------------Global Settings------------------------------------------
--------------------------------------------------------------------------------------

--------------------------------------------------------------------------------------
-----------------------------Weather Systems------------------------------------------

--The amount of "tiles" rain renders from players. Higher numbers increase CPU time. *Aka Might cause lag.*
M.RainRenderDist = 12