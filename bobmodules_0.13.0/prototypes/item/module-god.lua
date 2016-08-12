data:extend(
{
  {
    type = "module",
    name = "god-module-1",
    icon = "__bobmodules__/graphics/icons/god-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "god-module",
    category = "god",
    tier = 1,
    order = "m-g-1",
    stack_size = 100,
    default_request_amount = 10,
    effect =
    {
      productivity = {bonus = 2 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -2 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -2 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 2 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    },
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },

  {
    type = "module",
    name = "god-module-2",
    icon = "__bobmodules__/graphics/icons/god-module-1.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "god-module",
    category = "god",
    tier = 2,
    order = "m-g-2",
    stack_size = 100,
    default_request_amount = 10,
    effect =
    {
      productivity = {bonus = 4 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -4 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -4 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 4 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    },
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },

  {
    type = "module",
    name = "god-module-3",
    icon = "__bobmodules__/graphics/icons/god-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "god-module",
    category = "god",
    tier = 3,
    order = "m-g-3",
    stack_size = 100,
    default_request_amount = 10,
    effect =
    {
      productivity = {bonus = 6 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -6 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -6 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 6 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    },
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },

  {
    type = "module",
    name = "god-module-4",
    icon = "__bobmodules__/graphics/icons/god-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "god-module",
    category = "god",
    tier = 4,
    order = "m-g-4",
    stack_size = 100,
    default_request_amount = 10,
    effect =
    {
      productivity = {bonus = 8 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -8 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -8 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 8 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    },
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },

  {
    type = "module",
    name = "god-module-5",
    icon = "__bobmodules__/graphics/icons/god-module-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "god-module",
    category = "god",
    tier = 5,
    order = "m-g-5",
    stack_size = 100,
    default_request_amount = 10,
    effect =
    {
      productivity = {bonus = 10 * bobmods.modules.ProductivityPerLevel + bobmods.modules.ProductivityBonus},
      pollution = {bonus = -10 * bobmods.modules.PollutionPerLevel - bobmods.modules.PollutionBonus},
      consumption = {bonus = -10 * bobmods.modules.ConsumptionPerLevel - bobmods.modules.ConsumptionBonus},
      speed = {bonus = 10 * bobmods.modules.SpeedPerLevel + bobmods.modules.SpeedBonus}
    },
    limitation_message_key = "production-module-usable-only-on-intermeidates"
  },
}
)


