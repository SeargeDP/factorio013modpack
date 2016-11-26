data:extend(
{
  {
    type = "item",
    name = "processed-cobalt",
    icon = "__angelssmelting__/graphics/icons/processed-cobalt.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-cobalt",
    icon = "__angelssmelting__/graphics/icons/pellet-cobalt.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-cobalt",
    icon = "__angelssmelting__/graphics/icons/ingot-cobalt.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-cobalt",
    icon = "__angelssmelting__/graphics/icons/molten-cobalt.png",
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
    name = "angels-roll-cobalt",
    icon = "__angelssmelting__/graphics/icons/roll-cobalt.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)