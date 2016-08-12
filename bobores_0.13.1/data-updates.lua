for i, ore in pairs(bobmods.ores) do
  if ore.enabled then
    bobmods.lib.resource.generate_updates_stage(ore)
  end
end

if bobmods.ores.settings.EnhanceStone == true then
  require("prototypes.stone")
end

if bobmods.ores.settings.UnsortedGemOre == true then
  bobmods.lib.resource.add_result("gem-ore", {name="gem-ore"})
else
  bobmods.lib.resource.add_result("gem-ore", {name="diamond-ore", probability = bobmods.gems.DiamondRatio})
  bobmods.lib.resource.add_result("gem-ore", {name="emerald-ore", probability = bobmods.gems.EmeraldRatio})
  bobmods.lib.resource.add_result("gem-ore", {name="amethyst-ore", probability = bobmods.gems.AmethystRatio})
  bobmods.lib.resource.add_result("gem-ore", {name="ruby-ore", probability = bobmods.gems.RubyRatio})
  bobmods.lib.resource.add_result("gem-ore", {name="sapphire-ore", probability = bobmods.gems.SapphireRatio})
  bobmods.lib.resource.add_result("gem-ore", {name="topaz-ore", probability = bobmods.gems.TopazRatio})
end

if bobmods.ores.settings.GemsFromOtherOres == true then
  bobmods.lib.resource.add_result("coal", {name="diamond-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.DiamondRatio})

  bobmods.lib.resource.add_result("quartz", {name="emerald-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.EmeraldRatio})
  bobmods.lib.resource.add_result("quartz", {name="amethyst-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.AmethystRatio})

  bobmods.lib.resource.add_result("bauxite-ore", {name="ruby-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.RubyRatio})
  bobmods.lib.resource.add_result("bauxite-ore", {name="sapphire-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.SapphireRatio})
  bobmods.lib.resource.add_result("bauxite-ore", {name="topaz-ore", probability = bobmods.ores.settings.GemProbability * bobmods.gems.TopazRatio})
end


if bobmods.ores.settings.LeadGivesNickel == true then
  bobmods.lib.resource.add_result("lead-ore", {name = "nickel-ore", probability = bobmods.ores.settings.LeadNickelRatio})
end


if bobmods.ores.settings.NickelGivesCobalt == true then
  if bobmods.ores.nickel.enabled then
    bobmods.lib.resource.add_result("nickel-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.NickelCobaltRatio})
  else
    if bobmods.ores.settings.LeadGivesNickel == true then
      bobmods.lib.resource.add_result("lead-ore", {name = "cobalt-ore", probability = bobmods.ores.settings.LeadNickelRatio * bobmods.ores.settings.NickelCobaltRatio})
    end
  end
end


for i, drill in pairs(data.raw["mining-drill"]) do
  if not drill.storage_slots then drill.storage_slots = 6 end
end

if data.raw.item["obsidian"] then
  bobmods.lib.resource.add_result("cobalt-ore", {name = "obsidian", amount_min = 1, amount_max = 12, probability = 0.25})
end

if data.raw["item-subgroup"]["bob-gems-ore"] then
  data.raw.recipe["sort-gem-ore"].subgroup = "bob-gems-ore"
end


bobmods.lib.module.add_productivity_limitation("sort-gem-ore")


bobmods.lib.machine.type_if_add_resource_category("mining-drill", "basic-fluid", "water")


