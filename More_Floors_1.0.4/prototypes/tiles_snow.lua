data:extend(
{
  {	  
  
  
	  type = "tile",
      name = "snow",
      needs_correction = false,
      minable = {hardness = 0.2, mining_time = 0.5, result = "snow"},
      mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
      collision_mask = {"ground-tile"},
      walking_speed_modifier = 1.0,
      layer = 61,
      decorative_removal_probability = 0.9,
      variants =
      {
        main =
        {
          {
             picture = "__More_Floors__/graphics/terrain/biome-floor/snow-floor1.png",
            count = 16,
            size = 1
          },
          {
            picture = "__More_Floors__/graphics/terrain/biome-floor/snow-floor2.png",
            count = 4,
            size = 2,
            probability = 0.39,
          },
          {
            picture = "__More_Floors__/graphics/terrain/biome-floor/snow-floor4.png",
            count = 4,
            size = 4,
            probability = 1,	
          },  
        },



        inner_corner =
        {
          picture = "__More_Floors__/graphics/terrain/biome-floor/snow-inner-corner.png",
          count = 8
        },
        outer_corner =
        {
          picture = "__More_Floors__/graphics/terrain/biome-floor/snow-outer-corner.png",
          count = 8
        },
        side =
        {
          picture = "__More_Floors__/graphics/terrain/biome-floor/snow-side.png",
          count = 8
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
      map_color={r=200, g=200, b=210},
      ageing=0,
      vehicle_friction_modifier = concrete_vehicle_speed_modifier
  }
	 
}
)	 
		 
	