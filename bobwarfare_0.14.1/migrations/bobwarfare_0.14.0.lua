game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["military-3"].researched then
    force.recipes["rifle"].enabled = true
    force.recipes["sniper-rifle"].enabled = true
  end
  if force.technologies["rocketry"].researched then
    force.recipes["rocket-engine"].enabled = true
  end

  if force.technologies["bob-laser-rifle"].researched then
    force.recipes["laser-rifle-battery-case"].enabled = true
  end

  if force.technologies["bob-tanks-3"].researched then
    force.recipes["explosive-artillery-shell"].enabled = true
    force.recipes["distractor-artillery-shell"].enabled = true
  end

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

  local modifier = force.get_turret_attack_modifier("gun-turret")
  force.set_turret_attack_modifier("bob-gun-turret-2", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-3", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-4", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-5", modifier)
end

