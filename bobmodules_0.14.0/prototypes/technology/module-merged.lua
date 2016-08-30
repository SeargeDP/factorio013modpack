data:extend(
{
  {
    type = "technology",
    name = "module-merging",
    icon = "__base__/graphics/technology/module.png",
    effects =
    {
    },
    prerequisites = {"modules"},
    unit =
    {
      count = 10,
      ingredients =
      {
        {"speed-processor", 1},
        {"effectivity-processor", 1},
        {"productivity-processor", 1},
        {"pollution-clean-processor", 1},
        {"pollution-create-processor", 1},
        {"module-circuit-board", 1},
        {"module-case", 1},
      },
      time = 120
    },
    upgrade = true,
    order = "i-m-a"
  },
}
)
