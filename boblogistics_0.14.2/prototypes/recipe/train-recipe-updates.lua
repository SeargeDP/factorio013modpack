if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("bob-diesel-locomotive-2", "steel-plate", "invar-alloy")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-railway-2", "invar-processing")
end

if data.raw.item["steel-bearing"] then
  bobmods.lib.recipe.add_new_ingredient("bob-diesel-locomotive-2", {"steel-bearing", 16})
  bobmods.lib.recipe.add_new_ingredient("bob-cargo-wagon-2", {"steel-bearing", 8})
else
  bobmods.lib.recipe.add_new_ingredient("bob-diesel-locomotive-2", {"iron-gear-wheel", 10})
  bobmods.lib.recipe.add_new_ingredient("bob-cargo-wagon-2", {"iron-gear-wheel", 8})
end

if data.raw.item["steel-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-diesel-locomotive-2", "iron-gear-wheel", "steel-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-2", "iron-gear-wheel", "steel-gear-wheel")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("bob-diesel-locomotive-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-railway-3", "titanium-processing")

  bobmods.lib.recipe.replace_ingredient("bob-armoured-diesel-locomotive", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("bob-armoured-cargo-wagon", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-armoured-railway", "titanium-processing")
end

if data.raw.item["titanium-bearing"] then
  bobmods.lib.recipe.add_new_ingredient("bob-diesel-locomotive-3", {"titanium-bearing", 16})
  bobmods.lib.recipe.add_new_ingredient("bob-cargo-wagon-3", {"titanium-bearing", 8})
else
  bobmods.lib.recipe.add_new_ingredient("bob-diesel-locomotive-3", {"iron-gear-wheel", 10})
  bobmods.lib.recipe.add_new_ingredient("bob-cargo-wagon-3", {"iron-gear-wheel", 8})
end

if data.raw.item["titanium-gear-wheel"] then
  bobmods.lib.recipe.replace_ingredient("bob-diesel-locomotive-3", "iron-gear-wheel", "titanium-gear-wheel")
  bobmods.lib.recipe.replace_ingredient("bob-cargo-wagon-3", "iron-gear-wheel", "titanium-gear-wheel")
end




