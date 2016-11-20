if not bobmods then bobmods = {} end
if not bobmods.warfare then bobmods.warfare = {} end

bobmods.warfare.TankCannonResearch = true
bobmods.warfare.FlyingRobotFrames = true
bobmods.warfare.RobotParts = true
bobmods.warfare.RobotRequirePrevious = true
bobmods.warfare.RobotUpdate = true
bobmods.warfare.EnableVehicleGrids  = true


if bobmods.config and bobmods.config.warfare then
  if bobmods.config.warfare.TankCannonResearch ~= nil then
    bobmods.warfare.TankCannonResearch = bobmods.config.warfare.TankCannonResearch
  end
  if bobmods.config.warfare.RobotUpdate ~= nil then
    bobmods.warfare.RobotUpdate = bobmods.config.warfare.RobotUpdate
  end
end


if bobmods.config and bobmods.config.logistics and bobmods.config.logistics.FlyingRobotFrames ~= nil then
  bobmods.warfare.FlyingRobotFrames = bobmods.config.logistics.FlyingRobotFrames
elseif bobmods.logistics and bobmods.logistics.FlyingRobotFrames ~= nil then
  bobmods.warfare.FlyingRobotFrames = bobmods.logistics.FlyingRobotFrames
end

if bobmods.config and bobmods.config.logistics and bobmods.config.logistics.RobotParts ~= nil then
  bobmods.warfare.RobotParts = bobmods.config.logistics.RobotParts
elseif bobmods.logistics and bobmods.logistics.RobotParts ~= nil then
  bobmods.warfare.RobotParts = bobmods.logistics.RobotParts
end

if bobmods.config and bobmods.config.logistics and bobmods.config.logistics.RobotRequirePrevious ~= nil then
  bobmods.warfare.RobotRequirePrevious = bobmods.config.logistics.RobotRequirePrevious
elseif bobmods.logistics and bobmods.logistics.RobotRequirePrevious ~= nil then
  bobmods.warfare.RobotRequirePrevious = bobmods.logistics.RobotRequirePrevious
end

if bobmods.config then
  if bobmods.config.EnableVehicleGrids ~= nil then
    bobmods.warfare.EnableVehicleGrids = bobmods.config.EnableVehicleGrids
  end
end


require("prototypes.damage-type")
require("prototypes.category")


require("prototypes.item.fluid")
require("prototypes.item.parts")
require("prototypes.item.gun")
require("prototypes.item.ammo")
require("prototypes.item.mine")
require("prototypes.item.armor")
require("prototypes.item.drone")
require("prototypes.item.wall")
require("prototypes.item.equipment")
require("prototypes.item.turrets")
require("prototypes.item.tank")
require("prototypes.item.radar")

require("prototypes.recipe.fluid-recipe")
require("prototypes.recipe.parts-recipe")
require("prototypes.recipe.gun-recipe")
require("prototypes.recipe.ammo-recipe")
require("prototypes.recipe.mine-recipe")
require("prototypes.recipe.armor-recipe")
require("prototypes.recipe.drone")
require("prototypes.recipe.wall")
require("prototypes.recipe.equipment")
require("prototypes.recipe.turrets")
require("prototypes.recipe.tank")
require("prototypes.recipe.radar-recipe")

require("prototypes.entity.effects")
require("prototypes.entity.projectiles")
require("prototypes.entity.mine")
require("prototypes.entity.drone")
require("prototypes.entity.wall")
require("prototypes.entity.turrets")
require("prototypes.entity.tank")
require("prototypes.entity.radar")

require("prototypes.equipment.equipment")
require("prototypes.equipment.equipment-grid")

require("prototypes.technology.technology")
require("prototypes.technology.gun")
require("prototypes.technology.ammo")
require("prototypes.technology.armor")
require("prototypes.technology.mine")
require("prototypes.technology.drone")
require("prototypes.technology.wall")
require("prototypes.technology.equipment")
require("prototypes.technology.laser-rifle-upgrades")
require("prototypes.technology.turrets")
require("prototypes.technology.sniper-turret-upgrades")
require("prototypes.technology.rocket-upgrades")
require("prototypes.technology.tank")
require("prototypes.technology.radar")


if bobmods.warfare.RobotUpdate == true then
  require("prototypes.robots")
  if bobmods.warfare.RobotParts == true then
    require("prototypes.robot-parts")
  end
end



if bobmods.warfare.TankCannonResearch == true then
  require("prototypes.technology.tank-cannon-upgrades")
  require("prototypes.technology.tank-artillery-upgrades")
end

if bobmods.warfare.EnableVehicleGrids then
  data.raw.car.car.equipment_grid = "bob-car"
  data.raw.car.tank.equipment_grid = "bob-tank"
end
