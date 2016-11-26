data:extend(
{
--SOLDER
  {
    type = "fluid",
    name = "liquid-molten-solder-1",
    icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
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
    name = "liquid-molten-solder-2",
    icon = "__angelssmelting__/graphics/icons/molten-solder-2.png",
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
    name = "liquid-molten-solder-3",
    icon = "__angelssmelting__/graphics/icons/molten-solder-3.png",
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
    name = "angels-solder-1",
    icon = "__angelssmelting__/graphics/icons/solder-1.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "solder",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-solder-2",
    icon = "__angelssmelting__/graphics/icons/solder-2.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "solder",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-solder-3",
    icon = "__angelssmelting__/graphics/icons/solder-3.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "solder",
    order = "a",
    stack_size = 200
  },
}
)