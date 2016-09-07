function tankdroneanimation(scale)
  return
    {
      layers =
      {
        {
          width = 139,
          height = 110,
          frame_count = 2,
          scale = scale,
          axially_symmetrical = false,
          direction_count = 64,
          shift = {-0.140625, -0.28125},
          animation_speed = 8,
          max_advance = 1,
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
          scale = scale,
          apply_runtime_tint = true,
          axially_symmetrical = false,
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
          scale = scale,
          draw_as_shadow = true,
          axially_symmetrical = false,
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
    }
end


data:extend(
{
  {
    type = "unit",
    name = "bob-robot-tank",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"pushable", "placeable-player", "placeable-enemy", "placeable-off-grid", "player-creation"},
    minable = {mining_time = 1, result = "bob-robot-tank"},
    max_health = 500,
    corpse = "small-remnants",
    dying_explosion = "medium-explosion",
    resistances = 
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "physical",
        percent = 30
      },
      {
        type = "impact",
        percent = 50
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "acid",
        percent = 20
      },
    },
    collision_box = {{-0.45, -0.65}, {0.45, 0.65}},
    selection_box = {{-0.45, -0.65}, {0.45, 0.65}},
    distraction_cooldown = 300,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "combat-robot-laser",
      cooldown = 20, --45,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 25, --15,
      animation = tankdroneanimation(0.5),
      sound = make_laser_sounds(),
      ammo_type = 
      {
        type = "projectile",
        category = "combat-robot-laser",
        action = 
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "projectile",
              projectile = "laser", --"bob-laser-glass",
              starting_speed = 0.28
            },
          }
        }
      },
    },
    vision_distance = 30,
    movement_speed = 0.16,
    distance_per_frame = 0.15,
    -- in pu
    pollution_to_join_attack = 1250,
    run_animation = tankdroneanimation(0.5)
  },
}
)

