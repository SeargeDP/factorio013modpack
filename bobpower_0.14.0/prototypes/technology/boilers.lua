data:extend(
{
  {
    type = "technology",
    name = "bob-boiler-1",
    prerequisites =
    {
      "advanced-material-processing",
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-1",
  },

  {
    type = "technology",
    name = "bob-boiler-2",
    prerequisites =
    {
      "bob-boiler-1",
      "electric-energy-distribution-1"
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-3"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-2",
  },

  {
    type = "technology",
    name = "bob-boiler-3",
    prerequisites =
    {
      "bob-boiler-2",
      "advanced-electronics"
    },
    icon = "__base__/graphics/icons/boiler.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "boiler-4"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "[boiler]-3",
  },
}
)


