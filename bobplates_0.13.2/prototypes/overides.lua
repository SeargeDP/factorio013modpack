data.raw["player"]["player"].inventory_size = bobmods.plates.InventorySize


-- Stack Sizes
data.raw.item["iron-plate"].stack_size = 200
data.raw.item["copper-plate"].stack_size = 200
data.raw.item["steel-plate"].stack_size = 200
data.raw.item["coal"].stack_size = 200

data.raw.item["empty-barrel"].stack_size = 20
data.raw.item["crude-oil-barrel"].stack_size = 20
data.raw.item["raw-wood"].stack_size = 100
data.raw.item["wood"].stack_size = 200


-- DyTech
if data.raw["item-subgroup"]["metallurgy-plates"] then
  if data.raw.recipe["metallurgy-tin-plate"] then
    data.raw.recipe["metallurgy-tin-plate"].subgroup = "metallurgy-plates"
  end
  if data.raw.recipe["metallurgy-silver-plate"] then
    data.raw.recipe["metallurgy-silver-plate"].subgroup = "metallurgy-plates"
  end
  if data.raw.recipe["metallurgy-gold-plate"] then
    data.raw.recipe["metallurgy-gold-plate"].subgroup = "metallurgy-plates"
  end
  if data.raw.recipe["metallurgy-lead-plate"] then
    data.raw.recipe["metallurgy-lead-plate"].subgroup = "metallurgy-plates"
  end
  if data.raw.recipe["metallurgy-zinc-plate"] then
    data.raw.recipe["metallurgy-zinc-plate"].subgroup = "metallurgy-plates"
  end
  if data.raw.recipe["metallurgy-tungsten-plate"] then
    data.raw.recipe["metallurgy-tungsten-plate"].subgroup = "metallurgy-plates"
  end
end

if data.raw["item-subgroup"]["metallurgy-alloys"] then
  if data.raw.recipe["metallurgy-copper-tungsten-alloy"] then
    data.raw.recipe["metallurgy-copper-tungsten-alloy"].subgroup = "metallurgy-alloys"
  end
  if data.raw.recipe["metallurgy-bronze-alloy"] then
    data.raw.recipe["metallurgy-bronze-alloy"].subgroup = "metallurgy-alloys"
  end
  if data.raw.recipe["metallurgy-brass-alloy"] then
    data.raw.recipe["metallurgy-brass-alloy"].subgroup = "metallurgy-alloys"
  end
  if data.raw.recipe["metallurgy-electrum-alloy"] then
    data.raw.recipe["metallurgy-electrum-alloy"].subgroup = "metallurgy-alloys"
  end
  if data.raw.recipe["metallurgy-gunmetal-alloy"] then
    data.raw.recipe["metallurgy-gunmetal-alloy"].subgroup = "metallurgy-alloys"
  end
end

if data.raw["item-subgroup"]["dytechinter"] then
  if data.raw.recipe["rubber"] then
    data.raw.recipe["rubber"].subgroup = "dytechinter"
  end
  if data.raw.recipe["glass"] then
    data.raw.recipe["glass"].subgroup = "dytechinter"
  end
end


if data.raw["item-subgroup"]["ore"] then
  if data.raw.recipe["ruby-ore"] then
    data.raw.recipe["ruby-ore"].subgroup = "ore"
  end
  if data.raw.recipe["sapphire-ore"] then
    data.raw.recipe["sapphire-ore"].subgroup = "ore"
  end
  if data.raw.recipe["emerald-ore"] then
    data.raw.recipe["emerald-ore"].subgroup = "ore"
  end
  if data.raw.recipe["topaz-ore"] then
    data.raw.recipe["topaz-ore"].subgroup = "ore"
  end
  if data.raw.recipe["diamond-ore"] then
    data.raw.recipe["diamond-ore"].subgroup = "ore"
  end
end

if data.raw["item-subgroup"]["grinded"] then
  if data.raw.recipe["ruby-3"] then
    data.raw.recipe["ruby-3"].subgroup = "grinded"
  end
  if data.raw.recipe["sapphire-3"] then
    data.raw.recipe["sapphire-3"].subgroup = "grinded"
  end
  if data.raw.recipe["emerald-3"] then
    data.raw.recipe["emerald-3"].subgroup = "grinded"
  end
  if data.raw.recipe["topaz-3"] then
    data.raw.recipe["topaz-3"].subgroup = "grinded"
  end
  if data.raw.recipe["diamond-3"] then
    data.raw.recipe["diamond-3"].subgroup = "grinded"
  end
end

if data.raw["item-subgroup"]["raw"] then
  if data.raw.recipe["ruby-4"] then
    data.raw.recipe["ruby-4"].subgroup = "raw"
  end
  if data.raw.recipe["sapphire-4"] then
    data.raw.recipe["sapphire-4"].subgroup = "raw"
  end
  if data.raw.recipe["emerald-4"] then
    data.raw.recipe["emerald-4"].subgroup = "raw"
  end
  if data.raw.recipe["topaz-4"] then
    data.raw.recipe["topaz-4"].subgroup = "raw"
  end
  if data.raw.recipe["diamond-4"] then
    data.raw.recipe["diamond-4"].subgroup = "raw"
  end
end

if data.raw["item-subgroup"]["polished"] then
  if data.raw.recipe["ruby-5"] then
    data.raw.recipe["ruby-5"].subgroup = "polished"
  end
  if data.raw.recipe["sapphire-5"] then
    data.raw.recipe["sapphire-5"].subgroup = "polished"
  end
  if data.raw.recipe["emerald-5"] then
    data.raw.recipe["emerald-5"].subgroup = "polished"
  end
  if data.raw.recipe["topaz-5"] then
    data.raw.recipe["topaz-5"].subgroup = "polished"
  end
  if data.raw.recipe["diamond-5"] then
    data.raw.recipe["diamond-5"].subgroup = "polished"
  end
end


-- F-Mod
if data.raw.recipe["aluminium-plate"] then
  data.raw.recipe["aluminium-plate"].subgroup = "raw-material"
end


if data.raw.recipe["sodium-hidroxide"] then
  data.raw.recipe["sodium-hidroxide"].result = "sodium-hydroxide"
end

if data.raw.item["sodium-hidroxide"] then
  for i, recipe in pairs(data.raw.recipe) do
    for j, ingredient in pairs(recipe.ingredients) do
      if ingredient[1] == "sodium-hidroxide" then ingredient[1] = "sodium-hydroxide" end
      if ingredient.name == "sodium-hidroxide" then ingredient.name = "sodium-hydroxide" end
    end
  end
  data.raw.item["sodium-hidroxide"] = nil
end


if data.raw.recipe["forgesolderingtin"] then
  data.raw.recipe["forgesolderingtin"].result = "solder-alloy"
end

if data.raw.item["soldering-tin-plate"] then
  for i, recipe in pairs(data.raw.recipe) do
    for j, ingredient in pairs(recipe.ingredients) do
      if ingredient[1] == "soldering-tin-plate" then ingredient[1] = "solder-alloy" end
      if ingredient.name == "soldering-tin-plate" then ingredient.name = "solder-alloy" end
    end
  end
  data.raw.item["soldering-tin-plate"] = nil
end

-- Treefarm
if data.raw.fluid["liquid-nitrogen"] then
end

