data:extend({
  {
    type = "recipe",
    name = "iron-chest",

    ingredients = {{"iron-plate", 20}},
    result = "iron-chest",
  },
  {
    type = "recipe",
    name = "steel-chest",
    enabled = false,

    ingredients = {{"steel-plate", 8}},
    result = "steel-chest",
  },

  {
    type = "recipe",
    name = "transport-belt",

    ingredients = {
      {"iron-plate", 2},
      {"iron-gear-wheel", 1},
    },
    result = "transport-belt",
    result_count = 2,
  },
  {
    type = "recipe",
    name = "inserter",

    ingredients = {
      {"electronic-circuit", 1},
      {"iron-gear-wheel", 1},
      {"iron-plate", 2},
    },
    result = "inserter",
  },
  {
    type = "recipe",
    name = "burner-inserter",

    ingredients = {
      {"iron-plate", 2},
      {"iron-gear-wheel", 2},
    },
    result = "burner-inserter",
  },
  {
    type = "recipe",
    name = "long-handed-inserter",
    enabled = false,

    ingredients = {
      {"iron-gear-wheel", 1},
      {"iron-plate", 5},
      {"inserter", 1},
    },
    result = "long-handed-inserter",
  },

  {
    type = "recipe",
    name = "pipe",

    ingredients = {{"iron-plate", 2}},
    result = "pipe",
  },
  {
    type = "recipe",
    name = "pipe-to-ground",

    ingredients = {
      {"pipe", 10},
      {"iron-plate", 10},
    },
    result = "pipe-to-ground",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "rail",
    enabled = false,

    ingredients = {
      {"stone", 2},
      {"iron-stick", 2},
      {"steel-plate", 1},
    },
    result = "rail",
    result_count = 2,
    requester_paste_multiplier = 4
  },
  {
    type = "recipe",
    name = "medium-electric-pole",
    enabled = false,

    ingredients = {
      {"steel-plate", 2},
      {"copper-plate", 10},
    },
    result = "medium-electric-pole",
  },
  {
    type = "recipe",
    name = "big-electric-pole",
    enabled = false,

    ingredients = {
      {"steel-plate", 5},
      {"copper-plate", 25},
    },
    result = "big-electric-pole"
  },
  {
    type = "recipe",
    name = "substation",
    enabled = false,

    ingredients = {
      {"steel-plate", 10},
      {"advanced-circuit", 5},
      {"copper-plate", 25},
    },
    result = "substation",
  },

  {
    type = "recipe",
    name = "flying-robot-frame",
    enabled = false,

    energy_required = 20,
    ingredients = {
      {"electric-engine-unit", 5},
      {"battery", 2},
      {"steel-plate", 1},
      {"electronic-circuit", 3},
    },
    result = "flying-robot-frame",
  },
})
