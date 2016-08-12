game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.recipes["brass-axe"] then
    if force.technologies["zinc-processing"] then
      if force.technologies["zinc-processing"].researched then
        force.recipes["brass-axe"].enabled = true
      end
    end
  end

  if force.recipes["titanium-axe"] then
    if force.technologies["titanium-processing"] then
      if force.technologies["titanium-processing"].researched then
        force.recipes["titanium-axe"].enabled = true
      end
    end
  end

  if force.recipes["tungsten-axe"] then
    if force.technologies["tungsten-alloy-processing"] then
      if force.technologies["tungsten-alloy-processing"].researched then
        force.recipes["tungsten-axe"].enabled = true
      end
    else
      if force.technologies["tungsten-processing"] then
        if force.technologies["tungsten-processing"].researched then
          force.recipes["tungsten-axe"].enabled = true
        end
      end
    end
  end

  if force.recipes["diamond-axe"] then
    if force.technologies["gem-processing-2"] then
      if force.technologies["gem-processing-2"].researched then
        force.recipes["diamond-axe"].enabled = true
      end
    end
  end

  if force.recipes["cobalt-axe"] then
    if force.technologies["cobalt-processing"] then
      if force.technologies["cobalt-processing"].researched then
        force.recipes["cobalt-axe"].enabled = true
      end
    end
  end
end
