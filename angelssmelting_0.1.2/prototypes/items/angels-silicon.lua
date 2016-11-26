data:extend(
{
  {
    type = "item",
    name = "processed-silica",
    icon = "__angelssmelting__/graphics/icons/processed-silica.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-silica",
    icon = "__angelssmelting__/graphics/icons/pellet-silica.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-silicon",
    icon = "__angelssmelting__/graphics/icons/ingot-silicon.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-silicon",
    icon = "__angelssmelting__/graphics/icons/molten-silicon.png",
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
    name = "angels-roll-silicon",
    icon = "__angelssmelting__/graphics/icons/roll-silicon.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)