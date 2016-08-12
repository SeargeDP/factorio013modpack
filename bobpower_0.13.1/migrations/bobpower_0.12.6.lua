game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["bob-electric-energy-accumulators-2"].researched then
    force.recipes["slow-accumulator"].enabled = true
  end
  if force.technologies["bob-electric-energy-accumulators-3"].researched then
    force.recipes["slow-accumulator-2"].enabled = true
  end
  if force.technologies["bob-electric-energy-accumulators-4"].researched then
    force.recipes["slow-accumulator-3"].enabled = true
  end
end
