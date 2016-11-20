if not angelsmods.ores.enablersomode then
data:extend(
{
   {
    type = "autoplace-control",
    name = "infinite-stone",
    richness = true,
    order = "b-c"
   },
   {
    type = "noise-layer",
    name = "infinite-stone"
   },
   {
    type = "resource",
    name = "infinite-stone",
    icon = "__base__/graphics/icons/stone.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "stone"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-stone",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.0025,
		peaks = {
			{
				noise_layer = "infinite-stone",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.19,
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
        filename = "__angelsinfiniteores__/graphics/entity/ores-inf/stone-inf.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
    map_color = {r=0.478, g=0.450, b=0.317}
  }
}
)
else
data:extend(
{
    {
    type = "resource",
    name = "infinite-stone",
    icon = "__base__/graphics/icons/stone.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
	infinite=true,
    minimum=300,
	normal=1500,
    maximum=6000,
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "stone"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1},
    stages =
    {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/ores-inf/stone-inf.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
    map_color = {r=0.478, g=0.450, b=0.317}
  }
}
)
end