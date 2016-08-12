if data.raw.item["steel-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-2", {"steel-pipe", 1})
end


if data.raw.item["invar-alloy"] then
  bobmods.lib.recipe.replace_ingredient("boiler-3", "steel-plate", "invar-alloy")
  bobmods.lib.tech.add_prerequisite("bob-boiler-2", "invar-processing")
end

if data.raw.item["brass-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-3", {"brass-pipe", 1})
  bobmods.lib.tech.add_prerequisite("bob-boiler-2", "zinc-processing")
end


if data.raw.item["tungsten-plate"] then
  bobmods.lib.recipe.replace_ingredient("boiler-4", "steel-plate", "tungsten-plate")
  bobmods.lib.tech.add_prerequisite("bob-boiler-3", "tungsten-processing")
end

if data.raw.item["tungsten-pipe"] then
  bobmods.lib.recipe.add_ingredient("boiler-4", {"tungsten-pipe", 1})
end
