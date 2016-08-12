require("prototypes.assembly-updates")


if bobmods.assembly.OilRefineries == true then
  require("prototypes.oil-refinery-updates")
end

if bobmods.assembly.ChemicalPlants == true then
  require("prototypes.chemical-plant-updates")
end

if bobmods.assembly.Electrolysers and 
  data.raw.technology["electrolysis-1"] and
  data.raw.item["electrolyser"] and
  data.raw["recipe-category"]["electrolysis"] then
  require("prototypes.electrolyser-updates")
end

if bobmods.assembly.Furnaces == true then
  require("prototypes.electric-furnace-updates")
end

if bobmods.assembly.MultipurposeFurnaces and
  data.raw["item-subgroup"]["bob-smelting-machine"] and
  data.raw["recipe-category"]["chemical-furnace"] and
  data.raw["recipe-category"]["mixing-furnace"] and
  data.raw.technology["alloy-processing-2"] and
  data.raw.technology["chemical-processing-3"] then
  require("prototypes.chemical-mixing-furnace")
  require("prototypes.chemical-mixing-furnace-updates")
end


-- add new electronics crafting categories
bobmods.lib.machine.type_if_add_category("player", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics-machine")


data.raw.recipe["copper-cable"].category = "electronics"
data.raw.recipe["green-wire"].category = "electronics"
data.raw.recipe["red-wire"].category = "electronics"

if data.raw.recipe["electronic-circuit"].category ~= "electronics" and data.raw.recipe["electronic-circuit"].category ~= "electronics-machine" then
  data.raw.recipe["electronic-circuit"].category = "electronics"
end

if data.raw.recipe["advanced-circuit"].category ~= "electronics" and data.raw.recipe["advanced-circuit"].category ~= "electronics-machine" then
  data.raw.recipe["advanced-circuit"].category = "electronics"
end

if data.raw.recipe["processing-unit"].category ~= "electronics" and data.raw.recipe["processing-unit"].category ~= "electronics-machine" then
  data.raw.recipe["processing-unit"].category = "electronics-machine"
end

if data.raw.recipe["advanced-processing-unit"] and data.raw.recipe["advanced-processing-unit"].category ~= "electronics" and data.raw.recipe["advanced-processing-unit"].category ~= "electronics-machine" then
  data.raw.recipe["advanced-processing-unit"].category = "electronics-machine"
end


