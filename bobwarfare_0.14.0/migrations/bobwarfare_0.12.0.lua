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

  local modifier = force.get_turret_attack_modifier("gun-turret")
  force.set_turret_attack_modifier("bob-gun-turret-2", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-3", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-4", modifier)
  force.set_turret_attack_modifier("bob-gun-turret-5", modifier)
end

