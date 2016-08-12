  data:extend(
  {
  {
    type = "item",
    name = "blast-furnace",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "g[blast-furnace]",
    place_result = "blast-furnace",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "blast-furnace",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "blast-furnace"},
	fast_replaceable_group = "blast-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"blast-smelting"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      },
	  {
	    north_position = {1, -0.1},
        east_position = {-1.05, -0.1},
        south_position = {1.1, -0.1},
        west_position = {-1.05, 0.05},
	    animation =
        {
          filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.03, 2.1}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
   },
     {
    type = "item",
    name = "blast-furnace-2",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "g[blast-furnace-2]",
    place_result = "blast-furnace-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "blast-furnace-2",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "blast-furnace-2"},
	fast_replaceable_group = "blast-furnace",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"blast-smelting"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 4,
    animation =
    {
      north =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      },
	  {
	    north_position = {1, -0.1},
        east_position = {-1.05, -0.1},
        south_position = {1.1, -0.1},
        west_position = {-1.05, 0.05},
	    animation =
        {
          filename = "__angelsprocessing__/graphics/entity/blast-furnace/blast-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.03, 2.1}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
   },
  }
  )