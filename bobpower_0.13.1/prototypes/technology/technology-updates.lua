bobmods.lib.tech.replace_prerequisite ("solar-energy", "advanced-electronics", "electronics")

if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack ("electric-pole-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack ("electric-substation-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack ("bob-solar-energy-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack ("bob-electric-energy-accumulators-4", "alien-science-pack", "science-pack-4")
end

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-3", "battery-2")
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  bobmods.lib.tech.add_prerequisite ("bob-electric-energy-accumulators-4", "battery-3")
end

