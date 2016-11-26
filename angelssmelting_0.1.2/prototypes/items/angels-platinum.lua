data:extend(
{
  {
    type = "item",
    name = "processed-platinum",
    icon = "__angelssmelting__/graphics/icons/processed-platinum.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-platinum",
    icon = "__angelssmelting__/graphics/icons/pellet-platinum.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-platinum",
    icon = "__angelssmelting__/graphics/icons/ingot-platinum.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-platinum",
    icon = "__angelssmelting__/graphics/icons/molten-platinum.png",
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
    name = "angels-roll-platinum",
    icon = "__angelssmelting__/graphics/icons/roll-platinum.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "wire-coil",
    order = "a",
    stack_size = 200
  },
}
)