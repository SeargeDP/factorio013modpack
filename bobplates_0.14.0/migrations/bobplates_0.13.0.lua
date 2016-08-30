game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["chemical-processing-1"].researched then
    force.recipes["carbon"].enabled = true
  end

  if force.technologies["chemical-processing-2"].researched then
    force.recipes["ferric-chloride-solution"].enabled = true
    force.recipes["solid-fuel-from-hydrogen"].enabled = true
  end

  if force.technologies["alloy-processing-2"].researched then
    force.recipes["electric-mixing-furnace"].enabled = true
  end

  if force.technologies["barrels"].researched then
    force.recipes["empty-canister"].enabled = true
    force.recipes["liquid-fuel-canister"].enabled = true
    force.recipes["empty-liquid-fuel-canister"].enabled = true
    force.recipes["ferric-chloride-canister"].enabled = true
    force.recipes["empty-ferric-chloride-canister"].enabled = true
    force.recipes["fill-water-barrel"].enabled = true
    force.recipes["empty-water-barrel"].enabled = true
    force.recipes["fill-lithia-water-barrel"].enabled = true
    force.recipes["empty-lithia-water-barrel"].enabled = true
    force.recipes["fill-nitric-acid-barrel"].enabled = true
    force.recipes["empty-nitric-acid-barrel"].enabled = true

    if force.recipes["fill-alien-acid-barrel"] then force.recipes["fill-alien-acid-barrel"].enabled = true end
    if force.recipes["empty-alien-acid-barrel"] then force.recipes["empty-alien-acid-barrel"].enabled = true end

    if force.recipes["fill-alien-explosive-barrel"] then force.recipes["fill-alien-explosive-barrel"].enabled = true end
    if force.recipes["empty-alien-explosive-barrel"] then force.recipes["empty-alien-explosive-barrel"].enabled = true end

    if force.recipes["fill-alien-poison-barrel"] then force.recipes["fill-alien-poison-barrel"].enabled = true end
    if force.recipes["empty-alien-poison-barrel"] then force.recipes["empty-alien-poison-barrel"].enabled = true end

    if force.recipes["fill-alien-fire-barrel"] then force.recipes["fill-alien-fire-barrel"].enabled = true end
    if force.recipes["empty-alien-fire-barrel"] then force.recipes["empty-alien-fire-barrel"].enabled = true end
  end

  if force.technologies["advanced-electronics-3"].researched then
    force.recipes["advanced-processing-unit"].enabled = true
  end

  if force.technologies["void-fluid"].researched then
    force.recipes["void-sulfur-dioxide"].enabled = true
  end
end


