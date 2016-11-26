data:extend(
{
  {
    type = "item",
    name = "processed-lead",
    icon = "__angelssmelting__/graphics/icons/processed-lead.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-lead",
    icon = "__angelssmelting__/graphics/icons/pellet-lead.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-lead-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-lead",
    icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-lead",
    icon = "__angelssmelting__/graphics/icons/molten-lead.png",
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
    name = "angels-plate-lead",
    icon = "__angelssmelting__/graphics/icons/plate-lead.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-plate",
    order = "a",
    stack_size = 200
  },
}
)