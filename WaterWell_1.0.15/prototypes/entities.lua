data:extend(
	{
		{
			type = "assembling-machine",
			name = "water-well-pump",
			icon = "__WaterWell__/graphics/water-well-pump-icon.png",
			flags = {"placeable-neutral", "placeable-player", "player-creation"},
			minable = {hardness = 0.2, mining_time = 0.5, result = "water-well-pump"},
			max_health = 250,
			corpse = "big-remnants",
			dying_explosion = "medium-explosion",
			resistances =
			{
				{
					type = "fire",
					percent = 70
				}
			},
			fluid_boxes =
			{
				{
					production_type = "input",
					pipe_picture = assembler2pipepictures(),
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = -1,
					pipe_connections = {{ type="input", position = {0, -2} }}
				},
				{
					production_type = "output",
					pipe_picture = assembler2pipepictures(),
					pipe_covers = pipecoverspictures(),
					base_area = 10,
					base_level = 1,
					pipe_connections = {{ type="output", position = {0, 2} }}
				},
				off_when_no_fluid_recipe = true
			},
			collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
			selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
			base_picture =
			{
				sheet =
				{
					filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
					priority = "extra-high",
					width = 114,
					height = 113,
					shift = {0.1875, -0.03125}
				}
			},
			animation =
			{
				filename = "__WaterWell__/graphics/water-well-pump-anim.png",
				priority = "high",
				width = 116,
				height = 110,
				frame_count = 40,
				line_length = 10,
				shift = {0.125, -0.71875},
				animation_speed = 0.5
			},
			open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
			close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
			vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
			working_sound =
			{
				sound = { filename = "__base__/sound/pumpjack.ogg" },
				apparent_volume = 1.5,
			},
			crafting_categories = {"water-well-production"},
			crafting_speed = 1.0,
			energy_source =
			{
				type = "electric",
				usage_priority = "secondary-input",
				emissions = 0.1 ,
			},
			energy_usage = "100kW",
			ingredient_count = 2,
			module_specification =
			{
				module_slots = 2
			},
			fixed_recipe = "water-well-flow",
			allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		},
	}
)

