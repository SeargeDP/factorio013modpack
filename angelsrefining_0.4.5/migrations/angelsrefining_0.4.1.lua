game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
    if force.technologies["water-treatment"].researched and game.item_prototypes["solid-carbon"] then
		force.recipes["green-waste-water-purification"].enabled = true
		force.recipes["angels-water-void-green-waste"].enabled = true
		force.recipes["greenyellow-waste-water-purification"].enabled = true
		force.recipes["angels-water-void-greenyellow-waste"].enabled = true
		force.recipes["red-waste-water-purification"].enabled = true
		force.recipes["angels-water-void-red-waste"].enabled = true
    end
end