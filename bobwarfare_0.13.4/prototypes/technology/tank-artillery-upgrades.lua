data:extend(
{
  {
    type = "technology",
    name = "bob-tank-artillery-damage-1",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.1"
      }
    },
    prerequisites = {"tanks-2"},
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
    name = "bob-tank-artillery-damage-2",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.1"
      }
    },
    prerequisites = {"bob-tank-artillery-damage-1"},
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
    name = "bob-tank-artillery-damage-3",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-artillery-damage-2"},
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
    name = "bob-tank-artillery-damage-4",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-artillery-damage-3"},
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
    name = "bob-tank-artillery-damage-5",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-artillery-damage-4"},
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
    name = "bob-tank-artillery-damage-6",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "artillery-shell",
        modifier = "0.4"
      }
    },
    prerequisites = {"bob-tank-artillery-damage-5"},
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
    name = "bob-tank-artillery-speed-1",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"tanks-2"},
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
    name = "bob-tank-artillery-speed-2",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-tank-artillery-speed-1"},
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
    name = "bob-tank-artillery-speed-3",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-artillery-speed-2"},
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
    name = "bob-tank-artillery-speed-4",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-artillery-speed-3"},
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
    name = "bob-tank-artillery-speed-5",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-artillery-speed-4"},
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
    name = "bob-tank-artillery-speed-6",
    icon = "__bobwarfare__/graphics/icons/technology/tank-cannon.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "artillery-shell",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-tank-artillery-speed-5"},
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
