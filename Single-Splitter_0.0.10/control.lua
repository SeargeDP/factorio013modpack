remote.add_interface("SingleSplitter",
{
    clean = function()
        global.SingleSplitter = {}
    end
})

script.on_init(function() OnInit() end)
script.on_event(defines.events.on_tick, function(event) OnTick(event) end)
script.on_event(defines.events.on_built_entity, function(event) OnBuiltEntity(event) end)
script.on_event(defines.events.on_entity_died, function(event) OnEntityDied(event) end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) OnPrePlayerMinedItem(event) end)
script.on_event(defines.events.on_player_rotated_entity, function(event) OnPlayerRotatedEntity(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) OnRobotBuiltEntity(event) end)
script.on_event(defines.events.on_robot_pre_mined, function(event) OnRobotPreMined(event) end)

local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

function OnInit()
    global.SingleSplitter = {	}
end

function OnPlayerRotatedEntity(_Event)
    if IsSingleSplitter(_Event.entity) then
        local _Splitter = _Event.entity
        for key,value in pairs(global.SingleSplitter) do 
            if value.pos.x == _Splitter.position.x and value.pos.y == _Splitter.position.y then
                value.dir = _Splitter.direction
                value.cachedInBelt = nil
                value.cachedOutBelt = nil
                break
            end 
        end
    end
end


local VV = 0.55
local HH = 0.23
local targetOff = {[0] = {left = {x = -HH, y = -VV}, right = {x =  HH, y = -VV}},
    [2] = {left = {x =  VV, y = -HH}, right = {x =  VV, y =  HH}},
    [4] = {left = {x =  HH, y =  VV}, right = {x = -HH, y =  VV}},
    [6] = {left = {x = -VV, y =  HH}, right = {x = -VV, y = -HH}}
}

function MoveItems(ItemName, InputLane, OutputLane)      
    if OutputLane.can_insert_at(1.0) then
        local stack = {name = ItemName, count = 1}
        InputLane.remove_item (stack)
        OutputLane.insert_at(1.0, stack)
        return true
    end
    return false
end

function NegateSide(Side)
    if(Side == 1) then 
        return 2
    else if(Side == 2) then return 1
        else return 1 end
    end
end

function GetSplitterInBelt(Splitter)  
    local inBelt = Splitter.cachedInBelt			
    if nil == inBelt or not inBelt.valid or not inBelt.direction == Splitter.dir then
        Splitter.cachedInBelt = nil
        inBelt = nil
		
        local scanArea = GetScanArea(Splitter.dir, Splitter.pos)
        local belt = game.surfaces[1].find_entities_filtered({	type="transport-belt", area = scanArea})
        if belt[1] ~= nil and belt[1].direction == Splitter.dir then			
            inBelt = belt[1]
            Splitter.cachedInBelt = inBelt
        end
    end
    return inBelt
end

function GetSplitterOutBelt(Splitter)  
    local outBelt = Splitter.cachedOutBelt			
    if nil == outBelt or not outBelt.valid or not outBelt.direction == Splitter.dir then
        Splitter.cachedOutBelt = nil
        outBelt = nil
		
        local facing_directions = {[north] = south, [east] = west, [south] = north, [west] = east}
        local scanArea = GetScanArea(facing_directions[Splitter.dir], Splitter.pos)
    
        local belt = game.surfaces[1].find_entities_filtered({	type="transport-belt", area = scanArea})
        if belt[1] ~= nil and belt[1].direction == Splitter.dir then			
            outBelt = belt[1]
            Splitter.cachedOutBelt = outBelt
        end
    end
    return outBelt
end


