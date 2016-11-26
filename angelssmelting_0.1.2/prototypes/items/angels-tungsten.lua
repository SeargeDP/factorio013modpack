data:extend(
{
  {
    type = "item",
    name = "processed-tungsten",
    icon = "__angelssmelting__/graphics/icons/processed-tungsten.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-tungsten",
    icon = "__angelssmelting__/graphics/icons/pellet-tungsten.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-ammonium-paratungstate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-paratungstate.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-tungsten-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-tungsten",
    icon = "__angelssmelting__/graphics/icons/ingot-tungsten.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-tungsten",
    icon = "__angelssmelting__/graphics/icons/molten-tungsten.png",
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
    name = "angels-roll-tungsten",
    icon = "__angelssmelting__/graphics/icons/roll-tungsten.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)