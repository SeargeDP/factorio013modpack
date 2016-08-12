
function CreateForceForPlayer(player, assign)
	local forceName = player.name .. "_deathforce"
	if game.forces[forceName] == nil then
		game.create_force(forceName)
	end
	
	if assign then
		player.force = game.forces[forceName]
	end
end

function HasGlobal(player)
	return global.killed_players[player.index] ~= nil
end

function CreateGlobal(player, respawnForce, respawnPos, respawnSurface)
	global.killed_players[player.index] = {
		respawnForce = respawnForce,
		respawnPosition = respawnPos,
		respawnSurface = respawnSurface
	}
end

function RespawnSet(player)
	return global.killed_players[player.index] ~= nil and global.killed_players[player.index].respawnPosition ~= nil
end

function SetForceSpawnPoint(forceName, position, surfaceName)
	if game.forces[forceName] ~= nil then
		if surfaceName == nil then
			surfaceName = "nauvis"
		end
		if position == nil then
			position = game.forces.player.get_spawn_position(surfaceName)
		end
		game.forces[forceName].set_spawn_position(position, surfaceName)
	end
end

function SetRespawnPosition(player, position, surfaceName)
	global.killed_players[player.index].respawnPosition = position
	global.killed_players[player.index].respawnSurface = surfaceName
	
	CreateForceForPlayer(player, false)
	SetForceSpawnPoint(player.name .. "_deathforce", position, surfaceName)
end

function RemoveSpawnPosition(player)
	SetRespawnPosition(player, nil, nil)
end

function on_init()
	if global.killed_players == nil then
		global.killed_players = {}
	end
end

function on_player_died(event)
	local player = game.players[event.player_index]
	
	
	CreateGlobal(player, player.force.name, nil, nil)
	CreateForceForPlayer(player, true)
end

function on_player_respawned(event)
	local player = game.players[event.player_index]
	
	local forceName = player.name .. "_deathforce"
	
	if game.forces[forceName] ~= nil and HasGlobal(player) then
		local respawnForce = game.forces[global.killed_players[player.index].respawnForce]
		player.force = respawnForce
	end
end

function on_built_entity(event)
	local player = game.players[event.player_index]
	local entity = event.created_entity
	
	if entity.name == "personal-spawn-marker" then
		if not HasGlobal(player) then
			CreateGlobal(player, player.force.name, nil, nil)
		end
		
		if not RespawnSet(player) then
			SetRespawnPosition(player, entity.position, entity.surface.name)
			player.print("Spawn point set")
		else
			player.insert({name = "personal-spawn-marker-item", count = 1})
			entity.destroy()
			player.print("Error: You can only set 1 spawn point at a time")
		end
	end
end

function on_robot_built_entity(event)
	local entity = event.created_entity
	local player = entity.built_by
	local robot = event.robot
	
	if entity.name == "personal-spawn-marker" then
		if not HasGlobal(player) then
			CreateGlobal(player, player.force.name, nil, nil)
		end
		
		if not RespawnSet(player) then
			SetRespawnPosition(player, entity.position, entity.surface.name)
			player.print("Spawn point set")
		else
			if robot.can_insert({name = "personal-spawn-marker-item", count = 1}) then
				robot.insert({name = "personal-spawn-marker-item", count = 1})
			end
		
			entity.destroy()
			player.print("Error: You can only set 1 spawn point at a time")
		end
	end
end

function on_entity_died(event)
	local entity = event.entity
	
	if entity.name == "personal-spawn-marker" then
		local player = entity.built_by
		
		if HasGlobal(player) and RespawnSet(player) then
			RemoveSpawnPosition(player)
			player.print("Warning: Spawn Marker destroyed. Spawn Position Reset")
		end
	end
end

function on_player_mined_item(event)
	local player = game.players[event.player_index]
	
	if event.item_stack.name == "personal-spawn-marker-item" then
		if HasGlobal(player) and RespawnSet(player) then
			RemoveSpawnPosition(player)
			player.print("Warning: Spawn Marker destroyed. Spawn Position Reset")
		end
	end
end

script.on_init(on_init)
script.on_load(on_load)
script.on_event(defines.events.on_player_died, on_player_died)
script.on_event(defines.events.on_player_respawned, on_player_respawned)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_robot_built_entity, on_robot_built_entity)
script.on_event(defines.events.on_entity_died, on_entity_died)
script.on_event(defines.events.on_player_mined_item, on_player_mined_item)
