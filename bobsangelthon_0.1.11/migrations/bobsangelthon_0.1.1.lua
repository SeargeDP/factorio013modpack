game.reload_script()

for i, force in pairs(game.forces) do 
	force.reset_recipes()
	force.reset_technologies()
	force.technologies["ore-processing-1"].enabled = false
	force.technologies["ore-processing-2"].enabled = false
	force.technologies["ore-processing-3"].enabled = false
	force.technologies["ore-processing-4"].enabled = false
	force.technologies["ingot-smelting"].enabled = false
end

