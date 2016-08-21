require("prototypes.recipe.roboport-recipe-updates")
require("prototypes.recipe.robots-recipe-updates")
require("prototypes.recipe.inserter-recipe-updates")
require("prototypes.recipe.belt-recipe-updates")
require("prototypes.recipe.storage-tank-recipe-updates")
require("prototypes.recipe.train-recipe-updates")
require("prototypes.recipe.pump-recipe-updates")

require("prototypes.technology-updates")
require("prototypes.productivity-limitations")


for i, pipe in pairs(data.raw["pipe-to-ground"]) do
  table.insert(pipe.flags,"fast-replaceable-no-build-while-moving")
end

if bobmods.config and bobmods.config.logistics then
  if bobmods.config.logistics.logisticrobot1 then
    bobmods.lib.table_merge(data.raw["logistic-robot"]["logistic-robot"], bobmods.config.logistics.logisticrobot1)
  end
  if bobmods.config.logistics.logisticrobot2 then
    bobmods.lib.table_merge(data.raw["logistic-robot"]["bob-logistic-robot-2"], bobmods.config.logistics.logisticrobot2)
  end
  if bobmods.config.logistics.logisticrobot3 then
    bobmods.lib.table_merge(data.raw["logistic-robot"]["bob-logistic-robot-3"], bobmods.config.logistics.logisticrobot3)
  end
  if bobmods.config.logistics.logisticrobot4 then
    bobmods.lib.table_merge(data.raw["logistic-robot"]["bob-logistic-robot-4"], bobmods.config.logistics.logisticrobot4)
  end

  if bobmods.config.logistics.constructionrobot1 then
    bobmods.lib.table_merge(data.raw["construction-robot"]["construction-robot"], bobmods.config.logistics.constructionrobot1)
  end
  if bobmods.config.logistics.constructionrobot2 then
    bobmods.lib.table_merge(data.raw["construction-robot"]["bob-construction-robot-2"], bobmods.config.logistics.constructionrobot2)
  end
  if bobmods.config.logistics.constructionrobot3 then
    bobmods.lib.table_merge(data.raw["construction-robot"]["bob-construction-robot-3"], bobmods.config.logistics.constructionrobot3)
  end
  if bobmods.config.logistics.constructionrobot4 then
    bobmods.lib.table_merge(data.raw["construction-robot"]["bob-construction-robot-4"], bobmods.config.logistics.constructionrobot4)
  end
end


if data.raw["damage-type"]["bob-pierce"] then
  table.insert(data.raw.locomotive["diesel-locomotive"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["diesel-locomotive-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon-2"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["diesel-locomotive-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})
  table.insert(data.raw["cargo-wagon"]["cargo-wagon-3"].resistances, {type = "bob-pierce", decrease = 5, percent = 25})

  table.insert(data.raw.locomotive["armoured-diesel-locomotive"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
  table.insert(data.raw["cargo-wagon"]["armoured-cargo-wagon"].resistances, {type = "bob-pierce", decrease = 15, percent = 90})
end

