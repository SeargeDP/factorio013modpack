data:extend(
{
  {
    type = "item",
    name = "processed-gold",
    icon = "__angelssmelting__/graphics/icons/processed-gold.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-gold",
    icon = "__angelssmelting__/graphics/icons/pellet-gold.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-gold",
    icon = "__angelssmelting__/graphics/icons/ingot-gold.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-gold",
    icon = "__angelssmelting__/graphics/icons/molten-gold.png",
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
    name = "angels-roll-gold",
    icon = "__angelssmelting__/graphics/icons/roll-gold.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-gold",
    icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "wire-coil",
    order = "a",
    stack_size = 200
  },
}
)