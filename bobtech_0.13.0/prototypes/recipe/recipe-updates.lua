local addengine = false
if data.raw.item["silicon-nitride"] then
  bobmods.lib.recipe.add_ingredient("science-pack-4", {"silicon-nitride", 1})
else
  addengine = true
end

if data.raw.item["lithium-ion-battery"] then
  bobmods.lib.recipe.add_ingredient("science-pack-4", {"lithium-ion-battery", 1})
else
  addengine = true
end

if addengine then
  bobmods.lib.recipe.add_ingredient("science-pack-4", {"electric-engine-unit", 1})
end

