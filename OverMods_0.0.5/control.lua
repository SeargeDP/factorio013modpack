
local radius = 32
local armor_collector_tick = 60*15
local armor_collector_radius = 12


global.smart_requesters = {}


local function on_init()
	if not global.collector_module_players then
		global.collector_module_players = {}
	end
	for _,force in pairs(game.forces) do
		force.reset_recipes()
		force.reset_technologies()
		local techs=force.technologies
		local recipes=force.recipes
		if techs["automated-construction"].researched then
			recipes["collector-grounditems"].enabled = true
		end
		if techs["personal-roboport-equipment"].researched then
			recipes["collector-grounditems-armor-module"].enabled = true
		end
	end
end

script.on_init(on_init)
script.on_configuration_changed(on_init)



script.on_event(defines.events.on_sector_scanned, function(event)
	if event.radar.name == "collector-grounditems" then
		local r = event.radar
		local items = r.surface.find_entities_filtered({
			area = {{x = r.position.x - radius, y = r.position.y - radius}, {x = r.position.x + radius, y = r.position.y + radius}},
			name = "item-on-ground"})
		if #items > 0 then
			for i=1, #items do
				items[i].order_deconstruction(r.force)
			end
		end
	end
end)



script.on_event(defines.events.on_tick, function(event)
	local playerCount = #game.players
	if playerCount >= armor_collector_tick then
		armor_collector_tick = playerCount + 1
	end
	local collector_armor_tick = game.tick % armor_collector_tick
	if collector_armor_tick < playerCount then
		local playerIdx = collector_armor_tick + 1 -- Stupid lua...
		local player = game.players[playerIdx]
		print(collector_armor_tick)
		if player and player.controller_type == defines.controllers.character then
			local armor = player.get_inventory(defines.inventory.player_armor)[1]
			local collector_module_count = 0

			-- Scan found armor counts of the collector module
			if armor.valid_for_read and armor.has_grid then
				for _, mod in pairs(armor.grid.equipment) do
					if mod.name == "collector-grounditems-armor-module" then
						collector_module_count = collector_module_count + 1
					end
				end
			end

			-- Distance calculation based on module count
			local collector_module_dist = collector_module_count * armor_collector_radius

			-- Run tick if player had it installed last tick as well or changed
			--  the module counts, thus resetting it
			if global.collector_module_players[playerIdx] == collector_module_dist then
				local items = player.surface.find_entities_filtered({
					area = {
						{x = player.position.x - collector_module_dist, y = player.position.y - collector_module_dist},
						{x = player.position.x + collector_module_dist, y = player.position.y + collector_module_dist}},
					name = "item-on-ground"})
				if #items > 0 then
					for i=1, #items do
						items[i].order_deconstruction(player.force)
					end
				end
			end

			if collector_module_dist > 0 then
				global.collector_module_players[playerIdx] = collector_module_dist
			else
				global.collector_module_players[playerIdx] = nil
			end
		end
	end
end)



-- TO BE COMPLETED

-- There is no way to get arbitrary circuit state from anything.
-- Adding invisible logic items, one per request slot and linked is both extra
--  laggy as well as makes floating logic wires so they can get state from the
--  chest.
-- Reading items from adjacent chests seems the best way to do it in regards to
--  how the engine is currently.  If anyone has more ideas that are efficient,
--  then please tell me!
-- This is so, so horrible...
-- local function update_smart_logistics_chests(event)
-- 	for i=1, #global.smart_requesters do
-- 		local r = global.smart_requesters[i]
-- 		local slots = {
-- 			r.get_request_slot(1),
-- 			r.get_request_slot(2),
-- 			r.get_request_slot(3),
-- 			r.get_request_slot(4),
-- 			r.get_request_slot(5),
-- 			r.get_request_slot(6),
-- 			r.get_request_slot(7),
-- 			r.get_request_slot(8),
-- 			r.get_request_slot(9),
-- 			r.get_request_slot(10)
-- 		}
-- 		slots[1].count = 0
-- 		slots[2].count = 0
-- 		slots[3].count = 0
-- 		slots[4].count = 0
-- 		slots[5].count = 0
-- 		slots[6].count = 0
-- 		slots[7].count = 0
-- 		slots[8].count = 0
-- 		slots[9].count = 0
-- 		slots[10].count = 0
-- 		local chests = r.surface.find_entities_filtered(}
-- 			area = {{x = r.position.x - 1, y = r.position.y - 1}, {x = r.position.x + 1, y = r.position.y + 1}},
-- 			name = "smart-chest"})
-- 		if #chests > 0 then
-- 			for j=1, #chests do
-- 				local c = items[j]
-- 				local inv = c.getinventory(1)
-- 				for s=1, #slots do
-- 					-- add to table, this seems so horribly slow...
-- 				end
-- 			end
-- 		end
-- 	end
-- end

--script.on_event(defines.events.on_tick, ticker)



--local function on_built(event)
--	entity = event.created_entity
--	if entity.name == "smart-logistics-requester-chest" then
--		global.smart_requesters.append(entity)
--	end
--end

--script.on_event(defines.events.on_built_entity, on_built)
--script.on_event(defines.events.on_robot_built_entity, on_built)
