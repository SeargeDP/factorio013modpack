data:extend(
{
  {
    type = "technology",
    name = "raw-speed-module-1",
    icon = "__bobmodules__/graphics/icons/cyan-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-1-combine"
      }
    },
    prerequisites = {"module-merging", "speed-module", "effectivity-module"},
    unit =
    {
      count = 25,
      ingredients = {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-m-a"
  },
  {
    type = "technology",
    name = "raw-speed-module-2",
    icon = "__bobmodules__/graphics/icons/cyan-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-2-combine"
      }
    },
    prerequisites = {"raw-speed-module-1", "speed-module-2", "effectivity-module-2"},
    unit =
    {
      count = 50,
      ingredients = {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-m-b"
  },
  {
    type = "technology",
    name = "raw-speed-module-3",
    icon = "__bobmodules__/graphics/icons/cyan-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-3-combine"
      }
    },
    prerequisites = {"raw-speed-module-2", "speed-module-3", "effectivity-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-m-c"
  },
  {
    type = "technology",
    name = "raw-speed-module-4",
    icon = "__bobmodules__/graphics/icons/cyan-module-4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-4-combine"
      }
    },
    prerequisites = {"raw-speed-module-3", "speed-module-4", "effectivity-module-4"},
    unit =
    {
      count = 100,
      ingredients = {
        {"speed-processor", 2},
        {"effectivity-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-m-d"
  },
  {
    type = "technology",
    name = "raw-speed-module-5",
    icon = "__bobmodules__/graphics/icons/cyan-module-5.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-5-combine"
      }
    },
    prerequisites = {"raw-speed-module-4", "speed-module-5", "effectivity-module-5"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-e"
  },
  {
    type = "technology",
    name = "raw-speed-module-6",
    icon = "__bobmodules__/graphics/icons/cyan-module-6.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-6-combine"
      }
    },
    prerequisites = {"raw-speed-module-5", "speed-module-6", "effectivity-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-f"
  },
  {
    type = "technology",
    name = "raw-speed-module-7",
    icon = "__bobmodules__/graphics/icons/cyan-module-7.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-7-combine"
      }
    },
    prerequisites = {"raw-speed-module-6", "speed-module-7", "effectivity-module-7"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-g"
  },
  {
    type = "technology",
    name = "raw-speed-module-8",
    icon = "__bobmodules__/graphics/icons/cyan-module-8.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-8"
      },
      {
        type = "unlock-recipe",
        recipe = "raw-speed-module-8-combine"
      }
    },
    prerequisites = {"raw-speed-module-7", "speed-module-8", "effectivity-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"speed-processor", 4},
        {"effectivity-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-h"
  },
}
)


