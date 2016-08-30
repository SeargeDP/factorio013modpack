data:extend(
{
  {
    type = "recipe",
    name = "bob-fertiliser",
    category = "chemistry",
    energy_required = 3,
    enabled = "false",
    ingredients =
    {
      {type = "fluid", name = "petroleum-gas", amount = 1},
      {type = "item", name = "sulfur", amount = 1},
      {type = "item", name = "stone", amount = 1}
    },
    result = "fertiliser"
  },

  {
    type = "recipe",
    name = "bob-seedling",
    main_product = "seedling",
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "raw-wood", amount = 1}
    },
    results =
    {
      {type = "item", name = "seedling", amount_min = 1, amount_max = 5, probability = 0.5}
    },
  },


  {
    type = "recipe",
    name = "bob-greenhouse",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "iron-plate", amount = 5},
      {type = "item", name = "copper-plate", amount = 4},
      {type = "item", name = "stone", amount = 2},
    },
    result = "bob-greenhouse"
  },


  {
    type = "recipe",
    name = "bob-basic-greenhouse-cycle",
    icon = "__bobgreenhouse__/graphics/icons/seedling.png",
    subgroup = "bob-greenhouse-items",
    order = "g[greenhouse-cycle-1]",
    category = "bob-greenhouse",
    energy_required = 60,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "seedling", amount = 10},
      {type = "fluid", name = "water", amount = 2}
    },
    results =
    {
      {type = "item", name = "raw-wood", amount_min = 5, amount_max = 15},
      {type = "item", name = "seedling", amount_min = 2, amount_max = 6}
    },
  },

  {
    type = "recipe",
    name = "bob-advanced-greenhouse-cycle",
    icon = "__bobgreenhouse__/graphics/icons/seedling.png",
    subgroup = "bob-greenhouse-items",
    order = "g[greenhouse-cycle-2]",
    category = "bob-greenhouse",
    energy_required = 45,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "seedling", amount = 10},
      {type = "fluid", name = "water", amount = 2},
      {type = "item", name = "fertiliser", amount = 5}
    },
    results =
    {
      {type = "item", name = "raw-wood", amount_min = 10, amount_max = 50},
      {type = "item", name = "seedling", amount_min = 5, amount_max = 10}
    },
  },
}
)

