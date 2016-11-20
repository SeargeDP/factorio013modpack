data:extend(
{
    {
    type = "item",
    name = "air-filter",
    icon = "__angelspetrochem__/graphics/icons/air-filter.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-well-head",
    order = "a[air-filter]",
    place_result = "air-filter",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "air-filter",
    icon = "__angelspetrochem__/graphics/icons/air-filter.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "air-filter"},
	fast_replaceable_group = "air-filter",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"petrochem-air-filtering"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "150kW",
    ingredient_count = 3,
	animation =
    {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/idle1.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, 3} }}
      },
    },
    pipe_covers = pipecoverspictures()
    },
    {
    type = "item",
    name = "air-filter-2",
    icon = "__angelspetrochem__/graphics/icons/air-filter.png",
	flags = {"goes-to-quickbar"},
    subgroup = "petrochem-well-head",
    order = "a[air-filter-2]",
    place_result = "air-filter-2",
    stack_size = 10,
    },
	{
    type = "assembling-machine",
    name = "air-filter-2",
    icon = "__angelspetrochem__/graphics/icons/air-filter.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "air-filter-2"},
	fast_replaceable_group = "air-filter",
    max_health = 300,
	corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    crafting_categories = {"petrochem-air-filtering"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2
    },
    energy_usage = "200kW",
    ingredient_count = 3,
	animation =
    {
        filename = "__angelspetrochem__/graphics/entity/air-filter/air-filter.png",
        width = 256,
        height = 256,
        frame_count = 36,
		line_length = 6,
        shift = {0.5, -0.5},
		animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/idle1.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	fluid_boxes =
    {
      {
        production_type = "input",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
	  {
        production_type = "output",
		pipe_picture = electrolyserpictures(),
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, 3} }}
      },
    },
    pipe_covers = pipecoverspictures()
    },
}
)