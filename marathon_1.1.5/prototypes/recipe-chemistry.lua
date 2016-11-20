data:extend({
  {
    type = "recipe",
    category = "chemistry",
    name = "sulfur",
    enabled = false,

    energy_required = 1,
    ingredients = {
      {type = "fluid", name = "water", amount = 3},
      {type = "fluid", name = "petroleum-gas", amount = 3},
    },
    results = {{type = "item", name = "sulfur", amount = 1}},
  },
  {
    type = "recipe",
    category = "chemistry",
    subgroup = "fluid-recipes",
    name = "sulfuric-acid",
    enabled = false,

    energy_required = 1,
    ingredients = {
      {type = "item", name = "sulfur", amount = 5},
      {type = "item", name = "iron-plate", amount = 2},
      {type = "fluid", name = "water", amount = 10},
    },
    results = {{type = "fluid", name = "sulfuric-acid", amount = 2}},
  },
  {
    type = "recipe",
    category = "chemistry",
    name = "battery",
    enabled = false,

    energy_required = 6,
    ingredients = {
      {type = "fluid", name = "sulfuric-acid", amount = 3},
      {type = "item", name = "iron-plate", amount = 10},
      {type = "item", name = "copper-plate", amount = 10},
    },
    results = {{type = "item", name = "battery", amount = 1}},
  },

  {
    type = "recipe",
    category = "chemistry",
    subgroup = "fluid-recipes",
    enabled = false,
    name = "solid-fuel-from-heavy-oil",

    energy_required = 3,
    ingredients = {{type = "fluid", name = "heavy-oil", amount = 6}},
    results = {{type = "item", name = "solid-fuel", amount = 1}},

    icon = "__base__/graphics/icons/solid-fuel-from-heavy-oil.png",
  },
  {
    type = "recipe",
    category = "chemistry",
    subgroup = "fluid-recipes",
    name = "solid-fuel-from-light-oil",
    enabled = false,

    energy_required = 3,
    ingredients = {{type = "fluid", name="light-oil", amount = 4}},
    results = {{type = "item", name="solid-fuel", amount = 1}},

    icon = "__base__/graphics/icons/solid-fuel-from-light-oil.png",
  },

  {
    type = "recipe",
    category = "chemistry",
    subgroup = "fluid-recipes",
    name = "solid-fuel-from-petroleum-gas",
    enabled = false,

    energy_required = 3,
    ingredients = {{type = "fluid", name = "petroleum-gas", amount = 8}},
    results= {{type = "item", name = "solid-fuel", amount = 1}},

    icon = "__base__/graphics/icons/solid-fuel-from-petroleum-gas.png",
  },

  {
    type = "recipe",
    category = "chemistry",
    subgroup = "fluid-recipes",
    name = "lubricant",
    enabled = false,

    energy_required = 1,
    ingredients = {{type = "fluid", name = "heavy-oil", amount = 2}},
    results = {{type = "fluid", name = "lubricant", amount = 1}},
  },
})
