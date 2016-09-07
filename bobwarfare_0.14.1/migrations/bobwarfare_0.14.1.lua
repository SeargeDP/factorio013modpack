game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["bob-tanks-2"].researched then
    force.recipes["bob-tank-2"].enabled = true
  end
  if force.technologies["bob-tanks-3"].researched then
    force.recipes["bob-tank-3"].enabled = true
  end
end


