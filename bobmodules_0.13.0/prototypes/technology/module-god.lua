data:extend(
{
  {
    type = "technology",
    name = "god-module-1",
    icon = "__bobmodules__/graphics/icons/god-module.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-1"
      },
    },
    prerequisites = {"module-merging", "speed-module-2", "productivity-module-2", "effectivity-module-2", "pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-s-a"
  },
  {
    type = "technology",
    name = "god-module-2",
    icon = "__bobmodules__/graphics/icons/god-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-2"
      },
    },
    prerequisites = {"god-module-1", "speed-module-4", "productivity-module-4", "effectivity-module-4", "pollution-clean-module-4"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"productivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-s-b"
  },
  {
    type = "technology",
    name = "god-module-3",
    icon = "__bobmodules__/graphics/icons/god-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-3"
      },
    },
    prerequisites = {"god-module-2", "speed-module-6", "productivity-module-6", "effectivity-module-6", "pollution-clean-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-c"
  },
  {
    type = "technology",
    name = "god-module-4",
    icon = "__bobmodules__/graphics/icons/god-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-4"
      },
    },
    prerequisites = {"god-module-3", "speed-module-8", "productivity-module-8", "effectivity-module-8", "pollution-clean-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-d"
  },
  {
    type = "technology",
    name = "god-module-5",
    icon = "__bobmodules__/graphics/icons/god-module-4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "god-module-5"
      },
    },
    prerequisites = {"god-module-4"},
    unit =
    {
      count = 500,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"productivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-s-e"
  },
}
)


