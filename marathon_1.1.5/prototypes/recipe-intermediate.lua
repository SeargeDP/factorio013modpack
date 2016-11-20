data:extend({
  {
    type = "recipe",
    name = "iron-gear-wheel",

    energy_required = 1.5,
    ingredients = {{"iron-plate", 5}},
    result = "iron-gear-wheel",
  },
  {
    type = "recipe",
    name = "iron-stick",

    ingredients = {{"iron-plate", 5}},
    result = "iron-stick",
    result_count = 2,
  },
  {
    type = "recipe",
    -- category = "crafting",
    name = "low-density-structure",
    enabled = false,

    energy_required = 30,
    ingredients = {
      {"steel-plate", 10},
      {"copper-plate", 25},
      {"plastic-bar", 10},
    },
    result= "low-density-structure",
  },
})
