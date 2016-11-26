data:extend({
  {
    type = "recipe",
    name = "firearm-magazine",

    energy_required = 2,
    ingredients = {{"iron-plate", 5}},
    result = "firearm-magazine",
    result_count = 2,
  },
  {
    type = "recipe",
    name = "piercing-rounds-magazine",
    enabled = false,

    energy_required = 3,
    ingredients = {
      {"copper-plate", 10},
      {"steel-plate", 2},
    },
    result = "piercing-rounds-magazine",
  },
  {
    type = "recipe",
    name = "rocket",
    enabled = false,

    energy_required = 8,
    ingredients = {
      {"electronic-circuit", 2},
      {"explosives", 5},
      {"iron-plate", 10},
    },
    result = "rocket",
  },
  {
    type = "recipe",
    name = "shotgun-shell",
    enabled = false,

    energy_required = 3,
    ingredients = {
      {"copper-plate", 5},
      {"iron-plate", 5},
    },
    result = "shotgun-shell",
  },
  {
    type = "recipe",
    name = "piercing-shotgun-shell",
    enabled = false,

    energy_required = 8,
    ingredients = {
      {"copper-plate", 4},
      {"steel-plate", 4},
    },
    result = "piercing-shotgun-shell",
  },
})
