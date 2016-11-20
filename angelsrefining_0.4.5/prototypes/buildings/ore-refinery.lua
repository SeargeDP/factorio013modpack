if angelsmods.refining.enablefurnace then
data:extend(
  {
  {
    type = "item",
    name = "ore-refinery",
    icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "ore-refining",
    order = "a[ore-refinery]",
    place_result = "ore-refinery",
    stack_size = 10,
  },
  {
    type = "furnace",
    name = "ore-refinery",
    icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-refinery"},
	fast_replaceable_group = "ore-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t4"},
    crafting_speed = 0.75,
	source_inventory_size = 1,
	result_inventory_size = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "300kW",
    ingredient_count = 4,
    animation ={
	layers={
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
    -- {
        -- filename = "__angelsrefining__/graphics/entity/ore-refinery/2ore-refinery-overlay.png",
        -- width = 256,
        -- height = 256,
        -- frame_count = 16,
		-- line_length = 4,
		-- animation_speed = 0.5,
        -- shift = {0.5, -0.5},
    -- },
	}
	},
	-- working_visualisations =
    -- {
      -- {
        -- animation =
        -- {
          -- filename = "__angelsrefining__/graphics/entity/ore-refinery/smoke-2.png",
          -- priority = "extra-high",
		  -- width = 128,
		  -- height = 192,
		  -- line_length = 11,
		  -- frame_count = 110,
          -- shift = { -0.6, -6.25},
		  -- scale = 0.75,
		  -- animation_speed = 0.5,
        -- },
        -- light = {intensity = 1, size = 1}
      -- }
    -- },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
	{
    type = "item",
    name = "ore-refinery-2",
    icon = "__angelsrefining__/graphics/icons/ore-refinery-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "ore-refining",
    order = "b[ore-refinery-2]",
    place_result = "ore-refinery-2",
    stack_size = 10,
    },
    {
    type = "furnace",
    name = "ore-refinery-2",
    icon = "__angelsrefining__/graphics/icons/ore-refinery-2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-refinery-2"},
	fast_replaceable_group = "ore-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t4"},
    crafting_speed = 1.5,
	source_inventory_size = 1,
	result_inventory_size = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 2.5
    },
    energy_usage = "350kW",
    ingredient_count = 4,
    animation ={
	layers={
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/2ore-refinery-overlay.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		tint= {r=0.2, g=0.3, b=0.45},
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
	}
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
   	-- {
    -- type = "item",
    -- name = "ore-refinery-3",
    -- icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    -- flags = {"goes-to-quickbar"},
    -- subgroup = "ore-refining",
    -- order = "c[ore-refinery-3]",
    -- place_result = "ore-refinery-3",
    -- stack_size = 10,
    -- },
    -- {
    -- type = "assembling-machine",
    -- name = "ore-refinery-3",
    -- icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    -- flags = {"placeable-neutral","player-creation"},
    -- minable = {mining_time = 1, result = "ore-refinery-3"},
	-- fast_replaceable_group = "ore-refinery",
    -- max_health = 300,
    -- corpse = "big-remnants",
    -- dying_explosion = "medium-explosion",
    -- collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    -- selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    -- module_specification =
    -- {
      -- module_slots = 2
    -- },
    -- allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    -- crafting_categories = {"ore-sorting-t4"},
    -- crafting_speed = 2,
    -- energy_source =
    -- {
      -- type = "electric",
      -- usage_priority = "secondary-input",
      -- emissions = 0.04 / 3
    -- },
    -- energy_usage = "400kW",
    -- ingredient_count = 4,
    -- animation ={
	-- layers={
    -- {
        -- filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        -- width = 256,
        -- height = 256,
        -- frame_count = 16,
		-- line_length = 4,
		-- animation_speed = 0.5,
        -- shift = {0.5, -0.5},
    -- },
    -- {
        -- filename = "__angelsrefining__/graphics/entity/ore-refinery/2ore-refinery-overlay.png",
        -- width = 256,
        -- height = 256,
        -- frame_count = 16,
		-- line_length = 4,
		-- tint= {r=0.50, g=0.1, b=0.05},
		-- animation_speed = 0.5,
        -- shift = {0.5, -0.5},
    -- },
	-- }
	-- },
    -- vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    -- working_sound =
    -- {
      -- sound = { filename = "__angelsrefining__/sound/ore-refinery.ogg" },
      -- idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      -- apparent_volume = 2.5,
    -- },
    -- },
}
)
else
data:extend(
  {
  {
    type = "item",
    name = "ore-refinery",
    icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "ore-refining",
    order = "a[ore-refinery]",
    place_result = "ore-refinery",
    stack_size = 10,
  },
  {
    type = "assembling-machine",
    name = "ore-refinery",
    icon = "__angelsrefining__/graphics/icons/ore-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-refinery"},
	fast_replaceable_group = "ore-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 1
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t4"},
    crafting_speed = 0.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.02 / 2,
	},
    energy_usage = "300kW",
    ingredient_count = 4,
    animation ={
	layers={
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
    -- {
        -- filename = "__angelsrefining__/graphics/entity/ore-refinery/2ore-refinery-overlay.png",
        -- width = 256,
        -- height = 256,
        -- frame_count = 16,
		-- line_length = 4,
		-- animation_speed = 0.5,
        -- shift = {0.5, -0.5},
    -- },
	}
	},
	-- working_visualisations =
    -- {
      -- {
        -- animation =
        -- {
          -- filename = "__angelsrefining__/graphics/entity/ore-refinery/smoke-2.png",
          -- priority = "extra-high",
		  -- width = 128,
		  -- height = 192,
		  -- line_length = 11,
		  -- frame_count = 110,
          -- shift = { -0.6, -6.25},
		  -- scale = 0.75,
		  -- animation_speed = 0.5,
        -- },
        -- light = {intensity = 1, size = 1}
      -- }
    -- },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
	{
    type = "item",
    name = "ore-refinery-2",
    icon = "__angelsrefining__/graphics/icons/ore-refinery-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "ore-refining",
    order = "b[ore-refinery-2]",
    place_result = "ore-refinery-2",
    stack_size = 10,
    },
    {
    type = "assembling-machine",
    name = "ore-refinery-2",
    icon = "__angelsrefining__/graphics/icons/ore-refinery-2.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ore-refinery-2"},
	fast_replaceable_group = "ore-refinery",
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "pollution", "productivity"},
    crafting_categories = {"ore-sorting-t4"},
    crafting_speed = 1.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 2.5
    },
    energy_usage = "350kW",
    ingredient_count = 4,
    animation ={
	layers={
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/1ore-refinery.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
    {
        filename = "__angelsrefining__/graphics/entity/ore-refinery/2ore-refinery-overlay.png",
        width = 256,
        height = 256,
        frame_count = 16,
		line_length = 4,
		tint= {r=0.2, g=0.3, b=0.45},
		animation_speed = 0.5,
        shift = {0.5, -0.5},
    },
	}
	},
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__angelsrefining__/sound/ore-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    },
}
)
end