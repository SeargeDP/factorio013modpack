data:extend(
{
  {
    type = "technology",
    name = "bob-sniper-turret-damage-1",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.1"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.1"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.1"
      },
    },
    prerequisites = {"bob-sniper-turrets-1"},
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
    upgrade = true,
    order = "e-o-a"
  },
  {
    type = "technology",
    name = "bob-sniper-turret-damage-2",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.1"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.1"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.1"
      },
    },
    prerequisites = {"bob-sniper-turret-damage-1"},
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
    upgrade = true,
    order = "e-o-b"
  },
  {
    type = "technology",
    name = "bob-sniper-turret-damage-3",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.2"
      },
    },
    prerequisites = {"bob-sniper-turret-damage-2"},
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
    upgrade = true,
    order = "e-o-c"
  },
  {
    type = "technology",
    name = "bob-sniper-turret-damage-4",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.2"
      },
    },
    prerequisites = {"bob-sniper-turret-damage-3"},
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
    upgrade = true,
    order = "e-o-d"
  },
  {
    type = "technology",
    name = "bob-sniper-turret-damage-5",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.2"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.2"
      },
    },
    prerequisites = {"bob-sniper-turret-damage-4"},
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
    upgrade = true,
    order = "e-o-e"
  },
  {
    type = "technology",
    name = "bob-sniper-turret-damage-6",
    icon = "__base__/graphics/technology/gun-turret-damage.png",
    effects =
    {
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-1",
        modifier = "0.4"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-2",
        modifier = "0.4"
      },
      {
        type = "turret-attack",
        turret_id = "bob-sniper-turret-3",
        modifier = "0.4"
      },
    },
    prerequisites = {"bob-sniper-turret-damage-5"},
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
    upgrade = true,
    order = "e-o-f"
  }
}
)
