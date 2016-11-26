data:extend({
  {
    type = "recipe",
    name = "pistol",

    energy_required = 1,
    ingredients = {
      {"copper-plate", 10},
      {"iron-plate", 10},
    },
    result = "pistol",
  },
  {
    type = "recipe",
    name = "submachine-gun",
    enabled = false,

    energy_required = 3,
    ingredients = {
      {"iron-gear-wheel", 15},
      {"copper-plate", 10},
      {"iron-plate", 20},
    },
    result = "submachine-gun",
  },
  {
    type = "recipe",
    name = "shotgun",
    enabled = false,

    energy_required = 4,
    ingredients = {
      {"iron-plate", 30},
      {"iron-gear-wheel", 10},
      {"copper-plate", 25},
      {"wood", 10},
    },
    result = "shotgun",
  },
  {
    type = "recipe",
    name = "combat-shotgun",
    enabled = false,

    energy_required = 8,
    ingredients = {
      {"steel-plate", 25},
      {"iron-gear-wheel", 10},
      {"copper-plate", 25},
      {"wood", 20},
    },
    result = "combat-shotgun",
  },
})
