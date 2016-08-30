data.raw.item["oil-refinery"].order = "d[refinery-2]"
data.raw.item["oil-refinery"].subgroup = "bob-refinery-machine"
data.raw["assembling-machine"]["oil-refinery"].fast_replaceable_group = "oil-refinery"


data:extend(
{
  {
    type = "item",
    name = "oil-refinery-2",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-refinery-machine",
    order = "d[refinery-2]",
    place_result = "oil-refinery-2",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "oil-refinery-2",
    energy_required = 20,
    ingredients =
    {
      {"oil-refinery", 1},
      {"steel-plate", 15},
      {"iron-gear-wheel", 10},
      {"stone-brick", 10},
      {"advanced-circuit", 10},
      {"pipe", 10}
    },
    result = "oil-refinery-2",
    enabled = false
  },

  {
    type = "assembling-machine",
    name = "oil-refinery-2",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "oil-refinery-2"},
    fast_replaceable_group = "oil-refinery",
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {module_slots = 3},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 1.75,
    has_backer_name = true,
    ingredient_count = 6,
    energy_usage = "720kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 4
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures(),
    animation =
    {
      north =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },

  {
    type = "technology",
    name = "oil-processing-2",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-processing",
      "advanced-electronics"
    },
    order = "d-a2",
    upgrade = true,
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      }
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-2"
      },
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "oil-refinery-3",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-refinery-machine",
    order = "d[refinery-3]",
    place_result = "oil-refinery-3",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "oil-refinery-3",
    energy_required = 20,
    ingredients =
    {
      {"oil-refinery-2", 1},
      {"steel-plate", 15},
      {"iron-gear-wheel", 10},
      {"stone-brick", 10},
      {"processing-unit", 10},
      {"pipe", 10}
    },
    result = "oil-refinery-3",
    enabled = false
  },

  {
    type = "assembling-machine",
    name = "oil-refinery-3",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "oil-refinery-3"},
    fast_replaceable_group = "oil-refinery",
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {module_slots = 4},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 2.5,
    has_backer_name = true,
    ingredient_count = 8,
    energy_usage = "1MW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 4.5
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures(),
    animation =
    {
      north =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },

  {
    type = "technology",
    name = "oil-processing-3",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-processing-2",
      "advanced-electronics-2"
    },
    order = "d-a3",
    upgrade = true,
    unit =
    {
      count = 100,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      }
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-3"
      },
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "oil-refinery-4",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-refinery-machine",
    order = "d[refinery-4]",
    place_result = "oil-refinery-4",
    stack_size = 10
  },

  {
    type = "recipe",
    name = "oil-refinery-4",
    energy_required = 20,
    ingredients =
    {
      {"oil-refinery-3", 1},
      {"steel-plate", 15},
      {"iron-gear-wheel", 10},
      {"stone-brick", 10},
      {"processing-unit", 10},
      {"pipe", 10}
    },
    result = "oil-refinery-4",
    enabled = false
  },

  {
    type = "assembling-machine",
    name = "oil-refinery-4",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "oil-refinery-4"},
    fast_replaceable_group = "oil-refinery",
    max_health = 600,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification = {module_slots = 5},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"oil-processing"},
    crafting_speed = 3.5,
    has_backer_name = true,
    ingredient_count = 10,
    energy_usage = "1.35MW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 5
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-2, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {0, -3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures(),
    animation =
    {
      north =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      east =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 337,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      south =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 674,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      },
      west =
      {
        filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery.png",
        x = 1011,
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375}
      }
    },
    working_visualisations =
    {
      {
        north_position = {1.03125, -1.55},
        east_position = {-1.65625, -1.3},
        south_position = {-1.875, -2.0},
        west_position = {1.8437, -1.2},
        animation =
        {
          filename = "__bobassembly__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          frame_count = 29,
          width = 16,
          height = 35,
          scale = 1.5,
          shift = {0, -0.5625},
          run_mode="backward"
        },
        light = {intensity = 0.4, size = 6}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
  },

  {
    type = "technology",
    name = "oil-processing-4",
    icon = "__base__/graphics/technology/oil-processing.png",
    icon_size = 128,
    prerequisites =
    {
      "oil-processing-3"
    },
    order = "d-a4",
    upgrade = true,
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      }
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "oil-refinery-4"
      },
    },
  },
}
)

