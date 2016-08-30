if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-1-combine", {"solder", 1})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-2", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-2-combine", {"solder", 2})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-3", {"solder", 3})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-3-combine", {"solder", 3})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-4", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-4-combine", {"solder", 4})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-5", {"solder", 6})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-5-combine", {"solder", 6})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-6", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-6-combine", {"solder", 7})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"solder", 10})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-7-combine", {"solder", 8})

  bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-8-combine", {"solder", 10})
else
  bobmods.lib.recipe.add_ingredient("raw-speed-module-3", {"module-contact", 5})
end



if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-3", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-8", "advanced-circuit", "electronic-components")
end


if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-5", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-6", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-7", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-8", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"processing-electronics", 5})
  bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"processing-electronics", 8})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"advanced-processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"advanced-processing-unit", 8})
  else
    bobmods.lib.recipe.add_ingredient("raw-speed-module-7", {"processing-unit", 5})
    bobmods.lib.recipe.add_ingredient("raw-speed-module-8", {"processing-unit", 8})
  end
end


if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-5", "alien-artifact", "ruby-5")
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-6", "alien-artifact", "emerald-5")
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-7", "alien-artifact", "topaz-5")
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.replace_ingredient("raw-speed-module-8", "alien-artifact", "diamond-5")
end


