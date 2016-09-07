data.raw.recipe["steel-plate"].ingredients = {{"iron-plate", 5}}

if data.raw.item["raw-speed-module-1"] then
data.raw["module"]["raw-speed-module-1"].effect = { speed = {bonus = .75 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-2"].effect = { speed = {bonus = 1.5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-3"].effect = { speed = {bonus = 2.25 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-4"].effect = { speed = {bonus = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-5"].effect = { speed = {bonus = 3.75 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-6"].effect = { speed = {bonus = 4.5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-7"].effect = { speed = {bonus = 5.25 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
data.raw["module"]["raw-speed-module-8"].effect = { speed = {bonus = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}}
end

if data.raw.item["god-module-1"] then
data.raw["module"]["god-module-1"].effect = 
    {
      productivity = {bonus = 1 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -1 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = 1 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 1 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    }
data.raw["module"]["god-module-2"].effect = 
    {
      productivity = {bonus = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = 2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    }
data.raw["module"]["god-module-3"].effect = 
    {
      productivity = {bonus = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = 3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 3 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    }
data.raw["module"]["god-module-4"].effect = 
    {
      productivity = {bonus = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = 4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    }
data.raw["module"]["god-module-5"].effect = 
    {
      productivity = {bonus = 5 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -5 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = 5 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 5 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    }
end


if data.raw.item["raw-productivity-module-1"] then
data.raw["module"]["raw-productivity-module-1"].effect = { productivity = {bonus = .75 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-2"].effect = { productivity = {bonus = 1.5 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-3"].effect = { productivity = {bonus = 2.25 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-4"].effect = { productivity = {bonus = 3 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-5"].effect = { productivity = {bonus = 3.75 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-6"].effect = { productivity = {bonus = 4.5 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-7"].effect = { productivity = {bonus = 5.25 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
data.raw["module"]["raw-productivity-module-8"].effect = { productivity = {bonus = 6 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus}}
end


if data.raw.item["green-module-1"] then
data.raw["module"]["green-module-1"].effect = 
    {
      pollution = {bonus = -0.75 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -0.75 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-2"].effect = 
    {
      pollution = {bonus = -1.5 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -1.5 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-3"].effect = 
    {
      pollution = {bonus = -2.25 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -2.25 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-4"].effect = 
    {
      pollution = {bonus = -3 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -3 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-5"].effect = 
    {
      pollution = {bonus = -3.75 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -3.75 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-6"].effect = 
    {
      pollution = {bonus = -4.5 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -4.5 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-7"].effect = 
    {
      pollution = {bonus = -5.25 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -5.25 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
data.raw["module"]["green-module-8"].effect = 
    {
      pollution = {bonus = -6 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -6 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus}
    }
end

data.raw["recipe"]["lithium-ion-battery"].energy_required = 5 
data.raw["recipe"]["silver-zinc-battery"].energy_required = 5
data.raw["recipe"]["silver-from-lead"].ingredients = 
    {
      {type = "item", name = "lead-oxide", amount = 7},
      {type = "item", name = "carbon", amount = 3},
      {type = "item", name = "nickel-plate", amount = 2},
    }
data.raw["rocket-silo"]["rocket-silo"].ingredient_count = 4