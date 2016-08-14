data:extend(
{
{
    type = "technology",
    name = "pipe-upgrade-1",
    icon = "__DistancePlus__/graphics/icons/medium-pipe-to-ground.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-pipe-to-ground"
      }
    },
    prerequisites = {"logistics-2"},
    unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "pipe-upgrade-2",
    icon = "__DistancePlus__/graphics/icons/long-pipe-to-ground.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "long-pipe-to-ground"
      }
    },
    prerequisites = {"pipe-upgrade-1","steel-processing","plastics"},
    unit =
    {
      count = 60,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 2}
      },
      time = 30
    },
    order = "a-f-b",
  },
    {
    type = "technology",
    name = "pipe-upgrade-3",
    icon = "__DistancePlus__/graphics/icons/ultra-pipe-to-ground.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ultra-pipe-to-ground"
      }
    },
    prerequisites = {"pipe-upgrade-2","automation-2","fluid-handling","logistics-3",},
    unit =
    {
      count = 60,
      ingredients =
      {
        {"science-pack-1", 2},
		{"science-pack-2", 2},
		{"science-pack-3", 1}
      },
      time = 45
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "pipe-upgrade-4",
    icon = "__DistancePlus__/graphics/icons/continental-pipe-to-ground.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "continental-pipe-to-ground"
      }
    },
    prerequisites = {"pipe-upgrade-3","automation-3","alien-technology"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 3},
		{"science-pack-2", 3},
		{"science-pack-3", 3},
		{"alien-science-pack", 2}
      },
      time = 60
    },
    order = "a-f-b",
  }
  })
 