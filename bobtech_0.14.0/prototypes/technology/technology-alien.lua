data:extend(
{
  {
    type = "technology",
    name = "alien-research",
    icon = "__base__/graphics/technology/alien-technology.png",
    order = "e-f-a",
    prerequisites =
    {
      "alien-technology",
      "advanced-research"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-blue"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-orange"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-purple"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-yellow"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-green"
      },
      {
        type = "unlock-recipe",
        recipe = "alien-science-pack-red"
      },
      {
        type = "unlock-recipe",
        recipe = "lab-alien"
      },
      {
        type = "unlock-recipe",
        recipe = "science-pack-gold"
      },
    },
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
  },
}
)
