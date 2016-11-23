data.raw["recipe"]["small-pump"].enabled = true
data.raw["recipe"]["small-pump"].ingredients =
{
  {"electronic-circuit", 2},
  {"pipe", 1},
  {"iron-gear-wheel", 1}
}

data:extend(
{
  {
    type = "recipe",
    name = "check-valve",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"steel-plate", 1},
      {"iron-gear-wheel", 1},
      {"pipe", 1}
    },
    result = "check-valve"
  },
  {
    type = "recipe",
    name = "overflow-valve",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"electronic-circuit", 1},
      {"steel-plate", 1},
      {"iron-gear-wheel", 1},
      {"pipe", 1}
    },
    result = "overflow-valve"
  },
  {
    type = "recipe",
    name = "express-pump",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"steel-plate", 1},
      {"small-pump", 1}
    },
    result= "express-pump"
  },
  {
    type = "recipe",
    name = "pipe-elbow",
    energy_required = 0.01,
    ingredients =
    {
      {"pipe", 1}
    },
    result = "pipe-elbow"
  },
  {
    type = "recipe",
    name = "pipe-junction",
    energy_required = 0.01,
    ingredients =
    {
      {"pipe", 1}
    },
    result = "pipe-junction"
  },
  {
    type = "recipe",
    name = "pipe-straight",
    energy_required = 0.01,
    ingredients =
    {
      {"pipe", 1}
    },
    result = "pipe-straight"
  }
})