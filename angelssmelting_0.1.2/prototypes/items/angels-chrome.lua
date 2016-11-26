data:extend(
{
  {
    type = "item",
    name = "processed-chrome",
    icon = "__angelssmelting__/graphics/icons/processed-chrome.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-processed",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "pellet-chrome",
    icon = "__angelssmelting__/graphics/icons/pellet-chrome.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-pellets",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "solid-chrome-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-chrome-oxide.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-intermediate",
    order = "a",
    stack_size = 200
  },
  {
    type = "item",
    name = "ingot-chrome",
    icon = "__angelssmelting__/graphics/icons/ingot-chrome.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "smelting-ingots",
    order = "a",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "liquid-molten-chrome",
    icon = "__angelssmelting__/graphics/icons/molten-chrome.png",
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
    name = "angels-roll-chrome",
    icon = "__angelssmelting__/graphics/icons/roll-chrome.png",
    flags = {"goes-to-main-inventory"},
    --subgroup = "metal-rolls",
    order = "a",
    stack_size = 200
  },
}
)