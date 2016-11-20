data:extend(
{
  {
    type = "particle",
    name = "angels-ore3-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures =
    {
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-1.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-2.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-3.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-4.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-5.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-6.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-7.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-8.png",
        priority = "extra-high",
        tint = {r=0.54, g=0.55, b=0.62},
        width = 6,
        height = 5,
        frame_count = 1
      }
    },
    shadows =
    {
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 7,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 6,
        height = 7,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 9,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-5.png",
        priority = "extra-high",
        width = 5,
        height = 5,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-6.png",
        priority = "extra-high",
        width = 6,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-7.png",
        priority = "extra-high",
        width = 7,
        height = 8,
        frame_count = 1
      },
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-particle/ore-particle-shadow-8.png",
        priority = "extra-high",
        width = 6,
        height = 5,
        frame_count = 1
      }
    }
  }
}
)


data:extend(
{
	{
	type = "autoplace-control",
	name = "angels-ore3",
	richness = true,
	order = "b-e"
	},
	{
	type = "noise-layer",
	name = "angels-ore3"
	},
	{
	type = "resource",
	name = "angels-ore3",
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore3.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.42, g=0.71, b=0.86},
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore3-particle",
	  mining_time = 2,
	  result = "angels-ore3"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "angels-ore3",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.02,
		peaks = {
			{
				noise_layer = "angels-ore3",
				noise_octaves_difference = -1.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				noise_layer = "angels-ore3",
				noise_octaves_difference = -2,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 1,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.13,
				starting_area_weight_optimal = 1,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			}
		}
	},
    stage_counts = {1000, 600, 400, 200, 100, 50, 20, 1},
	stages =
	{
	  sheet =
	  {
		filename = "__angelsinfiniteores__/graphics/entity/ores/ore-3.png",
		priority = "extra-high",
		tint = {r=0.42, g=0.71, b=0.86},
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
	  }
	},
  },
}
)