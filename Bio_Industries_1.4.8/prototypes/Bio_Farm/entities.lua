require ("prototypes.Bio_Farm.pipeConnectors")
require ("util")



data:extend({

 
---- Seedling
  {
    type = "land-mine",
    name = "seedling",
    icon = "__Bio_Industries__/graphics/icons/Seedling.png",
	order = "x[bi]-a[bi-seedling]",
	flags = {"placeable-neutral", "placeable-player", "player-creation", "breaths-air",},
    minable =
    {
      mining_particle = "wooden-particle",
      mining_time = 0.25,
      result = "seedling",
      count = 1
    },
    emissions_per_tick = -0.0006,
    max_health = 5,

    collision_box = {{-0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    --drawing_box = {{-0.7, -0.7}, {0.7, 0.7}},
    --subgroup = "trees",
	subgroup = "intermediate-product",

    vehicle_impact_sound = { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
	picture_safe =
	{
		filename = "__Bio_Industries__/graphics/icons/Seedling_a.png",
		priority = "extra-high",
		width = 32,
		height = 32,
    },
	picture_set =
    {
		filename = "__Bio_Industries__/graphics/icons/Seedling_b.png",
		priority = "extra-high",
		width = 32,
		height = 32,
    },
	trigger_radius = 0,
  },
  
 
	------- Bio Farm
  {
    type = "assembling-machine",
    name = "bi_bio_farm",
    icon = "__Bio_Industries__/graphics/icons/Bio_Farm_Icon.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "bi_bio_farm"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances = {{type = "fire", percent = 70}},
	fluid_boxes =
    {
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,        
		pipe_connections = {{ type="input", position = {-1, -5} }}
		},
		{
        production_type = "input",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -5} }}
		},
      off_when_no_fluid_recipe = true
	  
    },

	collision_box = {{-4.2, -4.2}, {4.2, 4.2}},
    selection_box = {{-4.5, -4.5}, {4.5, 4.5}},

	animation =
	{
		filename = "__Bio_Industries__/graphics/entities/biofarm/Bio_Farm_Idle.png",
		priority = "high",
		width = 320,
		height = 320,
		frame_count = 1,
		shift = {0.75, 0},
	},
	
	working_visualisations =
	{

		animation =
		{
			filename = "__Bio_Industries__/graphics/entities/biofarm/Bio_Farm_Working.png",
			priority = "high",
			width = 320,
			height = 320,
			frame_count = 1,
			shift = {0.75, 0},
		},
	},

    crafting_categories = {"biofarm-mod-dummy"},
    crafting_speed = 1,
    energy_source =

	{
      type = "electric",
      usage_priority = "primary-input",
	  drain = "50kW",
	  emissions = -0.1, -- the "-" means it eats pollution. Absorbs about 10 PU
    },	

    energy_usage = "100kW",
    ingredient_count = 3,
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
	module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed"}
  },
  ------- Bio Farm Lamp
  {
    type = "lamp",
    name = "bi_light_for_Bio_Farm",
    icon = "__Bio_Industries__/graphics/icons/Bio_Farm_Lamp.png",
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-repairable"},
	selectable_in_game = false,
    max_health = 1,
    collision_box = {{-0.0, -0.0}, {0.0, 0.0}},
	energy_source =
    {
      type = "electric",
	  render_no_network_icon = false,
	  render_no_power_icon = false,
      usage_priority = "secondary-input"
    },
    energy_usage_per_tick = "100kW",
    light = {intensity = 1, size = 45},
    picture_off =
    {
      filename = "__Bio_Industries__/graphics/entities/biofarm/Bio_Farm_Idle.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },
    picture_on =
    {
      filename = "__Bio_Industries__/graphics/entities/biofarm/Bio_Farm_Working.png",
      priority = "low",
      width = 0,
      height = 0,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
	  shift = {0.75, 0},
    },

  },
  ------- Bio Farm Pole
  {
    type = "electric-pole",
    name = "bi_medium-electric-pole_for_Bio_Farm",
    icon = "__Bio_Industries__/graphics/icons/Bio_Farm_Cabeling.png",
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-repairable"},
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    maximum_wire_distance = 10,
    supply_area_distance = 5,
 
    pictures =
    {
      filename = "__Bio_Industries__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
	  frame_count = 1,
      axially_symmetrical = false,
      direction_count = 4,
	  shift = {0.75, 0},
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {2.55, 0.4},
        },
        wire =
        {
          copper = {-0.03, -2.5},
        }
      },
      {
        shadow =
        {
          copper = {2.9, 0.1},
        },
        wire =
        {
          copper = {0.05, -2.75},
        }
      },
      {
        shadow =
        {
          copper = {1.5, -0.2},
        },
        wire =
        {
          copper = {-0.43, -2.4},
        }
      },
      {
        shadow =
        {
          copper = {2.88, 0.2},
        },
        wire =
        {
          copper = {0, -2.7},
        }
      }
    },
    radius_visualisation_picture =
    {
      filename = "__Bio_Industries__/graphics/icons/empty.png",
      width = 0,
      height = 0,
      priority = "low"
    },
  },
  ------- Bio Farm Solar Panel
  {
    type = "solar-panel",
    name = "bi_solar-panel_for_Bio_Farm",
    icon = "__Bio_Industries__/graphics/icons/Bio_Farm_Solar.png",
	flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-repairable"},
	selectable_in_game = false,
    max_health = 1,
    resistances = {{type = "fire", percent = 100}},
    collision_box = {{-0, -0}, {0, 0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "solar"
    },
    picture =
    {
      filename = "__Bio_Industries__/graphics/icons/empty.png",
      priority = "low",
      width = 0,
      height = 0,
    },
    production = "100kW"
  },
  
  })
 
 ---- Originally from the old Tree Farm Mod.
