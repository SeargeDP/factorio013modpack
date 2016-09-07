data:extend(
{
  {
    type = "technology",
    name = "bob-laser-rifle-damage-1",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.1"
      }
    },
    prerequisites = {"bob-laser-rifle"},
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
    order = "e-n-a"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-damage-2",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.1"
      }
    },
    prerequisites = {"bob-laser-rifle-damage-1"},
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
    order = "e-n-b"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-damage-3",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-laser-rifle-damage-2"},
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
    order = "e-n-c"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-damage-4",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-laser-rifle-damage-3"},
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-n-d"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-damage-5",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-laser-rifle-damage-4"},
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
    order = "e-n-e"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-damage-6",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle-damage.png",
    effects =
    {
      {
        type = "ammo-damage",
        ammo_category = "laser-rifle",
        modifier = "0.4"
      }
    },
    prerequisites = {"bob-laser-rifle-damage-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-n-f"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-1",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-laser-rifle"},
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
    order = "e-n-g"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-2",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.2"
      }
    },
    prerequisites = {"bob-laser-rifle-speed-1"},
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
    order = "e-n-h"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-3",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-laser-rifle-speed-2"},
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
    order = "e-n-i"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-4",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-laser-rifle-speed-3"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = "true",
    order = "e-n-j"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-5",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-laser-rifle-speed-4"},
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
    order = "e-n-k"
  },
  {
    type = "technology",
    name = "bob-laser-rifle-speed-6",
    icon = "__bobwarfare__/graphics/icons/technology/laser-rifle.png",
    effects =
    {
      {
        type = "gun-speed",
        ammo_category = "laser-rifle",
        modifier = "0.3"
      }
    },
    prerequisites = {"bob-laser-rifle-speed-5"},
    unit =
    {
      count = 300,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 60
    },
    upgrade = "true",
    order = "e-n-l"
  }
}
)
