util = require "util"

local gui = {}

function gui.options_gui(player, settings)
	if player.gui.center["manual-inventory-options-container"] then
		if player.gui.center["manual-inventory-custom_sort-container"] then gui.custom_sort(player, settings) end
		
		local gui = player.gui.center["manual-inventory-options-container"]
		
		settings.auto_sort = gui["auto_sort"].state
		settings.sort_limit_enabled = gui["sort_limit_enabled"].state
		settings.sort_limit = tonumber(gui["sort_limit_flow"]["sort_limit"].text)
		settings.sort_limit_override = gui["flow_fix"]["sort_limit_override"].state
		settings.sort_buttons_enabled = gui["flow_fix"]["sort_buttons_enabled"].state
		
		if settings.sort_limit == nil then settings.sort_limit = 10 end
		
		player.gui.center["manual-inventory-options-container"].destroy()
	else
		player.gui.center.add{type = "frame", name = "manual-inventory-options-container", direction = "vertical", caption = {"manual-inventory-gui-title"}}
		local gui = player.gui.center["manual-inventory-options-container"]
		
		gui.add{type = "checkbox", name = "auto_sort", state = settings.auto_sort, caption = {"manual-inventory-gui-auto_sort"}}
		
		gui.add{type = "checkbox", name = "sort_limit_enabled", state = settings.sort_limit_enabled, caption = {"manual-inventory-gui-sort_limit_enabled"}}
		
		sort_limit_flow = gui.add{type = "flow", name = "sort_limit_flow"}
		local t_gui = sort_limit_flow.add{type = "label", name = "sort_limit_caption", caption = {"manual-inventory-gui-sort_limit"}}
		sort_limit_flow.add{type = "textfield", name = "sort_limit", text = tostring(settings.sort_limit)}
		t_gui.style.top_padding = 3
		
		flow_fix = gui.add{type = "flow", name = "flow_fix", direction = "vertical"}
		
		flow_fix.add{type = "checkbox", name = "sort_limit_override", state = settings.sort_limit_override, caption = {"manual-inventory-gui-sort_limit_override"}}
		
		flow_fix.add{type = "checkbox", name = "sort_buttons_enabled", state = settings.sort_buttons_enabled, caption = {"manual-inventory-gui-sort_buttons_enabled"}}
		
		flow_fix.add{type = "button", name = "manual-inventory-options-save", caption = {"manual-inventory-gui-save"}}
	end
end

function gui.sort_buttons_gui(player)
	if player.opened ~= nil or player.opened_self then
		if player.gui.left["manual-inventory-sort_buttons-container"] == nil then
			local gui = player.gui.left.add{type = "frame", name = "manual-inventory-sort_buttons-container", direction = "vertical", caption = {"manual-inventory-gui-sort-title"}}
			gui.add{type = "button", name = "manual-inventory-sort_player", caption = {"manual-inventory-gui-sort_player"}}
			
			if player.opened ~= nil and util.is_sortable(player.opened) then
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

function gui.custom_sort(player, settings)
	if player.gui.center["manual-inventory-custom_sort-container"] then
		local gui = player.gui.center["manual-inventory-custom_sort-container"]
		settings.sorting_prefs.keep_on_top = util.split_string(gui["manual-inventory-custom_sort-kot-container"]["manual-inventory-custom_sort-kot_text"].text, ",")
		gui.destroy()
		
	else
		local gui = player.gui.center.add{type = "frame", name = "manual-inventory-custom_sort-container", direction = "vertical", caption = {"manual-inventory-gui-custom_sort_title"}}
		
		local kot_container = gui.add{type = "flow", name = "manual-inventory-custom_sort-kot-container", direction = "horizontal"}
		local t_gui = kot_container.add{type = "label", name = "manual-inventory-custom_sort-kot_label", caption = {"manual-inventory-keep_on_top"}}
		t_gui.style.top_padding = 3
		t_gui = kot_container.add{type = "textfield", name = "manual-inventory-custom_sort-kot_text", text = util.format_array(settings.sorting_prefs.keep_on_top)}
		
		gui.add{type = "button", name = "manual-inventory-custom_sort-save", caption = {"manual-inventory-gui-save"}}
	end
end

return gui