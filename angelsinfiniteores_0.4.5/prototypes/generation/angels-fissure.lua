data:extend(
{
  {
    type = "noise-layer",
    name = "angels-fissure"
  },
  {
    type = "autoplace-control",
    name = "angels-fissure",
    richness = true,
    order = "b-e"
  },
  {
    type = "resource",
    name = "angels-fissure",
    icon = "__base__/graphics/icons/crude-oil.png",
    flags = {"placeable-neutral"},
    category = "angels-fissure",
    order="a-b-a",
    infinite = true,
    minimum = 2500,
    normal = 10000,
    minable =
    {
      hardness = 1,
      mining_time = 1,
      results =
      {
        {
          type = "fluid",
          name = "thermal-water",
          amount_min = 2,
          amount_max = 2,
          probability = 1
        },
      }
    },
    collision_box = {{ -4.4, -4.4}, {4.4, 4.4}},
    selection_box = {{ -2.5, -2.5}, {2.5, 2.5}},
    autoplace =
    {
      control = "angels-fissure",
      sharpness = 0.98,
      max_probability = 0.04,
      richness_base = 6000,
      richness_multiplier = 30000,
      richness_multiplier_distance_bonus = 10,
      coverage = 0.01,
      peaks =
      {
        {
          noise_layer = "angels-fissure",
          noise_octaves_difference = -1.5,
          noise_persistence = 0.3,
        }
      }
    },
    stage_counts = {0},
    stages =
    {
      sheet =
      {
        filename = "__angelsinfiniteores__/graphics/entity/patches/fissure.png",
		tint = {r = 0.65, g = 0.4, b = 0.15},
        priority = "extra-high",
        width = 256,
        height = 256,
        frame_count = 4,
        variation_count = 1
      }
    },
    map_color = {r=1, g=0.5, b=0},
    map_grid = false
  }
})
