data:extend(
{
  {
    type = "recipe",
    name = "bob-diesel-locomotive-2",
    enabled = "false",
    ingredients =
    {
      {"diesel-locomotive", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 20},
    },
    result = "bob-diesel-locomotive-2"
  },

  {
    type = "recipe",
    name = "bob-diesel-locomotive-3",
    enabled = "false",
    ingredients =
    {
      {"bob-diesel-locomotive-2", 1},
      {"processing-unit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 20},
    },
    result = "bob-diesel-locomotive-3"
  },


  {
    type = "recipe",
    name = "bob-armoured-diesel-locomotive",
    enabled = "false",
    ingredients =
    {
      {"diesel-locomotive", 1},
      {"steel-plate", 25},
    },
    result = "bob-armoured-diesel-locomotive"
  },


  {
    type = "recipe",
    name = "bob-cargo-wagon-2",
    enabled = "false",
    ingredients =
    {
      {"cargo-wagon", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 12},
    },
    result = "bob-cargo-wagon-2"
  },

  {
    type = "recipe",
    name = "bob-cargo-wagon-3",
    enabled = "false",
    ingredients =
    {
      {"bob-cargo-wagon-2", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 12},
    },
    result = "bob-cargo-wagon-3"
  },


  {
    type = "recipe",
    name = "bob-armoured-cargo-wagon",
    enabled = "false",
    ingredients =
    {
      {"cargo-wagon", 1},
      {"steel-plate", 25},
    },
    result = "bob-armoured-cargo-wagon"
  },
}
)


