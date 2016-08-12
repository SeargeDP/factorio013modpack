bobmods.lib.tech.add_prerequisite("oil-processing", "electronics")
bobmods.lib.tech.add_prerequisite("advanced-electronics", "plastics")

bobmods.lib.tech.add_new_science_pack("advanced-electronics-2", "science-pack-3", 1)
if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("advanced-electronics-3", "alien-science-pack", "science-pack-4")
end


--base game
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics", "processing-unit")

--dytech
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2", "advanced-processing-unit")

--old bobplates
bobmods.lib.tech.remove_recipe_unlock("electronics", "basic-electronic-circuit-board")
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics", "electronic-circuit-board")
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2", "electronic-processing-board")
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-3", "electronic-processing-board-2")

--new bobplates
bobmods.lib.tech.remove_recipe_unlock("advanced-electronics-2", "processing-unit")

-- fix a difficulty shift.
bobmods.lib.tech.replace_prerequisite("robotics", "advanced-electronics-2", "advanced-electronics")


bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")
bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "bob-oil-processing")

bobmods.lib.tech.add_recipe_unlock("plastics", "synthetic-wood")
bobmods.lib.tech.add_recipe_unlock("plastics", "wooden-board-synthetic")


if data.raw.technology["chemical-processing-2"] then
  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite ("advanced-electronics", "chemical-processing-2")
else
  bobmods.lib.tech.add_recipe_unlock("oil-processing", "ferric-chloride-solution")
  bobmods.lib.tech.add_prerequisite ("advanced-electronics", "oil-processing")
end

if data.raw.recipe["silicon-wafer"] then
  if data.raw.technology["silicon-processing"] then
    bobmods.lib.tech.add_recipe_unlock("silicon-processing", "silicon-wafer")
  else
    data.raw.recipe["silicon-wafer"].enabled = true
  end
end


if data.raw.recipe["solder"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "solder")
end
if data.raw.recipe["solder-alloy"] then
  if data.raw.technology["alloy-processing-2"] and data.raw.item["silver-plate"] then
    bobmods.lib.tech.add_recipe_unlock("alloy-processing-2", "solder-alloy")
  else
    bobmods.lib.tech.add_recipe_unlock("electronics", "solder-alloy")
  end
end
if data.raw.recipe["solder-alloy-lead"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "solder-alloy-lead")
end
if data.raw.recipe["tinned-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("electronics", "tinned-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("electronics", "insulated-cable")
bobmods.lib.tech.add_recipe_unlock("electronics", "basic-electronic-components")
bobmods.lib.tech.add_recipe_unlock("electronics", "electronic-circuit")


bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "electronic-components")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "phenolic-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "phenolic-board-synthetic")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics", "advanced-circuit") --to re-add if it was removed in previous mod
if data.raw.technology["silicon-processing"] then
  bobmods.lib.tech.add_prerequisite("advanced-electronics", "silicon-processing")
end

bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "intergrated-electronics")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "fibreglass-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "superior-circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "processing-unit")
if data.raw.technology["gold-processing"] then
  bobmods.lib.tech.add_prerequisite("advanced-electronics-2", "gold-processing")
end


if data.raw.recipe["gilded-copper-cable"] then
  bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "gilded-copper-cable")
end

bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "processing-electronics")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "multi-layer-circuit-board")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-3", "advanced-processing-unit")


