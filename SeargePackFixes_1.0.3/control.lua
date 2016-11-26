script.on_event(defines.events.on_player_created, function(event)
	local player = game.players[event.player_index]
	player.surface.freeze_daytime(false)
end)
