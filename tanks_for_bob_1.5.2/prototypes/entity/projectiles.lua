data:extend(
{
 --50mm-Mortar
 {
    type = "projectile",
    name = "50mm-projectile",
    flags = {"not-on-map"},
    acceleration = 0.0,

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
              entity_name = "big-explosion",
              offset_deviation = { {-4,-4},{4,4}},
            },
            {
              type = "create-sticker",
              sticker = "slowdown-sticker"
            },
          }
        }
      },
      {
        type = "area",
        perimeter = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 350, type = "explosion"}
            },
          }
        }
      }
    },
    light = {intensity = 0.5, size = 8},
    animation =
    {
      filename = "__tanks_for_bob__/graphics/entity/bullet-artillery/bullet-artillery.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
 --50mm-Mortar-Poison
 {
    type = "projectile",
    name = "50mm-projectile-poison",
    flags = {"not-on-map"},
    acceleration = 0.015,
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
            entity_name = "explosion"
            },
            {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
            },
            {
               type = "create-entity",
               entity_name = "poison-cloud-2"
               --entity_name = "lazer-cloud"
            },
            {
                  type = "create-sticker",
            sticker = "slowdown-sticker"
            },
          }
        }
      },
      {
        type = "area",
        perimeter = 8,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 350, type = "explosion"}
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
  },
 --tank-mine-projectile
 {
    type = "projectile",
    name = "tank-mine-projectile",
    flags = {"not-on-map"},
    acceleration = 0.015,
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
            entity_name = "land-mine"
            },
          }
       }
    },
    },
    animation =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
  },
 --tank-mine-projectile-poison
 {
    type = "projectile",
    name = "tank-mine-projectile-poison",
    flags = {"not-on-map"},
    acceleration = 0.015,
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
              entity_name = "land-mine-poison"
            },
          }
       }
    },
    },
    animation =
    {
      filename = "__base__/graphics/entity/land-mine/land-mine.png",
      frame_count = 1,
      width = 32,
      height = 32,
      priority = "high"
    },
  },
--45mm-projectile
 {
    type = "projectile",
    name = "45mm-projectile",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 4000,
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
              entity_name = "auto-cannon-hit",
            },
            {
              type = "damage",
              damage = { amount = 350 , type = "physical"}
            },
          }
        }
       }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
--cannon-projectile-2 (cannon-shell-2
 {
    type = "projectile",
    name = "cannon-projectile-2",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -1.1}, {0.05, 1.1}},
    acceleration = 0,
    direction_only = true,
    piercing_damage = 0,
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
              entity_name = "big-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            },
            {
              type = "damage",
              damage = { amount = 500 , type = "physical"}
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 4,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 350, type = "explosion"}
            }
          }
        }
      }
    },
    final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
--tank-rockets
  {
    type = "projectile",
    name = "tank-rocket",
    flags = {"not-on-map"},
    acceleration = 0.007,
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
              perimeter = 5,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 250, type = "explosion"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            },
          }
        }
      }
    },
    light = {intensity = 0.5, size = 5},
    animation =
    {
      filename = "__tanks_for_bob__/graphics/entity/tank-rocket/tank-rocket.png",
      frame_count = 1,
      width = 10,
      height = 30,
      priority = "high"
    },
    shadow =
    {
      filename = "__tanks_for_bob__/graphics/entity/tank-rocket/tank-rocket-shadow.png",
      frame_count = 1,
      width = 10,
      height = 30,
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
 --WMD-Mortar
 {
    type = "projectile",
    name = "wmd-projectile",
    flags = {"not-on-map"},
    acceleration = 0.15,
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
            entity_name = "explosion"
            },
            {
            type = "create-entity",
            entity_name = "massive-scorchmark",
            check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 25,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
            type = "damage",
            damage = {amount = 1750, type = "explosion"}
            },
            {
            type = "create-entity",
            entity_name = "explosion"
            }
          }
        }
      }
    },
    light = {intensity = 0.7, size = 12},
    animation =
    {
      filename = "__tanks_for_bob__/graphics/icons/tank-ammo-wmd.png",
      frame_count = 1,
      width = 32,
      height = 32,
    scale = 1,
      priority = "high"
    },
  },
 --piercing-shotgun-pellet-2
 {
    type = "projectile",
    name = "piercing-shotgun-pellet-2",
    flags = {"not-on-map"},
    collision_box = {{-0.05, -0.25}, {0.05, 0.25}},
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
          damage = {amount = 30, type = "physical"}
        }
      }
    },
    animation =
    {
      filename = "__base__/graphics/entity/piercing-bullet/piercing-bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
}
)