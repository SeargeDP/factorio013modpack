data:extend({
  {
    type = "recipe",
    name = "radar",

    ingredients = {
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"iron-plate", 25},
    },
    result = "radar",
  },
  {
    type = "recipe",
    name = "small-lamp",
    enabled = false,

    ingredients = {
      {"electronic-circuit", 1},
      {"iron-stick", 5},
      {"iron-plate", 4},
    },
    result = "small-lamp",
  },
  {
    type = "recipe",
    name = "gun-turret",
    enabled = false,

    energy_required = 10,
    ingredients = {
      {"iron-gear-wheel", 20},
      {"copper-plate", 20},
      {"iron-plate", 40},
    },
    result = "gun-turret",
  },
})
