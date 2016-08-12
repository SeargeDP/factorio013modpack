function boblaserammo(catagory, projectile)
  return
  {
    type = "projectile",
    category = catagory,
    action = 
    {
      type = "direct",
      action_delivery =
      {
        {
          type = "projectile",
          projectile = projectile,
          starting_speed = 0.28
        },
      }
    }
  }
end

function bobmissileammo(catagory, projectile)
  return
  {
    category = catagory,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "projectile",
        projectile = projectile,
        starting_speed = 0.1,
        source_effects =
        {
          type = "create-entity",
          entity_name = "explosion-gunshot"
        }
      }
    }
  }
end



data:extend(
{
  {
    type = "ammo",
    name = "bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-a[bullet-magazine]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-gunshot"
                },
                {
                  type = "damage",
                  damage = { amount = 15, type = "physical"}
                }
              }
            }
          }
        }
      }
    },
  },

  {
    type = "ammo",
    name = "ap-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/ap-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-ap]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
            },
            {
              type = "damage",
              damage = { amount = 6, type = "bob-pierce"}
            }
          }
        }
      }
    },
  },

  {
    type = "ammo",
    name = "he-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/he-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-he]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
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
                      damage = {amount = 6, type = "explosion"}
                    },
                  }
                }
              }
            }
          }
        }
      }
    },
  },


  {
    type = "ammo",
    name = "flame-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/flame-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-flame]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
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
                      damage = {amount = 6, type = "fire"}
                    },
                  }
                }
              }
            }
          }
        }
      }
    },
  },

  {
    type = "ammo",
    name = "acid-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/acid-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-acid]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
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
                      damage = {amount = 6, type = "acid"}
                    },
                  }
                }
              }
            }
          }
        }
      }
    },
  },

  {
    type = "ammo",
    name = "poison-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/poison-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-poison]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
            type = "create-entity",
            entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
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
                      damage = {amount = 6, type = "poison"}
                    },
                  }
                }
              }
            }
          }
        }
      }
    },
  },

  {
    type = "ammo",
    name = "electric-bullet-magazine",
    icon = "__bobwarfare__/graphics/icons/electric-bullet-magazine.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "a[basic-clips]-b[bullet-magazine-electric]",
    stack_size = 100,
    magazine_size = 25,
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-entity",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-gunshot"
            },
            {
              type = "damage",
              damage = { amount = 12, type = "physical"}
            },
            {
              type = "damage",
              damage = {amount = 6, type = "electric"}
            },
          }
        }
      }
    },
  },


  {
    type = "ammo",
    name = "better-shotgun-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 20,
        action_delivery =
        {
          type = "projectile",
          projectile = "better-shotgun-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-ap-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-ap-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-ap-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 20,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-ap-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-electric-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-electric-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-electric-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 20,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-electric-projectile",
          starting_speed = 1,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-explosive-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-explosive-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-explosive-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 10,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-explosive-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-flame-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-flame-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-flame-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 10,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-flame-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-acid-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-acid-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-acid-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 10,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-acid-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },

  {
    type = "ammo",
    name = "shotgun-poison-shell",
    icon = "__bobwarfare__/graphics/icons/shotgun-poison-shell.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[shotgun-poison-shell]",
    stack_size = 500,
    magazine_size = 5,
    ammo_type =
    {
      category = "shotgun-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-entity",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 10,
        action_delivery =
        {
          type = "projectile",
          projectile = "shotgun-poison-projectile",
          starting_speed = 0.5,
          direction_deviation = 0.4,
          range_deviation = 0.4,
          max_range = 15
        }
      }
    },
  },



