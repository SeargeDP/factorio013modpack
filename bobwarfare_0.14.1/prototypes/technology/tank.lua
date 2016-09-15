data.raw.technology["tanks"].upgrade = "true"

data:extend(
{
  {
    type = "technology",
    name = "bob-tanks-2",
    icon = "__base__/graphics/technology/tanks.png",
    icon_size = 128,
    prerequisites =
    {
      "tanks",
      "advanced-electronics-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-tank-2"
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
    name = "bob-tanks-3",
    icon = "__base__/graphics/technology/tanks.png",
    icon_size = 128,
    prerequisites =
    {
      "bob-tanks-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-tank-3"
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

