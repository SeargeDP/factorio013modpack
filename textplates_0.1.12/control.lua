require("plate-types")

local default_symbol = "square"

function on_player_cursor_stack_changed(event)
	player=game.players[event.player_index]
	if player.cursor_stack and player.cursor_stack.valid and player.cursor_stack.valid_for_read and is_blank_plate(player.cursor_stack.name)then
		show_gui(player, player.cursor_stack.name)
	else
		hide_gui(player)
	end
end 

function is_blank_plate(item_name)
	for i1, material in ipairs(materials) do
		for i2, size in ipairs(sizes) do
			if item_name == size .. "-" .. material .. "-blank" then
				return true
			end
		end
	end
	return false
end

function show_gui(player, item_name)
	local item_prefix = string.gsub(item_name, "-blank", "")
	
	-- remove any UIs of the other plate types
	for i1, material in ipairs(materials) do
		for i2, size in ipairs(sizes) do
			if(size.."-"..material ~= item_prefix) and player.gui.left[size.."-"..material] ~= nil then
				player.gui.left[size.."-"..material].destroy()
			end
		end
	end
	
	-- add the desired plate type UI
	if player.gui.left[item_prefix] == nil then
		local plate_frame = player.gui.left.add{type = "frame", name = item_prefix, caption = {"text-plate-ui-title"}, direction = "vertical"}
		local plates_table = plate_frame.add{type ="table", name = "plates_table", colspan = 6, style = "plates-table"}
		
		for i3, symbol in ipairs(symbols) do
			if not(symbol == "blank") then
				local plate_option = item_prefix.."-"..symbol
				if(symbol == default_symbol) then
					plates_table.add{type = "sprite-button", name = plate_option, sprite="item/"..plate_option, style="plates-button-active"}
				else
					plates_table.add{type = "sprite-button", name = plate_option, sprite="item/"..plate_option, style="plates-button"}
				end
			end
		end
		
		local plates_input_label = plate_frame.add{type ="label", name = "plates_input_label", caption={"text-plate-input-label"}}
		local plates_input = plate_frame.add{type ="textfield", name = "plates_input"}
		
		prep_player_plate_options(player.index)
		global.plates_players[player.index][item_prefix] = item_prefix.."-"..default_symbol
		
	end
end

function hide_gui(player)
	for i1, material in ipairs(materials) do
		for i2, size in ipairs(sizes) do
			if player.gui.left[size.."-"..material] ~= nil then
				player.gui.left[size.."-"..material].destroy()
			end
		end
	end
end

function on_gui_click(event)
	local player_index = event.player_index
	local player = game.players[player_index]
	if event.element.parent and event.element.parent.name == "plates_table" then
		for i1, material in ipairs(materials) do
			for i2, size in ipairs(sizes) do
				for i3, symbol in ipairs(symbols) do
					if event.element.name == size.."-"..material.."-"..symbol then
						-- uncheck others
						for _,buttonname in ipairs(event.element.parent.children_names) do
							event.element.parent[buttonname].style = "plates-button"
						end
						-- check self
						event.element.style = "plates-button-active"
						prep_player_plate_options(player_index)
						global.plates_players[player_index][size.."-"..material] = event.element.name
						if(player.gui.left[size.."-"..material].plates_input) then
							player.gui.left[size.."-"..material].plates_input.text = ""
						end
					end
				end
			end
		end
	end
end

function on_gui_text_changed(event)
	if(event.element.name == "plates_input") then
		prep_next_symbol(event.player_index)
	end
end

function prep_next_symbol(player_index)
	local player = game.players[player_index]
	for i1, material in ipairs(materials) do
		for i2, size in ipairs(sizes) do
			if player.gui.left[size.."-"..material] and player.gui.left[size.."-"..material].plates_input and player.gui.left[size.."-"..material].plates_table then
				prep_player_plate_options(player_index)
				local text = player.gui.left[size.."-"..material].plates_input.text
				if string.len(text) > 0 then 
					local first_char = string.sub(text, 1, 1)
					local next_name = size.."-"..material.."-"..item_suffix_from_char(first_char)
					for _,buttonname in ipairs(player.gui.left[size.."-"..material].plates_table.children_names) do
						player.gui.left[size.."-"..material].plates_table[buttonname].style = "plates-button"
					end
					player.gui.left[size.."-"..material].plates_table[next_name].style = "plates-button-active"
					global.plates_players[player_index][size.."-"..material] = next_name
				else
					for _,buttonname in ipairs(player.gui.left[size.."-"..material].plates_table.children_names) do
						player.gui.left[size.."-"..material].plates_table[buttonname].style = "plates-button"
					end
					player.gui.left[size.."-"..material].plates_table[size.."-"..material.."-"..default_symbol].style = "plates-button-active"
					global.plates_players[player_index][size.."-"..material] = size.."-"..material.."-"..default_symbol
				end
			end
		end
	end
end

function prep_player_plate_options(player_index) 
	if not global.plates_players then
		global.plates_players = {}
	end
	if not global.plates_players[player_index] then
		global.plates_players[player_index] = {}
	end
end

