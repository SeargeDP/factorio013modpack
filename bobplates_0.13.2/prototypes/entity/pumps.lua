data:extend(
{
  {
    type = "assembling-machine",
    name = "air-pump",
    icon = "__bobplates__/graphics/icons/air-pump-1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-pump"},
    max_health = 150,
    crafting_categories = {"air-pump"},
    crafting_speed = 1,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "air-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "50kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "air-pump-2",
    icon = "__bobplates__/graphics/icons/air-pump-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-pump-2"},
    max_health = 180,
    crafting_categories = {"air-pump"},
    crafting_speed = 2,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "air-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "90kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "air-pump-3",
    icon = "__bobplates__/graphics/icons/air-pump-3.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-pump-3"},
    max_health = 230,
    crafting_categories = {"air-pump"},
    crafting_speed = 3.5,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "air-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "140kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "air-pump-4",
    icon = "__bobplates__/graphics/icons/air-pump-4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "air-pump-4"},
    max_health = 300,
    crafting_categories = {"air-pump"},
    crafting_speed = 5,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "air-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "175kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },



  {
    type = "assembling-machine",
    name = "water-pump",
    icon = "__bobplates__/graphics/icons/water-pump-1.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "water-pump"},
    max_health = 120,
    crafting_categories = {"water-pump"},
    crafting_speed = 1,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 1,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "water-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "50kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "water-pump-2",
    icon = "__bobplates__/graphics/icons/water-pump-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "water-pump-2"},
    max_health = 180,
    crafting_categories = {"water-pump"},
    crafting_speed = 2,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 2,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "water-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "90kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "water-pump-3",
    icon = "__bobplates__/graphics/icons/water-pump-3.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "water-pump-3"},
    max_health = 230,
    crafting_categories = {"water-pump"},
    crafting_speed = 3.5,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "water-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "140kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },

  {
    type = "assembling-machine",
    name = "water-pump-4",
    icon = "__bobplates__/graphics/icons/water-pump-4.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "water-pump-4"},
    max_health = 300,
    crafting_categories = {"water-pump"},
    crafting_speed = 5,
    ingredient_count = 2,
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    allowed_effects = {"consumption", "speed", "pollution"},
    fast_replaceable_group = "water-pump",
    corpse = "small-remnants",
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
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0.5, 1.5} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0.5, -1.5} }}
      },
      off_when_no_fluid_recipe = false
    },
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.9, -0.9}, {0.9, 0.9}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "175kW",
    animation =
    {
      north =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      east =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 80,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      south =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 160,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      },
      west =
      {
        filename = "__bobplates__/graphics/entity/pump/pump.png",
        y = 240,
        width = 80,
        height = 80,
        frame_count = 8,
        animation_speed = 0.5
      }
    }
  },
}
)


