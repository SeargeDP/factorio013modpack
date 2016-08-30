game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["solar-energy-2"]then
    if force.technologies["solar-energy-2"].researched then
      if force.recipes["solar-panel-primary-mk2"] then force.recipes["solar-panel-primary-mk2"].enabled = true end
      if force.recipes["solar-panel-secondary-mk2"] then force.recipes["solar-panel-secondary-mk2"].enabled = true end
    end
  end

  if force.technologies["solar-energy-3"] then
    if force.technologies["solar-energy-3"].researched then
      if force.recipes["solar-panel-primary-mk3"] then force.recipes["solar-panel-primary-mk3"].enabled = true end
      if force.recipes["solar-panel-secondary-mk3"] then force.recipes["solar-panel-secondary-mk3"].enabled = true end
    end
  end

  if force.technologies["solar-energy-4"] then
    if force.technologies["solar-energy-4"].researched then
      if force.recipes["solar-panel-primary-mk4"] then force.recipes["solar-panel-primary-mk4"].enabled = true end
      if force.recipes["solar-panel-secondary-mk4"] then force.recipes["solar-panel-secondary-mk4"].enabled = true end
    end
  end


  if force.technologies["electric-energy-accumulators-2"] then
    if force.technologies["electric-energy-accumulators-2"].researched then
      if force.recipes["basic-accumulator-mk2"] then force.recipes["basic-accumulator-mk2"].enabled = true end
      if force.recipes["basic-accumulator-mk3"] then force.recipes["basic-accumulator-mk3"].enabled = true end
    end
  end

  if force.technologies["electric-energy-accumulators-3"] then
    if force.technologies["electric-energy-accumulators-3"].researched then
      if force.recipes["basic-accumulator-mk4"] then force.recipes["basic-accumulator-mk4"].enabled = true end
      if force.recipes["basic-accumulator-mk5"] then force.recipes["basic-accumulator-mk5"].enabled = true end
    end
  end
end
