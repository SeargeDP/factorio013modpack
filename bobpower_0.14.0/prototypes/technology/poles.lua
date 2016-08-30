data:extend(
{
  {
    type = "technology",
    name = "electric-pole-2",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-2"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-2"
      }
    },
    prerequisites =
    {
      "electric-energy-distribution-1",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    order = "c-e-b-2",
    upgrade = true,
  },

  {
    type = "technology",
    name = "electric-pole-3",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-3"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-3"
      }
    },
    prerequisites =
    {
      "electric-pole-2",
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
    order = "c-e-b-3",
    upgrade = true,
  },

  {
    type = "technology",
    name = "electric-pole-4",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-electric-pole-4"
      },
      {
        type = "unlock-recipe",
        recipe = "big-electric-pole-4"
      }
    },
    prerequisites =
    {
      "electric-pole-3",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "c-e-b-4",
    upgrade = true,
  },


  {
    type = "technology",
    name = "electric-substation-2",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-2"
      }
    },
    prerequisites =
    {
      "electric-energy-distribution-2",
      "advanced-electronics",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "c-e-c-2",
    upgrade = true,
  },

  {
    type = "technology",
    name = "electric-substation-3",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-3"
      }
    },
    prerequisites =
    {
      "electric-substation-2",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "c-e-c-3",
    upgrade = true,
  },

  {
    type = "technology",
    name = "electric-substation-4",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "substation-4"
      }
    },
    prerequisites =
    {
      "electric-substation-3",
    },
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 45
    },
    order = "c-e-c-4",
    upgrade = true,
  },
}
)


