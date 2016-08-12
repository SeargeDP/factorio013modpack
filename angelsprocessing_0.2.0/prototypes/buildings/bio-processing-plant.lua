  data:extend(
  {
  {
    type = "item",
    name = "bio-processing-plant",
    icon = "__angelsprocessing__/graphics/icons/bio-processing-plant.png",
    flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "a[bio-processing-plant]",
    place_result = "bio-processing-plant",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-processing-plant",
    icon = "__angelsprocessing__/graphics/icons/bio-processing-plant.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-processing-plant"},
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.9, -4.9}, {4.9, 4.9}},
    selection_box = {{-5, -5}, {5, 5}},
	fast_replaceable_group= "bio-processing-plant",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-processing"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation=
      {
        filename = "__angelsprocessing__/graphics/entity/bio-plant/bio-processing-plant.png",
		scale = 0.97,
        width = 350,
        height = 350,
        frame_count = 1,
        shift = {0, 0}
      },
	working_visualisations =
    {
      {
        animation =
		{
          filename = "__angelsprocessing__/graphics/entity/bio-plant/water-splash.png",
          line_length = 5,
		  frame_count = 10,
          width = 92,
          height = 99,
          scale = 0.5,
          shift = {-3.1, 2.8},
		  animation_speed = 0.2,
          run_mode="forward",
        },
		light = {intensity = 0.4, size = 6},
	  },
      {
        animation =
		{
          filename = "__angelsprocessing__/graphics/entity/bio-plant/water-splash.png",
          line_length = 5,
		  frame_count = 10,
          width = 92,
          height = 99,
          scale = 0.5,
          shift = {3, -3},
		  animation_speed = 0.25,
          run_mode="forward",
		},
		light = {intensity = 0.4, size = 6},
	  },
	 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
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
        pipe_connections = {{ type="input", position = {-5.5, 0.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {5.5, -0.5} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
    {
    type = "item",
    name = "bio-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/bio-processing-plant.png",
    flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "a[bio-processing-plant-2]",
    place_result = "bio-processing-plant-2",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "bio-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/bio-processing-plant.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "bio-processing-plant-2"},
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-4.9, -4.9}, {4.9, 4.9}},
    selection_box = {{-5, -5}, {5, 5}},
	fast_replaceable_group= "bio-processing-plant",
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"bio-processing"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "150kW",
    ingredient_count = 4,
    animation=
      {
        filename = "__angelsprocessing__/graphics/entity/bio-plant/bio-processing-plant.png",
		scale = 0.97,
        width = 350,
        height = 350,
        frame_count = 1,
        shift = {0, 0}
      },
	working_visualisations =
    {
      {
        animation =
		{
          filename = "__angelsprocessing__/graphics/entity/bio-plant/water-splash.png",
          line_length = 5,
		  frame_count = 10,
          width = 92,
          height = 99,
          scale = 0.5,
          shift = {-3.1, 2.8},
		  animation_speed = 0.2,
          run_mode="forward",
        },
		light = {intensity = 0.4, size = 6},
	  },
      {
        animation =
		{
          filename = "__angelsprocessing__/graphics/entity/bio-plant/water-splash.png",
          line_length = 5,
		  frame_count = 10,
          width = 92,
          height = 99,
          scale = 0.5,
          shift = {3, -3},
		  animation_speed = 0.25,
          run_mode="forward",
		},
		light = {intensity = 0.4, size = 6},
	  },
	 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/chemical-plant.ogg" },
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
        pipe_connections = {{ type="input", position = {-5.5, 0.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {5.5, -0.5} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
  }
  )