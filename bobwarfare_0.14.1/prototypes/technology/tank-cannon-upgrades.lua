data:extend(
{
  {
    type = "technology",
    name = "bob-tank-cannon-damage-1",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.1"
      }
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-a"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-damage-2",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.1"
      }
    },
    prerequisites = {"bob-tank-cannon-damage-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-b"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-damage-3",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-cannon-damage-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-c"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-damage-4",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-cannon-damage-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-d"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-damage-5",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-cannon-damage-4"},
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
      time = 60
    },
    upgrade = "true",
    order = "e-o-e"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-damage-6",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "cannon-shell",
        modifier = "0.4"
      }
    },
    prerequisites = {"bob-tank-cannon-damage-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-f"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-1",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"tanks"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-g"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-2",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-cannon-speed-1"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    },
    upgrade = "true",
    order = "e-o-h"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-3",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-cannon-speed-2"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-i"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-4",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-cannon-speed-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-j"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-5",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-cannon-speed-4"},
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
      time = 60
    },
    upgrade = "true",
    order = "e-o-k"
  },
  {
    type = "technology",
    name = "bob-tank-cannon-speed-6",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "cannon-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-cannon-speed-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-o-l"
  }
}
)
