data:extend(
{
	{
		type = "technology",
		name = "fuel-cell",
		icon = "__usefulbyproducts__/graphics/technology/fuel-cell.png",
		icon_size = 128,
		prerequisites = {"plastics"},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "fuel-cell-hydrogen"
		  }
		},
		unit =
		{
		  count = 50,
		  ingredients =
		  {
			{"science-pack-1", 1},
			{"science-pack-2", 1},
		  },
		  time = 10
		},
		order = "d-d-a"
  },
  {
    type = "technology",
    name = "caustic-refining",
    icon = "__usefulbyproducts__/graphics/technology/caustic-refining.png",
	icon_size = 128,
	prerequisites = {"oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "caustic-oil-processing"
      },
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 10
    },
    order = "d-a-b"
  },
  {
    type = "technology",
    name = "advanced-caustic-refining",
    icon = "__usefulbyproducts__/graphics/technology/caustic-refining.png",
	icon_size = 128,
	prerequisites = {"caustic-refining", "advanced-oil-processing"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "caustic-heavy-oil-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "advanced-caustic-oil-processing"
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
    order = "d-a-b"
  },
}
)