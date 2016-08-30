if data.raw.technology["bob-robotics-2"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-1", "bob-robotics-2")
  bobmods.lib.tech.add_prerequisite("bob-robotics-2", "aluminium-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-1", "aluminium-processing")
end



if data.raw.technology["bob-robotics-3"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "bob-robotics-3")
  bobmods.lib.tech.add_prerequisite("bob-robotics-3", "advanced-electronics-2")
  bobmods.lib.tech.add_prerequisite("bob-robotics-3", "titanium-processing")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "advanced-electronics-2")
  bobmods.lib.tech.add_prerequisite("bob-robots-2", "titanium-processing")
end

bobmods.lib.tech.add_prerequisite("bob-robo-modular-3", "advanced-electronics-2")

if data.raw.item["lithium-ion-battery"] and data.raw.technology["battery-2"] then
  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-3", "battery-2")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-2", "battery-2")
  end
end



if data.raw.technology["bob-robotics-4"] then
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "bob-robotics-4")
  bobmods.lib.tech.add_prerequisite("bob-robotics-4", "advanced-electronics-3")
  bobmods.lib.tech.add_prerequisite("bob-robotics-4", "ceramics")
else
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "advanced-electronics-3")
  bobmods.lib.tech.add_prerequisite("bob-robots-3", "ceramics")
end

if data.raw.item["silver-zinc-battery"] and data.raw.technology["battery-3"] then
  if data.raw.technology["bob-robotics-4"] then
    bobmods.lib.tech.add_prerequisite("bob-robotics-4", "battery-3")
  else
    bobmods.lib.tech.add_prerequisite("bob-robots-3", "battery-3")
  end
end


if bobmods.logistics.RoboportRecipeUpdate then
  bobmods.lib.tech.remove_recipe_unlock("construction-robotics", "roboport")
  bobmods.lib.tech.remove_recipe_unlock("logistic-robotics", "roboport")
end

-- fix a difficulty shift.
bobmods.lib.tech.replace_prerequisite("robotics", "advanced-electronics-2", "advanced-electronics")


if data.raw.tool["science-pack-4"] then
  bobmods.lib.tech.replace_science_pack("bob-robots-3", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("bob-robo-modular-4", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("toolbelt-3", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("logistic-system-2", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("character-logistic-slots-5", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("character-logistic-slots-6", "alien-science-pack", "science-pack-4")
  bobmods.lib.tech.replace_science_pack("character-inventory-slots-3", "alien-science-pack", "science-pack-4")

  bobmods.lib.tech.add_new_science_pack("character-logistic-slots-7", "science-pack-4", 1)

  if data.raw.technology["bob-logistics-5"] then
    bobmods.lib.tech.replace_science_pack("bob-logistics-5", "alien-science-pack", "science-pack-4")
  end
  if data.raw.technology["bob-robotics-3"] then
    bobmods.lib.tech.replace_science_pack("bob-robotics-3", "alien-science-pack", "science-pack-4")
  end
  bobmods.lib.tech.replace_science_pack("inserter-stack-size-bonus-4", "alien-science-pack", "science-pack-4")
end

if
  data.raw.tool["science-pack-gold"] and
  data.raw.tool["alien-science-pack-blue"] and
  data.raw.tool["alien-science-pack-orange"] and
  data.raw.tool["alien-science-pack-purple"] and
  data.raw.tool["alien-science-pack-yellow"] and
  data.raw.tool["alien-science-pack-green"] and
  data.raw.tool["alien-science-pack-red"]
then
  data.raw.technology["character-logistic-slots-8"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-blue", 1},{"alien-science-pack-orange", 1}}
  data.raw.technology["character-logistic-slots-9"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-purple", 1},{"alien-science-pack-yellow", 1}}
  data.raw.technology["character-logistic-slots-10"].unit.ingredients = {{"science-pack-gold", 1},{"alien-science-pack", 1},{"alien-science-pack-green", 1},{"alien-science-pack-red", 1}}
else
  if data.raw.tool["science-pack-4"] then
    bobmods.lib.tech.add_new_science_pack("character-logistic-slots-8", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("character-logistic-slots-9", "science-pack-4", 1)
    bobmods.lib.tech.add_new_science_pack("character-logistic-slots-10", "science-pack-4", 1)
  end
end


bobmods.lib.tech.add_recipe_unlock("logistic-robotics", "robot-brain-logistic")
bobmods.lib.tech.add_recipe_unlock("logistic-robotics", "robot-tool-logistic")

bobmods.lib.tech.add_recipe_unlock("construction-robotics", "robot-brain-construction")
bobmods.lib.tech.add_recipe_unlock("construction-robotics", "robot-tool-construction")

bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-brain-logistic-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-tool-logistic-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-brain-construction-2")
bobmods.lib.tech.add_recipe_unlock("bob-robots-1", "robot-tool-construction-2")

bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-brain-logistic-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-tool-logistic-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-brain-construction-3")
bobmods.lib.tech.add_recipe_unlock("bob-robots-2", "robot-tool-construction-3")

bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-brain-logistic-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-tool-logistic-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-brain-construction-4")
bobmods.lib.tech.add_recipe_unlock("bob-robots-3", "robot-tool-construction-4")



bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-pipe")
bobmods.lib.tech.add_recipe_unlock("steel-processing", "steel-pipe-to-ground")

bobmods.lib.tech.add_recipe_unlock("plastics", "plastic-pipe")
bobmods.lib.tech.add_recipe_unlock("plastics", "plastic-pipe-to-ground")


if data.raw.technology["alloy-processing-1"] then
  bobmods.lib.tech.add_recipe_unlock("alloy-processing-1", "bronze-pipe")
  bobmods.lib.tech.add_recipe_unlock("alloy-processing-1", "bronze-pipe-to-ground")
end

if data.raw.technology["zinc-processing"] then
  bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-pipe")
  bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-pipe-to-ground")
end

if data.raw.technology["titanium-processing"] then
  bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-pipe")
  bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-pipe-to-ground")
end

if data.raw.technology["tungsten-processing"] then
  bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-pipe")
  bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-pipe-to-ground")
end

if data.raw.technology["ceramics"] then
  bobmods.lib.tech.add_recipe_unlock("ceramics", "ceramic-pipe")
  bobmods.lib.tech.add_recipe_unlock("ceramics", "ceramic-pipe-to-ground")
end



if data.raw.technology["lava-smelting-05"] then
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-05", "tungsten-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-05", "tungsten-pipe-to-ground")
end

if data.raw.technology["lava-smelting-06"] then
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "bronze-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "bronze-pipe-to-ground")

  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "brass-pipe")
  bobmods.lib.tech.add_recipe_unlock("lava-smelting-06", "brass-pipe-to-ground")
end



local function remove_inserter_stack_size_bonus(technology)
  if data.raw.technology[technology] and data.raw.technology[technology].effects then
    for i, effect in pairs(data.raw.technology[technology].effects) do
      if effect.type == "inserter-stack-size-bonus" then
        table.remove(data.raw.technology[technology].effects,i)
      end
    end
  end
end

remove_inserter_stack_size_bonus("inserter-capacity-bonus-2")
remove_inserter_stack_size_bonus("inserter-capacity-bonus-7")

for i = 1, 7 do
  data.raw.technology["inserter-capacity-bonus-" .. i].icon = "__boblogistics__/graphics/icons/technology/stack-inserter-capacity.png"
  data.raw.technology["inserter-capacity-bonus-" .. i].icon_size = 128
end



