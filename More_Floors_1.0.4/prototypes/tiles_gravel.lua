data:extend(
{
  {	

	  type = "tile",
      name = "gravel",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "gravel"},
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
            picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel1.png",
            count = 16,
            size = 1
          }
        },
        
		inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel-outer-corner.png",
          count = 1
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel-side.png",
          count = 10
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel-u.png",
          count = 10
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/gravel-floor/gravel-o.png",
          count = 10
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
      map_color={r=80, g=80, b=75},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  }
	 
}
)	 
	