data:extend(
{
     {
      type = "tile",
      name = "arrow-grate",
      needs_correction = false,
      next_direction = "arrow-grate-right",
      minable = {hardness = 0.2, mining_time = 0.5, result = "arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.6,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-up1.png",
            count = 1,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
    {
      type = "tile",
      name = "arrow-grate-right",
      needs_correction = false,
      next_direction = "arrow-grate-down",
      minable = {hardness = 0.2, mining_time = 0.5, result = "arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.6,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-right1.png",
            count = 1,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
	{
      type = "tile",
      name = "arrow-grate-down",
      needs_correction = false,
      next_direction = "arrow-grate-left",
      minable = {hardness = 0.2, mining_time = 0.5, result = "arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.6,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-down1.png",
            count = 1,
            size = 1
          }
          
        },
        inner_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete-left-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    },
    {
      type = "tile",
      name = "arrow-grate-left",
      needs_correction = false,
      next_direction = "arrow-grate",
      minable = {hardness = 0.2, mining_time = 0.5, result = "arrow-grate"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.6,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/arrow-grate-left1.png",
            count = 1,
            size = 1
          }
          
        },
        
		inner_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__base__/graphics/terrain/hazard-concrete-right/hazard-concrete-right-o.png",
          count = 1
        }
      },
      walking_sound =
      {
        {
          filename = "__base__/sound/walking/concrete-01.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-02.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-03.ogg",
          volume = 1.2
        },
        {
          filename = "__base__/sound/walking/concrete-04.ogg",
          volume = 1.2
        }
      },
      map_color={r=100, g=100, b=100},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
    
  }
}
)