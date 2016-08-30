game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["sulfur-processing"].researched then
    force.recipes["sulfur-dioxide"].enabled = true
  end
end


