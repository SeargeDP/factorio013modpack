data:extend(
{
  {
    type = "technology",
    name = "bob-laser-rifle",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "military-3",
      "laser",
      "battery",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery"
      },
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-case"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    order = "e-a-c-a"
  },
}
)

