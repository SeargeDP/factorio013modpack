data:extend(
{
  {
    type = "technology",
    name = "bob-bullets",
    icon = "__bobwarfare__/graphics/icons/bullet-magazine.png",
    prerequisites =
    {
      "cordite-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bullet-casing"
      },
      {
        type = "unlock-recipe",
        recipe = "magazine"
      },
      {
        type = "unlock-recipe",
        recipe = "bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "bullet-magazine"
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
      },
      time = 30
    },
    order = "e-a-a-a"
  },

  {
    type = "technology",
    name = "bob-ap-bullets",
    icon = "__bobwarfare__/graphics/icons/ap-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "ap-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "ap-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "ap-bullet-magazine"
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
    order = "e-a-a-b"
  },

  {
    type = "technology",
    name = "bob-electric-bullets",
    icon = "__bobwarfare__/graphics/icons/electric-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-bullet-magazine"
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
    order = "e-a-a-c"
  },

  {
    type = "technology",
    name = "bob-he-bullets",
    icon = "__bobwarfare__/graphics/icons/he-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "he-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "he-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "he-bullet-magazine"
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
    order = "e-a-a-d"
  },

  {
    type = "technology",
    name = "bob-flame-bullets",
    icon = "__bobwarfare__/graphics/icons/flame-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flame-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-bullet-magazine"
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
    order = "e-a-a-e"
  },

  {
    type = "technology",
    name = "bob-acid-bullets",
    icon = "__bobwarfare__/graphics/icons/acid-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "acid-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-bullet-magazine"
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
    order = "e-a-a-f"
  },

  {
    type = "technology",
    name = "bob-poison-bullets",
    icon = "__bobwarfare__/graphics/icons/poison-bullet-magazine.png",
    prerequisites =
    {
      "bob-bullets",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "poison-bullet-projectile"
      },
      {
        type = "unlock-recipe",
        recipe = "poison-bullet"
      },
      {
        type = "unlock-recipe",
        recipe = "poison-bullet-magazine"
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
    order = "e-a-a-g"
  },


  {
    type = "technology",
    name = "bob-shotgun-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-shell.png",
    prerequisites =
    {
      "cordite-processing",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-shell-casing"
      },
      {
        type = "unlock-recipe",
        recipe = "shot"
      },
      {
        type = "unlock-recipe",
        recipe = "better-shotgun-shell"
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
      },
      time = 30
    },
    order = "e-a-b-a"
  },

  {
    type = "technology",
    name = "bob-shotgun-ap-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-ap-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-ap-shell"
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
    order = "e-a-b-b"
  },

  {
    type = "technology",
    name = "bob-shotgun-electric-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-electric-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-electric-shell"
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
    order = "e-a-b-c"
  },

  {
    type = "technology",
    name = "bob-shotgun-explosive-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-explosive-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-explosive-shell"
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
    order = "e-a-b-d"
  },

  {
    type = "technology",
    name = "bob-shotgun-flame-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-flame-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-flame-shell"
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
    order = "e-a-b-e"
  },

  {
    type = "technology",
    name = "bob-shotgun-acid-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-acid-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-acid-shell"
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
    order = "e-a-b-f"
  },

  {
    type = "technology",
    name = "bob-shotgun-poison-shells",
    icon = "__bobwarfare__/graphics/icons/shotgun-poison-shell.png",
    prerequisites =
    {
      "bob-shotgun-shells",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "shotgun-poison-shell"
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
    order = "e-a-b-g"
  },


  {
    type = "technology",
    name = "bob-laser-rifle-ammo-1",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-ruby"
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
    upgrade = "true",
    order = "e-a-c-a1"
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-2",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle-ammo-1",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-sapphire"
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
    upgrade = "true",
    order = "e-a-c-a2"
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-3",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle-ammo-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-emerald"
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
      },
      time = 30
    },
    upgrade = "true",
    order = "e-a-c-a3"
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-4",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle-ammo-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-amethyst"
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
    upgrade = "true",
    order = "e-a-c-a4"
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-5",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle-ammo-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-topaz"
      },
    },
    unit =
    {
      count = 150,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "e-a-c-a5"
  },

  {
    type = "technology",
    name = "bob-laser-rifle-ammo-6",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    prerequisites =
    {
      "bob-laser-rifle-ammo-5",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "laser-rifle-battery-diamond"
      },
    },
    unit =
    {
      count = 200,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    upgrade = "true",
    order = "e-a-c-a6"
  },


  {
    type = "technology",
    name = "bob-rocket",
    icon = "__bobwarfare__/graphics/icons/rocket.png",
    prerequisites =
    {
      "oil-processing",
      "rocketry",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-body"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-warhead"
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
      },
      time = 30
    },
    order = "e-a-d-a"
  },

  {
    type = "technology",
    name = "bob-piercing-rocket",
    icon = "__bobwarfare__/graphics/icons/piercing-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-piercing-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "piercing-rocket-warhead"
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
    order = "e-a-d-b"
  },

  {
    type = "technology",
    name = "bob-electric-rocket",
    icon = "__bobwarfare__/graphics/icons/electric-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-electric-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "electric-rocket-warhead"
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
    order = "e-a-d-c"
  },

  {
    type = "technology",
    name = "bob-explosive-rocket",
    icon = "__bobwarfare__/graphics/icons/explosive-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-explosive-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "explosive-rocket-warhead"
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
    order = "e-a-d-d"
  },

  {
    type = "technology",
    name = "bob-acid-rocket",
    icon = "__bobwarfare__/graphics/icons/acid-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-acid-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "acid-rocket-warhead"
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
    order = "e-a-d-e"
  },

  {
    type = "technology",
    name = "bob-flame-rocket",
    icon = "__bobwarfare__/graphics/icons/flame-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-flame-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-rocket-warhead"
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
    order = "e-a-d-f"
  },

  {
    type = "technology",
    name = "bob-poison-rocket",
    icon = "__bobwarfare__/graphics/icons/poison-rocket.png",
    prerequisites =
    {
      "bob-rocket",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-poison-rocket"
      },
      {
        type = "unlock-recipe",
        recipe = "poison-rocket-warhead"
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
    order = "e-a-d-g"
  },
}
)








