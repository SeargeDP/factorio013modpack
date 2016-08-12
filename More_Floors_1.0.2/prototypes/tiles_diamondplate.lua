data:extend(
{
  {	

	  type = "tile",
      name = "diamond-plate",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "diamond-plate"},
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
            picture = "__More_Floors__/graphics/terrain/metal-floor/diamond-plate1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/diamond-plate2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__More_Floors__/graphics/terrain/metal-floor/diamond-plate4.png",
            count = 4,
            size = 4,
            probability = 1,
          },
        },
        inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/concrete-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/concrete-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/concrete-side.png",
          count = 8
        },
        u_transition =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/concrete-u.png",
          count = 8
        },
        o_transition =
        {
          picture = "__More_Floors__/graphics/terrain/stone-floor/concrete-o.png",
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
      map_color={r=120, g=120, b=115},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier 
  
  }
	 
}
)	 
	