data:extend(
{

	-- COKERY
	{
		type = "assembling-machine",
		name = "bi-cokery",
		icon = "__Bio_Industries__/graphics/icons/cokery.png",
		flags = {"placeable-neutral","placeable-player", "player-creation"},
		order = "a[cokery]",
		minable = {hardness = 0.2, mining_time = 0.5, result = "bi-cokery"},
		max_health = 200,
		corpse = "medium-remnants",
		resistances = {{type = "fire", percent = 95}},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		module_specification =
		{
			module_slots = 2
		},
		allowed_effects = {"consumption", "speed", "pollution"},	
		animation =
			{
				filename = "__Bio_Industries__/graphics/entities/cokery/cokery_sheet.png",
				frame_count = 28,
				line_length = 7,
				width = 256,
				height = 256,
				scale = 0.5,
				shift = {0.5, -0.5},
				animation_speed = 0.1
			},		
		crafting_categories = {"biofarm-mod-smelting"},
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 0.05     
		},
		energy_usage = "180kW",
		crafting_speed = 2,
		ingredient_count = 1
		
	},
	-- STONECRUSHER
	{
		type = "furnace",
		name = "bi-stone-crusher",
		icon = "__Bio_Industries__/graphics/icons/stone-crusher.png",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "bi-stone-crusher"},
		max_health = 100,
		corpse = "medium-remnants",
		module_slots = 1,
		resistances = {{type = "fire",percent = 70}},
		working_sound = {
							sound = {
										filename = "__base__/sound/assembling-machine-t1-1.ogg",
										volume = 0.7
									},
							apparent_volume = 1.5
						},
		collision_box = {{-0.8,-0.8},{0.8,0.8}},
		selection_box = {{-1.0,-1.0},{1.0,1.0}},
		animation = {
							filename = "__Bio_Industries__/graphics/entities/stone-crusher/stone_crusher_anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 11,
							animation_speed = 0.5,
							shift = {0.0, -0.1}
						},
		working_visualisations = {
							filename = "__Bio_Industries__/graphics/entities/stone-crusher/stone-crusher-anim.png",
							priority = "high",
							width = 65,
							height = 78,
							frame_count = 11,
							animation_speed = 0.18 / 2.5,
							shift = {0.0, -0.1}
						},
		crafting_categories = {"biofarm-mod-crushing"},
		result_inventory_size = 1,
		source_inventory_size = 1,
		crafting_speed = 1,
		energy_source = {
							type = "electric",
							usage_priority = "secondary-input",
							emissions = 0.05 / 1.5
						},
		energy_usage = "50kW"
	},
	
--[[
	-- BIOREACTOR
	{
		type = "assembling-machine",
		name = "bi-bioreactor",
		icon = "__Bio_Industries__/graphics/icons/bioreactor.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "bi-bioreactor"},
		max_health = 100,
		corpse = "big-remnants",
		fluid_boxes =
		{
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, -2} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {2, 0} }}
			},
			{
				production_type = "input",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = -1,
				pipe_connections = {{ type="input", position = {0, 2} }}
			},


			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, -1} }}
			},
			{
				production_type = "output",
				pipe_picture = assembler2pipepicturesBioreactor(),
				pipe_covers = pipecoverspicturesBioreactor(),
				base_area = 10,
				base_level = 1,
				pipe_connections = {{ type="output", position = {-2, 1} }}
			},
			off_when_no_fluid_recipe = false
		},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		animation =
		{
			filename = "__Bio_Industries__/graphics/entities/bioreactor/bioreactor.png",
			priority = "high",
			width = 128,
			height = 150,
			frame_count = 26,
			line_length = 13,
			animation_speed = 0.4,
			shift = {0.55, -0.33}
		},
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input"
		},
		crafting_categories = {"biofarm-mod-bioreactor"},
		ingredient_count = 3,
		crafting_speed = 1,
		energy_usage = "10kW"
	},
	]]
	
})