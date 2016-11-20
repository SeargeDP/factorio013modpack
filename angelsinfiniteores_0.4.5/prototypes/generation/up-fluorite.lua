data.raw["resource"]["fluorite"].stages={sheet=
		{
		filename = "__angelsinfiniteores__/graphics/entity/ores/ore-7.png",
		--tint = {r=0.60, g=0.28, b=0.34},
		tint = {r=0.80, g=0.50, b=0.60},
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
        }
}

data.raw["resource"]["fluorite"].map_color={r=0.80, g=0.50, b=0.60}
data.raw["item"]["fluorite"].icon="__angelsinfiniteores__/graphics/icons/up-fluorite.png"

if not angelsmods.ores.enablersomode then
data:extend(
{
    {
    type = "autoplace-control",
    name = "infinite-fluorite",
    richness = true,
    order = "b-f"
    },
  	{
	type = "noise-layer",
	name = "infinite-fluorite"
	},
    {
    type = "resource",
    name = "infinite-fluorite",
    icon = "__angelsinfiniteores__/graphics/icons/up-fluorite.png",
    flags = {"placeable-neutral"},
    order="a-b-f",
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "fluorite"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
	autoplace =
	{
		control = "infinite-fluorite",
		sharpness = 1,
		richness_multiplier = 5000,
		richness_multiplier_distance_bonus = 20,
		richness_base = 2000,
		coverage = 0.0025,
		peaks = {
			{
				noise_layer = "infinite-fluorite",
				noise_octaves_difference = -2.5,
				noise_persistence = 0.3,
				starting_area_weight_optimal = 0,
				starting_area_weight_range = 0,
				starting_area_weight_max_range = 2,
			},
			{
				influence = 0.14,
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
		filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-7-inf.png",
		tint = {r=0.80, g=0.50, b=0.60},
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
	map_color = {r=0.80, g=0.50, b=0.60},
  }
})
else
data:extend(
{
    {
    type = "resource",
    name = "infinite-fluorite",
    icon = "__angelsinfiniteores__/graphics/icons/up-fluorite.png",
    flags = {"placeable-neutral"},
    order="a-b-f",
	infinite=true,
	minimum=300,
	normal=1500,
	maximum=6000,
    minable =
    {
      hardness = 0.4,
      mining_particle = "stone-particle",
      mining_time = 2,
      result = "fluorite"
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    stage_counts = {1},
    stages =
    {
		sheet =
      {
		filename = "__angelsinfiniteores__/graphics/entity/ores-inf/ore-7-inf.png",
		tint = {r=0.80, g=0.50, b=0.60},
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 8,
        variation_count = 1
      }
    },
	map_color = {r=0.80, g=0.50, b=0.60},
  }
})
end