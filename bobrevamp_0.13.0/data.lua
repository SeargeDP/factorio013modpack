data:extend(
{
  {
    type = "technology",
    name = "pumpjack",
    icon = "__base__/graphics/technology/oil-gathering.png",
    order = "d-a-c",
    prerequisites =
    {
      "steel-processing",
    },
    unit =
    {
      count = 30,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "pumpjack"
      },
    },
  },
  {
    type = "technology",
    name = "chemical-plant",
    icon = "__bobrevamp__/graphics/icons/technology/chemical-plant.png",
    icon_size = 128,
    upgrade = true,
    order = "d-a-c",
    prerequisites =
    {
    },
    unit =
    {
      count = 30,
      time = 30,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant"
      },
    },
  },
  {
    type = "technology",
    name = "solid-fuel",
    icon = "__base__/graphics/icons/solid-fuel.png",
    order = "d-a-d",
    prerequisites =
    {
      "chemical-plant",
    },
    unit =
    {
      count = 30,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-light-oil"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-petroleum-gas"
      },
      {
        type = "unlock-recipe",
        recipe = "solid-fuel-from-heavy-oil"
      },
    },
  },
}
)



