
data:extend({
	{
    type = "container",
    name = "personal-spawn-marker",
    flags = {"placeable-player", "player-creation"},
    icon = "__Personal_Spawns__/graphics/icons/PersonalSpawnMarkerIcon.png",
    subgroup = "grass",
	max_health = 200,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    minable = {mining_time = 1, result = "personal-spawn-marker-item"},
    corpse = "small-remnants",
	picture =
	{
		filename = "__Personal_Spawns__/graphics/PersonalSpawnMarker.png",
		width = 64,
		height = 64
	},
	inventory_size = 1,
    energy_usage_per_tick = "0KW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    }
  }
})