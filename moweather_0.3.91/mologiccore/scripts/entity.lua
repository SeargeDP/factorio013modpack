GetTable=function()
	MoEntity=MoEntity or {}
	return MoEntity
end

-------Debug functions used in development.

function PrintString(Text)
	for i,d in pairs(game.players) do
		if d and d.valid then
			d.print(""..Text)
		end
	end
end

------------Event Handler------------
Subscribed = {Built={},Death={},PlyCreated={},PlyDeath={},Removed={}}
if MLC.Debug then Debug.RegisterTable("Subscribed",Subscribed) end

local EventFuncs = {}
EventFuncs["Built"] = function(event)
	local ent = event.created_entity
	if ent == nil or not ent.valid then return end -- nil entity don't run it.
	
	local Name = ent.name
	if Subscribed.Built[Name] then
		for i,d in pairs(Subscribed.Built[Name]) do
			d.Func(ent)
		end
	end	
end

EventFuncs["PlyBuilt"] = function(event)
	local index = event.player_index
	local ent = game.players[index]
	if ent == nil or not ent.valid then return end -- nil player don't run it.
	
	for i,d in pairs(Subscribed.PlyCreated) do
		d.Func(index,ent)
	end
end

EventFuncs["Death"] = function(event)
	local ent = event.entity
	if ent == nil or not ent.valid then return end -- nil entity don't run it.
	
	local Name = ent.name
	if Subscribed.Death[Name] then
		for i,d in pairs(Subscribed.Death[Name]) do
			d.Func(ent)
		end
	end	
end

EventFuncs["PlyDeath"] = function(event)
	local ent,index
	for i,v in ipairs(game.players) do
		if v.connected then
			if event.entity == v.character or not v.character then
				ent = v
				index = i
			end
		end
	end

	if ent == nil or not ent.valid then return end -- nil entity don't run it.
	
	for i,d in pairs(Subscribed.PlyDeath) do
		d.Func(index,ent,event.entity)
	end
end

EventFuncs["Removed"] = function(event)
	local ent = event.entity
	if ent == nil or not ent.valid then return end -- nil entity don't run it.
	
	local Name = ent.name
	if Subscribed.Removed[Name] then
		for i,d in pairs(Subscribed.Removed[Name]) do
			d.Func(ent)
		end
	end	
end

local EventTypes = {}
EventTypes[defines.events.on_built_entity] = {"Built"}
EventTypes[defines.events.on_robot_built_entity] = {"Built"}
EventTypes[defines.events.on_player_created] = {"PlyBuilt"}
EventTypes[defines.events.on_entity_died] = {"PlyDeath","Death","Removed"}
EventTypes[defines.events.on_preplayer_mined_item] = {"Removed"}
EventTypes[defines.events.on_robot_pre_mined] = {"Removed"}

--This does all the hard work.
local function EventHandler(event)
	local Event = event.name
	for i,d in pairs(EventTypes[Event]) do
		EventFuncs[d](event)
	end
end

script.on_event(defines.events.on_built_entity, EventHandler)
script.on_event(defines.events.on_robot_built_entity, EventHandler)
script.on_event(defines.events.on_entity_died, EventHandler)
script.on_event(defines.events.on_player_created, EventHandler)
script.on_event(defines.events.on_preplayer_mined_item, EventHandler)
script.on_event(defines.events.on_robot_pre_mined, EventHandler)

------------Entity Related Events------------
--Allows you to subscribe a function to be called when a entity is built.
FuncRegister("SubscribeOnBuilt",function(Ent,Name,Func)
	if Subscribed.Built[Ent] == nil then Subscribed.Built[Ent] = {} end
	Subscribed.Built[Ent][Name]={Name=Name,Func=Func}
end)

--Allows you to remove a function from being called when a entity is built.
FuncRegister("UnSubscribeOnBuilt",function(Ent,Name) 
	Subscribed.Built[Ent][Name]=nil
end)

--Allows you to subscribe a function to be called when a entity is killed.
FuncRegister("SubscribeOnDeath",function(Ent,Name,Func)
	if Subscribed.Death[Ent] == nil then Subscribed.Death[Ent] = {} end
	Subscribed.Death[Ent][Name]={Name=Name,Func=Func}
end)

--Allows you to remove a function from being called when a entity is killed.
FuncRegister("UnSubscribeOnDeath",function(Ent,Name) 
	Subscribed.Death[Ent][Name]=nil
end)

