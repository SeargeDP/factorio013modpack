if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("vehicle-solar-panel-equipment-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("vehicle-solar-panel-equipment-5", "science-pack-4", 1)
  bobmods.lib.tech.add_new_science_pack("vehicle-solar-panel-equipment-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("vehicle-engine-equipment", "alien-science-pack", "science-pack-4")

  bobmods.lib.tech.replace_science_pack("vehicle-laser-defense-equipment-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("vehicle-laser-defense-equipment-6", "science-pack-4", 1)

  bobmods.lib.tech.replace_science_pack("vehicle-big-turret-equipment-2", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.add_new_science_pack("vehicle-big-turret-equipment-3", "science-pack-4", 1)

  bobmods.lib.tech.add_new_science_pack("vehicle-fusion-cell-equipment-3", "science-pack-4", 1)

  bobmods.lib.tech.add_new_science_pack("vehicle-fusion-reactor-equipment-3", "science-pack-4", 1)
end



if data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["vehicle-big-turret-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["vehicle-big-turret-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["vehicle-big-turret-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}

  data.raw.technology["vehicle-fusion-cell-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["vehicle-fusion-cell-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["vehicle-fusion-cell-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}

  data.raw.technology["vehicle-fusion-reactor-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["vehicle-fusion-reactor-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["vehicle-fusion-reactor-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}


  data.raw.technology["vehicle-energy-shield-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["vehicle-energy-shield-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["vehicle-energy-shield-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}

  data.raw.technology["vehicle-battery-equipment-4"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["vehicle-battery-equipment-5"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["vehicle-battery-equipment-6"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
else
  if data.raw.tool["science-pack-4"] then
    bobmods.lib.tech.add_new_science_pack("vehicle-big-turret-equipment-4", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-big-turret-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-big-turret-equipment-6", "science-pack-4", 1)

    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-cell-equipment-4", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-cell-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-cell-equipment-6", "science-pack-4", 1)

    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-reactor-equipment-4", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-reactor-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-fusion-reactor-equipment-6", "science-pack-4", 1)


    bobmods.lib.tech.add_new_science_pack("vehicle-energy-shield-equipment-4", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-energy-shield-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-energy-shield-equipment-6", "science-pack-4", 1)

    bobmods.lib.tech.add_new_science_pack("vehicle-battery-equipment-5", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("vehicle-battery-equipment-6", "science-pack-4", 1)
  end
end




bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-2", "speed-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-2", "speed-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-2", "effectivity-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-2", "effectivity-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-2", "productivity-module-2")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-2", "productivity-module-2")

bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-3", "speed-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-3", "speed-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-3", "effectivity-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-3", "effectivity-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-3", "productivity-module-3")
bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-3", "productivity-module-3")


if data.raw.technology["effectivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-4", "effectivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-4", "effectivity-module-3")
end

if data.raw.technology["productivity-module-4"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-4", "productivity-module-4")
else
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-4", "productivity-module-3")
end


if data.raw.technology["speed-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-4", "speed-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-4", "speed-module-5")
end

if data.raw.technology["effectivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-4", "effectivity-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-4", "effectivity-module-5")
end

if data.raw.technology["productivity-module-5"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-4", "productivity-module-5")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-4", "productivity-module-5")
end


if data.raw.technology["speed-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-5", "speed-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-5", "speed-module-6")
end

if data.raw.technology["effectivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-5", "effectivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-5", "effectivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-5", "effectivity-module-6")
end

if data.raw.technology["productivity-module-6"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-5", "productivity-module-6")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-5", "productivity-module-6")
end


if data.raw.technology["speed-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-6", "speed-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-6", "speed-module-8")
end

if data.raw.technology["effectivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-6", "effectivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-6", "effectivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-6", "effectivity-module-8")
end

if data.raw.technology["productivity-module-8"] then
  bobmods.lib.tech.add_prerequisite("vehicle-energy-shield-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-reactor-equipment-6", "productivity-module-8")
  bobmods.lib.tech.add_prerequisite("vehicle-fusion-cell-equipment-6", "productivity-module-8")
end


