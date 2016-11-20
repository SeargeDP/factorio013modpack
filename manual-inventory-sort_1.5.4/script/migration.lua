version = require "semver"

local migration = {}

function migration.init()
	if global.player_settings == nil then global.player_settings = {} end
	if global.last_sorted == nil then global.last_sorted = {} end
	if global.sorting_requests == nil then global.sorting_requests = {} end
	if global.player_t_chests == nil then global.player_t_chests = {} end
end

function migration.check_settings(index)
	if type(global.player_settings[index]) ~= "table" then
		global.player_settings[index] =
		{
			auto_sort = false,
			sort_limit_enabled = false,
			sort_limit = 10,
			sort_limit_override = false,
			sort_buttons_enabled = false,
			custom_sort_enabled = false,
			sorting_prefs =
			{
				keep_on_top = {},
				keep_on_top_orders = {},
				ordering = "default"
			}
		}
	end
	
	if type(global.sorting_requests) ~= "table" then global.sorting_requests = {} end
	if type(global.last_sorted) ~= "table" then global.last_sorted = {} end
	if type(global.player_t_chests) ~= "table" then global.player_t_chests = {} end
end

function migration.migrate(data)
	migration.init()
	
	if data.mod_changes["manual-inventory-sort"] and data.mod_changes["manual-inventory-sort"].old_version then
		local old_version = version(data.mod_changes["manual-inventory-sort"].old_version)
		
		if old_version < version"1.2.0" then -- migration of old settings format
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
		
		if old_version < version"1.4.0" then -- add sort buttons option to old settings
			for i, _ in pairs(global.player_settings) do
				global.player_settings[i].sort_buttons_enabled = false
			end
		end
		
		if old_version < version"1.5.0" then
			for i, _ in pairs(global.player_settings) do
				global.player_settings[i].custom_sort_enabled = false
				global.player_settings[i].sorting_prefs = 
				{
					keep_on_top = {},
					keep_on_top_orders = {},
					ordering = "default"
				}
			end
		end
	end
end

return migration