if data.raw.item["glass"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "steel-plate", "glass")
  bobmods.lib.recipe.replace_ingredient("solar-panel-2", "steel-plate", "glass")
  bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "steel-plate", "glass")
end

if data.raw.item["silver-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-small-2", "copper-plate", "silver-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-2", "copper-plate", "silver-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-large-2", "copper-plate", "silver-plate")
end



if data.raw.item["titanium-plate"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "titanium-plate")
  bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "titanium-plate")
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "titanium-processing")
else
  if data.raw.item["aluminium-plate"] then
    bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-3", "steel-plate", "aluminium-plate")
    bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "steel-plate", "aluminium-plate")
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "aluminium-processing")
  end
end

if data.raw.item["silicon-wafer"] then
  table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"silicon-wafer", 16})
  table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"silicon-wafer", 36})
  table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"silicon-wafer", 64})
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
else
  if data.raw.item["silicon"] then
    table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"silicon", 2})
    table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"silicon", 4})
    table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"silicon", 8})
    bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
  else
    if data.raw.item["silicon-plate"] then
      table.insert(data.raw["recipe"]["solar-panel-small-3"].ingredients,{"silicon-plate", 2})
      table.insert(data.raw["recipe"]["solar-panel-3"].ingredients,{"silicon-plate", 4})
      table.insert(data.raw["recipe"]["solar-panel-large-3"].ingredients,{"silicon-plate", 8})
      bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "silicon-processing")
    end
  end
end

if data.raw.item["electrum-alloy"] then
  bobmods.lib.recipe.replace_ingredient("solar-panel-small-3", "copper-plate", "electrum-alloy")
  bobmods.lib.recipe.replace_ingredient("solar-panel-3", "copper-plate", "electrum-alloy")
  bobmods.lib.recipe.replace_ingredient("solar-panel-large-3", "copper-plate", "electrum-alloy")
  bobmods.lib.tech.add_prerequisite("bob-solar-energy-4", "electrum-processing")
end



