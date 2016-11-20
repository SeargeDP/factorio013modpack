util = require "util"
sorting = require "sorting"
gui = require "gui"

script.on_event(defines.events.on_tick, function(event)
	for player_index, _ in pairs(game.players) do -- open/close the sort gui
		migration.check_settings(player_index)
		
		if global.sorting_requests[player_index] and (global.last_sorted[player_index] == nil or global.last_sorted[player_index] < game.tick - 10) then
			sorting.sort_inventory(player_index)
			global.last_sorted[player_index] = game.tick
			global.sorting_requests[player_index] = false
		end
		
		if global.player_settings[player_index].sort_buttons_enabled then
			gui.sort_buttons_gui(game.players[player_index])
		else
			gui.destroy_sort_buttons_gui(game.players[player_index])
		end
	end
end)

script.on_event(defines.events.on_player_main_inventory_changed, function(event) -- players inventory has changed - sort it
	migration.check_settings(event.player_index)
	
	if global.player_settings[event.player_index].auto_sort == true and (global.last_sorted[event.player_index] == nil or global.last_sorted[event.player_index] < game.tick - 1) then
		global.sorting_requests[event.player_index] = true
		--[[sorting.sort_inventory(event.player_index)
		global.last_sorted[event.player_index] = game.tick]]
	end
end)

script.on_event("manual-inventory-sort", function(event) -- sort key event
	sorting.sort_inventory{player_index = event.player_index, override_possible = true}
end)

script.on_event("manual-inventory-auto-sort-toggle", function(event) -- auto sort toggle
	migration.check_settings(event.player_index)
	
	local player = game.players[event.player_index]
	
	if global.player_settings[event.player_index].auto_sort == true then
		player.print{"manual-inventory-auto-sort-off"}
		global.player_settings[event.player_index].auto_sort = false
	else
		player.print{"manual-inventory-auto-sort-on"}
		global.player_settings[event.player_index].auto_sort = true
		sorting.sort_inventory(event.player_index)
	end
	
	gui.update_options_gui(game.players[event.player_index].gui, global.player_settings[event.player_index])
end)

script.on_event("manual-inventory-options", function(event) -- open/close options
	migration.check_settings(event.player_index)
	
	gui.options_gui(game.players[event.player_index], global.player_settings[event.player_index])
	
	if global.player_settings[event.player_index].auto_sort == true and (global.last_sorted[event.player_index] == nil or global.last_sorted[event.player_index] < game.tick - 1) then -- sort, if the player turned auto-sort on
		sorting.sort_inventory(event.player_index)
		global.last_sorted[event.player_index] = game.tick
	end
end)

script.on_event("manual-inventory-sort-opened", function(event) -- sort chest key
	migration.check_settings(event.player_index)
	
	local player = game.players[event.player_index]
	if player.opened and util.is_sortable(player.opened) then
		sorting.sort_inventory{
			player_index = event.player_index,
			inventory =
				player.opened.get_inventory(defines.inventory.car_trunk)
				or player.opened.get_inventory(defines.inventory.chest)
				or player.opened.get_inventory(defines.inventory.cargo_wagon),
			force_override = true,
			filtered = (player.opened.type == "cargo-wagon" or player.opened.type == "car")
		}
	end
end)

script.on_event(defines.events.on_gui_click, function(event)
	if event.element.name == "manual-inventory-options-save" then
		gui.options_gui(game.players[event.player_index], global.player_settings[event.player_index])
		
	elseif event.element.name == "manual-inventory-options-open_custom_sort" then
		gui.custom_sort(game.players[event.player_index], global.player_settings[event.player_index])
		
	elseif event.element.name == "manual-inventory-sort_player" then
		migration.check_settings(event.player_index)
		
		sorting.sort_inventory{player_index = event.player_index, override_possible = true}
		
	elseif event.element.name == "manual-inventory-sort_chest" then
		migration.check_settings(event.player_index)
		
		local player = game.players[event.player_index]
		if player.opened and util.is_sortable(player.opened) then
			sorting.sort_inventory{
			player_index = event.player_index,
			inventory =
				player.opened.get_inventory(defines.inventory.car_trunk)
				or player.opened.get_inventory(defines.inventory.chest)
				or player.opened.get_inventory(defines.inventory.cargo_wagon),
			force_override = true,
			filtered = (player.opened and (player.opened.type == "cargo-wagon" or player.opened.type == "car"))
		}
		end
	elseif event.element.name == "manual-inventory-custom_sort-save" then
		gui.custom_sort(game.players[event.player_index], global.player_settings[event.player_index])
	end
end)