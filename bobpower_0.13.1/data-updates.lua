require("prototypes.recipe.accumulators-updates")
require("prototypes.recipe.boilers-updates")
require("prototypes.recipe.poles-updates")
require("prototypes.recipe.solar-panels-updates")
require("prototypes.recipe.steam-engines-updates")

require("prototypes.technology.technology-updates")


if bobmods.config and bobmods.config.power then
  if bobmods.config.power.boiler1 then
    bobmods.lib.table_merge(data.raw["boiler"]["boiler"], bobmods.config.power.boiler1)
  end
  if bobmods.config.power.boiler2 then
    bobmods.lib.table_merge(data.raw["boiler"]["boiler-2"], bobmods.config.power.boiler2)
  end
  if bobmods.config.power.boiler3 then
    bobmods.lib.table_merge(data.raw["boiler"]["boiler-3"], bobmods.config.power.boiler3)
  end
  if bobmods.config.power.boiler4 then
    bobmods.lib.table_merge(data.raw["boiler"]["boiler-4"], bobmods.config.power.boiler4)
  end

  if bobmods.config.power.steamengine1 then
    bobmods.lib.table_merge(data.raw["generator"]["steam-engine"], bobmods.config.power.steamengine1)
  end
  if bobmods.config.power.steamengine2 then
    bobmods.lib.table_merge(data.raw["generator"]["steam-engine-2"], bobmods.config.power.steamengine2)
  end
  if bobmods.config.power.steamengine3 then
    bobmods.lib.table_merge(data.raw["generator"]["steam-engine-3"], bobmods.config.power.steamengine3)
  end
end

