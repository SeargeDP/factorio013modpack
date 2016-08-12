function boblaseranimation(scale, tint)
  return
  {
    filename = "__bobwarfare__/graphics/entities/projectiles/laser.png",
    scale = scale,
    tint = tint,
    frame_count = 1,
    width = 7,
    height = 14,
    priority = "high"
  }
end

function boblaseraction(effectname, damage)
  return
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-entity",
          entity_name = effectname
        },
        {
          type = "damage",
          damage = {amount = damage, type = "laser"}
        }
      }
    }
  }
end


data:extend(
{
  {
    type = "projectile",
    name = "better-shotgun-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 8, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = {r=1, g=1, b=1, a=1},
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },

  {
    type = "projectile",
    name = "shotgun-ap-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 8, type = "bob-pierce"}
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = {r=0.3, g=0.5, b=1.0, a=1},
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },

  {
    type = "projectile",
    name = "shotgun-electric-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1}, {0.05, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "damage",
          damage = {amount = 8, type = "electric"}
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = {r=1, g=0.6, b=0.3, a=1},
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },

  {
    type = "projectile",
    name = "shotgun-explosive-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.5, -1}, {0.5, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 1,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "explosion"}
                  },
                }
              }
            },
          },
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-yellow.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },

  {
    type = "projectile",
    name = "shotgun-flame-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.5, -1}, {0.5, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 1,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "fire"}
                  },
                }
              }
            },
          },
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-red.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },

  {
    type = "projectile",
    name = "shotgun-acid-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.5, -1}, {0.5, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 1,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "acid"}
                  },
                }
              }
            },
          },
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },

  {
    type = "projectile",
    name = "shotgun-poison-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.5, -1}, {0.5, 1}},
    acceleration = 0,
    direction_only = true,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
--          {
--            type = "create-entity",
--            entity_name = "small-poison-cloud"
--          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 1,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 8, type = "poison"}
                  },
                }
              }
            },
          },
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-green.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-projectile-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },


  {
    type = "projectile",
    name = "bob-laser-glass",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-glass", 45),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.8, g=0.8, b=0.8, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-ruby",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-ruby", 60),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=0.2, b=0.2, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-sapphire",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-sapphire", 65),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.2, g=0.6, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-emerald",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-emerald", 70),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.3, g=1, b=0.3, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-amethyst",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-amethyst", 75),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.8, g=0.2, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-topaz",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-topaz", 80),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=0.6, b=0.2, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-laser-diamond",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-diamond", 90),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=1, b=1, a=1}),
    speed = 0.15
  },


  {
    type = "projectile",
    name = "bob-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "damage",
            damage = {amount = 160, type = "physical"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-piercing-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "damage",
            damage = {amount = 160, type = "bob-pierce"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/piercing-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-electric-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "damage",
            damage = {amount = 160, type = "electric"}
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/electric-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-explosive-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120, type = "explosion"}
                  },
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/explosive-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-flame-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-fire-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120, type = "fire"}
                  },
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/flame-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-poison-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "create-entity",
            entity_name = "small-poison-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120, type = "poison"}
                  },
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/poison-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },

  {
    type = "projectile",
    name = "bob-acid-rocket",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "explosion"
          },
          {
            type = "create-entity",
            entity_name = "acid-splash-purple"
          },
          {
            type = "damage",
            damage = {amount = 80, type = "explosion"}
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6.5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 120, type = "acid"}
                  },
                }
              }
            },
          },
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          },
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/acid-rocket.png",
      frame_count = 1,
      width = 18,
      height = 39,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/rocket-shadow.png",
      frame_count = 1,
      width = 18,
      height = 32,
      priority = "high"
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, 0},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },


  {
    type = "projectile",
    name = "bob-blue-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-sapphire", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.2, g=0.6, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-green-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-emerald", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.3, g=1, b=0.3, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-purple-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-amethyst", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.8, g=0.2, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-yellow-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-topaz", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=0.8, b=0.2, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-white-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-diamond", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=1, b=1, a=1}),
    speed = 0.15
  },
}
)




data:extend(
{
  {
    type = "projectile",
    name = "cannon-projectile-pellet",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 30,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "damage", 
            damage = {amount = 8, type = "physical"}
          },
          {
            type = "damage", 
            damage = { amount = 4 , type = "bob-pierce"}
          },
          {
            type = "damage",
            damage = { amount = 2 , type = "explosion"}
          }
        }
      }
    },
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/projectiles/shotgun-shot.png",
      tint = {r=1, g=1, b=1, a=0.8},
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },

  {
    type = "projectile",
    name = "poison-artillery-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "poison-artillery-cloud"
            },
          },
        }
      },
      {
        type = "area",
        perimeter = 11,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 200, type = "poison"}
            },
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            },
          }
        }
      },
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/poison-capsule/poison-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke,
  },

  {
    type = "projectile",
    name = "explosive-artillery-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "medium-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 11,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 300, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
    smoke = capsule_smoke,
  },

  {
    type = "projectile",
    name = "distractor-artillery-projectile",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            show_in_tooltip = true,
            entity_name = "distractor",
            offsets = {{0.6, -0.8},{-0.6, -0.8},{0.6, 0.8},{-0.6, 0.8},{1, 0},{-1, 0}}
          }
        }
      },
      {
        type = "area",
        perimeter = 11,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 50, type = "explosion"}
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 4},
    animation =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/distractor-capsule.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    shadow =
    {
      filename = "__base__/graphics/entity/combat-robot-capsule/combat-robot-capsule-shadow.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
    smoke = capsule_smoke
  },
}
)



