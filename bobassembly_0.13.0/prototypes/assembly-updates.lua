data.raw.technology["automation"].upgrade = true

data.raw.technology["automation-2"].prerequisites = {"automation", "electronics"}
data.raw.technology["automation-2"].upgrade = true

data.raw.technology["automation-3"].prerequisites = {"automation-2", "steel-processing", "advanced-electronics"}
data.raw.technology["automation-3"].unit.count = 60
data.raw.technology["automation-3"].unit.ingredients = {{"science-pack-1", 2}, {"science-pack-2", 1}}
data.raw.technology["automation-3"].unit.time = 30
data.raw.technology["automation-3"].upgrade = true

if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("automation-6", "alien-science-pack", "science-pack-4")
end


data.raw.item["assembling-machine-1"].subgroup = "bob-assembly-machine"
data.raw.item["assembling-machine-2"].subgroup = "bob-assembly-machine"
data.raw.item["assembling-machine-3"].subgroup = "bob-assembly-machine"


data.raw["assembling-machine"]["assembling-machine-1"].energy_usage = "100kW"
data.raw["assembling-machine"]["assembling-machine-2"].energy_usage = "135kW"
data.raw["assembling-machine"]["assembling-machine-3"].ingredient_count = 6



data.raw.recipe["assembling-machine-3"].ingredients = {{"assembling-machine-2", 1},{"steel-plate", 9},{"advanced-circuit", 3}}

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-3",{"steel-gear-wheel", 5})
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-3",{"iron-gear-wheel", 5})
end





if data.raw.item["aluminium-plate"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "steel-plate", "aluminium-plate")
  bobmods.lib.tech.add_prerequisite("automation-4", "aluminium-processing")
else
  if data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient ("assembling-machine-4", "steel-plate", "brass-alloy")
    bobmods.lib.tech.add_prerequisite("automation-4", "zinc-processing")
  end
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-4", {"steel-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-4", {"iron-gear-wheel", 3})
end

if data.raw.item["brass-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "iron-gear-wheel", "brass-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-4", "zinc-processing")
else
  if data.raw.item["steel-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-4", "iron-gear-wheel", "steel-gear-wheel")
  end
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("automation-5", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("automation-5", "tungsten-processing")
  end
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-5", {"titanium-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("assembling-machine-5", {"iron-gear-wheel", 3})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-5", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-5", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("automation-5", "tungsten-processing")
  end
end





if data.raw.item["nitinol-alloy"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "steel-plate", "nitinol-alloy")
  bobmods.lib.tech.add_prerequisite("automation-6", "nitinol-processing")
else
  if data.raw.item["titanium-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "steel-plate", "titanium-plate")
    bobmods.lib.tech.add_prerequisite("automation-6", "titanium-processing")
  end
end

if data.raw.item["tungsten-carbide"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-plate", "tungsten-carbide")
  bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-alloy-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-processing")
  end
end


if data.raw.item["nitinol-bearing"] then
  bobmods.lib.recipe.add_ingredient("assembling-machine-6", {"nitinol-bearing", 5})
else
  if data.raw.item["titanium-bearing"] then
    bobmods.lib.recipe.add_ingredient("assembling-machine-6", {"titanium-bearing", 5})
  else
    bobmods.lib.recipe.add_ingredient("assembling-machine-6", {"iron-gear-wheel", 3})
  end
end

if data.raw.item["nitinol-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "nitinol-gear-wheel")
  bobmods.lib.tech.add_prerequisite("automation-6", "nitinol-processing")
else
  if data.raw.item["titanium-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "titanium-gear-wheel")
    bobmods.lib.tech.add_prerequisite("automation-6", "titanium-processing")
  else
    if data.raw.item["tungsten-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "iron-gear-wheel", "tungsten-gear-wheel")
      bobmods.lib.tech.add_prerequisite("automation-6", "tungsten-processing")
    end
  end
end


if data.raw.item["advanced-processing-unit"] then
  bobmods.lib.recipe.replace_ingredient("assembling-machine-6", "processing-unit", "advanced-processing-unit")
  bobmods.lib.tech.add_prerequisite("automation-6", "advanced-electronics-3")
end




if data.raw.item["basic-circuit-board"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-1", "electronic-circuit", "basic-circuit-board")
end


if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_ingredient("electronics-machine-2", {"steel-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("electronics-machine-2", {"iron-gear-wheel", 3})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-2", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
else
  if data.raw.item["tungsten-plate"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "steel-plate", "tungsten-plate")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("electronics-machine-3", {"titanium-bearing", 5})
else
  bobmods.lib.recipe.add_ingredient("electronics-machine-3", {"iron-gear-wheel", 3})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("electronics-machine-3", "titanium-processing")
else
  if data.raw.item["tungsten-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("electronics-machine-3", "iron-gear-wheel", "tungsten-gear-wheel")
    bobmods.lib.tech.add_prerequisite("electronics-machine-3", "tungsten-processing")
  end
end


