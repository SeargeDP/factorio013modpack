data:extend(
{
{
    type = "technology",
    name = "electric-energy-distribution-3",
    icon = "__base__/graphics/technology/electric-energy-distribution.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "huge-electric-pole"
      },
      {
        type = "unlock-recipe",
        recipe = "big-substation"
      }
    },
    prerequisites = {"electric-energy-distribution-2"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 3},
        {"science-pack-2", 2},
        {"science-pack-3", 1}
      },
      time = 45
    },
    order = "c-e-d",
  }
})