--Allows you to subscribe a function to be called when a entity is removed.
FuncRegister("SubscribeOnRemoved",function(Ent,Name,Func)
	if Subscribed.Removed[Ent] == nil then Subscribed.Removed[Ent] = {} end
	Subscribed.Removed[Ent][Name]={Name=Name,Func=Func}
end)

--Allows you to remove a function from being called when a entity is removed.
FuncRegister("UnSubscribeOnRemoved",function(Ent,Name) 
	Subscribed.Removed[Ent][Name]=nil
end)

--Allows you to subscribe a function to be called when a player is spawned.
FuncRegister("SubscribeOnPlayerSpawn",function(Name,Func)
	Subscribed.PlyCreated[Name]={Name=Name,Func=Func}
end)

--Allows you to remove a function from being called when a player is spawned.
FuncRegister("UnSubscribeOnPlayerSpawn",function(Name) 
	Subscribed.PlyCreated[Name]=nil
end)

--Allows you to subscribe a function to be called when a player is killed.
FuncRegister("SubscribeOnPlayerKilled",function(Name,Func)
	Subscribed.PlyDeath[Name]={Name=Name,Func=Func}
end)

--Allows you to remove a function from being called when a player is killed.
FuncRegister("UnSubscribeOnPlayerKilled",function(Name) 
	Subscribed.PlyDeath[Name]=nil
end)
------------Player Related------------
--Shortcut to get the players positioning.
FuncRegister("getplayerpos",function(I)
	return game.players[I or 1].position
end)

function CheckPlayerValid(ply)
	local X,Y,Rad = ply.position.x,ply.position.y,0.1
	local Check = ply.surface.find_entities_filtered{area = {{X-Rad, Y-Rad}, {X+Rad, Y+Rad}}, force=ply.force}
	for i,d in pairs(Check) do
		if d == ply.character or d == ply.vehicle then --Check if the player is in a vehicle properly.
			return true
		end
	end
	return false
end

--Easy loop for active players, excludes none character players and offline ones.
FuncRegister("loopplayers",function(F)
	for i,d in pairs(game.players) do
		if d and d.valid then
			if d.connected then
				F(i,d)
			end
		end
	end
end)

--Easy loop for all players including offline
FuncRegister("loopallplayers",function(F)
	for i,d in pairs(game.players) do
		if d and d.valid then
			F(i,d)
		end
	end
end)

--Adds another vector to the players position, and returns the result.
FuncRegister("addtoplayerpos",function(I,X,Y)
	local Pos = game.players[I or 1].position
	return {Pos.x+X,Pos.y+Y}
end)

FuncRegister("closestplayer",function(X,Y,Surface)
	local C = 999999999999999999
	for i,d in pairs(game.players) do
		if d.valid then
			if d.controller_type == defines.controllers.character then
				if CheckPlayerValid(d) then
					local P = d.position
					
					if util.distance(P,{x=X,y=Y}) < C then
						if not Surface or Surface == d.surface then
							CP = d
						end
					end
				end
			end
		end
	end
	return CP
end)

-------------Vector Functions----------
--Adds a vector to a entities position.
FuncRegister("addtoentpos",function(Ent,Vec)
	local Pos = Ent.position
	local X,Y = ((Vec.X or Vec.x)), ((Vec.Y or Vec.y))
	return {Pos.x+X,Pos.y+Y}
end)

--Finds a certain entity in a square area around a point.
FuncRegister("findentinsquareradius",function(Sur,Vec,Rad,Ent)
	local X,Y = ((Vec.X or Vec.x)), ((Vec.Y or Vec.y))
	return Sur.find_entities_filtered{area = {{X-Rad, Y-Rad}, {X+Rad, Y+Rad}}, name=Ent}
end)

FuncRegister("countentinsquareradius",function(Sur,Vec,Rad,Ent)
	local X,Y = ((Vec.X or Vec.x)), ((Vec.Y or Vec.y))
	return Sur.find_entities_filtered{area = {{X-Rad, Y-Rad}, {X+Rad, Y+Rad}}, name=Ent}
end)

FuncRegister("counttypeinsquareradius",function(Sur,Vec,Rad,Ent)
	local X,Y = ((Vec.X or Vec.x)), ((Vec.Y or Vec.y))
	return Sur.count_entities_filtered{area = {{X-Rad, Y-Rad}, {X+Rad, Y+Rad}}, type=Ent}
end)

