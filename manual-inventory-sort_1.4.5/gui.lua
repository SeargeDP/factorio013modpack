local gui = {}

function gui.options_gui(gui, settings)
	if gui.center["manual-inventory-options-container"] then
		gui = gui.center["manual-inventory-options-container"]
		
		settings.auto_sort = gui["auto_sort"].state
		settings.sort_limit_enabled = gui["sort_limit_enabled"].state
		settings.sort_limit = tonumber(gui["sort_limit_flow"]["sort_limit"].text)
		settings.sort_limit_override = gui["flow_fix"]["sort_limit_override"].state
		if gui["flow_fix"]["sort_buttons_enabled"] then settings.sort_buttons_enabled = gui["flow_fix"]["sort_buttons_enabled"].state end
		
		if settings.sort_limit == nil then settings.sort_limit = 10 end
		
		gui.gui.center["manual-inventory-options-container"].destroy()
	else
		gui.center.add{type = "frame", name = "manual-inventory-options-container", direction = "vertical", caption = {"manual-inventory-gui-title"}}
		gui = gui.center["manual-inventory-options-container"]
		
		gui.add{type = "checkbox", name = "auto_sort", state = settings.auto_sort, caption = {"manual-inventory-gui-auto_sort"}}
		
		gui.add{type = "checkbox", name = "sort_limit_enabled", state = settings.sort_limit_enabled, caption = {"manual-inventory-gui-sort_limit_enabled"}}
		
		sort_limit_flow = gui.add{type = "flow", name = "sort_limit_flow"}
		sort_limit_flow.add{type = "label", name = "sort_limit_caption", caption = {"manual-inventory-gui-sort_limit"}}
		sort_limit_flow.add{type = "textfield", name = "sort_limit", text = tostring(settings.sort_limit)}
		
		flow_fix = gui.add{type = "flow", name = "flow_fix", direction = "vertical"}
		
		flow_fix.add{type = "checkbox", name = "sort_limit_override", state = settings.sort_limit_override, caption = {"manual-inventory-gui-sort_limit_override"}}
		
		flow_fix.add{type = "checkbox", name = "sort_buttons_enabled", state = settings.sort_buttons_enabled, caption = {"manual-inventory-gui-sort_buttons_enabled"}}
		
		flow_fix.add{type = "button", name = "manual-inventory-options-save", caption = {"manual-inventory-gui-save"}}
	end
end

local function is_sortable(entity)
	local sortable_entities = {"container", "logistic-container", "cargo-wagon", "car"}
	
	for _, v in pairs(sortable_entities) do
		if entity.type == v then return true end
	end
	
	return false
end

function gui.sort_buttons_gui(player)
	if player.opened ~= nil or player.opened_self then
		if player.gui.left["manual-inventory-sort_buttons-container"] == nil then
			local gui = player.gui.left.add{type = "frame", name = "manual-inventory-sort_buttons-container", direction = "vertical", caption = {"manual-inventory-gui-sort-title"}}
			gui.add{type = "button", name = "manual-inventory-sort_player", caption = {"manual-inventory-gui-sort_player"}}
			
			if player.opened ~= nil and is_sortable(player.opened) then
				gui.add{type = "button", name = "manual-inventory-sort_chest", caption = {"manual-inventory-gui-sort_chest"}}
			end
		end
	elseif player.gui.left["manual-inventory-sort_buttons-container"] then
		player.gui.left["manual-inventory-sort_buttons-container"].destroy()
	end
end

function gui.destroy_sort_buttons_gui(player)
	if player.gui.left["manual-inventory-sort_buttons-container"] then
		player.gui.left["manual-inventory-sort_buttons-container"].destroy()
	end
end

function gui.update_options_gui(gui, settings)
	if gui.center["manual-inventory-options-container"] then
		gui = gui.center["manual-inventory-options-container"]
		
		gui["auto_sort"].state = settings.auto_sort
	end
end

return gui