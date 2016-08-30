data:extend(
{
--TIER 1
  {
    type = "item",
    name = "angels-ore7-crushed",
    icon = "__angelsrefining__/graphics/icons/angels-ore7-crushed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-a",
    order = "g[angels-ore7-crushed]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-ore8-crushed",
    icon = "__angelsrefining__/graphics/icons/angels-ore8-crushed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-a",
    order = "h[angels-ore8-crushed]",
    stack_size = 200
  },
--TIER 2
  {
    type = "item",
    name = "angels-ore7-chunk",
    icon = "__angelsrefining__/graphics/icons/angels-ore7-chunk.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-b",
    order = "g[angels-ore7-chunk]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-ore8-chunk",
    icon = "__angelsrefining__/graphics/icons/angels-ore8-chunk.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-b",
    order = "h[angels-ore8-chunk]",
    stack_size = 200
  },
--TIER 3
  {
    type = "item",
    name = "angels-ore7-crystal",
    icon = "__angelsrefining__/graphics/icons/angels-ore7-crystal.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-c",
    order = "g[angels-ore7-crystal]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-ore8-crystal",
    icon = "__angelsrefining__/graphics/icons/angels-ore8-crystal.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-c",
    order = "h[angels-ore8-crystal]",
    stack_size = 200
  },
--TIER 4
  {
    type = "item",
    name = "angels-ore7-pure",
    icon = "__angelsrefining__/graphics/icons/angels-ore7-pure.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-d",
    order = "g[angels-ore7-pure]",
    stack_size = 200
  },
  {
    type = "item",
    name = "angels-ore8-pure",
    icon = "__angelsrefining__/graphics/icons/angels-ore8-pure.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing-d",
    order = "h[angels-ore8-pure]",
    stack_size = 200
  },
--GEODEN
  {
    type = "item",
    name = "geode-blue",
    icon = "__angelsrefining__/graphics/icons/geode-blue.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "item",
    name = "geode-cyan",
    icon = "__angelsrefining__/graphics/icons/geode-cyan.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "item",
    name = "geode-lightgreen",
    icon = "__angelsrefining__/graphics/icons/geode-lightgreen.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "item",
    name = "geode-purple",
    icon = "__angelsrefining__/graphics/icons/geode-purple.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "item",
    name = "geode-red",
    icon = "__angelsrefining__/graphics/icons/geode-red.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "item",
    name = "geode-yellow",
    icon = "__angelsrefining__/graphics/icons/geode-yellow.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "geode-processing",
    stack_size = 200
  },
  {
    type = "fluid",
    name = "crystal-slurry",
    icon = "__angelsrefining__/graphics/icons/crystal-slurry.png",
	subgroup = "geode-processing",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "crystal-seedling",
    icon = "__angelsrefining__/graphics/icons/crystal-seedling.png",
	subgroup = "geode-processing",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
  {
    type = "fluid",
    name = "crystal-matrix",
    icon = "__angelsrefining__/graphics/icons/crystal-matrix.png",
	subgroup = "geode-processing",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
  },
}
)