function on_built_entity (event)
	local player_index = event.player_index
	local player = game.players[player_index]
	local entity = event.created_entity
	if entity.valid then -- in case of other scripts
		if entity.name == "entity-ghost" then
			if player.cursor_stack and player.cursor_stack.valid and player.cursor_stack.valid_for_read and is_blank_plate(player.cursor_stack.name) then
				for i1, material in ipairs(materials) do
					for i2, size in ipairs(sizes) do
						if entity.ghost_name == size.."-"..material.."-blank" then
							prep_player_plate_options(player_index)
							local replace_name = size.."-"..material.."-"..default_symbol -- default
							-- loaded value
							if global.plates_players[player_index][size.."-"..material] then 
								replace_name = global.plates_players[player_index][size.."-"..material]
							end
							-- sequence
							if player.gui.left[size.."-"..material] and player.gui.left[size.."-"..material].plates_input then
								local text = player.gui.left[size.."-"..material].plates_input.text
								if string.len(text) > 0 then 
									local first_char = string.sub(text, 1, 1)
									local remainder = string.sub(text, 2, -1)
									player.gui.left[size.."-"..material].plates_input.text = remainder
									replace_name = size.."-"..material.."-"..item_suffix_from_char(first_char)
									prep_next_symbol(player_index)
								end
							end
							
							if replace_name ~= entity.name then 
								-- replace
								entity.get_control_behavior().parameters={parameters={{signal={type="item",name=replace_name},count=0,index=1}}}
								return
							end
						end
					end
				end
			else
				for i1, material in ipairs(materials) do
					for i2, size in ipairs(sizes) do
						for i3, symbol in ipairs(symbols) do
							if symbol ~= "blank" and entity.ghost_name == size.."-"..material.."-"..symbol then
								local replacement = entity.surface.create_entity{ name="entity-ghost", inner_name=size.."-"..material.."-blank", position=entity.position, force=entity.force}
								replacement.get_control_behavior().parameters={parameters={{signal={type="item",name=entity.ghost_name},count=0,index=1}}}
								entity.destroy()
								return
							end
						end
					end
				end
			end
		else
			for i1, material in ipairs(materials) do
				for i2, size in ipairs(sizes) do
					if entity.name == size.."-"..material.."-blank" then
						prep_player_plate_options(player_index)
						local replace_name = size.."-"..material.."-"..default_symbol -- default
						-- loaded value
						if global.plates_players[player_index][size.."-"..material] then 
							replace_name = global.plates_players[player_index][size.."-"..material]
						end
						-- sequence
						if player.gui.left[size.."-"..material] and player.gui.left[size.."-"..material].plates_input then
							local text = player.gui.left[size.."-"..material].plates_input.text
							if string.len(text) > 0 then 
								local first_char = string.sub(text, 1, 1)
								local remainder = string.sub(text, 2, -1)
								player.gui.left[size.."-"..material].plates_input.text = remainder
								replace_name = size.."-"..material.."-"..item_suffix_from_char(first_char)
								prep_next_symbol(player_index)
							end
						end
						
						if replace_name ~= entity.name then 
							-- replace
							local replacement = entity.surface.create_entity{ name=replace_name,  position=entity.position, force=entity.force}
							entity.destroy()
							return
						end
					end
				end
			end
		end
	end
end

function on_robot_built_entity (event)
	local entity = event.created_entity
	if entity.valid then -- in case of other scripts
		for i1, material in ipairs(materials) do
			for i2, size in ipairs(sizes) do
				if entity.name == size.."-"..material.."-blank" then
					local replace_name = entity.get_control_behavior().parameters.parameters[1].signal.name
					for i3, symbol in ipairs(symbols) do
						if replace_name == size.."-"..material.."-"..symbol then 
							local replacement = entity.surface.create_entity{ name=replace_name, position=entity.position, force=entity.force}
							entity.destroy()
							return
						end
					end
				end
			end
		end
	end
end

function on_entity_died (event)
	local entity = event.entity
	if entity.valid then -- in case of other scripts
		for i1, material in ipairs(materials) do
			for i2, size in ipairs(sizes) do
				for i3, symbol in ipairs(symbols) do
					if entity.name == size.."-"..material.."-"..symbol then
						local replacement = entity.surface.create_entity{ name="entity-ghost", inner_name=size.."-"..material.."-blank", position=entity.position, force=entity.force}
						replacement.get_control_behavior().parameters={parameters={{signal={type="item",name=entity.name},count=0,index=1}}}
						entity.destroy()
						return
					end
				end
			end
		end
	end
end

function item_suffix_from_char(character)
	return symbol_by_char[string.lower( character )] or default_symbol
end
	
script.on_event(defines.events.on_gui_click, on_gui_click)
script.on_event(defines.events.on_player_cursor_stack_changed, on_player_cursor_stack_changed)
script.on_event(defines.events.on_gui_text_changed, on_gui_text_changed)
script.on_event(defines.events.on_built_entity, on_built_entity)
script.on_event(defines.events.on_robot_built_entity, on_robot_built_entity)
script.on_event(defines.events.on_entity_died, on_entity_died)
