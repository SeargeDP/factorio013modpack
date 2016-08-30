data:extend(
{
  {
    type = "item",
    name = "assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-4]",
    place_result = "assembling-machine-4",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-4",
    icon = "__bobassembly__/graphics/icons/assembling-machine-4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-4"},
    max_health = 400,
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
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      filename = "__bobassembly__/graphics/entity/assembling-machine-4/assembling-machine-4.png",
      priority = "high",
      width = 113,
      height = 99,
      frame_count = 32,
      line_length = 8,
      shift = {0.4, -0.06}
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01
    },
    energy_usage = "300kW",
    ingredient_count = 8,
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },


  {
    type = "recipe",
    name = "assembling-machine-4",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-3", 1},
      {"advanced-circuit", 3},
      {"steel-plate", 9},
      {"iron-gear-wheel", 5},
    },
    result = "assembling-machine-4"
  },

  {
    type = "technology",
    name = "automation-4",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-4"
      }
    },
    prerequisites =
    {
      "automation-3"
    },
    unit =
    {
      count = 80,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 45
    },
    upgrade = true,
    order = "a-b-d",
  },
}
)



data:extend(
{
  {
    type = "item",
    name = "assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-5]",
    place_result = "assembling-machine-5",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-5",
    icon = "__bobassembly__/graphics/icons/assembling-machine-5.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-5"},
    max_health = 500,
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
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
          tint = {r = 0.7, g = 0.2, b = 0.1},
        },
      }
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 2.75,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01
    },
    energy_usage = "390kW",
    ingredient_count = 10,
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

  {
    type = "recipe",
    name = "assembling-machine-5",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-4", 1},
      {"processing-unit", 3},
      {"steel-plate", 9},
      {"iron-gear-wheel", 5},
    },
    result = "assembling-machine-5"
  },

  {
    type = "technology",
    name = "automation-5",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-5"
      }
    },
    prerequisites =
    {
      "automation-4",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 120,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 60
    },
    upgrade = true,
    order = "a-b-e"
  },
}
)




data:extend(
{
  {
    type = "item",
    name = "assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-assembly-machine",
    order = "c[assembling-machine-6]",
    place_result = "assembling-machine-6",
    stack_size = 50
  },

  {
    type = "assembling-machine",
    name = "assembling-machine-6",
    icon = "__bobassembly__/graphics/icons/assembling-machine-6.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "assembling-machine-6"},
    max_health = 600,
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
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }}
      },
      {
        production_type = "output",
        pipe_picture = assembler3pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = true
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
        },
        {
          filename = "__bobassembly__/graphics/entity/assembling-machine-mask/assembling-machine-3-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
          tint = {r = 0.1, g = 0.7, b = 0.1},
        },
      }
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 3.5,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01
    },
    energy_usage = "480kW",
    ingredient_count = 12,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

  {
    type = "recipe",
    name = "assembling-machine-6",
    enabled = "false",
    ingredients =
    {
      {"assembling-machine-5", 1},
      {"processing-unit", 3},
      {"steel-plate", 5},
      {"iron-plate", 5},
      {"iron-gear-wheel", 5},
    },
    result = "assembling-machine-6"
  },

  {
    type = "technology",
    name = "automation-6",
    icon = "__base__/graphics/technology/automation.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "assembling-machine-6"
      }
    },
    prerequisites = {"automation-5"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 75
    },
    upgrade = true,
    order = "a-b-f"
  },
}
)



