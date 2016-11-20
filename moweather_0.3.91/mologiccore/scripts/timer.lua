GetTable=function()
	MoTimers=MoTimers or {}
	return MoTimers
end

local Timers = {} --Localise for speed.
local WaitingList = {} --The waiting list while we load our tables.
local SetTab = function(Table) DefaultSaveLoad(Timers,Table) end
RegisterSaveTable("MoTimers",Timers,SetTab,false)
if MLC.Debug then Debug.RegisterTable("Timers",Timers) end
local Functions = {}

local function MergeWaitingList()
	for i,d in pairs(WaitingList) do
		if Timers[i]~=nil and d.O or Timers[i]==nil then
			Timers[i]=util.table.deepcopy(d.T)
		end
	end
	WaitingList={}
end

local function PrintError(Text)
	for i,d in pairs(game.players) do
		d.print(""..Text)
	end
end

--Caches a function so it doesnt error out while loading a save.
FuncRegister("CacheFunction",function(Name,Function)
	Functions["CB"..Name]=Function
end)

--This creates a timer, which calls a function after a defined time.
FuncRegister("CreateTimer",function(Name,Length,Repeat,Over,CallBack,Data)
	local Tick = 0
	if game then Tick = game.tick end
	if IsLoaded then
		if Timers[Name]~=nil and Over then return end --If we are given the dont overright flag, dont continue.
		Timers[Name]={
			Name=Name, --Timer name/ID
			Repeat=Repeat, --How many times the timer repeats.
			Nxt=Tick+(Length*60), --When the timer is called again.
			Dur=Length, --Internal Value for timer length.
			Del=false, --Internal Value for trash management.
			CallBack="CB"..Name, --CallBack Function.
			Data=Data --Extra Data to pass onto the callback.
		}
		Functions["CB"..Name]=CallBack
	else
		WaitingList[Name]={
			O=Over,T={
				Name=Name, --Timer name/ID
				Repeat=Repeat, --How many times the timer repeats.
				Nxt=Tick+(Length*60), --When the timer is called again.
				Dur=Length, --Internal Value for timer length.
				Del=false, --Internal Value for trash management.
				CallBack="CB"..Name, --CallBack Function.
				Data=Data --Extra Data to pass onto the callback.
			}
		}	
		Functions["CB"..Name]=CallBack
	end
	--game.player.print("Timer Created: "..Name)
end)

--Deletes a timer before it finishs and calls its function.
FuncRegister("DeleteTimer",function(Name)
	--game.player.print("Timer Deleted: "..Name)
	Timers[Name]=nil
end)

--Returns how much time is left in a timer.
FuncRegister("TimerTimeLeft",function(Name) 
	if Timers[Name] ~= nil then
		local Return = (Timers[Name].Nxt-game.tick)/60
		--if Return > 0 then
			return Return
		--end
	end
	return 0
end)

--Returns all active timers.
FuncRegister("GetTimers",function() return Timers end)

script.on_event(defines.events.on_tick, function(event) --Timer Master Think.
	if not IsLoaded then MLCSaveFix() MergeWaitingList() return end
	for i,d in pairs(Timers) do
		if game.tick >= d.Nxt then --Do we run this timer?
			--game.player.print("Timering: "..d.Name)
			if d.Repeat > 1 or d.Repeat == 0 then
				if d.Repeat>1 then d.Repeat = d.Repeat-1 end
				d.Nxt = game.tick+(d.Dur*60)--It keeps going... and going.
			else
				d.Del=true--Set the timer to be deleted.
			end
			if Functions["CB"..d.Name] ==nil then
				d.Del = true
				for ind,ply in pairs(game.players) do
					ply.print("Warning: "..d.Name.." doesnt have a function!")
				end
			else
				Functions["CB"..d.Name](d.Data) --Call The function we were told to.
			end
		end
		if d.Del == true then
			MoTimers.DeleteTimer(d.Name)
			--PrintError("Deleting Timer... "..d.Name)
		end
	end
end)
