-- fix a difficulty shift.
bobmods.lib.tech.replace_prerequisite("robotics", "advanced-electronics-2", "advanced-electronics")
bobmods.lib.tech.add_new_science_pack("advanced-electronics-2", "science-pack-3", 1)

-- remove redundant research.
bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "fill-crude-oil-barrel")
bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "empty-crude-oil-barrel")
bobmods.lib.tech.remove_recipe_unlock("fluid-handling", "empty-barrel")


data.raw.technology["battery"].upgrade = true


if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("nitinol-processing", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("tungsten-alloy-processing", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("air-compressor-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("water-bore-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("advanced-electronics-3", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("battery-3", "alien-science-pack", "science-pack-4")
end

bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "sulfur-2")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "sulfuric-acid-2")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "sulfur-dioxide")


bobmods.lib.tech.add_recipe_unlock("oil-processing", "bob-resin-oil")
bobmods.lib.tech.add_recipe_unlock("oil-processing", "liquid-fuel")

bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "petroleum-gas-cracking")
bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "coal-cracking")
bobmods.lib.tech.add_recipe_unlock("advanced-oil-processing", "bob-oil-processing")

bobmods.lib.tech.add_recipe_unlock("plastics", "synthetic-wood")

bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-bearing")

bobmods.lib.tech.remove_recipe_unlock("advanced-electronics", "processing-unit")
bobmods.lib.tech.add_recipe_unlock("advanced-electronics-2", "processing-unit")


bobmods.lib.tech.add_recipe_unlock("nickel-processing", "bob-nickel-plate")

bobmods.lib.tech.add_recipe_unlock("zinc-processing", "bob-zinc-plate")
bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-alloy")
bobmods.lib.tech.add_recipe_unlock("zinc-processing", "gunmetal-alloy")

bobmods.lib.tech.add_recipe_unlock("lead-processing", "lead-oxide")
bobmods.lib.tech.add_recipe_unlock("lead-processing", "bob-lead-plate")
bobmods.lib.tech.add_recipe_unlock("lead-processing", "silver-from-lead")

bobmods.lib.tech.add_recipe_unlock("aluminium-processing", "alumina")
bobmods.lib.tech.add_recipe_unlock("aluminium-processing", "bob-aluminium-plate")

bobmods.lib.tech.add_recipe_unlock("gold-processing", "bob-gold-plate")

bobmods.lib.tech.add_recipe_unlock("silicon-processing", "bob-silicon-plate")
bobmods.lib.tech.add_recipe_unlock("silicon-processing", "silicon-wafer")
bobmods.lib.tech.add_recipe_unlock("silicon-processing", "silicon-powder")

bobmods.lib.tech.add_recipe_unlock("titanium-processing", "bob-titanium-plate")

bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungstic-acid")
bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-oxide")
bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "powdered-tungsten")
bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "bob-tungsten-plate")

bobmods.lib.tech.add_recipe_unlock("electrum-processing", "electrum-alloy")

bobmods.lib.tech.add_recipe_unlock("invar-processing", "invar-alloy")

bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-alloy")

bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "copper-tungsten-alloy")
bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "tungsten-carbide")
bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "tungsten-carbide-2")

bobmods.lib.tech.add_recipe_unlock("cobalt-processing", "cobalt-oxide")
bobmods.lib.tech.add_recipe_unlock("cobalt-processing", "cobalt-oxide-from-copper")
bobmods.lib.tech.add_recipe_unlock("cobalt-processing", "cobalt-plate")
bobmods.lib.tech.add_recipe_unlock("cobalt-processing", "cobalt-steel-alloy")

bobmods.lib.tech.add_recipe_unlock("lithium-processing", "lithium")
bobmods.lib.tech.add_recipe_unlock("lithium-processing", "lithium-chloride")
bobmods.lib.tech.add_recipe_unlock("lithium-processing", "lithium-water-electrolysis")


bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-gear-wheel")

bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-bearing")

bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-gear-wheel")

bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-gear-wheel")
bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-bearing-ball")
bobmods.lib.tech.add_recipe_unlock("nitinol-processing", "nitinol-bearing")


if data.raw.recipe["lithia-water"] then
  bobmods.lib.tech.add_recipe_unlock("water-bore-1", "lithia-water")
end
if data.raw.recipe["ground-water"] then
  bobmods.lib.tech.add_recipe_unlock("water-bore-1", "ground-water")
end


if data.raw.technology["alien-research"] then
  bobmods.lib.tech.add_prerequisite("alien-blue-research", "alien-research")
  bobmods.lib.tech.add_prerequisite("alien-orange-research", "alien-research")
  bobmods.lib.tech.add_prerequisite("alien-purple-research", "alien-research")
  bobmods.lib.tech.add_prerequisite("alien-yellow-research", "alien-research")
  bobmods.lib.tech.add_prerequisite("alien-green-research", "alien-research")
  bobmods.lib.tech.add_prerequisite("alien-red-research", "alien-research")
end

if data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["alien-blue-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-blue", 1}}
  data.raw.technology["alien-orange-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["alien-purple-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-purple", 1}}
  data.raw.technology["alien-yellow-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["alien-green-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-green", 1}}
  data.raw.technology["alien-red-research"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-red", 1}}
end

