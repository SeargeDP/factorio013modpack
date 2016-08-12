game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["modules"].researched then
    force.recipes["lab-module"].enabled = true
    force.recipes["module-case"].enabled = true
    force.recipes["module-circuit-board"].enabled = true
    force.recipes["module-contact"].enabled = true
    force.recipes["module-processor-board"].enabled = true
    force.recipes["speed-processor"].enabled = true
    force.recipes["effectivity-processor"].enabled = true
    force.recipes["productivity-processor"].enabled = true
    force.recipes["pollution-clean-processor"].enabled = true
    force.recipes["pollution-create-processor"].enabled = true
  end

  if force.technologies["raw-speed-module-1"].researched then
    force.recipes["raw-speed-module-1-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-2"].researched then
    force.recipes["raw-speed-module-2-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-3"].researched then
    force.recipes["raw-speed-module-3-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-4"].researched then
    force.recipes["raw-speed-module-4-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-5"].researched then
    force.recipes["raw-speed-module-5-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-6"].researched then
    force.recipes["raw-speed-module-6-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-7"].researched then
    force.recipes["raw-speed-module-7-combine"].enabled = true
  end

  if force.technologies["raw-speed-module-8"].researched then
    force.recipes["raw-speed-module-8-combine"].enabled = true
  end


  if force.technologies["green-module-1"].researched then
    force.recipes["green-module-1-combine"].enabled = true
  end

  if force.technologies["green-module-2"].researched then
    force.recipes["green-module-2-combine"].enabled = true
  end

  if force.technologies["green-module-3"].researched then
    force.recipes["green-module-3-combine"].enabled = true
  end

  if force.technologies["green-module-4"].researched then
    force.recipes["green-module-4-combine"].enabled = true
  end

  if force.technologies["green-module-5"].researched then
    force.recipes["green-module-5-combine"].enabled = true
  end

  if force.technologies["green-module-6"].researched then
    force.recipes["green-module-6-combine"].enabled = true
  end

  if force.technologies["green-module-7"].researched then
    force.recipes["green-module-7-combine"].enabled = true
  end

  if force.technologies["green-module-8"].researched then
    force.recipes["green-module-8-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-1"].researched then
    force.recipes["raw-productivity-module-1-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-2"].researched then
    force.recipes["raw-productivity-module-2-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-3"].researched then
    force.recipes["raw-productivity-module-3-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-4"].researched then
    force.recipes["raw-productivity-module-4-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-5"].researched then
    force.recipes["raw-productivity-module-5-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-6"].researched then
    force.recipes["raw-productivity-module-6-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-7"].researched then
    force.recipes["raw-productivity-module-7-combine"].enabled = true
  end

  if force.technologies["raw-productivity-module-8"].researched then
    force.recipes["raw-productivity-module-8-combine"].enabled = true
  end

  if force.technologies["advanced-electronics-2"].researched then
    force.recipes["module-processor-board-2"].enabled = true
  end

  if force.technologies["advanced-electronics-3"] then
    if force.technologies["advanced-electronics-3"].researched then
      force.recipes["module-processor-board-3"].enabled = true
    end
  else
    if force.technologies["advanced-electronics-2"].researched then
      force.recipes["module-processor-board-3"].enabled = true
    end
  end

  if force.technologies["speed-module-3"].researched then
    force.recipes["speed-processor-2"].enabled = true
  end

  if force.technologies["effectivity-module-3"].researched then
    force.recipes["effectivity-processor-2"].enabled = true
  end

  if force.technologies["productivity-module-3"].researched then
    force.recipes["productivity-processor-2"].enabled = true
  end

  if force.technologies["pollution-clean-module-3"].researched then
    force.recipes["pollution-clean-processor-2"].enabled = true
  end

  if force.technologies["pollution-create-module-3"].researched then
    force.recipes["pollution-create-processor-2"].enabled = true
  end

  if force.technologies["speed-module-6"].researched then
    force.recipes["speed-processor-3"].enabled = true
  end

  if force.technologies["effectivity-module-6"].researched then
    force.recipes["effectivity-processor-3"].enabled = true
  end

  if force.technologies["productivity-module-6"].researched then
    force.recipes["productivity-processor-3"].enabled = true
  end

  if force.technologies["pollution-clean-module-6"].researched then
    force.recipes["pollution-clean-processor-3"].enabled = true
  end

  if force.technologies["pollution-create-module-6"].researched then
    force.recipes["pollution-create-processor-3"].enabled = true
  end
end

