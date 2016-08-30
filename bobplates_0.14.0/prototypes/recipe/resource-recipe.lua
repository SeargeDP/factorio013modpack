data:extend(
{
  {
    type = "recipe",
    name = "carbon",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="water", amount=0.5},
      {type="item", name="coal", amount=1},
    },
    result = "carbon",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "bob-resin-wood",
    category = "crafting-machine",
    energy_required = 1,
    ingredients =
    {
      { "raw-wood", 1},
    },
    result = "resin",
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=1},
    },
    result = "resin",
  },

  {
    type = "recipe",
    name = "bob-rubber",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients =
    {
      { "resin", 1},
    },
    result = "rubber",
  },

  {
    type = "recipe",
    name = "quartz-glass",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients =
    {
      {"quartz", 1},
    },
    result = "glass"
  },

  {
    type = "recipe",
    name = "silicon-wafer",
    category = "crafting-machine",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"silicon", 1},
    },
    result = "silicon-wafer",
    result_count = 8
  },

  {
    type = "recipe",
    name = "silicon-powder",
    category = "crafting-machine",
    subgroup = "bob-resource",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"silicon", 1}
    },
    result = "silicon-powder",
  },

  {
    type = "recipe",
    name = "silicon-nitride",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    enabled = "false",
    energy_required = 7.5,
    ingredients =
    {
      {"silicon-powder", 1},
      {type="fluid", name="nitrogen", amount=1.25},
    },
    result = "silicon-nitride",
  },

  {
    type = "recipe",
    name = "lithium-cobalt-oxide",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {"lithium", 1},
      {"cobalt-oxide", 1},
    },
    result = "lithium-cobalt-oxide",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "synthetic-wood",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=1}
    },
    result = "synthetic-wood",
    result_count = 2,
  },


  {
    type = "recipe",
    name = "gas-canister",
    category = "crafting",
    subgroup = "bob-intermediates",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 1},
    },
    result ="gas-canister",
    result_count = 5,
  },

  {
    type = "recipe",
    name = "empty-canister",
    category = "crafting",
    subgroup = "bob-intermediates",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1},
      {"plastic-bar", 1},
    },
    result ="empty-canister",
    result_count = 5,
  },


  {
    type = "recipe",
    name = "polishing-compound",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="alumina", amount=1},
      {type="fluid", name="light-oil", amount=1.5},
    },
    result="polishing-compound",
    result_count = 2
  },


  {
    type = "recipe",
    name = "solid-fuel-from-hydrogen",
    category = "chemistry",
    energy_required = 3,
    ingredients =
    {
      {type="fluid", name="hydrogen", amount=25},
      {type="item", name="coal", amount=1}
    },
    results=
    {
      {type="item", name="solid-fuel", amount=1}
    },
    icon = "__bobplates__/graphics/icons/solid-fuel-from-hydrogen.png",
    subgroup = "bob-resource-chemical",
    enabled = "false",
    order = "b[fluid-chemistry]-c[solid-fuel-from-hydrogen]"
  },
}
)

