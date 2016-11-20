game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["logistic-robotics"].researched then
    if force.recipes["robot-brain-logistic"] then force.recipes["robot-brain-logistic"].enabled = true end
    if force.recipes["robot-tool-logistic"] then force.recipes["robot-tool-logistic"].enabled = true end
  end

  if force.technologies["construction-robotics"].researched then
    if force.recipes["robot-brain-construction"] then force.recipes["robot-brain-construction"].enabled = true end
    if force.recipes["robot-tool-construction"] then force.recipes["robot-tool-construction"].enabled = true end
  end


  if force.technologies["bob-fluid-handling-2"].researched then
    force.recipes["small-pump-2"].enabled = true
  end

  if force.technologies["bob-fluid-handling-3"].researched then
    force.recipes["small-pump-3"].enabled = true
  end

  if force.technologies["bob-fluid-handling-4"].researched then
    force.recipes["small-pump-4"].enabled = true
  end
end


