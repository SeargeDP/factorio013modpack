data.moweather = true

local EmptyImage = {
	filename = "__moweather__/graphics/empty.png",
	priority = "low",
	width = 1,
	height = 1,
	frame_count = 1,
	direction_count = 1,
	y=0
}

data:extend(
{
{
    type = "explosion",
    name = "thunder-roll",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations =
    {
      {
        filename = "__moweather__/graphics/empty.png",
        priority = "low",
        width = 32,
        height = 32,
        frame_count = 1
      }
    },   
	sound =
    {
      {
        filename = "__moweather__/sound/thunder1.ogg",
        volume = 0.6
      },
	  {
        filename = "__moweather__/sound/thunder2.ogg",
        volume = 0.6
      },
	  {
        filename = "__moweather__/sound/thunder3.ogg",
        volume = 0.6
      }
    },
    light = {intensity = 4, size = 100},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1
  },
  {
    type = "explosion",
    name = "rain-loop",
    flags = {"not-on-map"},
    animation_speed = 5,
    animations =
    {
      {
        filename = "__moweather__/graphics/empty.png",
        priority = "low",
        width = 32,
        height = 32,
        frame_count = 1
      }
    },   
	sound =
    {
      {
        filename = "__moweather__/sound/rain.ogg",
        volume = 0.3
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke-fast",
    smoke_count = 0,
    smoke_slow_down_factor = 1
  },
  {
    type = "explosion",
    name = "rain-drops",
    flags = {"not-on-map"},
    animations =
    {
      {
        filename = "__moweather__/graphics/Rain/rain-splash-1.png",
        priority = "low",
        width = 200,
        height = 200,
        frame_count = 6,
		animation_speed = 0.1
      },
	  {
        filename = "__moweather__/graphics/Rain/rain-splash-2.png",
        priority = "low",
        width = 200,
        height = 200,
        frame_count = 6,
		animation_speed = 0.1
      },
	  {
        filename = "__moweather__/graphics/Rain/rain-splash-3.png",
        priority = "low",
        width = 200,
        height = 200,
        frame_count = 6,
		animation_speed = 0.1
      }
    },
    light = {intensity = 0, size = 0},
    smoke = "smoke",
    smoke_count = 0,
    smoke_slow_down_factor = 1
  },
  {
    type = "accumulator",
    name = "rain-loop-v2",
    icon = "__base__/graphics/icons/accumulator.png",
    flags = {},
    max_health = 50000000,
    corpse = "medium-remnants",
	collision_mask ={},
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    energy_source =
    {
      type = "electric",
      buffer_capacity = "5MJ",
      usage_priority = "terciary",
      input_flow_limit = "0kW",
      output_flow_limit = "0kW"
    },
    picture = EmptyImage,
    charge_animation = EmptyImage,
    charge_cooldown = 0,
    charge_light = {intensity = 0, size = 0},
    discharge_animation = EmptyImage,
    discharge_cooldown = 0,
    discharge_light = {intensity = 0, size = 0},
    working_sound =
    {
      sound =
            {
        filename = "__moweather__/sound/rain.ogg",
        volume = 0.3
      },
      idle_sound =       {
        filename = "__moweather__/sound/rain.ogg",
        volume = 0.3
      },
      max_sounds_per_type = 1
    },
  },
  {
    type = "electric-pole",
    name = "rain-power-pole",
    icon = "__base__/graphics/icons/small-electric-pole.png",
    flags = {},
    max_health = 500000000,
    corpse = "small-remnants",
	collision_mask ={},
    collision_box = {{0, 0}, {0, 0}},
    selection_box = {{0, 0}, {0, 0}},
    drawing_box = {{0, 0}, {0, 0}},
    maximum_wire_distance = 0,
    supply_area_distance = 0.5,
    pictures = EmptyImage,
    connection_points =
    {
      {
        shadow =
        {
          copper = {0, 0},
          red = {0, 0},
          green = {0, 0}
        },
        wire =
        {
          copper = {0, 0},
          red = {0,0},
          green = {0,0}
        }
      }
    },
    copper_wire_picture = EmptyImage,
    green_wire_picture = EmptyImage,
    radius_visualisation_picture = EmptyImage,
    red_wire_picture = EmptyImage,
    wire_shadow_picture = EmptyImage
  }
})
