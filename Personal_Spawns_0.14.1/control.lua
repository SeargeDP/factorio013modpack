
--[[CUSTOM FUNCTIONS]]--
function CreatePlayerData(player, overwrite)
	overwrite = overwrite or false
	
	if global.player_data[player.index] == nil or overwrite then
		global.player_data[player.index] = {
			position = nil,
			surface = nil
		}
	end
end

function HasSpawn(player)
	return global.player_data[player.index] ~= nil and global.player_data[player.index].position ~= nil and global.player_data[player.index].surface ~= nil
end

function RemoveSpawn(player)
	if global.player_data[player.index] ~= nil then
		global.player_data[player.index].position = nil
		global.player_data[player.index].surface = nil
	end
end

function HasValidSpawn(player)
	if not HasSpawn(player) then
		return false
	end
	
	if game.surfaces[global.player_data[player.index].surface] == nil then
		return false
	end
	
	local surface = game.surfaces[global.player_data[player.index].surface]
	
	local entity = surface.find_entity("personal-spawn-marker", global.player_data[player.index].position)
	
	return entity ~= nil and entity.valid
end

function GetSpawnEntity(player)
	
	if HasValidSpawn(player) then
		local surface = game.surfaces[global.player_data[player.index].surface]
	
		local entity = surface.find_entity("personal-spawn-marker", global.player_data[player.index].position)
		return entity
	end
	
	return nil
end

function AddSpawn(player, entity)
	CreatePlayerData(player)
		
	global.player_data[player.index].position = entity.position
	global.player_data[player.index].surface = entity.surface.name
end


function on_init()
	if global.player_data == nil then
		global.player_data = {}
	end
end

function on_built_entity(event)
	
	local entity = event.created_entity
	local player = game.players[event.player_index]
	
	if entity.name == "personal-spawn-marker" then
	
		if HasValidSpawn(player) then
			entity.destroy()
			
			if player.cursor_stack ~= nil and player.cursor_stack.valid_for_read and player.cursor_stack.name == "personal-spawn-marker-item" then
				player.cursor_stack.count = player.cursor_stack.count + 1
			elseif player.cursor_stack == nil or not player.cursor_stack.valid or not player.cursor_stack.valid_for_read then
				player.cursor_stack.set_stack({name = "personal-spawn-marker-item", count = 1})
			else
				player.insert({name = "personal-spawn-marker-item", count = 1})
			end
			player.print("Error: you can only set one spawn point at a time")
		else
			AddSpawn(player, entity)
		end
	end
end

function on_robot_built_entity(event)
	
	local entity = event.entity
	local player = event.robot.last_user
	
	if entity.name == "personal-spawn-marker" then
		if HasValidSpawn(player) then
			entity.destroy()
		else
			AddSpawn(player, entity)
		end
	end
	
end

function on_entity_died(event)
	local entity = event.entity
	
	if entity.name == "personal-spawn-marker" then
		local player = entity.last_user
		RemoveSpawn(player)
	end
end

function on_robot_pre_mined(event)
	local entity = event.entity
	
	if entity.name == "personal-spawn-marker" then
		local player = entity.last_user
		RemoveSpawn(player)
	end
end

function on_player_respawned(event)
	local player = game.players[event.player_index]
	
	if HasValidSpawn(player) then
		local surface = game.surfaces[global.player_data[player.index].surface]
	
		player.teleport(surface.find_non_colliding_position("player", global.player_data[player.index].position, 100, 1), global.player_data[player.index].surface)
		
		local marker = GetSpawnEntity(player)
		if marker ~= nil then
			marker.health = marker.health - (marker.prototype.max_health / 10)
			if marker.health <= 0 then
				marker.die()
			end
		end
		
	end
end

script.on_init(on_init)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_robot_built_entity, on_robot_built_entity)
script.on_event(defines.events.on_entity_died, on_entity_died)
script.on_event(defines.events.on_robot_pre_mined, on_robot_pre_mined)
script.on_event(defines.events.on_pre_player_died, on_pre_player_died)
script.on_event(defines.events.on_player_respawned, on_player_respawned)