game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["combat-robotics"].researched then
    force.recipes["defender-robot"].enabled = true
    if force.recipes["robot-brain-combat"] then
      force.recipes["robot-brain-combat"].enabled = true
    end
    if force.recipes["robot-tool-combat"] then
      force.recipes["robot-tool-combat"].enabled = true
    end
  end

  if force.technologies["combat-robotics-2"].researched then
    force.recipes["distractor-robot"].enabled = true
    if force.recipes["robot-brain-combat-2"] then
      force.recipes["robot-brain-combat-2"].enabled = true
    end
    if force.recipes["robot-tool-combat-2"] then
      force.recipes["robot-tool-combat-2"].enabled = true
    end
  end

  if force.technologies["combat-robotics-3"].researched then
    force.recipes["destroyer-robot"].enabled = true
    if force.recipes["robot-brain-combat-3"] then
      force.recipes["robot-brain-combat-3"].enabled = true
    end
    if force.recipes["robot-tool-combat-3"] then
      force.recipes["robot-tool-combat-3"].enabled = true
    end
  end
end


