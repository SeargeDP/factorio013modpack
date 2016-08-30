game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["alloy-processing-2"] and force.technologies["alloy-processing-2"].researched and force.recipes["solder-alloy"] then
    force.recipes["solder-alloy"].enabled = true
  end
end

