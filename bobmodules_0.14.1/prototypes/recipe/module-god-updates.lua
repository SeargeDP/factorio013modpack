if bobmods.modules.ProductivityHasSpeed then
  bobmods.lib.recipe.add_ingredient("god-module-1", {"speed-processor", 2})
  bobmods.lib.recipe.add_ingredient("god-module-2", {"speed-processor-2", 4})
  bobmods.lib.recipe.add_ingredient("god-module-3", {"speed-processor-3", 6})
  bobmods.lib.recipe.add_ingredient("god-module-4", {"speed-processor-3", 10})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"speed-processor-3", 15})
end

if data.raw.item["solder"] then
  bobmods.lib.recipe.add_ingredient("god-module-1", {"solder", 2})
  bobmods.lib.recipe.add_ingredient("god-module-2", {"solder", 5})
  bobmods.lib.recipe.add_ingredient("god-module-3", {"solder", 7})
  bobmods.lib.recipe.add_ingredient("god-module-4", {"solder", 12})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"solder", 15})
end


if data.raw.item["electronic-components"] then
  bobmods.lib.recipe.replace_ingredient("god-module-2", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("god-module-4", "advanced-circuit", "electronic-components")
  bobmods.lib.recipe.replace_ingredient("god-module-5", "advanced-circuit", "electronic-components")
end

if data.raw.item["intergrated-electronics"] then
  bobmods.lib.recipe.replace_ingredient("god-module-2", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-3", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-4", "processing-unit", "intergrated-electronics")
  bobmods.lib.recipe.replace_ingredient("god-module-5", "processing-unit", "intergrated-electronics")
end

if data.raw.item["processing-electronics"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"processing-electronics", 8})
  bobmods.lib.recipe.add_ingredient("god-module-5", {"processing-electronics", 10})
else
  if data.raw.item["advanced-processing-unit"] then
    bobmods.lib.recipe.add_ingredient("god-module-4", {"advanced-processing-unit", 8})
    bobmods.lib.recipe.add_ingredient("god-module-5", {"advanced-processing-unit", 10})
  else
    bobmods.lib.recipe.add_ingredient("god-module-4", {"processing-unit", 8})
    bobmods.lib.recipe.add_ingredient("god-module-5", {"processing-unit", 10})
  end
end


if data.raw.item["ruby-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-3", {"ruby-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-3", {"alien-artifact", 1})
end

if data.raw.item["sapphire-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-3", {"sapphire-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-3", {"alien-artifact", 1})
end

if data.raw.item["amethyst-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"amethyst-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-4", {"alien-artifact", 1})
end

if data.raw.item["emerald-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-4", {"emerald-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-4", {"alien-artifact", 1})
end

if data.raw.item["topaz-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-5", {"topaz-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-5", {"alien-artifact", 1})
end

if data.raw.item["diamond-5"] then
  bobmods.lib.recipe.add_ingredient("god-module-5", {"diamond-5", 1})
else
  bobmods.lib.recipe.add_ingredient("god-module-5", {"alien-artifact", 1})
end



