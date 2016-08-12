if not bobmods then bobmods = {} end
if not bobmods.modules then bobmods.modules = {} end

bobmods.modules.EnableGreenModules = false
bobmods.modules.EnableRawSpeedModules = false
bobmods.modules.EnableRawProductivityModules = false
bobmods.modules.EnableMergedModules = true
bobmods.modules.EnableGodModules = false
bobmods.modules.EnableProductivityLimitation = true

bobmods.modules.ProductivityHasSpeed = false
bobmods.modules.BeaconCanTransmitProductivity = false

-- Stats for the modules per level.
bobmods.modules.SpeedPerLevel = 0.2
bobmods.modules.PollutionPerLevel = 0.15
bobmods.modules.ConsumptionPerLevel = 0.1
bobmods.modules.ProductivityPerLevel = 0.05
-- Specifically for the Productivity modules.
bobmods.modules.SpeedProductivityPerLevel = 0.05
-- Specifically for the Polution creating modules.
bobmods.modules.PollutionCreatePerLevel = 0.5

-- Bonus stats for first module.
bobmods.modules.SpeedBonus = 0
bobmods.modules.PollutionBonus = 0
bobmods.modules.ConsumptionBonus = 0
bobmods.modules.ProductivityBonus = 0
-- Specifically for the Productivity modules.
bobmods.modules.SpeedProductivityBonus = 0.2
-- Specifically for the Polution creating modules.
bobmods.modules.PollutionCreateBonus = 0



if bobmods and bobmods.config and bobmods.config.modules then
  if bobmods.config.modules.EnableGreenModules ~= nil then
    bobmods.modules.EnableGreenModules = bobmods.config.modules.EnableGreenModules 
  end
  if bobmods.config.modules.EnableRawSpeedModules ~= nil then
    bobmods.modules.EnableRawSpeedModules = bobmods.config.modules.EnableRawSpeedModules 
  end
  if bobmods.config.modules.EnableRawProductivityModules ~= nil then
    bobmods.modules.EnableRawProductivityModules = bobmods.config.modules.EnableRawProductivityModules 
  end
  if bobmods.config.modules.EnableMergedModules ~= nil then
    bobmods.modules.EnableMergedModules = bobmods.config.modules.EnableMergedModules
  end
  if bobmods.config.modules.EnableGodModules ~= nil then
    bobmods.modules.EnableGodModules = bobmods.config.modules.EnableGodModules 
  end
  if bobmods.config.modules.EnableProductivityLimitation ~= nil then
    bobmods.modules.EnableProductivityLimitation = bobmods.config.modules.EnableProductivityLimitation 
  end

  if bobmods.config.modules.ProductivityHasSpeed ~= nil then
    bobmods.modules.ProductivityHasSpeed = bobmods.config.modules.ProductivityHasSpeed
  end
  if bobmods.config.modules.BeaconCanTransmitProductivity ~= nil then
    bobmods.modules.BeaconCanTransmitProductivity = bobmods.config.modules.BeaconCanTransmitProductivity
  end

  if bobmods.config.modules.SpeedPerLevel ~= nil then
    bobmods.modules.SpeedPerLevel = bobmods.config.modules.SpeedPerLevel 
  end
  if bobmods.config.modules.ConsumptionPerLevel ~= nil then
    bobmods.modules.ConsumptionPerLevel = bobmods.config.modules.ConsumptionPerLevel 
  end
  if bobmods.config.modules.PollutionPerLevel ~= nil then
    bobmods.modules.PollutionPerLevel = bobmods.config.modules.PollutionPerLevel 
  end
  if bobmods.config.modules.ProductivityPerLevel ~= nil then
    bobmods.modules.ProductivityPerLevel = bobmods.config.modules.ProductivityPerLevel 
  end
  if bobmods.config.modules.SpeedPerProductivityLevel ~= nil then
    bobmods.modules.SpeedProductivityPerLevel = bobmods.config.modules.SpeedPerProductivityLevel 
  end
  if bobmods.config.modules.PollutionCreatePerLevel ~= nil then
    bobmods.modules.PollutionCreatePerLevel = bobmods.config.modules.PollutionCreatePerLevel 
  end

  if bobmods.config.modules.SpeedBonus ~= nil then
    bobmods.modules.SpeedBonus = bobmods.config.modules.SpeedBonus 
  end
  if bobmods.config.modules.ConsumptionBonus ~= nil then
    bobmods.modules.ConsumptionBonus = bobmods.config.modules.ConsumptionBonus 
  end
  if bobmods.config.modules.PollutionBonus ~= nil then
    bobmods.modules.PollutionBonus = bobmods.config.modules.PollutionBonus 
  end
  if bobmods.config.modules.ProductivityBonus ~= nil then
    bobmods.modules.ProductivityBonus = bobmods.config.modules.ProductivityBonus 
  end
  if bobmods.config.modules.ProductivitySpeedBonus ~= nil then
    bobmods.modules.SpeedProductivityBonus = bobmods.config.modules.ProductivitySpeedBonus 
  end
  if bobmods.config.modules.PollutionCreateBonus ~= nil then
    bobmods.modules.PollutionCreateBonus = bobmods.config.modules.PollutionCreateBonus 
  end
end



require("prototypes.category")
require("prototypes.lab")
require("prototypes.beacon")

require("prototypes.item.module")
require("prototypes.item.electronics")

require("prototypes.recipe.module")
require("prototypes.recipe.electronics")

require("prototypes.technology.module")


if bobmods.modules.EnableMergedModules == true or
  bobmods.modules.EnableGreenModules == true or
  bobmods.modules.EnableRawSpeedModules == true or
  bobmods.modules.EnableRawProductivityModules == true or
  bobmods.modules.EnableGodModules == true
then
  require("prototypes.technology.module-merged")
end


if bobmods.modules.EnableRawSpeedModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.item.module-raw-speed")
  require("prototypes.recipe.module-raw-speed")
  require("prototypes.technology.module-raw-speed")
end

if bobmods.modules.EnableGreenModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.item.module-green")
  require("prototypes.recipe.module-green")
  require("prototypes.technology.module-green")
end

if bobmods.modules.EnableRawProductivityModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.item.module-raw-productivity")
  require("prototypes.recipe.module-raw-productivity")
  require("prototypes.technology.module-raw-productivity")
end


if bobmods.modules.EnableGodModules == true then
  require("prototypes.item.module-god")
  require("prototypes.recipe.module-god")
  require("prototypes.technology.module-god")
end


if bobmods.modules.EnableProductivityLimitation == true then
  for i, module in pairs(data.raw.module) do
    if module.effect.productivity then
      module.limitation = productivitymodulelimitation()
    end
  end
end


