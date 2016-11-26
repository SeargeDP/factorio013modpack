data:extend({
  {
    type = "recipe",
    name = "lab",

    energy_required = 20,
    ingredients = {
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 20},
      {"transport-belt", 10},
    },
    result = "lab",
  },
  {
    type = "recipe",
    name = "science-pack-1",

    energy_required = 10,
    ingredients = {
      {"copper-plate", 5},
      {"iron-gear-wheel", 4},
    },
    result = "science-pack-1",
  },
  {
    type = "recipe",
    name = "science-pack-2",

    energy_required = 15,
    ingredients = {
      {"inserter", 4},
      {"transport-belt", 4},
    },
    result = "science-pack-2",
  },
  {
    type = "recipe",
    name = "science-pack-3",
    enabled = false,

    energy_required = 30,
    ingredients = {
      {"battery", 4},
      {"advanced-circuit", 4},
      {"filter-inserter", 4},
      {"steel-plate", 4},
    },
    result = "science-pack-3",
  },
})
