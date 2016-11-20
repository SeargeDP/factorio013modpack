require "utils"

require "mod_def"

if DF_Under_Debug == 1 then
  require "_tools.debug_tool"
  DF_Print=1
  DF_PrintNonMoved=1
  DF_EnableDump = 1
--  DF_DrawBuildMarkers=1
--  DF_MakeItems=1
end  



local north = defines.direction.north
local east = defines.direction.east
local south = defines.direction.south
local west = defines.direction.west

remote.add_interface("sspl",
{
	clean = function()
		global.sspl = {	splitSets = {},
						splitSetsToRemove = {},
						version = utils.currentVersion
				   }
	end
})

script.on_init(function() OnInit() end)
script.on_load(function() OnLoad() end)
script.on_event(defines.events.on_tick, function(event) OnTick(event) end)
script.on_event(defines.events.on_built_entity, function(event) OnBuiltEntity(event) end)
script.on_event(defines.events.on_entity_died, function(event) OnEntityDied(event) end)
script.on_event(defines.events.on_preplayer_mined_item, function(event) OnPrePlayerMinedItem(event) end)


function OnInit()
	--game.player.print("SmartSplitters: OnInit")
	if global.sspl == nil then
		global.sspl = {	splitSets = {},
						splitSetsToRemove = {},
						version = utils.currentVersion
				   }
	else
		local total = 0
		for _, set in pairs(global.sspl.splitSets) do
			total = total + #set.splitters
		end
		
		--game.player.print("Loaded " .. #global.sspl.splitSets .. " splitter sets containing " .. total .. " splitters.")
	end
	if not global.sspl.version then
		game.player.print("Migrating SmartSplitters from unversioned to version " .. utils.currentVersion)
		utils.migrations.versionless()
		game.player.print("Migration successful.")
	end
	if global.sspl.version ~= utils.currentVersion then
		game.player.print("Migrating SmartSplitters from version " .. global.sspl.version .. " to version " .. utils.currentVersion .. ".")
		utils.migrations[global.sspl.version]()
		game.player.print("Migration successful.")
	end
	
--	if DF_MakeItems then
--	 startingItems()
--	end
	
end

function OnLoad()
	--game.player.print("SmartSplitters: OnLoad")
	-- Call OnInit to ensure global.teles exists.
	OnInit()
end

function OnTick(_Event)
	--game.player.print("SmartSplitters: OnTick")
	-- Check if there's any sets with invalid splitters and remove those from the splitter lists.
	-- Then check if there's any sets with zero splitters and remove those from the global set table.
	if game.tick % 60 == 0 then
		local toRemove = {}
		for setID, set in pairs(global.sspl.splitSets) do
			splitterToRemove = {}
			for splitterID, splitter in pairs(set.splitters) do
				if not splitter.valid then
					table.insert(splitterToRemove, splitterID)
				end
			end
			for _, splitterID in pairs(splitterToRemove) do
				table.remove(set.splitters, splitterID)
			end
			if #set.splitters < 1 then
				table.insert(toRemove, setID)
			end
		end
		for _, setID in pairs(toRemove) do
			table.remove(global.sspl.splitSets)
		end
	end
	
	-- Check for new filters 6 times per second.
	if game.tick % 10 == 0 then
		for set_no, set in pairs(global.sspl.splitSets) do
			RecalculateSet(set)
--			Debug_DumpSet(set_no)
		end
	end
	
	local facing_directions = {[north] = south, [east] = west, [south] = north, [west] = east}
	
	if game.tick % 5 == 0 then
  	for set_no, set in pairs(global.sspl.splitSets) do
  		for sp_no, splitter in pairs(set.splitters) do
  			if splitter.valid then
  				local scanArea = GetScanArea(splitter.direction, splitter.position)
          local belt=splitter.surface.find_entities_filtered{type = "transport-belt", area = scanArea}
          
          if belt[1] ~= nil   and belt[1].direction == splitter.direction then
  --          debugLog("nway " ..  tostring(belt[1].name).." - ".. tostring(belt[1].type) .." - ".. tostring(belt[1].direction).." : " ..tostring(splitter.direction).." : " ..tostring(facing_directions[splitter.direction]) )
            for laneI=1,2,1 do
              local lane=belt[1].get_transport_line(laneI)
              local cnt=lane.get_item_count()
              local cmap=lane.get_contents()
              if cnt ~= 0 then
                for res_name,res_count in pairs(cmap) do
                  
                  local targetSplitterSet = nil
                  local targetIsNonFilter=false
                  if set.filteredItems[res_name] then
                    targetSplitterSet = set.filteredItems[res_name]
                  else
                    targetSplitterSet = set.nonfilteringSplitters
                    targetIsNonFilter=true
                  end
  
                  if not set.itemCounts[res_name] then
                    set.itemCounts[res_name] = 0
                  else
                    set.itemCounts[res_name] = set.itemCounts[res_name] + 1
                  end
  
                  local moved = false
                  local tries = 0
                  local curr_idx=0
                  while not moved and tries < #targetSplitterSet do
                    local li=((set.itemCounts[res_name] + tries) % #targetSplitterSet)
                    curr_idx=li
                    local targetSplitter = targetSplitterSet[li + 1]
                    
                    moved = MoveStack12(res_name, targetSplitter, lane,laneI)
                    tries = tries + 1
                  end
                  if ( moved == false ) and ( targetIsNonFilter == true ) and (DF_PrintNonMoved == 1) then
                    Debug_DumpSet(set_no)
                    debugLog(string.format("nws not moved %s %d.%d:%d to %s.%d:%d ",res_name,set_no,sp_no,laneI,table.tostring(targetSplitterSet),curr_idx,laneI))                    
                  end
--                  if moved then
--                    debugLog(string.format("nws move %s %d.%d:%d to %s.%d:%d ",res_name,set_no,sp_no,laneI,tostring(targetSplitterSet[curr_idx + 1]),curr_idx,laneI))--..table.tostring(targetSplitterSet)
--                  end
                  
                end
              end
              
            end
          end
  		
  			end
  		end
  	end
  end
  
end

local directionToOffset = {[0] = {x = -1, y =  0},
						   [2] = {x =  0, y = -1},
						   [4] = {x =  1, y =  0},
						   [6] = {x =  0, y =  1}}
						   
function OnBuiltEntity(_Event)
	local _Entity = _Event.created_entity
	if IsSmartSplitter(_Entity) then
		-- game.player.print("Built smartsplitter")
		local _Position = _Entity.position
		local _Direction = _Entity.direction
		local _Surface=_Entity.surface
		
		-- Check if there's a splitter to the left.
		local scanPosl = {x = _Position.x + directionToOffset[_Direction].x, y = _Position.y + directionToOffset[_Direction].y}
		local scanAreal = {{scanPosl.x - 0.25, scanPosl.y - 0.25}, {scanPosl.x + 0.25, scanPosl.y + 0.25}}
		local scanl = _Surface.find_entities_filtered{name = "smartsplitter", area = scanAreal}
		
		-- Check if there's a splitter to the right.
		local scanPosr = {x = _Position.x - directionToOffset[_Direction].x, y = _Position.y - directionToOffset[_Direction].y}
		local scanArear = {{scanPosr.x - 0.25, scanPosr.y - 0.25}, {scanPosr.x + 0.25, scanPosr.y + 0.25}}
		local scanr = _Surface.find_entities_filtered{name = "smartsplitter", area = scanArear}
		
		if DF_DrawBuildMarkers == 1 then
  		local facing_directions = {[north] = south, [east] = west, [south] = north, [west] = east}
  		local takeArea = GetScanArea(_Direction, _Position)
      local dropArea = GetScanArea(facing_directions[_Direction], _Position)
      _Surface.create_entity{name="m2k-dbg-small-red", position = takeArea[1], force = game.forces.player}
      _Surface.create_entity{name="m2k-dbg-small-blue", position = takeArea[2], force = game.forces.player}
      _Surface.create_entity{name="m2k-dbg-small-green", position = dropArea[1], force = game.forces.player}
      _Surface.create_entity{name="m2k-dbg-small-yellow", position = dropArea[2], force = game.forces.player}
    end
    
		local lset = nil
		local rset = nil
		
		local lsetID = nil
		if #scanl == 1 and scanl[1].direction == _Direction then
			lsetID = GetAppropriateSetID(scanl[1])
		end
		local rsetID = nil
		if #scanr == 1 and scanr[1].direction == _Direction then
			rsetID = GetAppropriateSetID(scanr[1])
		end
		
		local set = CreateNewSet()
		if lsetID and rsetID then
			-- Add all splitters from the left set into the new set.
			for _, v in pairs(global.sspl.splitSets[lsetID].splitters) do
				table.insert(set.splitters, v)
			end
			global.sspl.splitSets[lsetID].splitters = {}
			-- Add the current splitter.
			table.insert(set.splitters, _Entity)
			-- Add all splitters from the right set.
			for _, v in pairs(global.sspl.splitSets[rsetID].splitters) do
				table.insert(set.splitters, v)
			end
			global.sspl.splitSets[rsetID].splitters = {}
			-- Remove left and right set.
			-- Remove the higher ID first, as the other ID won't be correct otherwise.
			if lsetID > rsetID then
				--game.player.print("Removing left set.")
				RemoveSetByID(lsetID)
				--game.player.print("Removing right set.")
				RemoveSetByID(rsetID)
			else
				--game.player.print("Removing right set.")
				RemoveSetByID(rsetID)
				--game.player.print("Removing left set.")
				RemoveSetByID(lsetID)
			end
			AddSet(set)
			--game.player.print("Merged sets.")
		elseif lsetID then
			--game.player.print("Added to left set.")
			set = global.sspl.splitSets[lsetID]
			-- Add the current splitter to the end of the set.
			table.insert(set.splitters, _Entity)
		elseif rsetID then
			--game.player.print("Added to right set.")
			set = global.sspl.splitSets[rsetID]
			-- Add the current splitter to the start of the set.
			table.insert(set.splitters, 1, _Entity)
		else
			--game.player.print("Created new set.")
			-- Add the splitter to the new set.
			table.insert(set.splitters, _Entity)
			AddSet(set)
		end
		
		RecalculateSet(set)
	end
end

function OnEntityDied(_Event)
	if IsSmartSplitter(_Event.entity) then
		RemoveSmartSplitter(_Event.entity)
	end
end

function OnPrePlayerMinedItem(_Event)
	if IsSmartSplitter(_Event.entity) then
		RemoveSmartSplitter(_Event.entity)
	end
end

function IsSmartSplitter(_Entity)
	return (_Entity.name == "smartsplitter")
end

function CreateNewSet()
	return {	splitters = {},
				filteredItems = {},
				itemCounts = {},
				filteringSplitters = {},
				nonfilteringSplitters = {}
		   }
end

function RemoveSmartSplitter(_Splitter)
	--game.player.print("RemoveSmartSplitter on splitter at [" .. _Splitter.position.x .. ", " .. _Splitter.position.y .. "]")
	local setID, splitterI = GetAppropriateSetID(_Splitter)
	
	if setID then
		local set = global.sspl.splitSets[setID]
		-- If the splitter is at the edge.
		if splitterI == 1 or splitterI == #set.splitters then
			table.remove(set.splitters, splitterI)
			RecalculateSet(set)
		else
			--game.player.print("Splitting set into 2.")
			-- Splitter is somewhere in the middle, split the set.
			leftSet = CreateNewSet()
			rightSet = CreateNewSet()
			
			for i = 1, splitterI - 1 do
				table.insert(leftSet.splitters, set.splitters[i])
			end
			for i = splitterI + 1, #set.splitters do
				table.insert(rightSet.splitters, set.splitters[i])
			end
			set.splitters = {}
			
			--game.player.print("Removing old set.")
			RemoveSetByID(setID)
			
			AddSet(leftSet)
			RecalculateSet(leftSet)
			
			AddSet(rightSet)
			RecalculateSet(rightSet)
		end
	end
end

function AddSet(_Set)
	table.insert(global.sspl.splitSets, _Set)
	
--  debugLog("Added set")
--  debugLog(#global.sspl.splitSets .. " sets")

end

function RemoveSet(_Set)
	-- Not yet tested
	local id = 0
	for i, set in pairs(global.sspl.splitSets) do
		if set == _Set then
			id = i
			break;
		end
	end
	if id ~= 0 then
		if #global.sspl.splitSets[id].splitters > 0 then
      debugLog("Removing split set with nonzero splitters.")
		end
		table.remove(global.sspl.splitSets, id)
	else
		--game.player.print("Tried to remove nonexistent set.")
	end
--    debugLog("Removed set " .. id)
--    debugLog(#global.sspl.splitSets .. " sets")
end

function RemoveSetByID(_ID)
	if #global.sspl.splitSets[_ID].splitters > 0 then
		debugLog("Removing split set with nonzero splitters.")
	end
	table.remove(global.sspl.splitSets, _ID)
--	debugLog("Removed set " .. _ID)
--	debugLog(#global.sspl.splitSets .. " sets")
end

function RecalculateSet(_Set)
	_Set.nonfilteringSplitters = {}
	_Set.filteredItems = {}
	_Set.filteringSplitters = {}
	
	if #_Set.splitters < 1 then
		--game.player.print("Empty set, removing.")
		RemoveSet(_Set)
	end
	
	for splitterID, splitter in pairs(_Set.splitters) do
		if splitter.valid then
			-- Fill item filter table.
			for i = 1, 5 do
				local itemName = splitter.get_filter(i)
				if itemName then
					table.insert(_Set.filteringSplitters, splitterID, splitter)
					if _Set.filteredItems[itemName] then
						table.insert(_Set.filteredItems[itemName], splitter)
					else
						_Set.filteredItems[itemName] = {[1] = splitter}
					end
				end
			end
			if not _Set.filteringSplitters[splitterID] then
				table.insert(_Set.nonfilteringSplitters, splitter)
			end
		end
	end
end

function GetAppropriateSetID(_Entity)
	for setID, set in pairs(global.sspl.splitSets) do
		for splitterI, splitter in pairs(set.splitters) do
			if splitter == _Entity then
				return setID, splitterI
			end
		end
	end
	--game.player.print("ERROR: No set ID found for smartsplitter at [" .. _Entity.position.x .. ", " .. _Entity.position.y .. "]")
	--game.player.print("This should not happen, so please tell the mod author (ThaPear) what you were doing when this happened.")
	--game.player.print("This means: Were you merging 2 rows of splitters, building it left/right/above/below other splitters, in what direction were those splitters?")
	return nil, nil
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

function MoveStack12(_ItemName, _Splitter, _SrcLine, _LineI)
  if _Splitter.energy < 1 then
    return false
  end
  
  local facing_directions = {[north] = south, [east] = west, [south] = north, [west] = east}
  local scanArea = GetScanArea(facing_directions[_Splitter.direction], _Splitter.position)

--[[   
  local found=false
  for i = 1, 5 do
    local itemName = _Splitter.get_filter(i)
    if itemName and itemName == _ItemName then
      found=true
    end
  end
  
  if not found then
    return
  end
--]]
    
  local belt=_Splitter.surface.find_entities_filtered{type = "transport-belt", area = scanArea}
  if belt[1] ~= nil and belt[1].direction == _Splitter.direction then
--    debugLog(string.format("nws ms12 dir=%s wd=%s pos=%s sa=%s bp=%s",_Splitter.direction,facing_directions[_Splitter.direction],table.tostring(_Splitter.position),table.tostring(scanArea),table.tostring(belt[1].position)))
    -- Check if the target location is empty.
    local tgtLane=belt[1].get_transport_line(_LineI)
    if tgtLane.can_insert_at_back() then
      local stack = {name = _ItemName, count = 1}
      _SrcLine.remove_item (stack)
      tgtLane.insert_at_back(stack)
      return true
    end
    return false
  end
end

--function debugLog(message)
--  if DF_Print then
--    game.player.print(message)
--  end
--end


function Debug_DumpSet(_SetId)
--splitters = {},
--        filteredItems = {},
--        itemCounts = {},
--        filteringSplitters = {},
--        nonfilteringSplitters = {}
  if DF_EnableDump  ==1 then        
    local tick=game.tick
    local set = global.sspl.splitSets[_SetId]
    local ds_dname="smartsplitter/sd_"..  tostring(_SetId).."_".. tostring(tick) .. ".txt"
    local ds_outstr=""
  ---        ds_outstr=ds_outstr.."search "..serializeTable(ds_search)
    ds_outstr=ds_outstr.." splitters " ..#set.splitters .."\n"
    ds_outstr=ds_outstr.." filteringSplitters " ..#set.filteringSplitters .."\n"
    ds_outstr=ds_outstr.." nonfilteringSplitters " ..#set.nonfilteringSplitters .."\n"
    ds_outstr=ds_outstr.." filteredItems " ..table.tostring(set.filteredItems) .."\n"
    ds_outstr=ds_outstr.." itemCounts " ..table.tostring(set.itemCounts) .."\n"
    game.makefile(ds_dname, ds_outstr)
  end
end

function startingItems()
  game.player.character.insert{name="smartsplitter", count=50}
  game.player.character.insert{name="slipstream-chest-basic", count=50}

  game.player.character.insert{name="iron-plate", count=1000}
  game.player.character.insert{name="pistol", count=1}
  game.player.character.insert{name="basic-bullet-magazine", count=100}
  game.player.character.insert{name="wooden-chest", count=64}
  game.player.character.insert{name="small-electric-pole", count=32}
  game.player.character.insert{name="basic-inserter", count=64}
  game.player.character.insert{name="solar-panel", count=54}
  game.player.character.insert{name="basic-transport-belt", count=128}
  game.player.character.insert{name="steam-engine", count=16}
  game.player.character.insert{name="boiler", count=32}
  game.player.character.insert{name="lab", count=8}
  game.player.character.insert{name="pipe", count=64}
  game.player.character.insert{name="basic-mining-drill", count=32}
  game.player.character.insert{name="basic-transport-belt-to-ground", count=32}
  game.player.character.insert{name="pipe-to-ground", count=32}
  game.player.character.insert{name="basic-splitter", count=32}
  game.player.character.insert{name="coal", count=128}
  game.player.character.insert{name="raw-wood", count=128}
  game.player.character.insert{name="car", count=1}
  game.player.character.insert{name="chemical-plant", count=8}
  game.player.character.insert{name="assembling-machine-3", count=8}
end
