data:extend(
{
  {
    type = "technology",
    name = "nitroglycerin-processing",
    icon = "__bobwarfare__/graphics/icons/technology/nitroglycerin.png",
    prerequisites =
    {
      "oil-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "glycerol"
      },
      {
        type = "unlock-recipe",
        recipe = "nitroglycerin"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "d-b-b5-a"
  },

  {
    type = "technology",
    name = "cordite-processing",
    icon = "__bobwarfare__/graphics/icons/technology/cordite.png",
    prerequisites =
    {
      "nitroglycerin-processing"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-jelly"
      },
      {
        type = "unlock-recipe",
        recipe = "gun-cotton"
      },
      {
        type = "unlock-recipe",
        recipe = "cordite"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "d-b-b5-b"
  },
}
)

