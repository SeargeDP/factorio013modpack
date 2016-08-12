


data:extend({

 
	---- Collector - Ground Items
  {
    type = "radar",
    name = "collector-grounditems",
    icon = "__base__/graphics/icons/radar.png",
    flags = {"placeable-player", "player-creation"},   
	minable = {hardness = 0.8, mining_time = 1.5, result = "collector-grounditems"},
    max_health = 150,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-1.0, -1.0}, {1.0, 1.0}},
    energy_per_sector = "15MJ",
    max_distance_of_sector_revealed = 14,
    max_distance_of_nearby_sector_revealed = 3,
    energy_per_nearby_scan = "500kJ",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "750kW",
    pictures =
    {
      filename = "__base__/graphics/entity/radar/radar.png",
      priority = "low",
      width = 153,
      height = 131,
      apply_projection = false,
      direction_count = 64,
      line_length = 8,
      shift = {0.875, -0.34375}
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/radar.ogg"
        }
      },
      apparent_volume = 2,
    }
  },

})
