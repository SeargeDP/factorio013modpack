data:extend(
{
  {
    type = "item",
    name = "processed-nickel",
    icon = "__angelssmelting__/graphics/icons/processed-nickel.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-nickel",
    icon = "__angelssmelting__/graphics/icons/pellet-nickel.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-nickel",
    icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-nickel",
    icon = "__angelssmelting__/graphics/icons/molten-nickel.png",
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
    name = "angels-roll-nickel",
    icon = "__angelssmelting__/graphics/icons/roll-nickel.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)