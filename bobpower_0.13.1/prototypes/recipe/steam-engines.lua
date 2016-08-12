data:extend(
{
  {
    type = "recipe",
    name = "steam-engine-2",
    enabled = "false",
    ingredients =
    {
      {"steam-engine", 1},
      {"steel-plate", 5},
      {"iron-gear-wheel", 5},
    },
    result = "steam-engine-2",
  },
  {
    type = "recipe",
    name = "steam-engine-3",
    enabled = "false",
    ingredients =
    {
      {"steam-engine-2", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 5},
      {"iron-gear-wheel", 5},
    },
    result = "steam-engine-3",
  },
}
)
