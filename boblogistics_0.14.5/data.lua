if not bobmods then bobmods = {} end
if not bobmods.logistics then bobmods.logistics = {} end

bobmods.logistics.ExtremelyFastBelt = true
bobmods.logistics.RoboportRecipeUpdate = true
bobmods.logistics.FlyingRobotFrames = true
bobmods.logistics.RobotParts = true
bobmods.logistics.RobotRequirePrevious = true

bobmods.logistics.EnableVehicleGrids  = true

if bobmods and bobmods.config and bobmods.config.logistics then
  if bobmods.config.logistics.ExtremelyFastBelt ~= nil then
    bobmods.logistics.ExtremelyFastBelt = bobmods.config.logistics.ExtremelyFastBelt
  end
  if bobmods.config.logistics.RoboportRecipeUpdate ~= nil then
    bobmods.logistics.RoboportRecipeUpdate = bobmods.config.logistics.RoboportRecipeUpdate
  end
  if bobmods.config.logistics.FlyingRobotFrames ~= nil then
    bobmods.logistics.FlyingRobotFrames = bobmods.config.logistics.FlyingRobotFrames
  end
  if bobmods.config.logistics.RobotParts ~= nil then
    bobmods.logistics.RobotParts = bobmods.config.logistics.RobotParts
  end
  if bobmods.config.logistics.RobotRequirePrevious ~= nil then
    bobmods.logistics.RobotRequirePrevious = bobmods.config.logistics.RobotRequirePrevious
  end
end

if bobmods.config then
  if bobmods.config.EnableVehicleGrids ~= nil then
    bobmods.logistics.EnableVehicleGrids = bobmods.config.EnableVehicleGrids
  end
end


require("prototypes.category")
require("prototypes.styles")


require("prototypes.green-transport-belt")
if bobmods.logistics.ExtremelyFastBelt == true then
  require("prototypes.purple-transport-belt")
end

require("prototypes.inserter")

if bobmods.logistics.FlyingRobotFrames == true then
  require("prototypes.robot-frames")
end

if bobmods.logistics.RobotParts == true then
  require("prototypes.robot-parts")
end

require("prototypes.item.train")
require("prototypes.item.robots")
require("prototypes.item.roboport")
require("prototypes.item.roboport-parts")
require("prototypes.item.pipes")
require("prototypes.item.storage-tank")
require("prototypes.item.logistic-container")
require("prototypes.item.pump")

require("prototypes.entity.train")
require("prototypes.entity.robots")
require("prototypes.entity.roboport")
require("prototypes.entity.pipes")
require("prototypes.entity.storage-tank")
require("prototypes.entity.logistic-container")
require("prototypes.entity.pump")

require("prototypes.recipe.train-recipe")
require("prototypes.recipe.robots-recipe")
require("prototypes.recipe.roboport-recipe")
require("prototypes.recipe.roboport-parts-recipe")
require("prototypes.recipe.pipes-recipe")
require("prototypes.recipe.storage-tank-recipe")
require("prototypes.recipe.logistic-container-recipe")
require("prototypes.recipe.pump-recipe")


require("prototypes.technology")
require("prototypes.technology-logistics")
require("prototypes.technology-inserter")

require("prototypes.valves")

require("prototypes.equipment-grid")

if bobmods.logistics.EnableVehicleGrids then
  data.raw["locomotive"]["diesel-locomotive"].equipment_grid = "bob-diesel-locomotive"
  data.raw["cargo-wagon"]["cargo-wagon"].equipment_grid = "bob-cargo-wagon"
end

