if not angelsmods.ores.enablersomode then
data:extend(
{
	{
	type = "autoplace-control",
	name = "infinite-angels-ore4",
	richness = true,
	order = "b-e"
	},
	{
	type = "noise-layer",
	name = "infinite-angels-ore4"
	},
	{
	type = "resource",
	name = "infinite-angels-ore4",
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore4.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.75, g=0.75, b=0.75},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore4-particle",
	  mining_time = 2,
	  result = "angels-ore4"
	},
	collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
	selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-angels-ore4",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.0025,
		peaks = {
			{
				noise_layer = "infinite-angels-ore4",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.20,
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
		tint = {r=0.75, g=0.75, b=0.75},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
  },
}
)
else
data:extend(
{
  {
	type = "resource",
	name = "infinite-angels-ore4",
	icon = "__angelsinfiniteores__/graphics/icons/angels-ore4.png",
	flags = {"placeable-neutral"},
	order="a-b-a",
	map_color = {r=0.75, g=0.75, b=0.75},
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
	minable =
	{
	  hardness = 1.5,
	  mining_particle = "angels-ore4-particle",
	  mining_time = 2,
	  result = "angels-ore4"
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
		tint = {r=0.75, g=0.75, b=0.75},
		width = 38,
		height = 38,
		frame_count = 8,
		variation_count = 1
	  }
	},
  },
}
)
end