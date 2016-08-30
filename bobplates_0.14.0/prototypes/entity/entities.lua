data:extend(
{
  {
    type = "assembling-machine",
    name = "electrolyser",
    icon = "__bobplates__/graphics/icons/electrolyser.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "electrolyser"},
    fast_replaceable_group = "electrolyser",
    corpse = "big-remnants",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    max_health = 150,
    crafting_categories = {"electrolysis"},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_specification =
    {
      module_slots = 1,
    },
    crafting_speed = 0.8,
    ingredient_count = 4,
    energy_usage = "180kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 5
    },
    fluid_boxes = 
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    },
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-vt1u.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-h-t1l.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-vt1d.png",
        width = 108,
        height = 130,
        frame_count = 1,
        shift = {0, -0.28125}
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/electrolyser/electro-h-t1r.png",
        width = 112,
        height = 120,
        frame_count = 1,
        shift = {0, -0.21875}
      }
    },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
  },


  {
    type = "assembling-machine",
    name = "chemical-boiler",
    icon = "__bobplates__/graphics/icons/stone-chemical-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "chemical-boiler"},
    max_health = 150,
    ingredient_count = 2,
    crafting_speed = 1,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, -1.5} }}
      },
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"chemical-furnace"},
    energy_usage = "180kW",
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },

    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
        priority = "extra-high",
        width = 94,
        height = 80,
        frame_count = 1,
        shift = {0.25, 0 }
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
        x = 94,
        priority = "extra-high",
        width = 94,
        height = 80,
        frame_count = 1,
        shift = {0.25, 0 }
      },
      south =
      {
        x = 188,
        filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
        priority = "extra-high",
        width = 94,
        height = 80,
        frame_count = 1,
        shift = {0.25, 0 }
      },
      east =
      {
        x = 282,
        filename = "__bobplates__/graphics/entity/stone-chemical-furnace/stone-chemical-furnace.png",
        priority = "extra-high",
        width = 94,
        height = 80,
        frame_count = 1,
        shift = {0.25, 0 }
      }
    },
    working_visualisations =
    {
      {
        north_position = { 0.96875, -0.53125},
        west_position = { 0, 0},
        south_position = { -0.9375, 0.40625},
        east_position = { 0.53125, 0.78125},
        east_animation =
        {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-down.png",
          width = 9,
          height = 8,
          frame_count = 14,
        },
        south_animation =
        {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-left.png",
          width = 5,
          height = 7,
          frame_count = 14,
        },
        north_animation =
        {
          filename = "__bobplates__/graphics/entity/stone-chemical-furnace/boiler-fire-right.png",
          width = 6,
          height = 9,
          frame_count = 14,
        }
      },
    },
    fast_replaceable_group = "furnace"
  },

  {
    type = "assembling-machine",
    name = "chemical-furnace",
    icon = "__bobplates__/graphics/icons/chemical-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "chemical-furnace"},
    max_health = 250,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
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
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},

    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    ingredient_count = 4,
    crafting_speed = 2,
    crafting_categories = {"smelting", "chemical-furnace"},
    energy_usage = "180kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    animation =
    {
      filename = "__bobplates__/graphics/entity/electric-furnace/electric-chemical-furnace.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
    },
    fast_replaceable_group = "furnace",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  },

  {
    type = "assembling-machine",
    name = "mixing-furnace",
    icon = "__bobplates__/graphics/icons/stone-mixing-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "mixing-furnace"},
    max_health = 200,
    corpse = "medium-remnants",
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg" }
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.8, -1}, {0.8, 1}},
    crafting_categories = {"smelting", "mixing-furnace"},
    energy_usage = "180kW",
    ingredient_count = 2,
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 0.5,
          position = {0, 0},
          starting_vertical_speed = 0.05
        }
      }
    },

    animation =
    {
      filename = "__bobplates__/graphics/entity/stone-mixing-furnace/stone-mixing-furnace.png",
      priority = "extra-high",
      width = 81,
      height = 64,
      frame_count = 1,
      shift = {0.5, 0.05 }
    },
    working_visualisations =
    {
      {
        north_position = { 0.078125, 0.5234375},
        west_position = { 0.078125, 0.5234375},
        south_position = { 0.078125, 0.5234375},
        east_position = { 0.078125, 0.5234375},
        animation =
        {
          filename = "__bobplates__/graphics/entity/stone-mixing-furnace/stone-mixing-furnace-fire.png",
          width = 23,
          height = 27,
          frame_count = 12,
        }
      },
    },
    fast_replaceable_group = "furnace"
  },

  {
    type = "assembling-machine",
    name = "electric-mixing-furnace",
    icon = "__bobplates__/graphics/icons/electric-mixing-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-mixing-furnace"},
    max_health = 250,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},

    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    ingredient_count = 4,
    crafting_speed = 2,
    crafting_categories = {"smelting", "mixing-furnace"},
    energy_usage = "180kW",

    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.005
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-furnace.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },

    animation =
    {
      filename = "__bobplates__/graphics/entity/electric-furnace/electric-mixing-furnace.png",
      priority = "high",
      width = 129,
      height = 100,
      frame_count = 1,
      shift = {0.421875, 0}
    },
    working_visualisations =
    {
      {
        animation =
        {
          filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-heater.png",
          priority = "high",
          width = 25,
          height = 15,
          frame_count = 12,
          animation_speed = 0.5,
          shift = {0.015625, 0.890625}
        },
        light = {intensity = 0.4, size = 6, shift = {0.0, 1.0}}
      },
      {
        animation =
        {
          filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
          priority = "high",
          width = 19,
          height = 13,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {-0.671875, -0.640625}
        }
      },
      {
        animation =
        {
          filename = "__bobplates__/graphics/entity/electric-furnace/electric-furnace-propeller-2.png",
          priority = "high",
          width = 12,
          height = 9,
          frame_count = 4,
          animation_speed = 0.5,
          shift = {0.0625, -1.234375}
        }
      }
    },
    fast_replaceable_group = "furnace",
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
  },


  {
    type = "furnace",
    name = "void-pump",
    icon = "__bobplates__/graphics/icons/void-pump.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "void-pump"},
    allowed_effects = {"consumption", "speed", "pollution"},
    max_health = 100,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "explosion",
        percent = 30
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 1,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, 1} }}
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "30kW",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    crafting_categories = {"void-fluid"},
    result_inventory_size = 1,
    crafting_speed = 5,
    source_inventory_size = 1,
    animation =
    {
      north =
      {
        filename = "__base__/graphics/entity/small-pump/small-pump-up.png",
        width = 46,
        height = 56,
        frame_count = 8,
        shift = {0.09375, 0.03125},
        animation_speed = 0.5
      },
      east =
      {
        filename = "__base__/graphics/entity/small-pump/small-pump-right.png",
        width = 51,
        height = 56,
        frame_count = 8,
        shift = {0.265625, -0.21875},
        animation_speed = 0.5
      },
      south =
      {
        filename = "__base__/graphics/entity/small-pump/small-pump-down.png",
        width = 61,
        height = 58,
        frame_count = 8,
        shift = {0.421875, -0.125},
        animation_speed = 0.5
      },
      west =
      {
        filename = "__base__/graphics/entity/small-pump/small-pump-left.png",
        width = 56,
        height = 44,
        frame_count = 8,
        shift = {0.3125, 0.0625},
        animation_speed = 0.5
      }
    },
  },
}
)
