gui = require "gui"

function add_unique(tab, value)
	for i, v in pairs(tab) do if v == value then return end end
	table.insert(tab, value)
end

function get_staks_with_order(order, stacks)
	res = {}
	for i, v in pairs(stacks) do if v.stack.valid and v.order == order then table.insert(res, v) end end
	return res
end

function get_total_ammo(stack) return stack.ammo + (stack.count - 1) * game.item_prototypes[stack.name].magazine_size end
function get_total_ammo_capacity(name) return game.item_prototypes[name].magazine_size * game.item_prototypes[name].stack_size end

function get_total_durability(stack) return stack.durability + (stack.count - 1) * game.item_prototypes[stack.name].durability end
function get_total_durability_prototype(name) return game.item_prototypes[name].durability * game.item_prototypes[name].stack_size end

function compress_ammo(stack1, stack2)
	local stack1_missing_ammo = get_total_ammo_capacity(stack1.name) - get_total_ammo(stack1)
	local stack2_ammo = get_total_ammo(stack2)
	
	local stack2_valid = false
	
	if stack2_ammo == stack1_missing_ammo then
		stack1.add_ammo(stack1_missing_ammo)
		stack2.clear()
	elseif stack2_ammo < stack1_missing_ammo then
		stack1.add_ammo(stack2_ammo)
		stack2.clear()
	elseif stack2_ammo > stack1_missing_ammo then
		stack1.add_ammo(stack1_missing_ammo)
		stack2.drain_ammo(stack1_missing_ammo)
		
		stack2_valid = true
	end
	
	return stack2_valid
end

function compress_usable_stacks(stack1, stack2)
	local stack1_missing_durability = get_total_durability_prototype(stack1.name) - get_total_durability(stack1)
	local stack2_durability = get_total_durability(stack2)
	local full_durability = game.item_prototypes[stack1.name].durability
	local t_stack1_missing_durability = full_durability - stack1.durability
	
	local stack2_valid = false
	
	if stack2_durability == stack1_missing_durability then
		stack1.add_durability(stack1_missing_durability)
		stack2.clear()
	elseif stack2_durability < stack1_missing_durability then
		stack1.add_durability(stack2_durability)
		stack2.clear()
	elseif stack2_durability > stack1_missing_durability then
		stack1.add_durability(stack1_missing_durability)
		stack2.drain_durability(stack1_missing_durability)
		stack2_valid = true
	end
	
	return stack2_valid
end

