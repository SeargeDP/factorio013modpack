if bobmods.config.DrainlessInserters == true then
  for index, inserter in pairs(data.raw.inserter) do
    inserter.energy_source.drain = "0W"
  end
end

if bobmods.config.DrainlessLaserTurrets == true then
  for index, turret in pairs(data.raw["electric-turret"]) do
    turret.energy_source.drain = "0W"
  end
end

if bobmods.config.InfiniteOre == true then
  for index, resource in pairs(data.raw.resource) do
    if not resource.infinite then resource.infinite = true end
    if not resource.minimum then resource.minimum = 35 end
    if not resource.normal then resource.normal = 350 end
  end
end

if bobmods.config.InventorySize then
  data.raw.player["player"].inventory_size = bobmods.config.InventorySize
end


