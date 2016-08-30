data.raw.recipe["advanced-oil-processing"].icon = "__bobrevamp__/graphics/icons/advanced-oil-processing.png",

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "chemical-plant")
bobmods.lib.tech.remove_recipe_unlock("oil-processing", "pumpjack")
bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-light-oil")
bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-petroleum-gas")
bobmods.lib.tech.remove_recipe_unlock("oil-processing", "solid-fuel-from-heavy-oil")
bobmods.lib.tech.replace_prerequisite("oil-processing", "steel-processing", "pumpjack")
data.raw.technology["oil-processing"].icon = "__base__/graphics/technology/oil-processing.png"
data.raw.technology["oil-processing"].unit.count = 30

bobmods.lib.tech.replace_prerequisite("fluid-handling", "oil-processing", "steel-processing")
data.raw.technology["fluid-handling"].unit.count = 30

bobmods.lib.tech.replace_prerequisite("sulfur-processing", "oil-processing", "chemical-plant")

bobmods.lib.tech.remove_recipe_unlock("oil-processing", "lubricant")

if data.raw.technology["chemical-processing-2"] then
  bobmods.lib.tech.remove_recipe_unlock("chemical-processing-2", "chemical-plant")
  bobmods.lib.tech.add_prerequisite("chemical-processing-2", "chemical-plant")
  bobmods.lib.tech.remove_recipe_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")
  bobmods.lib.tech.add_recipe_unlock("solid-fuel", "solid-fuel-from-hydrogen")


  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "lubricant")
  bobmods.lib.tech.replace_prerequisite("electric-engine", "oil-processing", "chemical-processing-2")

  bobmods.lib.tech.add_prerequisite("plastics", "chemical-plant")
  bobmods.lib.tech.add_prerequisite("chemical-plant", "steel-processing")
  bobmods.lib.tech.add_prerequisite("chemical-plant", "electronics")

  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "liquid-fuel")
  bobmods.lib.tech.remove_recipe_unlock("oil-processing", "bob-resin-oil")
  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "liquid-fuel")
  bobmods.lib.tech.add_recipe_unlock("chemical-processing-2", "bob-resin-oil")
else
  bobmods.lib.tech.add_prerequisite("chemical-plant", "oil-processing")
  bobmods.lib.tech.add_recipe_unlock("chemical-plant", "lubricant")
  bobmods.lib.tech.replace_prerequisite("electric-engine", "oil-processing", "chemical-plant")
  bobmods.lib.tech.replace_prerequisite("plastics", "oil-processing", "chemical-plant")

-- probably in the electronics mod
  if data.raw.recipe["bob-resin-oil"] then
    bobmods.lib.tech.remove_recipe_unlock("oil-processing", "bob-resin-oil")
    bobmods.lib.tech.add_recipe_unlock("chemical-plant", "bob-resin-oil")
  end
  if data.raw.recipe["ferric-chloride-solution"] then
    bobmods.lib.tech.remove_recipe_unlock("oil-processing", "ferric-chloride-solution")
    bobmods.lib.tech.add_recipe_unlock("chemical-plant", "ferric-chloride-solution")
  end
end


if data.raw.technology["electrolysis-2"] then
  bobmods.lib.tech.remove_recipe_unlock("electrolysis-2", "storage-tank")
end

if data.raw.fluid.chlorine then
  bobmods.lib.recipe.replace_ingredient("plastic-bar", "coal", "chlorine")
end



bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfur")
bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur")

if data.raw.fluid["sulfur-dioxide"] then
  if data.raw.recipe["sulfur-dioxide"] and data.raw.recipe["sulfuric-acid-2"] then
    for i, technology in pairs(data.raw.technology) do
      bobmods.lib.tech.remove_recipe_unlock(technology.name, "sulfuric-acid")
    end
--    bobmods.lib.tech.remove_recipe_unlock("sulfur-processing", "sulfuric-acid")
  end
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide-2")
  bobmods.lib.tech.add_recipe_unlock("sulfur-processing", "oil-processing-with-sulfur-dioxide-3")
end



