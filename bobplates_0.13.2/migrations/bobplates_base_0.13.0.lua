game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["sulfur-processing"].researched then
    force.recipes["sulfur-2"].enabled = true
    force.recipes["sulfuric-acid-2"].enabled = true
  end

  if force.technologies["oil-processing"].researched then
    force.recipes["bob-resin-oil"].enabled = true
    force.recipes["liquid-fuel"].enabled = true
  end

  if force.technologies["advanced-oil-processing"].researched then
    force.recipes["petroleum-gas-cracking"].enabled = true
    force.recipes["coal-cracking"].enabled = true
    force.recipes["bob-oil-processing"].enabled = true
  end

  if force.technologies["plastics"].researched then
    force.recipes["synthetic-wood"].enabled = true
  end

  if force.technologies["steel-processing"].researched then
    force.recipes["steel-gear-wheel"].enabled = true
    force.recipes["steel-bearing-ball"].enabled = true
    force.recipes["steel-bearing"].enabled = true
  end
end




