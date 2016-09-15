game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["steel-processing"].researched then
    force.recipes["steel-pipe"].enabled = true
    force.recipes["steel-pipe-to-ground"].enabled = true
  end

  if force.technologies["plastics"].researched then
    force.recipes["plastic-pipe"].enabled = true
    force.recipes["plastic-pipe-to-ground"].enabled = true
  end


  if force.technologies["titanium-processing"] then
    if force.technologies["titanium-processing"].researched then
      force.recipes["titanium-pipe"].enabled = true
      force.recipes["titanium-pipe-to-ground"].enabled = true
    end
  end

  if force.technologies["tungsten-processing"] then
    if force.technologies["tungsten-processing"].researched then
      force.recipes["tungsten-pipe"].enabled = true
      force.recipes["tungsten-pipe-to-ground"].enabled = true
    end
  end

  if force.technologies["alloy-processing-1"] then
    if force.technologies["alloy-processing-1"].researched then
      force.recipes["bronze-pipe"].enabled = true
      force.recipes["bronze-pipe-to-ground"].enabled = true
    end
  end

  if force.technologies["zinc-processing"] then
    if force.technologies["zinc-processing"].researched then
      force.recipes["brass-pipe"].enabled = true
      force.recipes["brass-pipe-to-ground"].enabled = true
    end
  end

  if force.technologies["ceramics"] then
    if force.technologies["ceramics"].researched then
      force.recipes["ceramic-pipe"].enabled = true
      force.recipes["ceramic-pipe-to-ground"].enabled = true
    end
  end
end


