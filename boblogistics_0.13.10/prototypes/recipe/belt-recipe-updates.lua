data.raw["underground-belt"]["underground-belt"].max_distance = 5
data.raw["underground-belt"]["fast-underground-belt"].max_distance = 10
data.raw["underground-belt"]["express-underground-belt"].max_distance = 15

data.raw.recipe["express-underground-belt"].category = "crafting-with-fluid"
data.raw.recipe["express-underground-belt"].ingredients = { {"iron-gear-wheel", 20}, {"fast-underground-belt", 2}, {type="fluid", name="lubricant", amount=10} }



if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_ingredient("green-transport-belt", {"titanium-bearing", 5})
  bobmods.lib.recipe.add_ingredient("green-underground-belt", {"titanium-bearing", 20})
  bobmods.lib.recipe.add_ingredient("green-splitter", {"titanium-bearing", 10})
  bobmods.lib.tech.add_prerequisite("bob-logistics-4", "titanium-processing")
else
  bobmods.lib.recipe.add_ingredient("green-transport-belt", {"iron-gear-wheel", 5})
  bobmods.lib.recipe.add_ingredient("green-underground-belt", {"iron-gear-wheel", 20})
  bobmods.lib.recipe.add_ingredient("green-splitter", {"iron-gear-wheel", 10})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("green-transport-belt", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("green-underground-belt", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("green-splitter", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.tech.add_prerequisite("bob-logistics-4", "titanium-processing")
end



if data.raw.recipe["purple-transport-belt"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("purple-transport-belt", {"nitinol-bearing", 5})
    bobmods.lib.tech.add_prerequisite("bob-logistics-5", "nitinol-processing")
  else
    bobmods.lib.recipe.add_ingredient("purple-transport-belt", {"iron-gear-wheel", 5})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("purple-transport-belt", "iron-gear-wheel", "nitinol-gear-wheel")
    bobmods.lib.tech.add_prerequisite("bob-logistics-5", "nitinol-processing")
  end
end

if data.raw.recipe["purple-underground-belt"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("purple-underground-belt", {"nitinol-bearing", 20})
  else
    bobmods.lib.recipe.add_ingredient("purple-underground-belt", {"iron-gear-wheel", 20})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("purple-underground-belt", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

if data.raw.recipe["purple-splitter"] then
  if data.raw.item["nitinol-bearing"] then
    bobmods.lib.recipe.add_ingredient("purple-splitter", {"nitinol-bearing", 10})
  else
    bobmods.lib.recipe.add_ingredient("purple-splitter", {"iron-gear-wheel", 10})
  end

  if data.raw.item["nitinol-gear-wheel"] then
    bobmods.lib.recipe.replace_ingredient("purple-splitter", "iron-gear-wheel", "nitinol-gear-wheel")
  end
end

