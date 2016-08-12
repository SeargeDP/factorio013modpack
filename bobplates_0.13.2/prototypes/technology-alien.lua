data:extend(
{
  {
    type = "technology",
    name = "alien-blue-research",
    icon = "__bobplates__/graphics/icons/technology/alien-blue-alloy.png",
    prerequisites =
    {
      "tungsten-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-blue-alloy"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a1"
  },

  {
    type = "technology",
    name = "alien-orange-research",
    icon = "__bobplates__/graphics/icons/technology/alien-orange-alloy.png",
    prerequisites =
    {
      "steel-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-orange-alloy"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a2"
  },

  {
    type = "technology",
    name = "alien-purple-research",
    icon = "__bobplates__/graphics/icons/alien/alien-acid.png",
    prerequisites =
    {
      "sulfur-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-acid"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a3"
  },

  {
    type = "technology",
    name = "alien-yellow-research",
    icon = "__bobplates__/graphics/icons/alien/alien-explosive.png",
    prerequisites =
    {
      "sulfur-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-explosive"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a4"
  },

  {
    type = "technology",
    name = "alien-green-research",
    icon = "__bobplates__/graphics/icons/alien/alien-poison.png",
    prerequisites =
    {
      "nitrogen-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-poison"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a5"
  },

  {
    type = "technology",
    name = "alien-red-research",
    icon = "__bobplates__/graphics/icons/alien/alien-fire.png",
    prerequisites =
    {
      "oil-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "alien-fire"
      },
    },
    unit =
    {
      count = 100,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    order = "e-f-a6"
  },
}
)


bobmods.lib.tech.add_recipe_unlock("barrels", "fill-alien-acid-barrel")
bobmods.lib.tech.add_recipe_unlock("barrels", "empty-alien-acid-barrel")

bobmods.lib.tech.add_recipe_unlock("barrels", "fill-alien-explosive-barrel")
bobmods.lib.tech.add_recipe_unlock("barrels", "empty-alien-explosive-barrel")

bobmods.lib.tech.add_recipe_unlock("barrels", "fill-alien-poison-barrel")
bobmods.lib.tech.add_recipe_unlock("barrels", "empty-alien-poison-barrel")

bobmods.lib.tech.add_recipe_unlock("barrels", "fill-alien-fire-barrel")
bobmods.lib.tech.add_recipe_unlock("barrels", "empty-alien-fire-barrel")


