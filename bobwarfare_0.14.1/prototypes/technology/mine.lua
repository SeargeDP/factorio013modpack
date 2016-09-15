data:extend(
{
  {
    type = "technology",
    name = "poison-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    prerequisites =
    {
      "land-mine",
      "military-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-mine"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "e-e-a"
  },

  {
    type = "technology",
    name = "slowdown-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    prerequisites =
    {
      "land-mine",
      "military-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "slowdown-mine"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "e-e-b"
  },

  {
    type = "technology",
    name = "distractor-mine",
    icon = "__base__/graphics/technology/land-mine.png",
    prerequisites =
    {
      "land-mine",
      "combat-robotics-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "distractor-mine"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "e-e-c"
  },
}
)



