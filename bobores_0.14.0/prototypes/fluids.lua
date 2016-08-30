bobmods.ores.water =
{
  name = "ground-water",
  icon = "__base__/graphics/icons/fluid/water.png",
  category = "water",
  infinite = true,
  minimum = 1000,
  normal = 1000,
  hardness = 1,
  mining_time = 0.1,
  tint = {r = 0.2, g = 0.8, b = 1},
  map_color = {r = 0.2, g = 0.8, b = 1},
  collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
  particle = nil,
  items = 
  {
    {
      type = "fluid",
      name = "water",
      amount_min = 1,
      amount_max = 1,
      probability = 1
    }
  },
  sprite =
  {
    sheet = 5
  },
  disable_map_grid = true,
  enabled = false,
  autoplace =
  {
    control = "ground-water",
    sharpness = 1,
    max_probability = 0.04,
    richness_base = 6000,
    richness_multiplier = 30000,
    richness_multiplier_distance_bonus = 10,
    coverage = 0.02, -- Cover on average 2% of surface area.
    peaks =
    {
      {
        noise_layer = "ground-water",
        noise_octaves_difference = -1,
        noise_persistence = 0.4,
      }
    }
  }
}



bobmods.ores.lithia_water =
{
  name = "lithia-water",
  icon = "__bobores__/graphics/icons/lithia-water.png",
  category = "water",
  infinite = true,
  minimum = 1000,
  normal = 1000,
  hardness = 1,
  mining_time = 0.1,
  tint = {r = 0.5, g = 0.7, b = 0.8},
  map_color = {r = 0.5, g = 0.7, b = 0.8},
  collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
  particle = nil,
  items = 
  {
    {
      type = "fluid",
      name = "lithia-water",
      amount_min = 1,
      amount_max = 1,
      probability = 1
    }
  },
  sprite =
  {
    sheet = 5
  },
  disable_map_grid = true,
  enabled = false,
  autoplace =
  {
    control = "ground-water",
    sharpness = 1,
    max_probability = 0.04,
    richness_base = 6000,
    richness_multiplier = 30000,
    richness_multiplier_distance_bonus = 10,
    coverage = 0.02, -- Cover on average 2% of surface area.
    peaks =
    {
      {
        noise_layer = "lithia-water",
        noise_octaves_difference = -1,
        noise_persistence = 0.4,
      }
    }
  }
}



data:extend(
{
  {
    type = "fluid",
    name = "lithia-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=1.0, b=1.0},
    icon = "__bobores__/graphics/icons/lithia-water.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-a[water-lithia]",
  },
}
)







