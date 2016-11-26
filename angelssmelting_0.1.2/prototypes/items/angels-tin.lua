data:extend(
{
  {
    type = "item",
    name = "processed-tin",
    icon = "__angelssmelting__/graphics/icons/processed-tin.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-tin",
    icon = "__angelssmelting__/graphics/icons/pellet-tin.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-tin",
    icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-tin",
    icon = "__angelssmelting__/graphics/icons/molten-tin.png",
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
    name = "angels-plate-tin",
    icon = "__angelssmelting__/graphics/icons/plate-tin.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-plate",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-wire-coil-tin",
    icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "wire-coil",
    order = "a",
    stack_size = 200
  },
}
)