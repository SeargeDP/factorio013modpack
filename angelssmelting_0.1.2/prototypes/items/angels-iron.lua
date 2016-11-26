data:extend(
{
  {
    type = "item",
    name = "processed-iron",
    icon = "__angelssmelting__/graphics/icons/processed-iron.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-iron",
    icon = "__angelssmelting__/graphics/icons/pellet-iron.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-steel",
    icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-iron",
    icon = "__angelssmelting__/graphics/icons/molten-iron.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 0.1, g = 0.1, b = 0.1},
    flow_color = {r = 0.1, g = 0.1, b = 0.1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "liquid-molten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-steel.png",
	default_temperature = 100,
    heat_capacity = "0KJ",
    base_color = {r = 0.1, g = 0.1, b = 0.1},
    flow_color = {r = 0.1, g = 0.1, b = 0.1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "item",
    name = "angels-plate-iron",
    icon = "__angelssmelting__/graphics/icons/plate-iron.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-plate",
    order = "a",
    stack_size = 200
  },
}
)