data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "wood-floor",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "wood-floor"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.2,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__More_Floors__/graphics/terrain/wood-floor/wood-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__More_Floors__/graphics/terrain/wood-floor/wood-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__More_Floors__/graphics/terrain/wood-floor/wood-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
        },
        inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/wood-floor/wood-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/wood-floor/wood-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/wood-floor/wood-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/wood-floor/wood-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/wood-floor/wood-o.png",
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
      map_color={r=120, g=100, b=70},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  }
	 
}
)	 
	