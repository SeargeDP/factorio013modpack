game.reload_script()


for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["chemical-processing-2"] and force.technologies["chemical-processing-2"].researched then
    force.recipes["lubricant"].enabled = true
    if force.recipes["liquid-fuel"] then force.recipes["liquid-fuel"].enabled = true end
    if force.recipes["bob-resin-oil"] then force.recipes["bob-resin-oil"].enabled = true end
  end
end


