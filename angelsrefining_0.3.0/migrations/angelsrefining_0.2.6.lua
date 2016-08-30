game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	if force.technologies["slag-processing-1"].researched then
		force.recipes["stone-crushed-dissolution"].enabled = true

	end
end