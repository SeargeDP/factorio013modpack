if not bobmods then bobmods = {} end
if not bobmods.assembly then bobmods.assembly = {} end

bobmods.assembly.OilRefineries = true
bobmods.assembly.ChemicalPlants = true
bobmods.assembly.Electrolysers = true
bobmods.assembly.Furnaces = true
bobmods.assembly.MultipurposeFurnaces = true


if bobmods.config and bobmods.config.assembly then
  if bobmods.config.assembly.OilRefineries ~= nil then
    bobmods.assembly.OilRefineries = bobmods.config.assembly.OilRefineries
  end
  if bobmods.config.assembly.ChemicalPlants ~= nil then
    bobmods.assembly.ChemicalPlants = bobmods.config.assembly.ChemicalPlants
  end
  if bobmods.config.assembly.Electrolysers ~= nil then
    bobmods.assembly.Electrolysers = bobmods.config.assembly.Electrolysers
  end
  if bobmods.config.assembly.Furnaces ~= nil then
    bobmods.assembly.Furnaces = bobmods.config.assembly.Furnaces
  end
  if bobmods.config.assembly.MultipurposeFurnaces ~= nil then
    bobmods.assembly.MultipurposeFurnaces = bobmods.config.assembly.MultipurposeFurnaces
  end
end


require("prototypes.assembly")
require("prototypes.assembly-electronics")
require("prototypes.category")

if bobmods.assembly.OilRefineries == true then
  require("prototypes.oil-refinery")
end

if bobmods.assembly.ChemicalPlants == true then
  require("prototypes.chemical-plant")
end

if bobmods.assembly.Electrolysers and 
  data.raw.technology["electrolysis-1"] and
  data.raw.item["electrolyser"] and
  data.raw["recipe-category"]["electrolysis"] then
  require("prototypes.electrolyser")
end

if bobmods.assembly.Furnaces == true then
  require("prototypes.electric-furnace")
end

if bobmods.assembly.MultipurposeFurnaces and
  data.raw["item-subgroup"]["bob-smelting-machine"] and
  data.raw["recipe-category"]["chemical-furnace"] and
  data.raw["recipe-category"]["mixing-furnace"] and
  data.raw.technology["alloy-processing-2"] and
  data.raw.technology["chemical-processing-3"] then
  require("prototypes.chemical-mixing-furnace")
end


