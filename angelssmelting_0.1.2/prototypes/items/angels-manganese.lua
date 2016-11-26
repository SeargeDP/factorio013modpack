data:extend(
{
  {
    type = "item",
    name = "processed-manganese",
    icon = "__angelssmelting__/graphics/icons/processed-manganese.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-manganese",
    icon = "__angelssmelting__/graphics/icons/pellet-manganese.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-manganese-sulfate",
    icon = "__angelssmelting__/graphics/icons/solid-manganese-sulfate.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-manganese",
    icon = "__angelssmelting__/graphics/icons/ingot-manganese.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-manganese",
    icon = "__angelssmelting__/graphics/icons/molten-manganese.png",
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
    name = "angels-roll-manganese",
    icon = "__angelssmelting__/graphics/icons/roll-manganese.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)