data:extend(
{
  {
    type = "technology",
    name = "advanced-research",
    icon = "__bobtech__/graphics/icons/research-effectivity.png",
    order = "c-k-m-a",
    prerequisites =
    {
      "advanced-electronics",
      "logistics-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "lab-2"
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-4"
      },
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },
}
)

