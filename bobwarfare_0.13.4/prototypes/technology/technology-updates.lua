if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("bob-turrets-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-laser-turrets-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-sniper-turrets-3", "alien-science-pack", "science-pack-4")

  bobmods.lib.tech.replace_science_pack("bob-laser-rifle-ammo-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-laser-rifle-ammo-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("bob-laser-rifle-ammo-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("personal-laser-defense-equipment-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("personal-laser-defense-equipment-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("tanks-3", "alien-science-pack", "science-pack-4")

  bobmods.lib.tech.replace_science_pack("radars-4", "alien-science-pack", "science-pack-4")

  bobmods.lib.tech.replace_science_pack("bullet-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bullet-speed-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("bullet-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("bullet-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("shotgun-shell-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("shotgun-shell-speed-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("shotgun-shell-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("shotgun-shell-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.add_new_science_pack("rocket-damage-5", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("rocket-speed-5", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("rocket-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("rocket-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("bob-tank-cannon-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-tank-cannon-speed-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("bob-tank-cannon-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("bob-tank-cannon-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("bob-laser-rifle-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-laser-rifle-speed-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("bob-laser-rifle-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("bob-laser-rifle-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("gun-turret-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("gun-turret-damage-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("laser-turret-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("laser-turret-speed-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("laser-turret-damage-6", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("laser-turret-speed-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("bob-sniper-turret-damage-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("bob-sniper-turret-damage-6", "science-pack-4", 1)
end


if data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["bob-ap-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-blue", 1}}
  data.raw.technology["bob-shotgun-ap-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-blue", 1}}
  data.raw.technology["bob-piercing-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-blue", 1}}

  data.raw.technology["bob-electric-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["bob-shotgun-electric-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["bob-electric-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-orange", 1}}

  data.raw.technology["bob-acid-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-purple", 1}}
  data.raw.technology["bob-shotgun-acid-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-purple", 1}}
  data.raw.technology["bob-acid-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-purple", 1}}

  data.raw.technology["bob-he-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["bob-shotgun-explosive-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["bob-explosive-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-yellow", 1}}

  data.raw.technology["bob-poison-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-green", 1}}
  data.raw.technology["bob-shotgun-poison-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-green", 1}}
  data.raw.technology["bob-poison-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-green", 1}}

  data.raw.technology["bob-flame-bullets"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["bob-shotgun-flame-shells"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["bob-flame-rocket"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack-red", 1}}

  data.raw.technology["bob-power-armor-3"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["energy-shield-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["battery-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["fusion-reactor-equipment-2"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}

  data.raw.technology["bob-power-armor-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["energy-shield-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["battery-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["fusion-reactor-equipment-3"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}

  data.raw.technology["bob-power-armor-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["energy-shield-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["battery-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
  data.raw.technology["fusion-reactor-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
else
  if data.raw.tool["science-pack-4"] then
    bobmods.lib.tech.replace_science_pack("bob-ap-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-ap-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-piercing-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.replace_science_pack("bob-electric-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-electric-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-electric-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.replace_science_pack("bob-acid-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-acid-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-acid-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.replace_science_pack("bob-he-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-explosive-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-explosive-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.replace_science_pack("bob-poison-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-poison-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-poison-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.replace_science_pack("bob-flame-bullets", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-shotgun-flame-shells", "alien-science-pack", "science-pack-4")
    bobmods.lib.tech.replace_science_pack("bob-flame-rocket", "alien-science-pack", "science-pack-4")

    bobmods.lib.tech.add_new_science_pack("bob-power-armor-3", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("energy-shield-equipment-4", "science-pack-4", 1)

    bobmods.lib.tech.add_new_science_pack("bob-power-armor-4", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("energy-shield-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("battery-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("fusion-reactor-equipment-3", "science-pack-4", 1)

    bobmods.lib.tech.add_new_science_pack("bob-power-armor-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("energy-shield-equipment-6", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("battery-equipment-6", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("fusion-reactor-equipment-4", "science-pack-4", 1)
  end
end


if data.raw.technology["alien-blue-research"] then
  bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "alien-blue-research")
  bobmods.lib.tech.add_prerequisite("bob-piercing-rocket", "alien-blue-research")
elseif data.raw.technology["tungsten-processing"] then
  bobmods.lib.tech.add_prerequisite("bob-ap-bullets", "tungsten-processing")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-ap-shells", "tungsten-processing")
end

if data.raw.technology["alien-orange-research"] then
  bobmods.lib.tech.add_prerequisite("bob-electric-bullets", "alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-electric-shells", "alien-orange-research")
  bobmods.lib.tech.add_prerequisite("bob-electric-rocket", "alien-orange-research")
end

if data.raw.technology["alien-purple-research"] then
  bobmods.lib.tech.add_prerequisite("bob-acid-bullets", "alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-acid-shells", "alien-purple-research")
  bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "alien-purple-research")
else
  bobmods.lib.tech.add_prerequisite("bob-acid-rocket", "nitrogen-processing")
end

if data.raw.technology["alien-yellow-research"] then
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "alien-yellow-research")
  bobmods.lib.tech.add_prerequisite("bob-explosive-rocket", "alien-yellow-research")
else
  bobmods.lib.tech.add_prerequisite("bob-he-bullets", "explosives")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-explosive-shells", "explosives")
end

if data.raw.technology["alien-green-research"] then
  bobmods.lib.tech.add_prerequisite("bob-poison-bullets", "alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-poison-shells", "alien-green-research")
  bobmods.lib.tech.add_prerequisite("bob-poison-rocket", "alien-green-research")
end

if data.raw.technology["alien-red-research"] then
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "alien-red-research")
  bobmods.lib.tech.add_prerequisite("bob-flame-rocket", "alien-red-research")
else
  bobmods.lib.tech.add_prerequisite("bob-flame-bullets", "flammables")
  bobmods.lib.tech.add_prerequisite("bob-shotgun-flame-shells", "flammables")
end


bobmods.lib.tech.add_recipe_unlock("military-3", "rifle")
bobmods.lib.tech.add_recipe_unlock("military-3", "sniper-rifle")

bobmods.lib.tech.add_recipe_unlock("rocketry", "rocket-engine")
if data.raw.technology["tungsten-processing"] then
  bobmods.lib.tech.add_prerequisite("bob-rocket", "tungsten-processing")
end

table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-1"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.1"})

table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.1"})
table.insert(data.raw.technology["gun-turret-damage-2"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.1"})

table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-3"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-4"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.2"})
table.insert(data.raw.technology["gun-turret-damage-5"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.2"})

table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-2", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-3", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-4", modifier = "0.4"})
table.insert(data.raw.technology["gun-turret-damage-6"].effects,{type = "turret-attack", turret_id = "bob-gun-turret-5", modifier = "0.4"})


if data.raw.recipe["gun-cotton-synthetic"] then
  bobmods.lib.tech.add_recipe_unlock("cordite-processing", "gun-cotton-synthetic")
end


if data.raw.technology["speed-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "speed-module-4")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "speed-module-4")
else
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "speed-module-3")
end

if data.raw.technology["effectivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-3", "effectivity-module-4")
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-4", "effectivity-module-4")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "effectivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-4", "effectivity-module-3")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "effectivity-module-3")
end

if data.raw.technology["productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-4", "productivity-module-4")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "productivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-4", "productivity-module-3")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-2", "productivity-module-3")
end


if data.raw.technology["speed-module-6"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "speed-module-6")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "speed-module-6")
end

if data.raw.technology["effectivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-4", "effectivity-module-6")
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-5", "effectivity-module-6")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "effectivity-module-6")
end

if data.raw.technology["productivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-3", "productivity-module-6")
end


if data.raw.technology["speed-module-8"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "speed-module-8")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "speed-module-8")
end

if data.raw.technology["effectivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("bob-power-armor-5", "effectivity-module-8")
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-6", "effectivity-module-8")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "effectivity-module-8")
end

if data.raw.technology["productivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("energy-shield-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("fusion-reactor-equipment-4", "productivity-module-8")
end