--Finds a certain entity in a circular area around a point.
FuncRegister("findentinradius",function(Vec,Rad,Ent)
end)

--Returns if 2 vectors are inline. (Vertical or Horizontal)
FuncRegister("inline",function(Vec,Vec2)
	return (Vec.x or Vec.X) == (Vec2.x or Vec2.X) or (Vec.y or Vec.Y) == (Vec2.y or Vec2.Y)
end)

--Returns if a entity can be placed along the entirety of two points.
--Warning, Requires MoMath loaded to operate.
FuncRegister("traceline",function(Sur,Vec,Vec2,Ent)
	local V,A = Vec,MoMath.Approach
	for I=1, util.distance(Vec,Vec2) do
		V={x=A(V.x,Vec2.x,1),y=A(V.y,Vec2.y,1),1}
		if not Sur.can_place_entity({name=Ent, position = V}) then
			return false
		end
	end
	return true
end)

--Exactly like traceline, except it has a extra function called for each position being tested. (If its open.)
FuncRegister("functraceline",function(Sur,Vec,Vec2,Ent,Func)
	local V,A = Vec,MoMath.Approach
	for I=1, util.distance(Vec,Vec2) do
		V={x=A(V.x,Vec2.x,1),y=A(V.y,Vec2.y,1)}
		if Sur.can_place_entity({name=Ent, position = V}) then
			if Func(V) then
				return true
			end
		end
	end
	return false
end)

------------Entity Loop Aid------------
--Oh God so much ugly code!!!
local Loops,Entitys = {},{Ents={}}
if MLC.Debug then Debug.RegisterTable("MLALoops",Loops) Debug.RegisterTable("MLAEnts",Entitys) end
local SetTab,SetTab2 = function(Table) DefaultSaveLoad(Loops,Table) end,function(Table) DefaultSaveLoad(Entitys,Table) end
RegisterSaveTable("MoLoopAid",Loops,SetTab,false)
RegisterSaveTable("MLAEnts",Entitys,SetTab2,false)

function GetKey(Ent)
	if Ent==nil or not Ent.valid then return 0 end --Your ent is nil.
	for i,d in pairs(Entitys.Ents) do
		if d~=nil and d.valid then
			if d == Ent then
				return i 
			end
		else
			Entitys.Ents[i]=nil
		end
	end
	
	return 0
end

local Letters = {"A","B","C","D","E","F","G","H","I","J","K","L","O","M","N","P","Q","R","S","T","U","V","W","X","Y","Z"}
function GenKey() local Key = "" for I=1,3 do Key=Key..Letters[math.random(1,#Letters)] end return Key end

function RandKey()
	local Key = GenKey()..tostring(math.random(1,999))
	if Entitys.Ents[Key] then
		return RandKey()
	end
	return Key
end

function RegKey(Ent)
	local Key = GetKey(Ent)
	if Key==0 then
		Key = RandKey()
		Entitys.Ents[Key]=Ent
	end
	return Key
end
FuncRegister("EntToKey",RegKey)

function GetEnt(Key) return Entitys.Ents[Key] end
FuncRegister("KeyToEnt",GetEnt)

FuncRegister("AddToLoop",function(Name,Ent,Ex)
	if not Loops[Name] then Loops[Name] = {Name=Name,Ents={}} end
	local Key = RegKey(Ent)
	Loops[Name].Ents[Key]={entity=Key,extra=Ex}
end)

FuncRegister("RemoveFromLoop",function(Name,Ent)
	if not Loops[Name] then return end
	local Key = GetKey(Ent)
	if Key then
		Loops[Name].Ents[Key]=nil
	end
end)

FuncRegister("GetDataFromLoop",function(Name,Ent)
	if not Loops[Name] then return end
	local Key = GetKey(Ent)
	if Key then
		return Loops[Name].Ents[Key]
	end
end)

FuncRegister("CallLoop",function(Name,Func)
	local Loop=Loops[Name]
	if not Loop then return end
	for i,d in pairs(Loop.Ents) do
		if not Func(d) then
			Loop.Ents[i]=nil
		end
	end
end)

FuncRegister("LoopThis",function(Table,Func)
	for i,d in pairs(Table) do
		if not Func(d) then
			Table[i]=nil
		end
	end
end)

require "entity2" --Load the next lua file for entity code.