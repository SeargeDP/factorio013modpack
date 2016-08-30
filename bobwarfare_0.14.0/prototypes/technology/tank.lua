data.raw.technology["tanks"].upgrade = "true"

data:extend(
{
  {
    type = "technology",
    name = "tanks-2",
    icon = "__base__/graphics/technology/tanks.png",
    prerequisites =
    {
      "tanks",
      "advanced-electronics-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-2"
      },
      {
        type = "unlock-recipe",
        recipe = "scatter-cannon-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "poison-artillery-shell"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    order = "e-c-c2",
    upgrade = "true",
  },

  {
    type = "technology",
    name = "tanks-3",
    icon = "__base__/graphics/technology/tanks.png",
    prerequisites =
    {
      "tanks-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-3"
      },
      {
        type = "unlock-recipe",
        recipe = "explosive-artillery-shell"
      },
      {
        type = "unlock-recipe",
        recipe = "distractor-artillery-shell"
      },
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 45
    },
    order = "e-c-c3",
    upgrade = "true",
  },
}
)

