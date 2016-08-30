data:extend(
{
  {
    type = "projectile",
    name = "area-acid-projectile-purple",
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
            type = "play-sound",
            sound =
            {
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                volume = 0.8
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "acid-splash-purple"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "acid"}
                  },
                }
              }
            }
          }
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
    name = "poison-spit-projectile",
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
            type = "play-sound",
            sound =
            {
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                volume = 0.8
              }
            }
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
              perimeter = 2,
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-green.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "fire-spit-projectile",
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
            type = "play-sound",
            sound =
            {
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                volume = 0.8
              }
            }
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
              perimeter = 2,
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-red.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "explosive-spit-projectile",
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
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "explosion"}
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-yellow.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "electric-spit-projectile",
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
            type = "play-sound",
            sound =
            {
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-2.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-1.ogg",
                volume = 0.8
              },
              {
                filename = "__base__/sound/creatures/projectile-acid-burn-long-2.ogg",
                volume = 0.8
              }
            }
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "electric"}
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-orange.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "piercing-spit-projectile",
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
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 10, type = "bob-pierce"}
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-blue.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "titan-spit-projectile",
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
            entity_name = "small-fire-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-orange.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "behemoth-spit-projectile",
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
            entity_name = "small-poison-cloud"
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "poison"}
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
      filename = "__bobenemies__/graphics/entities/acid-projectile-blue.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__bobenemies__/graphics/entities/acid-projectile-shadow.png",
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
    name = "leviathan-spit-projectile",
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
            entity_name = "small-poison-cloud"
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
              perimeter = 3,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 3, type = "electric"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "bob-pierce"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "explosion"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "acid"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "fire"}
                  },
                  {
                    type = "damage",
                    damage = {amount = 3, type = "poison"}
                  },
                }
              }
            }
          }
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
}
)

