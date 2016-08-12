function Empty()
	return {
			filename = "__SmartSplitters__/graphics/empty.png",
			priority = "extra-high",
			width = 1,
			height = 1
		}
end

data:extend({
	{
		type = "inserter",
		name = "smartsplitter",
		icon = "__SmartSplitters__/graphics/smartsplitter-icon.png",
		flags = {"placeable-neutral", "player-creation"},
		minable = {hardness = 0.2, mining_time = 0.5, result = "smartsplitter"},
		max_health = 40,
		corpse = "small-remnants",
		resistances =
		{
			{
				type = "fire",
				percent = 90
			}
		},
		working_sound =
		{
			match_progress_to_activity = true,
			sound =
			{
				{
					filename = "__base__/sound/inserter-fast-1.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-2.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-3.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-4.ogg",
					volume = 0.75
				},
				{
					filename = "__base__/sound/inserter-fast-5.ogg",
					volume = 0.75
				}
			}
		},
		collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		pickup_position = {0, 200},
		insert_position = {0, 200},
		energy_per_movement = 10000 / 60,
		energy_per_rotation = 0,
		energy_source =
		{
			type = "electric",
			usage_priority = "secondary-input",
			drain = "0kW"
		},
		hand_base_picture = Empty(),
		hand_closed_picture = Empty(),
		hand_open_picture = Empty(),
		hand_base_shadow = Empty(),
		hand_closed_shadow = Empty(),
		hand_open_shadow = Empty(),
		platform_picture =
		{
			sheet = 
			{
				filename = "__SmartSplitters__/graphics/smartsplitter.png",
				priority = "extra-high",
				width = 64,
				height = 44,
			}
		},
		extension_speed = 1,
		rotation_speed = 1,
		filter_count = 5,
		uses_arm_movement = "basic-inserter"
	},
})