if data.raw.technology["chemical-plant"] then
  bobmods.lib.tech.add_prerequisite("chemical-plant-2", "chemical-plant")
elseif data.raw.technology["chemical-processing-2"] then
  bobmods.lib.tech.add_prerequisite("chemical-plant-2", "chemical-processing-2")
else
  bobmods.lib.tech.add_prerequisite("chemical-plant-2", "oil-processing")
end



if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "pipe", "steel-pipe")
end

if data.raw.item["glass"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "steel-plate", "glass")
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-2", "iron-gear-wheel", "steel-gear-wheel")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("chemical-plant-2", {"steel-bearing", 5})
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("chemical-plant-3", "titanium-processing")
end

if data.raw.item["titanium-pipe"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "pipe", "titanium-pipe")
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-3", "iron-gear-wheel", "titanium-gear-wheel")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("chemical-plant-3", {"titanium-bearing", 5})
end



if data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "pipe", "tungsten-pipe")
  bobmods.lib.tech.add_prerequisite("chemical-plant-4", "tungsten-processing")
end

if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("chemical-plant-4", "nitinol-processing")
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "iron-gear-wheel", "nitinol-gear-wheel")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("chemical-plant-4", "processing-unit", "advanced-processing-unit")
end

if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("chemical-plant-4", {"nitinol-bearing", 5})
end

if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("chemical-plant-4", "alien-science-pack", "science-pack-4")
end

bobmods.lib.tech.add_prerequisite("chemical-plant-4", "advanced-electronics-3")




