data:extend(
{
  {
    type = "recipe",
    name = "small-pump-2",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"small-pump", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1}
    },
    result= "small-pump-2"
  },
  {
    type = "recipe",
    name = "small-pump-3",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"small-pump-2", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1}
    },
    result= "small-pump-3"
  },
  {
    type = "recipe",
    name = "small-pump-4",
    energy_required = 2,
    enabled = false,
    ingredients =
    {
      {"small-pump-3", 1},
      {"steel-plate", 1},
      {"copper-pipe", 1}
    },
    result= "small-pump-4"
  },
}
)

