data:extend(
{
  {
    type = "recipe",
    name = "medium-pipe-to-ground", -- length 30
	energy_required = 10,
    ingredients =
    {
      {"pipe", 30},
      {"iron-plate", 20}
    },
    result_count = 2,
    result = "medium-pipe-to-ground",
	enabled = "false"
  },
  {
    type = "recipe",
    name = "long-pipe-to-ground", -- length 50
	energy_required = 30, --time
	category = "advanced-crafting",
    ingredients =
    {
      {"pipe", 50},
      {"steel-plate", 30},
	  {"plastic-bar", 30}
    },
    result_count = 2,
    result = "long-pipe-to-ground",
	enabled = "false"
  },
  {
    type = "recipe",
    name = "ultra-pipe-to-ground", --length 120
	energy_required = 60, --time s
	category = "advanced-crafting",
    ingredients =
    {
      {"long-pipe-to-ground", 4},
      {"steel-plate", 4},
	  {"plastic-bar", 4},
	  {"small-pump",1}
    },
    result_count = 2,
    result = "ultra-pipe-to-ground",
	enabled = "false"
  },
  {
    type = "recipe",
    name = "continental-pipe-to-ground", --length 255
	energy_required = 120, --time
	category = "crafting-with-fluid",
    ingredients =
    {
      {"ultra-pipe-to-ground", 4},
      {"steel-plate", 20},
	  {"plastic-bar", 20},
	  {type="fluid", name= "lubricant", amount = 5}
    },
    result_count = 2,
    result = "continental-pipe-to-ground",
	enabled = "false"
  }
})