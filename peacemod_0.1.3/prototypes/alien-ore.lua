data:extend(
{
  {
    type = "autoplace-control",
    name = "alien-ore",
    richness = true,
    order = "b-f-b"
  },

  {
    type = "noise-layer",
    name = "alien-ore"
  },

  {
    type = "item",
    name = "alien-ore",
    icon = "__peacemod__/graphics/icons/alien-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-resource",
    order = "g[alien-ore]",
    stack_size = 100
  },

  {
    type = "resource",
    name = "alien-ore",
    icon = "__peacemod__/graphics/icons/alien-ore.png",
    flags = {"placeable-neutral"},
    order="a-b-e",
    minable =
    {
      hardness = 1.4,
      mining_particle = "alien-ore-particle",
      mining_time = 3,
      result = "alien-ore"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "alien-ore",
      sharpness = 1,
      richness_multiplier = 500,
      richness_base = 7,
      size_control_multiplier = 0.06,
      peaks = {
			
        {
          influence = 0.20,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 20,
        },
        {
          influence = 0.6,
          noise_layer = "alien-ore",
          noise_octaves_difference = -2.6,
          noise_Persistence = 0.38,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "copper-ore",
          noise_octaves_difference = -2.3,
          noise_Persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "stone",
          noise_octaves_difference = -2.3,
          noise_Persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "iron-ore",
          noise_octaves_difference = -2.3,
          noise_Persistence = 0.45,
        },
        {
          influence = -0.2,
          max_influence = 0,
          noise_layer = "coal",
          noise_octaves_difference = -2.3,
          noise_Persistence = 0.45,
        }			

      },
    },
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
    stages = 
    {
		sheet =
		{	
			filename = "__peacemod__/graphics/entity/alien-ore/alien-ore.png",
			priority = "extra-high",
			width = 38,
			height = 38,
			frame_count = 4,
			variation_count = 8
		}
    },
    -- map_color = {r=0.500, g=0.000, b=0.999}
		map_color = {r=0.999, g=0.000, b=0.000}
  },

  {
    type = "particle",
    name = "alien-ore-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures = {
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-2.png",
        priority = "extra-high",
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-3.png",
        priority = "extra-high",
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-4.png",
        priority = "extra-high",
        width = 6,
        height = 5,
        frame_count = 1
      }
    },
    shadows = {
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__peacemod__/graphics/entity/alien-ore/alien-ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 6,
        height = 5,
        frame_count = 1
      }
    }
  },
}
)