-- debug_status = 1
debug_mod_name = "BigBags"
debug_file = debug_mod_name .. "-debug.txt"
require("utils")
require("config")

--------------------------------------------------------------------------------------
local function on_configuration_changed(data)
	-- detect any mod or game version change
	if data.mod_changes ~= nil then
		local changes = data.mod_changes[debug_mod_name]
		if changes ~= nil then
			debug_print( "update mod: ", debug_mod_name, " ", tostring(changes.old_version), " to ", tostring(changes.new_version) )
		
			if changes.old_version and older_version(changes.old_version, "1.0.1") then
				for _, player in pairs(game.players) do
					player.force.reset_technologies()
					
					player.force.quickbar_count = 1
					if player.force.technologies["toolbelt"].researched then
						player.force.quickbar_count = 2
					end

					c = 0	
					for i = 1,5 do
						s = "character-logistic-slots-" .. i
						if player.force.technologies[s].researched then c = c + 5 end
					end
					player.force.character_logistic_slot_count = c

					c = 0	
					for i = 1,2 do
						s = "character-logistic-trash-slots-" .. i
						if player.force.technologies[s].researched then c = c + 5 end
					end
					player.force.character_trash_slot_count = c
				end
			end

			if changes.old_version and older_version(changes.old_version, "1.0.13") then
				for _,force in pairs(game.forces) do
					force.technologies["inventory-size"].researched = true
					force.technologies["inventory-size-2"].researched = true
					force.technologies["inventory-size-3"].researched = true
					force.technologies["inventory-size-4"].researched = true
					force.technologies["inventory-size-5"].researched = true
				end
			end
			
			if changes.old_version and older_version(changes.old_version, "1.0.15") then
				for _,force in pairs(game.forces) do
					force.reset_technologies()
					force.character_item_pickup_distance_bonus = 0
				end
			end
			
			if changes.old_version and older_version(changes.old_version, "1.0.17") then
				for _,force in pairs(game.forces) do
					force.reset_technologies()
					-- force.technologies["inventory-size"].reload()
					-- force.technologies["inventory-size-2"].reload()
					-- force.technologies["inventory-size-3"].reload()
					-- force.technologies["inventory-size-4"].reload()
					-- force.technologies["inventory-size-5"].reload()
				end
			end
		end
	end
end

script.on_configuration_changed(on_configuration_changed)

--------------------------------------------------------------------------------------
local interface = {}

function interface.reset()
	debug_print( "reset" )
	
	for _,force in pairs(game.forces) do
		force.reset_recipes()
		force.reset_technologies()
	end
end

remote.add_interface( "bigbags", interface )

-- /c remote.call( "bigbags", "reset" )