function sort_inventory(arg)
	local player_index = 0
	local sort_limit_override = false
	local force_override = false
	local inventory = nil
	
	if (type(arg) == "table") then
		player_index = arg.player_index
		if arg.override_possible then sort_limit_override = arg.override_possible end
		if arg.force_override then force_override = arg.force_override end
		if arg.inventory then inventory = arg.inventory end
	else player_index = arg
	end
	
	check_settings(player_index)
	
	sort_limit_override = (sort_limit_override and global.player_settings[player_index].sort_limit_override) or force_override
	
	local player = game.players[player_index]
	if not inventory then inventory = player.get_inventory(defines.inventory.player_main) end
	local stacks = {}
	local orders = {}
	local sort_limit = #inventory
	
	if (not sort_limit_override) and global.player_settings[player_index].sort_limit_enabled then
		if global.player_settings[player_index].sort_limit >= 0 and global.player_settings[player_index].sort_limit < sort_limit then
			sort_limit = global.player_settings[player_index].sort_limit
		elseif global.player_settings[player_index].sort_limit < 0 and global.player_settings[player_index].sort_limit > 0 - sort_limit then
			sort_limit = sort_limit + global.player_settings[player_index].sort_limit
		end
	end
	
	for i = 1, sort_limit do -- put the content into a table
		local stack = inventory[i]
		if stack ~= nil and stack.valid_for_read and stack.valid then
			local prototype = game.item_prototypes[stack.name]
			
			local order = ""
			if (prototype.group) then order = order .. prototype.group.order .. prototype.group.name end
			if (prototype.subgroup) then order = order .. prototype.subgroup.order .. prototype.subgroup.name end
			if (prototype.order) then order = order .. prototype.order end
			order = order .. prototype.name
			
			table.insert(stacks, {stack = stack, prototype = prototype, order = order})
		end
	end
	
	for i, v in pairs(stacks) do -- make a list of all the order strings
		add_unique(orders, v.order)
	end
	table.sort(orders) -- sort the strings alphabetically
	
	-- build a temporary chest to put the items into - this is a lazier way of saving all the stack properties
	local t_chest = player.surface.create_entity{name = "manual-inventory-sort-tmp-chest", position = player.position}
	t_chest.destructible = false
	t_chest.operable = false
	local t_chest_inventory = t_chest.get_inventory(defines.inventory.chest)
	
	local i_slot = 1	
	for i = 1, #orders do -- order the items into the chest (this is where the actual sorting is done)
		local t_stacks = get_staks_with_order(orders[i], stacks)
		local damaged_stacks = {}
		local first = true
		
		for i_stack = 1, #t_stacks do
			local c_stack = t_stacks[i_stack]
			
			if (not first) and t_chest_inventory[i_slot].name == c_stack.stack.name then
				local free_space = c_stack.prototype.stack_size -  t_chest_inventory[i_slot].count
				
				local extra_properties = {}
				if c_stack.stack.type == "ammo" then extra_properties.ammo = c_stack.stack.ammo end
				if c_stack.stack.health and c_stack.stack.health ~= 1 then extra_properties.health = c_stack.stack.health end
				if c_stack.stack.durability then extra_properties.durability = c_stack.stack.durability end
				
				if extra_properties.ammo then -- ammo
					t_chest_inventory[i_slot + 1].set_stack(c_stack.stack)
					if compress_ammo(t_chest_inventory[i_slot], t_chest_inventory[i_slot + 1]) then i_slot = i_slot + 1 end
				elseif extra_properties.health then -- item is damaged - put at the end and do not stack!
					table.insert(damaged_stacks, c_stack)
				elseif extra_properties.durability then -- durability
					t_chest_inventory[i_slot + 1].set_stack(c_stack.stack)
					if compress_usable_stacks(t_chest_inventory[i_slot], t_chest_inventory[i_slot + 1]) then i_slot = i_slot + 1 end
				else -- everything else
					if c_stack.stack.count == free_space then
						t_chest_inventory[i_slot].count = c_stack.prototype.stack_size
						
					elseif c_stack.stack.count < free_space then t_chest_inventory[i_slot].count = t_chest_inventory[i_slot].count + c_stack.stack.count
					elseif c_stack.stack.count > free_space then
						t_chest_inventory[i_slot].count = c_stack.prototype.stack_size
						i_slot = i_slot + 1
						c_stack.stack.count = c_stack.stack.count - free_space
						t_chest_inventory[i_slot].set_stack(c_stack.stack)
					end
				end
			else
				if c_stack.stack.health and c_stack.stack.health ~= 1 then table.insert(damaged_stacks, c_stack)
				else 
					t_chest_inventory[i_slot].set_stack(c_stack.stack)
					first = false
				end
			end
		end
		
		for i_damaged = 1, #damaged_stacks do
			if not first then i_slot = i_slot + 1 else first = false end
			t_chest_inventory[i_slot].set_stack(damaged_stacks[i_damaged].stack)
		end
		
		i_slot = i_slot + 1
	end
	
	if (t_chest.valid) then
		for i = 1, sort_limit do inventory[i].set_stack(t_chest_inventory[i]) end
		t_chest.destroy()
	end
end

function is_sortable(entity)
	local sortable_entities = {"container", "logistic-container"}
	
	for _, v in pairs(sortable_entities) do
		if entity.type == v then return true end
	end
	
	return false
end

function check_settings(index)
	if type(global.player_settings[index]) ~= "table" then
		global.player_settings[index] =
		{
			auto_sort = false,
			sort_limit_enabled = false,
			sort_limit = 10,
			sort_limit_override = false,
			sort_buttons_enabled = false
		}
	end
end

function init()
	if global.player_settings == nil then global.player_settings = {} end
	if global.last_sorted == nil then global.last_sorted = {} end
