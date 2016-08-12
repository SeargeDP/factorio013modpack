data:extend(
{
  {
    type = "item",
    name = "ore-processing-plant",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "f[ore-processing-plant]",
    place_result = "ore-processing-plant",
    stack_size = 10,
   },
   {
    type = "assembling-machine",
    name = "ore-processing-plant",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-plant"},
	fast_replaceable_group = "ore-processing-plant",
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
    crafting_categories = {"ore-processing"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 2,
    animation ={
	layers={
    {
        filename = "__angelsprocessing__/graphics/entity/ore-processing-plant/ore-processing-plant.png",
        width = 224,
        height = 224,
        frame_count = 25,
		line_length = 5,
		animation_speed = 0.75,
        shift = {0, 0},
    },
	-- {
        -- filename = "__angelsrefining__/graphics/entity/7x7-overlay.png",
		-- tint = {r=1, g=0, b=0},
        -- width = 224,
        -- height = 224,
        -- frame_count = 1,
        -- shift = {0, 0},
    -- },
	}
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsprocessing__/sound/ore-processing-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "ore-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "f[ore-processing-plant-2]",
    place_result = "ore-processing-plant-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "ore-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-plant-2"},
	fast_replaceable_group = "ore-processing-plant",
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
    crafting_categories = {"ore-processing"},
    crafting_speed = 1,
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
        filename = "__angelsprocessing__/graphics/entity/ore-processing-plant/ore-processing-plant.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0,75,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsprocessing__/sound/ore-processing-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
    {
    type = "item",
    name = "ore-processing-plant-3",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "f[ore-processing-plant-3]",
    place_result = "ore-processing-plant-3",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "ore-processing-plant-3",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-plant-3"},
	fast_replaceable_group = "ore-processing-plant",
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
    crafting_categories = {"ore-processing"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 6,
    animation =
    {
        filename = "__angelsprocessing__/graphics/entity/ore-processing-plant/ore-processing-plant.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0,75,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsprocessing__/sound/ore-processing-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
	{
    type = "item",
    name = "ore-processing-plant-4",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"goes-to-quickbar"},
    subgroup = "processing-buildings",
    order = "f[ore-processing-plant-4]",
    place_result = "ore-processing-plant-4",
    stack_size = 10,
    },	
	{
    type = "assembling-machine",
    name = "ore-processing-plant-4",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
	flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-processing-plant-4"},
	fast_replaceable_group = "ore-processing-plant",
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
    crafting_categories = {"ore-processing"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "300kW",
    ingredient_count = 6,
    animation =
    {
        filename = "__angelsprocessing__/graphics/entity/ore-processing-plant/ore-processing-plant.png",
        width = 224,
        height = 224,
		line_length = 5,
        frame_count = 25,
        shift = {0, 0},
		animation_speed = 0,75,
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsprocessing__/sound/ore-processing-plant.ogg" },
	  idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
	},
}
)