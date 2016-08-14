require ("demo-transport-belt-pictures")

data:extend(
{ 
   {
    type = "electric-pole",
    name = "transport-electric-belt",
    icon = "__base__/graphics/icons/transport-belt.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "transport-electric-belt"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  maximum_wire_distance = 30,
  supply_area_distance = 2,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
	connection_points =
    {
      {
        shadow =
        {
          copper = {0.1, 0.2}
        },
        wire =
        {
          copper = {0, 0}
		}
      },
      {
        shadow =
        {
          copper = {0.1, 0.2}
        },
        wire =
        {
          copper = {0, 0}
		}
      },
      {
        shadow =
        {
          copper = {0.1, 0.2}
        },
        wire =
        {
          copper = {0, 0}
		}
      },
      {
        shadow =
        {
          copper = {0.1, 0.2}
        },
        wire =
        {
          copper = {0, 0}
		}
      }
    },
    copper_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    green_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12
    },
    red_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    wire_shadow_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
	--animation_speed_coefficient = 32,
    pictures =
    {
	--[[      
	  filename = "__base__/graphics/entity/small-electric-pole/small-electric-pole.png",
      priority = "extra-high",
      width = 123,
      height = 124,
      axially_symetric = false,
      direction_count = 4,
      shift = {1.4, -1.1}
	  ]]
      filename = "__base__/graphics/entity/basic-transport-belt/basic-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      --frame_count = 16,
      direction_count = 4
    },
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.03125
	}
  })