end

script.on_configuration_changed(function(data)
	init()
	
	if data.mod_changes["manual-inventory-sort"] and data.mod_changes["manual-inventory-sort"].old_version and data.mod_changes["manual-inventory-sort"].old_version < "1.2.0" then -- migration of old settings format
		local res = {}
		for i, v in pairs(global.player_settings) do
			res[i] =
			{
				auto_sort = v,
				sort_limit_enabled = false,
				sort_limit = 10,
				sort_limit_override = false
			}
		end
		global.player_settings = res
	end
	
	if data.mod_changes["manual-inventory-sort"] and data.mod_changes["manual-inventory-sort"].old_version and data.mod_changes["manual-inventory-sort"].old_version < "1.4.0" then -- add sort buttons option to old settings
		game.players[1].print("migration to 1.4.0")
		for i, _ in pairs(global.player_settings) do
			global.player_settings[i].sort_buttons_enabled = false
		end
	end
end)
script.on_init(init)

script.on_event(defines.events.on_tick, function(event)
	for player_index, _ in pairs(game.players) do -- open/close the sort gui
		check_settings(player_index)
		
		if global.player_settings[player_index].sort_buttons_enabled then
			gui.sort_buttons_gui(game.players[player_index])
		else
			gui.destroy_sort_buttons_gui(game.players[player_index])
		end
	end
end)

script.on_event(defines.events.on_player_main_inventory_changed, function(event) -- players inventory has changed - sort it
	check_settings(event.player_index)
	
	if global.player_settings[event.player_index].auto_sort == true and (global.last_sorted[event.player_index] == nil or global.last_sorted[event.player_index] < game.tick - 1) then
		sort_inventory(event.player_index)
		global.last_sorted[event.player_index] = game.tick
	end
end)

script.on_event("manual-inventory-sort", function(event) -- sort key event
	sort_inventory{player_index = event.player_index, override_possible = true}
end)

script.on_event("manual-inventory-auto-sort-toggle", function(event) -- auto sort toggle
	check_settings(event.player_index)
	
	local player = game.players[event.player_index]
	
	if global.player_settings[event.player_index].auto_sort == true then
		player.print{"manual-inventory-auto-sort-off"}
		global.player_settings[event.player_index].auto_sort = false
	else
		player.print{"manual-inventory-auto-sort-on"}
		global.player_settings[event.player_index].auto_sort = true
		sort_inventory(event.player_index)
	end
	
	gui.update_options_gui(game.players[event.player_index].gui, global.player_settings[event.player_index])
end)

script.on_event("manual-inventory-options", function(event) -- open/close options
	check_settings(event.player_index)
	
	gui.options_gui(game.players[event.player_index].gui, global.player_settings[event.player_index])
	
	if global.player_settings[event.player_index].auto_sort == true and (global.last_sorted[event.player_index] == nil or global.last_sorted[event.player_index] < game.tick - 1) then -- sort, if the player turned auto-sort on
		sort_inventory(event.player_index)
		global.last_sorted[event.player_index] = game.tick
	end
end)

script.on_event("manual-inventory-sort-opened", function(event) -- sort chest key
	check_settings(event.player_index)
	
	local player = game.players[event.player_index]
	if player.opened and is_sortable(player.opened) then
		sort_inventory{player_index = event.player_index, inventory = player.opened.get_inventory(defines.inventory.chest), force_override = true}
	end
end)

script.on_event(defines.events.on_gui_click, function(event)
	if event.element.name == "manual-inventory-options-save" then
		gui.options_gui(game.players[event.player_index].gui, global.player_settings[event.player_index])
		
	elseif event.element.name == "manual-inventory-sort_player" then
		check_settings(event.player_index)
		
		sort_inventory{player_index = event.player_index, override_possible = true}
		
	elseif event.element.name == "manual-inventory-sort_chest" then
		check_settings(event.player_index)
		
		local player = game.players[event.player_index]
		if player.opened and is_sortable(player.opened) then
			sort_inventory{player_index = event.player_index, inventory = player.opened.get_inventory(defines.inventory.chest), force_override = true}
		end
	end
end)