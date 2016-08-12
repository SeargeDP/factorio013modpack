data:extend(
{
  {
    type = "technology",
    name = "energy-shield-equipment-3",
    icon = "__bobwarfare__/graphics/icons/technology/energy-shield-mk3-equipment.png",
    upgrade = "true",
    order = "g-e-c",
    prerequisites =
    {
      "energy-shield-mk2-equipment",
      "productivity-module-2",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk3-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "energy-shield-equipment-4",
    icon = "__bobwarfare__/graphics/icons/technology/energy-shield-mk4-equipment.png",
    upgrade = "true",
    order = "g-e-d",
    prerequisites =
    {
      "energy-shield-equipment-3"
    },
    unit =
    {
      count = 200,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk4-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "energy-shield-equipment-5",
    icon = "__bobwarfare__/graphics/icons/technology/energy-shield-mk5-equipment.png",
    upgrade = "true",
    order = "g-e-e",
    prerequisites =
    {
      "energy-shield-equipment-4"
    },
    unit =
    {
      count = 250,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk5-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "energy-shield-equipment-6",
    icon = "__bobwarfare__/graphics/icons/technology/energy-shield-mk6-equipment.png",
    upgrade = "true",
    order = "g-e-f",
    prerequisites =
    {
      "energy-shield-equipment-5"
    },
    unit =
    {
      count = 300,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "energy-shield-mk6-equipment"
      }
    },
  },


  {
    type = "technology",
    name = "battery-equipment-3",
    icon = "__bobwarfare__/graphics/icons/technology/battery-mk3-equipment.png",
    upgrade = "true",
    order = "g-i-c",
    prerequisites =
    {
      "battery-mk2-equipment",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk3-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "battery-equipment-4",
    icon = "__bobwarfare__/graphics/icons/technology/battery-mk4-equipment.png",
    upgrade = "true",
    order = "g-i-d",
    prerequisites =
    {
      "battery-equipment-3",
    },
    unit =
    {
      count = 150,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk4-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "battery-equipment-5",
    icon = "__bobwarfare__/graphics/icons/technology/battery-mk5-equipment.png",
    upgrade = "true",
    order = "g-i-e",
    prerequisites =
    {
      "battery-equipment-4",
    },
    unit =
    {
      count = 200,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk5-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "battery-equipment-6",
    icon = "__bobwarfare__/graphics/icons/technology/battery-mk6-equipment.png",
    upgrade = "true",
    order = "g-i-f",
    prerequisites =
    {
      "battery-equipment-5"
    },
    unit =
    {
      count = 250,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "battery-mk6-equipment"
      }
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-2",
    icon = "__bobwarfare__/graphics/icons/technology/fusion-reactor-equipment-2.png",
    upgrade = "true",
    order = "g-l-b",
    prerequisites =
    {
      "fusion-reactor-equipment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-2"
      }
    },
    unit =
    {
      count = 250,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-3",
    icon = "__bobwarfare__/graphics/icons/technology/fusion-reactor-equipment-3.png",
    upgrade = "true",
    order = "g-l-c",
    prerequisites =
    {
      "fusion-reactor-equipment-2"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-3"
      }
    },
    unit =
    {
      count = 300,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },

  {
    type = "technology",
    name = "fusion-reactor-equipment-4",
    icon = "__bobwarfare__/graphics/icons/technology/fusion-reactor-equipment-4.png",
    upgrade = "true",
    order = "g-l-d",
    prerequisites =
    {
      "fusion-reactor-equipment-3"
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fusion-reactor-equipment-4"
      }
    },
    unit =
    {
      count = 350,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },


  {
    type = "technology",
    name = "night-vision-equipment-2",
    icon = "__base__/graphics/technology/night-vision-equipment.png",
    upgrade = "true",
    order = "g-g-b",
    prerequisites =
    {
      "night-vision-equipment",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "night-vision-equipment-2"
      }
    },
    unit =
    {
      count = 50,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
  },

  {
    type = "technology",
    name = "night-vision-equipment-3",
    icon = "__base__/graphics/technology/night-vision-equipment.png",
    upgrade = "true",
    order = "g-g-c",
    prerequisites =
    {
      "night-vision-equipment-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "night-vision-equipment-3"
      }
    },
    unit =
    {
      count = 50,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },


  {
    type = "technology",
    name = "solar-panel-equipment-2",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-2.png",
    upgrade = "true",
    order = "g-k-b",
    prerequisites =
    {
      "solar-panel-equipment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-2"
      }
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
  },

  {
    type = "technology",
    name = "solar-panel-equipment-3",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-3.png",
    upgrade = "true",
    order = "g-k-c",
    prerequisites =
    {
      "solar-panel-equipment-2",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-3"
      }
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
  },

  {
    type = "technology",
    name = "solar-panel-equipment-4",
    icon = "__bobwarfare__/graphics/icons/solar-panel-equipment-4.png",
    upgrade = "true",
    order = "g-k-d",
    prerequisites =
    {
      "solar-panel-equipment-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "solar-panel-equipment-4"
      }
    },
    unit =
    {
      count = 100,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "personal-laser-defense-equipment-2",
    icon = "__bobwarfare__/graphics/icons/technology/personal-laser-defense-equipment-2.png",
    order = "g-m-b",
    upgrade = "true",
    prerequisites =
    {
      "personal-laser-defense-equipment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-2"
      }
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-3",
    icon = "__bobwarfare__/graphics/icons/technology/personal-laser-defense-equipment-3.png",
    order = "g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "personal-laser-defense-equipment-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-3"
      }
    },
    unit =
    {
      count = 250,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-4",
    icon = "__bobwarfare__/graphics/icons/technology/personal-laser-defense-equipment-4.png",
    order = "g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "personal-laser-defense-equipment-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-4"
      }
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-5",
    icon = "__bobwarfare__/graphics/icons/technology/personal-laser-defense-equipment-5.png",
    order = "g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "personal-laser-defense-equipment-4",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-5"
      }
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },

  {
    type = "technology",
    name = "personal-laser-defense-equipment-6",
    icon = "__bobwarfare__/graphics/icons/technology/personal-laser-defense-equipment-6.png",
    order = "g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "personal-laser-defense-equipment-5",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "personal-laser-defense-equipment-6"
      }
    },
    unit =
    {
      count = 350,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "exoskeleton-equipment-2",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    order = "g-h-b",
    upgrade = "true",
    prerequisites =
    {
      "exoskeleton-equipment",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "exoskeleton-equipment-2"
      }
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
  },
  {
    type = "technology",
    name = "exoskeleton-equipment-3",
    icon = "__base__/graphics/technology/exoskeleton-equipment.png",
    order = "g-h-c",
    upgrade = "true",
    prerequisites =
    {
      "exoskeleton-equipment-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "exoskeleton-equipment-3"
      }
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
  },
}
)

