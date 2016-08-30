data:extend(
{
  {
    type = "car",
    name = "tank-2",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "tank-2"},
    max_health = 2500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 25,
        percent = 60
      },
      {
        type = "poison",
        decrease = 25,
        percent = 60
      },
      {
        type = "physical",
        decrease = 25,
        percent = 45
      },
      {
        type = "impact",
        decrease = 100,
        percent = 75
      },
      {
        type = "explosion",
        decrease = 25,
        percent = 45
      },
      {
        type = "acid",
        decrease = 25,
        percent = 40
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.7,
    braking_power = "1000kW",
    burner =
    {
      effectivity = 0.85,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "800kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 139,
          height = 110,
          frame_count = 2,
          direction_count = 64,
          shift = {-0.140625, -0.28125},
          animation_speed = 8,
          max_advance = 1,
          tint = {r = 0.7, g = 0.8, b = 1},
          stripes =
          {
            {
             filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }
          }
        },
        {
          width = 109,
          height = 88,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.140625, -0.65625},
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          })
        },
        {
          width = 154,
          height = 99,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.59375, 0.328125},
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/tank/base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16,
           }
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/turret.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          tint = {r = 0.7, g = 0.8, b = 1},
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {
          filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }
      }
    },
    turret_rotation_speed = 0.6 / 60,
    turret_return_timeout = 240,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.006,
    tank_driving = true,
    weight = 20000,
    inventory_size = 100,
    guns = {"tank-cannon-2", "tank-artillery-1", "gatling-gun"},
    equipment_grid = "tank-2",
  },

  {
    type = "car",
    name = "tank-3",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
    minable = {mining_time = 1, result = "tank-3"},
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    energy_per_hit_point = 0.5,
    resistances =
    {
      {
        type = "fire",
        decrease = 35,
        percent = 75
      },
      {
        type = "poison",
        decrease = 35,
        percent = 75
      },
      {
        type = "physical",
        decrease = 35,
        percent = 60
      },
      {
        type = "impact",
        decrease = 100,
        percent = 95
      },
      {
        type = "explosion",
        decrease = 35,
        percent = 60
      },
      {
        type = "acid",
        decrease = 35,
        percent = 60
      }
    },
    collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
    selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
    effectivity = 0.8,
    braking_power = "1200kW",
    burner =
    {
      effectivity = 1,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "1000kW",
    terrain_friction_modifier = 0.2,
    friction = 0.002,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {-0.6, -14},
        size = 2,
        intensity = 0.6
      },
      {
        type = "oriented",
        minimum_darkness = 0.3,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 2,
          width = 200,
          height = 200
        },
        shift = {0.6, -14},
        size = 2,
        intensity = 0.6
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 139,
          height = 110,
          frame_count = 2,
          direction_count = 64,
          shift = {-0.140625, -0.28125},
          animation_speed = 8,
          max_advance = 1,
          tint = {r = 1, g = 0.8, b = 0.7},
          stripes =
          {
            {
             filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {
             filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }
          }
        },
        {
          width = 109,
          height = 88,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.140625, -0.65625},
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22,
            },
            {
              filename = "__base__/graphics/entity/tank/base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20,
            },
          })
        },
        {
          width = 154,
          height = 99,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {0.59375, 0.328125},
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/tank/base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16,
           },
           {
            filename = "__base__/graphics/entity/tank/base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16,
           }
          })
        }
      }
    },
    turret_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/tank/turret.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          tint = {r = 1, g = 0.8, b = 0.7},
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {
          filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }
      }
    },
    turret_rotation_speed = 1 / 60,
    turret_return_timeout = 180,
    stop_trigger_speed = 0.2,
    sound_no_fuel =
    {
      {
        filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
        volume = 0.6
      },
    },
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0.6
          },
        }
      },
    },
    sound_minimum_speed = 0.15;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/fight/tank-engine.ogg",
        volume = 0.6
      },
      activate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-start.ogg",
        volume = 0.6
      },
      deactivate_sound =
      {
        filename = "__base__/sound/fight/tank-engine-stop.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume = 0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.01,
    tank_driving = true,
    weight = 20000,
    inventory_size = 100,
    guns = {"tank-cannon-3", "tank-artillery-2", "tank-laser", "gatling-gun"},
    equipment_grid = "tank-3",
  },
}
)

