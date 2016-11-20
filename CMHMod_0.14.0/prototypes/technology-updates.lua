bobmods.lib.add_technology_recipe("zinc-processing", "zinc-iron")
bobmods.lib.add_technology_recipe("gold-processing", "advanced-electrum")
bobmods.lib.add_technology_recipe("rocket-silo", "rocket-engine")
bobmods.lib.add_technology_recipe("advanced-oil-processing", "CMH-NaOH")
bobmods.lib.add_technology_recipe("advanced-oil-processing", "CMH-refining")
bobmods.lib.add_technology_recipe("advanced-oil-processing", "CMH-coal-cracking")

if data.raw.tool["science-pack-4"] then
  bobmods.lib.replace_science_pack ("aluminium-titanium", "alien-science-pack", "science-pack-4")
end
