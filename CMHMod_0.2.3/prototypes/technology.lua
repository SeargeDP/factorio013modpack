data:extend(
{
  {
    type = "technology",
    name = "aluminium-titanium",
    icon = "__CMHMod__/graphics/icons/aluminium-titanium2.png",
    prerequisites =
    { "aluminium-processing", "titanium-processing",   },
    effects =
    { 
      {
        type = "unlock-recipe",
        recipe = "aluminium-titanium-a",
      }
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30,
      order = "c-b-e3",
    }
  },

  {
    type = "technology",
    name = "advanced-tin",
    icon = "__CMHMod__/graphics/icons/advanced-tin.png",
    prerequisites =
    { "zinc-processing", },
    effects =
    { 
      {
        type = "unlock-recipe",
        recipe = "zinc-tin",
      }
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30,
      order = "c-b-e4",
    }
  }
}
)