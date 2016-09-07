data:extend(
{
  {
    type = "technology",
    name = "bob-robot-tanks",
    icon = "__bobwarfare__/graphics/icons/technology/tanks.png",
    prerequisites =
    {
      "robotics",
      "tanks",
      "laser-turrets",
      "electric-engine",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-robot-tank"
      },
    },
    unit =
    {
      count = 75,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    order = "e-c-c-a"
  },
}
)

