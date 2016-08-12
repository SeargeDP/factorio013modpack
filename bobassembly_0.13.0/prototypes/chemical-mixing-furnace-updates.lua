if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "invar-processing")
end

if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "stone-brick", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-1", "tungsten-processing")
end



if data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "pipe", "tungsten-pipe")
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "pipe", "tungsten-pipe")
end

if data.raw.item["tungsten-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace", "iron-gear-wheel", "tungsten-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "iron-gear-wheel", "tungsten-gear-wheel")
end


if data.raw.item["copper-tungsten-alloy"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "steel-plate", "copper-tungsten-alloy")
  bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "tungsten-alloy-processing")
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "stone-brick", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "tungsten-alloy-processing")
end

if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("electric-chemical-mixing-furnace-2", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("multi-purpose-furnace-2", "advanced-electronics-3")
end

if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("multi-purpose-furnace-2", "alien-science-pack", "science-pack-4")
end





