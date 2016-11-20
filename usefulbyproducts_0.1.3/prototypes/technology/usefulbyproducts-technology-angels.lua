data:extend(
{
  {
    type = "technology",
    name = "caustic-washing",
    icon = "__usefulbyproducts__/graphics/technology/caustic-washing.png",
	icon_size = 128,
	prerequisites = {"slag-processing-2"},
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "slurry-caustic-filtering"
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
      time = 10
    },
    order = "a-a-a1"
  },
  {
    type = "technology",
    name = "caustic-washing-thermal",
    icon = "__usefulbyproducts__/graphics/technology/caustic-washing-thermal.png",
	icon_size = 128,
	prerequisites = {"thermal-water-extraction"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "thermal-water-caustic-filtering"
      }
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
      time = 10
    },
    order = "a-a-a1"
  }
}
)