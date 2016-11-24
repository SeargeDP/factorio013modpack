data:extend(
{
  {
    type = "recipe",
    name = "copper-cable",

    energy_required = 2,
    ingredients = {{"copper-plate", 5}},
    result = "copper-cable",
    result_count = 2,
  },
  {
    type = "recipe",
    name = "electronic-circuit",

    energy_required = 8,
    ingredients = {
      {"iron-plate", 10},
      {"copper-cable", 10},
    },
    result = "electronic-circuit",
  },
  {
    type = "recipe",
    name = "advanced-circuit",
    enabled = false,

    energy_required = 8,
    ingredients = {
      {"electronic-circuit", 2},
      {"plastic-bar", 4},
      {"copper-cable", 4},
    },
    result = "advanced-circuit"
  },
})
