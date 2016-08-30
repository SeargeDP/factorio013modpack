data:extend(
{
  {
    type = "technology",
    name = "steam-engine-generator-1",
    prerequisites =
    {
      "electric-energy-distribution-1"
    },
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-2"
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
    order = "[steam]-1",
  },

  {
    type = "technology",
    name = "steam-engine-generator-2",
    prerequisites =
    {
      "steam-engine-generator-1",
      "advanced-electronics",
    },
    icon = "__base__/graphics/icons/steam-engine.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "steam-engine-3"
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
    order = "[steam]-2",
  },
}
)


