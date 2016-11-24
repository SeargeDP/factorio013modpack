data:extend({
	{
		type = "item",
		name = "petroleum-generator",
		icon = "__KS_Power__/graphics/diesel-generator-icon.png",
		flags = {"goes-to-quickbar"},
		subgroup = "energy",	
		order = "b[steam-power]-d[petroleum-generator]",		
		place_result = "petroleum-generator",
		stack_size = 20,
	},
	{
    type = "recipe",
    name = "petroleum-generator",
    energy_required = 15,
    enabled = "false",
    ingredients =
    {
      {"steel-plate", 12},
      {"engine-unit", 8},
	  {"electronic-circuit", 16},
	  {"pipe", 10}
    },
    result = "petroleum-generator"
  },

	{
		type = "generator",
		name = "petroleum-generator",
		icon = "__KS_Power__/graphics/diesel-generator-icon.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {mining_time = 2, result = "petroleum-generator"},
		max_health = 300,
		corpse = "big-remnants",
		effectivity = 100,
		fluid_usage_per_tick = 0.005,
		resistances =
		{
			{
				type = "fire",
				percent = 70
			}
		},
		collision_box = {{-0.7, -2.7}, {0.7, 2.7}},
		selection_box = {{-1, -3}, {1, 3}},
		fluid_box =
		{
			base_area = 1,
      base_level = -1,			
      pipe_covers = pipecoverspictures(),
			pipe_connections =
			{
				{ position = {-1.5, 0.5} },
				{ position = {1.5, 0.5} },
			},
		},
		energy_source =
		{
			type = "electric",
      emissions = 0.01,
			usage_priority = "secondary-output"
		},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
		horizontal_animation =
		{
			filename = "__KS_Power__/graphics/diesel-engine-ha0.png",
			width = 224,
			height = 128,
			frame_count = 8,
			line_length = 8,
			shift = {0.5,-0.40},
      animation_speed = 0.8,
      run_mode = "forward-then-backward"
		},
		vertical_animation =
		{
			filename = "__KS_Power__/graphics/diesel-engine-va0.png",
			width = 128,
			height = 224,
			frame_count = 8,
			line_length = 8,
			shift = {0.8,0.1},
      animation_speed = 0.8,
		},			
		smoke =
		{
			{
        name = "tank-smoke",
        north_position = {0.42, -0.85},
        east_position = {-1.15, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.06,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
			{
        name = "tank-smoke",
        north_position = {-0.42, -0.85},
        east_position = {-1.15, -1.8},
        frequency = 10 / 32,
        starting_vertical_speed = 0.06,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      },
		},
	working_sound =
    {
      sound ={
      {
        filename = "__KS_Power__/sounds/diesel-loop-1.ogg",
        volume = 0.5
      },
      {
        filename = "__KS_Power__/sounds/diesel-loop-2.ogg",
        volume = 0.5
      },
      {
        filename = "__KS_Power__/sounds/diesel-loop-3.ogg",
        volume = 0.5
      },
      },
      match_speed_to_activity = true,
      max_sounds_per_type = 2,
    },
    
    min_perceived_performance = 0.1,
    performance_to_sound_speedup = 0.2
  },

{
    type = "recipe",
    name = "diesel-fuel",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=2},
      {type="fluid", name="light-oil", amount=2}
    },
    results=
    {
      {type="fluid", name="diesel-fuel", amount=3}
    },
    main_product= "",
    icon = "__KS_Power__/graphics/diesel-fuel-recipe.png",
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-i[diesel-fuel]"
  },
  


  {
    type = "technology",
    name = "petroleum-generator",
    icon = "__KS_Power__/graphics/diesel-generator-t1.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "petroleum-generator"
      },
      {
        type = "unlock-recipe",
        recipe = "diesel-fuel"
      }
    },
    prerequisites = {"advanced-oil-processing","engine"},
    unit =
    {
      count = 150,
      ingredients = {{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
      time = 60
    },
    order = "f-b-d"
  },

  {
	type = "fluid",
	name = "diesel-fuel",
	default_temperature = 15,
	max_temperature = 100,
	heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.7, b=0},
    flow_color = {r=0.5, g=0.4, b=0},
    icon = "__KS_Power__/graphics/diesel-fuel.png",
    order = "a[fluid]-i[diesel-fuel]",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
	}

  




	})
  