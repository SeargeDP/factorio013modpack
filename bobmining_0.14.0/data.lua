if not bobmods then bobmods = {} end
if not bobmods.mining then bobmods.mining = {} end

data:extend(
{
  {
    type = "item-subgroup",
    name = "bob-tool",
    group = "production",
    order = "a-1",
  },
}
)

bobmods.mining.MiningDrills = true
bobmods.mining.AreaDrills = true
bobmods.mining.Pumpjacks = true
bobmods.mining.MiningAxes = true
bobmods.mining.WaterMiners = true

if bobmods.config and bobmods.config.mining then
  if bobmods.config.mining.MiningDrills ~= nil then
    bobmods.mining.MiningDrills = bobmods.config.mining.MiningDrills
  end
  if bobmods.config.mining.AreaDrills ~= nil then
    bobmods.mining.AreaDrills = bobmods.config.mining.AreaDrills
  end
  if bobmods.config.mining.Pumpjacks ~= nil then
    bobmods.mining.Pumpjacks = bobmods.config.mining.Pumpjacks
  end
  if bobmods.config.mining.MiningAxes ~= nil then
    bobmods.mining.MiningAxes = bobmods.config.mining.MiningAxes
  end
  if bobmods.config.mining.WaterMiners ~= nil then
    bobmods.mining.WaterMiners = bobmods.config.mining.WaterMiners
  end
end


if bobmods.mining.MiningDrills == true then
  require("prototypes.drills")
end

if bobmods.mining.AreaDrills == true then
  require("prototypes.areadrills")
end

if bobmods.mining.Pumpjacks == true then
  require("prototypes.pumpjacks")
end

if bobmods.mining.MiningAxes == true then
  require("prototypes.axes")
end

if bobmods.mining.WaterMiners == true and data.raw["resource-category"]["water"] then
  require("prototypes.water-miner")
end