function OnTick(_Event)	  
	if((game.tick % 3) ~= 0) then return end
    for _, splitter in pairs(global.SingleSplitter) do
        local inBelt = GetSplitterInBelt(splitter)
        local outBelt = GetSplitterOutBelt(splitter)	
		
		if (splitter.lastOut == nil) then splitter.lastOut = {1 , 1} end
        if nil ~= inBelt and nil ~= outBelt then
            for i=1,2 do		
                local takeFromSide = NegateSide(splitter.lastInSide)
                local takeToSide = NegateSide(splitter.lastOut[takeFromSide])	
				
				local InLane = inBelt.get_transport_line(takeFromSide)
                local OutLane = outBelt.get_transport_line(takeToSide)
												
				if InLane.can_insert_at(0) then
					takeFromSide = NegateSide(takeFromSide)
					takeToSide = NegateSide(splitter.lastOut[takeFromSide])
					InLane = inBelt.get_transport_line(takeFromSide)
					OutLane = outBelt.get_transport_line(takeToSide)					
				end	

                if not InLane.can_insert_at(0) then
                    local InLaneContents=InLane.get_contents()	
                    for itemName,_  in pairs(InLaneContents) do 
					
					    local moved = true
                        if not MoveItems(itemName, InLane, OutLane) then 
                            takeToSide = NegateSide(takeToSide)	
                            OutLane = outBelt.get_transport_line(takeToSide)
                            if not MoveItems(itemName, InLane, OutLane) then
                                moved = false
                            end
                        end	
						
						if (moved) then 
							splitter.lastInSide = takeFromSide
							splitter.lastOut[takeFromSide] = takeToSide
						end
                    end												
                end	
            end
        end
    end
end
				   
function OnBuiltEntity(_Event)
    if IsSingleSplitter(_Event.created_entity) then
        AddSingleSplitter(_Event.created_entity)
    end
end

function OnRobotBuiltEntity(_Event)
    if IsSingleSplitter(_Event.created_entity) then
        AddSingleSplitter(_Event.created_entity)
    end
end

function OnRobotPreMined(_Event)
    if IsSingleSplitter(_Event.entity) then
        RemoveSingleSplitter(_Event.entity)
    end
end

function OnPrePlayerMinedItem(_Event)
    if IsSingleSplitter(_Event.entity) then
        RemoveSingleSplitter(_Event.entity)
    end
end

function OnEntityDied(_Event)
    if IsSingleSplitter(_Event.entity) then
        RemoveSingleSplitter(_Event.entity)
    end
end

function IsSingleSplitter(_Entity)
    return (_Entity.name == "Single Splitter")
end

function AddSet(_Set)
    table.insert(global.SingleSplitter, _Set)
end

function AddSingleSplitter(_Splitter)
    local _Position = _Splitter.position
    local _Direction = _Splitter.direction		

    local set = {pos = _Position, dir = _Direction, lastInSide = 1, lastOut = {1,2} }		
    AddSet(set)	
end

function RemoveSingleSplitter(_Splitter)		
    for key,value in pairs(global.SingleSplitter) do 
        if value.pos.x == _Splitter.position.x and value.pos.y == _Splitter.position.y then
            table.remove(global.SingleSplitter, key)
            break
        end 
    end
end


function GetScanArea(_Direction, _Position)
    local beltscan_coords = { -- Points to search for transport belts.
        [north] = {{_Position.x - 0.3, _Position.y - 1.1},{_Position.x + 0.3, _Position.y - 0.8}},
        [east] =  {{_Position.x + 1.1  , _Position.y - 0.3},{_Position.x + 0.8, _Position.y + 0.3}},
        [south] = {{_Position.x - 0.3, _Position.y + 1.1},{_Position.x + 0.3, _Position.y + 0.8}},
        [west] =  {{_Position.x - 1.1  , _Position.y - 0.3},{_Position.x - 0.8, _Position.y + 0.3}}
    }

    if _Direction == north then
        return beltscan_coords[south]
    elseif _Direction == east then
        return beltscan_coords[west]
    elseif _Direction == south then
        return beltscan_coords[north]
    elseif _Direction == west then
        return beltscan_coords[east]
        else
        return {{pos.x , pos.y},{pos.x , pos.y}}
    end
end