--[[
  {
    type = "ammo",
    name = "flame-thrower-acid",
    icon = "__base__/graphics/icons/flame-thrower-ammo.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "ammo",
    order = "f[flame-thrower-acid]",
    stack_size = 50,
    magazine_size = 100,
    ammo_type =
    {
      category = "flame-thrower",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "flame-thrower",
            explosion = "flame-thrower-acid-mist",
            direction_deviation = 0.07,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            damage = { amount = 20, type = "acid"},
            projectile_starting_speed = 0.2,
            starting_distance = 0.6,
          }
        }
      }
    },
  },
]]--

  {
    type = "ammo",
    name = "laser-rifle-battery",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-glass.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-0",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-glass"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-ruby",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-ruby.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-1",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-ruby"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-sapphire",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-sapphire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-2",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-sapphire"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-emerald",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-emerald.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-3",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-emerald"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-amethyst",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-amethyst.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-4",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-amethyst"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-topaz",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-topaz.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-5",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-topaz"),
  },

  {
    type = "ammo",
    name = "laser-rifle-battery-diamond",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-diamond.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-rifle-battery]-6",
    stack_size = 100,
    magazine_size = 50,
    ammo_type = boblaserammo("laser-rifle", "bob-laser-diamond"),
  },


  {
    type = "ammo",
    name = "bob-rocket",
    icon = "__bobwarfare__/graphics/icons/rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-0",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-piercing-rocket",
    icon = "__bobwarfare__/graphics/icons/piercing-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-piercing-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-1",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-electric-rocket",
    icon = "__bobwarfare__/graphics/icons/electric-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-electric-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-2",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-explosive-rocket",
    icon = "__bobwarfare__/graphics/icons/explosive-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-explosive-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-3",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-flame-rocket",
    icon = "__bobwarfare__/graphics/icons/flame-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-flame-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-4",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-poison-rocket",
    icon = "__bobwarfare__/graphics/icons/poison-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-poison-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-5",
    stack_size = 500
  },

  {
    type = "ammo",
    name = "bob-acid-rocket",
    icon = "__bobwarfare__/graphics/icons/acid-rocket.png",
    flags = {"goes-to-main-inventory"},
    ammo_type = bobmissileammo("rocket", "bob-acid-rocket"),
    subgroup = "bob-ammo",
    order = "d[rocket-launcher]-c-6",
    stack_size = 500
  },
}
)




data:extend(
{
  {
    type = "ammo",
    name = "scatter-cannon-shell",
    icon = "__base__/graphics/icons/cannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "cannon-shell",
      target_type = "direction",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        repeat_count = 20,
        action_delivery =
        {
          type = "projectile",
          projectile = "cannon-projectile-pellet",
          starting_speed = 1,
          direction_deviation = 0.5,
          range_deviation = 0.3,
          max_range = 20,
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-c[scatter]",
    stack_size = 100
  },

  {
    type = "ammo",
    name = "poison-artillery-shell",
    icon = "__base__/graphics/icons/poison-capsule.png",
    flags = {"goes-to-quickbar"},
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "poison-artillery-projectile",
          starting_speed = 0.3,
          max_range = 35,
        }
      }
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[poison]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "explosive-artillery-shell",
    icon = "__base__/graphics/icons/grenade.png",
    flags = {"goes-to-quickbar"},
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-artillery-projectile",
          starting_speed = 0.3,
          max_range = 35,
        }
      }
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[explosive]",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "distractor-artillery-shell",
    icon = "__bobwarfare__/graphics/icons/distractor.png",
    flags = {"goes-to-quickbar"},
    ammo_type =
    {
      category = "artillery-shell",
      target_type = "position",
      source_effects =
      {
        type = "create-explosion",
        entity_name = "explosion-gunshot"
      },
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "distractor-artillery-projectile",
          starting_speed = 0.3,
          max_range = 35,
        }
      }
    },
    subgroup = "ammo",
    order = "e[artillery-shell]-a[distractor]",
    stack_size = 100
  },
}
)


data:extend(
{
  {
    type = "ammo",
    name = "laser-beam-rifle-ammo",
    icon = "__bobwarfare__/graphics/icons/laser-rifle-battery-sapphire.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ammo",
    order = "f[laser-beam]",
    stack_size = 100,
    magazine_size = 50,
    ammo_type =
    {
--      category = "beam-rifle",
      category = "laser-rifle",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "beam",
          beam = "electric-beam",
          max_length = 25,
          duration = 20,
        }
      }
    },
  },
}
)



