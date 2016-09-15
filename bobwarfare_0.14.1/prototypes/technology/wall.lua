data:extend(
{
  {
    type = "technology",
    name = "reinforced-wall",
    icon = "__base__/graphics/technology/stone-walls.png",
    prerequisites = {"gates"},
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "reinforced-wall"
      },
      {
        type = "unlock-recipe",
        recipe = "reinforced-gate"
      },
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 10
    },
    order = "a-k-b"
  },
}
)

