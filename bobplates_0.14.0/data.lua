if not bobmods then bobmods = {} end
if not bobmods.plates then bobmods.plates = {} end



bobmods.plates.CheaperSteel = true
bobmods.plates.BatteryUpdate = true
bobmods.plates.InventorySize = 90

bobmods.plates.EnableGroundWater = false


local EnableGemsOre = true
local LeadGivesNickel = true

if bobmods.config and bobmods.config.plates then
  if bobmods.config.plates.CheaperSteel ~= nil then
    bobmods.plates.CheaperSteel = bobmods.config.plates.CheaperSteel 
  end
  if bobmods.config.plates.BatteryUpdate ~= nil then
    bobmods.plates.BatteryUpdate = bobmods.config.plates.BatteryUpdate 
  end
  if bobmods.config.plates.EnableGroundWater ~= nil then
    bobmods.plates.EnableGroundWater = bobmods.config.plates.EnableGroundWater
  end
end

if bobmods.config and bobmods.config.ores then
  if bobmods.config.ores.EnableGemsOre ~= nil then
    EnableGemsOre = bobmods.config.ores.EnableGemsOre 
  end
  if bobmods.config.ores.LeadGivesNickel ~= nil then
    LeadGivesNickel = bobmods.config.ores.LeadGivesNickel 
  end
end


if bobmods.config and bobmods.config.InventorySize then
  bobmods.plates.InventorySize = bobmods.config.InventorySize
end

if bobmods.ores then
  if bobmods.ores.bauxite then
    bobmods.ores.bauxite.enabled = true
  end
  if bobmods.ores.gold then
    bobmods.ores.gold.enabled = true
  end
  if bobmods.ores.lead then
    bobmods.ores.lead.enabled = true
  end
  if bobmods.ores.quartz then
    bobmods.ores.quartz.enabled = true
  end
  if bobmods.ores.rutile then
    bobmods.ores.rutile.enabled = true
  end
  if bobmods.ores.silver then
    bobmods.ores.silver.enabled = true
  end
  if bobmods.ores.tin then
    bobmods.ores.tin.enabled = true
  end
  if bobmods.ores.tungsten then
    bobmods.ores.tungsten.enabled = true
  end
  if bobmods.ores.zinc then
    bobmods.ores.zinc.enabled = true
  end

  if bobmods.ores.gems and EnableGemsOre == true then
    bobmods.ores.gems.enabled = true
  end

  if bobmods.ores.settings and LeadGivesNickel == true then
    bobmods.ores.settings.LeadGivesNickel = true
  end

  if bobmods.plates.EnableGroundWater == false then
    bobmods.ores.water.enabled = true
    bobmods.ores.lithia_water.enabled = true
  end

  if bobmods.config and bobmods.config.ores then
    if bobmods.config.ores.EnableNickelOre == nil then
      bobmods.ores.nickel.enabled = true
    end
  end
end


require("prototypes.category")

require("prototypes.item.ores")
require("prototypes.item.gems")
require("prototypes.item.chemicals")
require("prototypes.item.resource")
require("prototypes.item.plates")
require("prototypes.item.alloys")
require("prototypes.item.parts")
require("prototypes.item.electronics")
require("prototypes.item.entities")
require("prototypes.item.bottle")

require("prototypes.entity.entities")
require("prototypes.entity.pumps")

require("prototypes.recipe.gems-recipe")
require("prototypes.recipe.chemistry-recipe")
require("prototypes.recipe.resource-recipe")
require("prototypes.recipe.plates-recipe")
require("prototypes.recipe.alloy-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.electronics-recipe")
require("prototypes.recipe.entity-recipe")
require("prototypes.recipe.bottle-recipe")
require("prototypes.recipe.void-recipe")

require("prototypes.technology")
require("prototypes.technology-metal")

if data.raw.item["alien-artifact-blue"] and
  data.raw.item["alien-artifact-orange"] and
  data.raw.item["alien-artifact-purple"] and
  data.raw.item["alien-artifact-yellow"] and
  data.raw.item["alien-artifact-green"] and
  data.raw.item["alien-artifact-red"]
then
  require("prototypes.item.alien")
  require("prototypes.recipe.alien-recipe")
  require("prototypes.technology-alien")
end

