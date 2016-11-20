
if global ~= nil and global.killed_players ~= nil then

	if global.player_data == nil then
		global.player_data = {}
	end

	for player_index, data in pairs(global.killed_players) do
		
		global.player_data[player_index] = {
			position = nil,
			surface = nil
		}
		
		if data.respawnPosition ~= nil then
			global.player_data[player_index].position = data.respawnPosition
		end
		
		if data.respawnSurface ~= nil then
			global.player_data[player_index].surface = data.respawnSurface
		end
		
		if game.forces[game.players[player_index] .. "_deathforce"] ~= nil then
			game.merge_forces(game.players[player_index] .. "_deathforce", "player")
		end
	end
	
	global.killed_players = nil
end