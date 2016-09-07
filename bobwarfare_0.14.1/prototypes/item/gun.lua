data:extend(
{
  {
    type = "gun",
    name = "rifle",
    icon = "__bobwarfare__/graphics/icons/rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-c[rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      projectile_creation_distance = 0.6,
      range = 20,
      damage_modifier = 7,--7.5
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },

  {
    type = "gun",
    name = "sniper-rifle",
    icon = "__bobwarfare__/graphics/icons/sniper-rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "a[basic-clips]-d[sniper-rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 120,
      movement_slow_down_factor = 0.75,
      projectile_creation_distance = 0.6,
      range = 30,--60
      damage_modifier = 25,--30
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.6},
        creation_distance = 0.6,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },

  {
    type = "gun",
    name = "laser-rifle",
    icon = "__bobwarfare__/graphics/icons/laser-rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "b[laser-rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "laser-rifle",
      cooldown = 30,
      movement_slow_down_factor = 0.5,
      damage_modifier = 1.2,--1
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 20,
      sound = make_laser_sounds(),
    },
  },
  {
    type = "gun",
    name = "laser-beam-rifle",
    icon = "__bobwarfare__/graphics/icons/laser-rifle.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = "b[laser-rifle]",
    stack_size = 5,
    attack_parameters =
    {
      type = "beam",
--      ammo_category = "beam-rifle",
      ammo_category = "laser-rifle",
      cooldown = 20,
      range = 15,
      movement_slow_down_factor = 0.5,
      damage_modifier = 10,
      sound = make_laser_sounds(),
    },
  },
}
)


--tank weapons
data:extend(
{
  {
    type = "gun",
    name = "gatling-gun",
    icon = "__bobwarfare__/graphics/icons/gatling-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-e[gatling-gun]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 2,
      movement_slow_down_factor = 0.8,
      projectile_center = {-0.15625, -0.07812},
      projectile_creation_distance = 1,
      range = 20,
      damage_modifier = 1.5,
      sound = make_heavy_gunshot_sounds(),
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -0.6875,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
    },
  },


  {
    type = "gun",
    name = "tank-cannon-2",
    icon = "__base__/graphics/icons/tank-cannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-2]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 60, --90
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 25,
      damage_modifier = 1.5,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7
        }
      }
    },
  },

  {
    type = "gun",
    name = "tank-cannon-3",
    icon = "__base__/graphics/icons/tank-cannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon-3]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "cannon-shell",
      cooldown = 30,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 25,
      damage_modifier = 2,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7
        }
      }
    },
  },


  {
    type = "gun",
    name = "tank-artillery-1",
    icon = "__bobwarfare__/graphics/icons/tank-artillery.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-b[artillery-1]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "artillery-shell",
      cooldown = 90,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 35,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7
        }
      }
    },
  },

  {
    type = "gun",
    name = "tank-artillery-2",
    icon = "__bobwarfare__/graphics/icons/tank-artillery.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-b[artillery-2]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "artillery-shell",
      cooldown = 60,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 35,
      damage_modifier = 1.5,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 0.7
        }
      }
    },
  },

  {
    type = "gun",
    name = "tank-laser",
    icon = "__bobwarfare__/graphics/icons/tank-laser.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-c[laser]",
    stack_size = 5,
    attack_parameters =
    {
      type = "projectile",
--      ammo_category = "tank-laser",
      ammo_category = "laser-rifle",
      cooldown = 15,
      movement_slow_down_factor = 0,
      damage_modifier = 2,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 25,
      sound = make_laser_sounds(),
    },
  },
}
)
