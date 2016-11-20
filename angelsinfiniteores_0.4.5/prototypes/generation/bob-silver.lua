if not angelsmods.ores.enablersomode then
data:extend(
{
	{
	type = "autoplace-control",
	name = "infinite-silver-ore",
	richness = true,
	order = "b-e"
	},
	{
	type = "noise-layer",
	name = "infinite-silver-ore",
	},
	{
	type = "resource",
	name = "infinite-silver-ore",
	icon = "__bobores__/graphics/icons/silver-ore.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	tint = {r = 0.875, g = 0.975, b = 1},
	map_color = {r=0.578, g=0.684, b=0.695},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 0.6,
	  mining_particle = "silver-ore-particle",
	  mining_time = 1.5,
	  result = "silver-ore"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-silver-ore",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.0025,
		peaks = {
			{
				noise_layer = "infinite-silver-ore",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.21,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			}
		}
	},
	stage_counts = {1},
	stages =
	{
	  sheet =
	  {
		filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-3-inf.png",
		priority = "extra-high",
		tint = {r = 0.875, g = 0.975, b = 1},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
	}
}
)
else
data:extend(
{
	{
	type = "resource",
	name = "infinite-silver-ore",
	icon = "__bobores__/graphics/icons/silver-ore.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	tint = {r = 0.875, g = 0.975, b = 1},
	map_color = {r=0.578, g=0.684, b=0.695},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 0.6,
	  mining_particle = "silver-ore-particle",
	  mining_time = 1.5,
	  result = "silver-ore"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	stage_counts = {1},
	stages =
	{
	  sheet =
	  {
		filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-3-inf.png",
		priority = "extra-high",
		tint = {r = 0.875, g = 0.975, b = 1},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
	}
}
)
end