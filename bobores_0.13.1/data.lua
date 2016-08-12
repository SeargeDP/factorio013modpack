if not bobmods then bobmods = {} end
if not bobmods.ores then bobmods.ores = {} end
if not bobmods.gems then bobmods.gems = {} end
if not bobmods.ores.settings then bobmods.ores.settings = {} end

data:extend(
{
  {
    type = "item-subgroup",
    name = "bob-ores",
    group = "intermediate-products",
    order = "b-a"
  },
  {
    type = "resource-category",
    name = "water"
  }
}
)


require("prototypes.tin-ore")
require("prototypes.lead-ore")
require("prototypes.quartz")
require("prototypes.silver-ore")
require("prototypes.zinc-ore")
require("prototypes.gold-ore")
require("prototypes.bauxite")
require("prototypes.rutile")
require("prototypes.tungsten-ore")

require("prototypes.nickel-ore")
require("prototypes.cobalt-ore")
require("prototypes.sulfur")
require("prototypes.gem-ore")

require("prototypes.gems")

require("prototypes.fluids")


for i, ore in pairs(bobmods.ores) do
  bobmods.lib.resource.generate_data_stage(ore)
end


bobmods.ores.settings.EnhanceStone = true

bobmods.ores.settings.UnsortedGemOre = false

bobmods.ores.settings.GemsFromOtherOres = false
bobmods.ores.settings.GemProbability = 0.05

bobmods.ores.settings.LeadGivesNickel = false
bobmods.ores.settings.LeadNickelRatio = 0.6

bobmods.ores.settings.NickelGivesCobalt = false
bobmods.ores.settings.NickelCobaltRatio = 0.4

bobmods.gems.RubyRatio = 1
bobmods.gems.SapphireRatio = 0.8
bobmods.gems.EmeraldRatio = 0.6
bobmods.gems.AmethystRatio = 0.5
bobmods.gems.TopazRatio = 0.4
bobmods.gems.DiamondRatio = 0.2


if bobmods and bobmods.config and bobmods.config.ores then
  if bobmods.config.ores.EnableBauxite then
    bobmods.ores.bauxite.enabled = true
  end
  if bobmods.config.ores.EnableCobaltOre then
    bobmods.ores.cobalt.enabled = true
  end
  if bobmods.config.ores.EnableGemsOre then
    bobmods.ores.gems.enabled = true
  end
  if bobmods.config.ores.EnableGoldOre then
    bobmods.ores.gold.enabled = true
  end
  if bobmods.config.ores.EnableLeadOre then
    bobmods.ores.lead.enabled = true
  end
  if bobmods.config.ores.EnableNickelOre then
    bobmods.ores.nickel.enabled = true
  end
  if bobmods.config.ores.EnableQuartz then
    bobmods.ores.quartz.enabled = true
  end
  if bobmods.config.ores.EnableRutile then
    bobmods.ores.rutile.enabled = true
  end
  if bobmods.config.ores.EnableSilverOre then
    bobmods.ores.silver.enabled = true
  end
  if bobmods.config.ores.EnableSulfur then
    bobmods.ores.sulfur.enabled = true
  end
  if bobmods.config.ores.EnableTinOre then
    bobmods.ores.tin.enabled = true
  end
  if bobmods.config.ores.EnableTungstenOre then
    bobmods.ores.tungsten.enabled = true
  end
  if bobmods.config.ores.EnableZincOre then
    bobmods.ores.zinc.enabled = true
  end
  if bobmods.config.ores.EnableWaterOres then
    bobmods.ores.water.enabled = true
    bobmods.ores.lithia_water.enabled = true
  end

  if bobmods.config.ores.EnhanceStone ~= nil then
    bobmods.ores.settings.EnhanceStone = bobmods.config.ores.EnhanceStone 
  end
  if bobmods.config.ores.UnsortedGemOre ~= nil then
    bobmods.ores.settings.UnsortedGemOre = bobmods.config.ores.UnsortedGemOre 
  end
  if bobmods.config.ores.GemsFromOtherOres ~= nil then
    bobmods.ores.settings.GemsFromOtherOres = bobmods.config.ores.GemsFromOtherOres 
  end
  if bobmods.config.ores.LeadGivesNickel ~= nil then
    bobmods.ores.settings.LeadGivesNickel = bobmods.config.ores.LeadGivesNickel 
  end
  if bobmods.config.ores.NickelGivesCobalt ~= nil then
    bobmods.ores.settings.NickelGivesCobalt = bobmods.config.ores.NickelGivesCobalt 
  end

  if bobmods.config.ores.LeadNickelRatio ~= nil then
    bobmods.ores.settings.LeadNickelRatio = bobmods.config.ores.LeadNickelRatio 
  end
  if bobmods.config.ores.NickelCobaltRatio ~= nil then
    bobmods.ores.settings.NickelCobaltRatio = bobmods.config.ores.NickelCobaltRatio 
  end
  if bobmods.config.ores.GemProbability ~= nil then
    bobmods.ores.settings.GemProbability = bobmods.config.ores.GemProbability 
  end

  if bobmods.config.gems.RubyRatio ~= nil then
    bobmods.gems.RubyRatio = bobmods.config.gems.RubyRatio 
  end
  if bobmods.config.gems.SapphireRatio ~= nil then
    bobmods.gems.SapphireRatio = bobmods.config.gems.SapphireRatio 
  end
  if bobmods.config.gems.EmeraldRatio ~= nil then
    bobmods.gems.EmeraldRatio = bobmods.config.gems.EmeraldRatio 
  end
  if bobmods.config.gems.AmethystRatio ~= nil then
    bobmods.gems.AmethystRatio = bobmods.config.gems.AmethystRatio 
  end
  if bobmods.config.gems.TopazRatio ~= nil then
    bobmods.gems.TopazRatio = bobmods.config.gems.TopazRatio 
  end
  if bobmods.config.gems.DiamondRatio ~= nil then
    bobmods.gems.DiamondRatio = bobmods.config.gems.DiamondRatio 
  end
end


data.raw.item["copper-ore"].stack_size = 200
--data.raw.item["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
if data.raw.resource["copper-ore"] then
--  data.raw.resource["copper-ore"].icon = "__bobores__/graphics/icons/copper-ore.png"
end

data.raw.item["iron-ore"].stack_size = 200
data.raw.item["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
if data.raw.resource["iron-ore"] then
  data.raw.resource["iron-ore"].icon = "__bobores__/graphics/icons/iron-ore.png"
end

data.raw.item["stone"].stack_size = 200
data.raw.item["stone"].icon = "__bobores__/graphics/icons/stone.png"
if data.raw.resource["stone"] then
  data.raw.resource["stone"].icon = "__bobores__/graphics/icons/stone.png"
end

data.raw.item["coal"].stack_size = 200
--data.raw.item["coal"].icon = "__bobores__/graphics/icons/coal.png"
if data.raw.resource["coal"] then
--  data.raw.resource["coal"].icon = "__bobores__/graphics/icons/coal.png"
end


