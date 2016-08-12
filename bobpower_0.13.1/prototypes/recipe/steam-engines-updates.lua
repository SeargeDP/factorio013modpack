if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_new_ingredient("steam-engine-2", {"steel-bearing", 5})
else
  bobmods.lib.recipe.add_new_ingredient("steam-engine-2", {"iron-gear-wheel", 5})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-2", "iron-gear-wheel", "steel-gear-wheel")
end


if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_new_ingredient("steam-engine-3", {"titanium-bearing", 5})
else
  if data.raw.item["steel-bearing"] then
    bobmods.lib.recipe.add_new_ingredient("steam-engine-3", {"steel-bearing", 5})
  else
    bobmods.lib.recipe.add_new_ingredient("steam-engine-3", {"iron-gear-wheel", 5})
  end
end


if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("steam-engine-generator-2", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("steam-engine-generator-2", "tungsten-processing")
  else
    if data.raw.item["steel-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("steam-engine-3", "iron-gear-wheel", "steel-gear-wheel")
    end
  end
end


if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("steam-engine-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("steam-engine-generator-2", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("steam-engine-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("steam-engine-generator-2", "tungsten-processing")
  end
end


