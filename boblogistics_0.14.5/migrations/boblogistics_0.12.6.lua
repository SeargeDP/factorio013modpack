game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["bob-robo-modular-1"].researched then
    force.recipes["roboport"].enabled = true
  end

  if force.technologies["bob-robo-modular-2"].researched then
    force.recipes["bob-roboport-2"].enabled = true
  end

  if force.technologies["bob-robo-modular-3"].researched then
    force.recipes["bob-roboport-3"].enabled = true
  end

  if force.technologies["bob-robo-modular-4"].researched then
    force.recipes["bob-roboport-4"].enabled = true
  end
end


