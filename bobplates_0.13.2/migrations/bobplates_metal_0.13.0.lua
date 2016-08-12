game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["nickel-processing"].researched then
    force.recipes["bob-nickel-plate"].enabled = true
  end

  if force.technologies["zinc-processing"].researched then
    force.recipes["brass-gear-wheel"].enabled = true
    force.recipes["bob-zinc-plate"].enabled = true
    force.recipes["brass-alloy"].enabled = true
    force.recipes["gunmetal-alloy"].enabled = true
  end

  if force.technologies["lead-processing"].researched then
    force.recipes["lead-oxide"].enabled = true
    force.recipes["bob-lead-plate"].enabled = true
    force.recipes["silver-from-lead"].enabled = true
  end

  if force.technologies["aluminium-processing"].researched then
    force.recipes["alumina"].enabled = true
    force.recipes["bob-aluminium-plate"].enabled = true
  end

  if force.technologies["gold-processing"].researched then
    force.recipes["bob-gold-plate"].enabled = true
  end

  if force.technologies["silicon-processing"].researched then
    force.recipes["bob-silicon-plate"].enabled = true
    force.recipes["silicon-wafer"].enabled = true
    force.recipes["silicon-powder"].enabled = true
  end

  if force.technologies["cobalt-processing"].researched then
    force.recipes["cobalt-oxide"].enabled = true
    force.recipes["cobalt-oxide-from-copper"].enabled = true
    force.recipes["cobalt-plate"].enabled = true
    force.recipes["cobalt-steel-alloy"].enabled = true
  end

  if force.technologies["invar-processing"].researched then
    force.recipes["invar-alloy"].enabled = true
  end

  if force.technologies["lithium-processing"].researched then
    force.recipes["lithium"].enabled = true
    force.recipes["lithium-chloride"].enabled = true
    force.recipes["lithium-water-electrolysis"].enabled = true
  end

  if force.technologies["titanium-processing"].researched then
    force.recipes["bob-titanium-plate"].enabled = true
    force.recipes["titanium-gear-wheel"].enabled = true
    force.recipes["titanium-bearing-ball"].enabled = true
    force.recipes["titanium-bearing"].enabled = true
  end

  if force.technologies["tungsten-processing"].researched then
    force.recipes["tungstic-acid"].enabled = true
    force.recipes["tungsten-oxide"].enabled = true
    force.recipes["powdered-tungsten"].enabled = true
    force.recipes["bob-tungsten-plate"].enabled = true
    force.recipes["tungsten-gear-wheel"].enabled = true
  end

  if force.technologies["electrum-processing"].researched then
    force.recipes["electrum-alloy"].enabled = true
  end

  if force.technologies["tungsten-alloy-processing"].researched then
    force.recipes["copper-tungsten-alloy"].enabled = true
    force.recipes["tungsten-carbide"].enabled = true
    force.recipes["tungsten-carbide-2"].enabled = true
  end

  if force.technologies["nitinol-processing"].researched then
    force.recipes["nitinol-alloy"].enabled = true
    force.recipes["nitinol-gear-wheel"].enabled = true
    force.recipes["nitinol-bearing-ball"].enabled = true
    force.recipes["nitinol-bearing"].enabled = true
  end
end




