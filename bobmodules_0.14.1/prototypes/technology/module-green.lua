data:extend(
{
  {
    type = "technology",
    name = "green-module-1",
    icon = "__bobmodules__/graphics/icons/yellow-module-1.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-1"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-1-combine"
      }
    },
    prerequisites = {"module-merging", "effectivity-module", "pollution-clean-module-1"},
    unit =
    {
      count = 25,
      ingredients =
      {
        {"effectivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-o-a"
  },
  {
    type = "technology",
    name = "green-module-2",
    icon = "__bobmodules__/graphics/icons/yellow-module-2.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-2"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-2-combine"
      }
    },
    prerequisites = {"green-module-1", "effectivity-module-2", "pollution-clean-module-2"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 1},
        {"pollution-clean-processor", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "i-o-b"
  },
  {
    type = "technology",
    name = "green-module-3",
    icon = "__bobmodules__/graphics/icons/yellow-module-3.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-3"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-3-combine"
      }
    },
    prerequisites = {"green-module-2", "effectivity-module-3", "pollution-clean-module-3"},
    unit =
    {
      count = 50,
      ingredients = {
        {"effectivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-o-c"
  },
  {
    type = "technology",
    name = "green-module-4",
    icon = "__bobmodules__/graphics/icons/yellow-module-4.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-4"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-4-combine"
      }
    },
    prerequisites = {"green-module-3", "effectivity-module-4", "pollution-clean-module-4"},
    unit =
    {
      count = 100,
      ingredients = {
        {"effectivity-processor", 2},
        {"pollution-clean-processor", 2},
        {"module-circuit-board", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "i-o-d"
  },
  {
    type = "technology",
    name = "green-module-5",
    icon = "__bobmodules__/graphics/icons/yellow-module-5.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-5"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-5-combine"
      }
    },
    prerequisites = {"green-module-4", "effectivity-module-5", "pollution-clean-module-5"},
    unit =
    {
      count = 75,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-e"
  },
  {
    type = "technology",
    name = "green-module-6",
    icon = "__bobmodules__/graphics/icons/yellow-module-6.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-6"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-6-combine"
      }
    },
    prerequisites = {"green-module-5", "effectivity-module-6", "pollution-clean-module-6"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-f"
  },
  {
    type = "technology",
    name = "green-module-7",
    icon = "__bobmodules__/graphics/icons/yellow-module-7.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-7"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-7-combine"
      }
    },
    prerequisites = {"green-module-6", "effectivity-module-7", "pollution-clean-module-7"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-g"
  },
  {
    type = "technology",
    name = "green-module-8",
    icon = "__bobmodules__/graphics/icons/yellow-module-8.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "green-module-8"
      },
      {
        type = "unlock-recipe",
        recipe = "green-module-8-combine"
      }
    },
    prerequisites = {"green-module-7", "effectivity-module-8", "pollution-clean-module-8"},
    unit =
    {
      count = 250,
      ingredients =
      {
        {"effectivity-processor", 4},
        {"pollution-clean-processor", 4},
        {"module-circuit-board", 2},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-o-h"
  },
}
)

