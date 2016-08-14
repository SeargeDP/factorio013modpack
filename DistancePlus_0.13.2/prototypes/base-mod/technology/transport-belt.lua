data:extend(
{
{
    type = "technology",
    name = "logistics-upgrade-1",
    icon = "__base__/graphics/icons/underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-underground-belt"
      }
    },
    prerequisites = {"logistics"},
    unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 15
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "logistics-upgrade-2",
    icon = "__base__/graphics/icons/underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "long-underground-belt"
      }
    },
    prerequisites = {"logistics", "logistics-upgrade-1"},
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1}
      },
      time = 30
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "logistics-2-upgrade-1",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-fast-underground-belt"
      }
    },
    prerequisites = {"logistics-2", "logistics-upgrade-1"},
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
    name = "logistics-2-upgrade-2",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "long-fast-underground-belt"
      }
    },
    prerequisites = {"logistics-2", "logistics-2-upgrade-1", "logistics-upgrade-2"},
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "logistics-3-upgrade-1",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "medium-express-underground-belt"
      }
    },
    prerequisites = {"logistics-3", "logistics-2-upgrade-1"},
    unit =
    {
      count = 40,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 15
    },
    order = "a-f-b",
  },
  {
    type = "technology",
    name = "logistics-3-upgrade-2",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "long-express-underground-belt"
      }
    },
    prerequisites = {"logistics-3", "logistics-3-upgrade-1"},
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 30
    },
    order = "a-f-b",
  }
  }
  )