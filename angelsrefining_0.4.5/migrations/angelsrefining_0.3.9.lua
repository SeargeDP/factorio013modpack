game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["water-treatment"].researched then
		force.recipes["yellow-waste-water-purification"].enabled = true
		force.recipes["angels-water-void-yellow-waste"].enabled = true
		if game.item_prototypes["y-res1"] then
			force.recipes["yellow-waste-water-purification-yi"].enabled = true
		end
    end
end