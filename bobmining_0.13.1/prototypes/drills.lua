data.raw["mining-drill"]["electric-mining-drill"].fast_replaceable_group = "mining-drill"
data.raw.item["electric-mining-drill"].order = "a[items]-b-0[electric-mining-drill]"

data:extend(
{
  {
    type = "item",
    name = "bob-mining-drill-1",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-a[mining-drill-1]",
    place_result = "bob-mining-drill-1",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-mining-drill-2",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-a[mining-drill-2]",
    place_result = "bob-mining-drill-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-mining-drill-3",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-a[mining-drill-3]",
    place_result = "bob-mining-drill-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "bob-mining-drill-4",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-b-a[mining-drill-4]",
    place_result = "bob-mining-drill-4",
    stack_size = 50
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-mining-drill-1",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"electric-mining-drill", 1},
      {"electronic-circuit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "bob-mining-drill-1"
  },
  {
    type = "recipe",
    name = "bob-mining-drill-2",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-mining-drill-1", 1},
      {"advanced-circuit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "bob-mining-drill-2"
  },
  {
    type = "recipe",
    name = "bob-mining-drill-3",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-mining-drill-2", 1},
      {"processing-unit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "bob-mining-drill-3"
  },
  {
    type = "recipe",
    name = "bob-mining-drill-4",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"bob-mining-drill-3", 1},
      {"processing-unit", 5},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
    },
    result = "bob-mining-drill-4"
  },
}
)


data:extend(
{
  {
    type = "mining-drill",
    name = "bob-mining-drill-1",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-mining-drill-1"},
    max_health = 450,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/electric-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 1,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "256kW",
    mining_speed = 1,
    mining_power = 4.5,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-mining-drill-2",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-mining-drill-2"},
    max_health = 600,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/electric-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 2,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 2,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 2,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 2,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "648kW",
    mining_speed = 2,
    mining_power = 6,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-mining-drill-3",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-mining-drill-3"},
    max_health = 750,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/electric-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 3,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 3,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 3,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 3,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "1224kW",
    mining_speed = 3,
    mining_power = 8,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
  {
    type = "mining-drill",
    name = "bob-mining-drill-4",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-mining-drill-4"},
    max_health = 900,
    resource_categories = {"basic-solid"},
    corpse = "big-remnants",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/electric-mining-drill.ogg",
        volume = 0.75
      },
      apparent_volume = 1.5,
    },
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 114,
        line_length = 8,
        shift = {0.2, -0.2},
        filename = "__base__/graphics/entity/electric-mining-drill/north.png",
        frame_count = 64,
        animation_speed = 4,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 129,
        height = 100,
        line_length = 8,
        shift = {0.45, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/east.png",
        frame_count = 64,
        animation_speed = 4,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 109,
        height = 111,
        line_length = 8,
        shift = {0.15, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/south.png",
        frame_count = 64,
        animation_speed = 4,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 128,
        height = 100,
        line_length = 8,
        shift = {0.25, 0},
        filename = "__base__/graphics/entity/electric-mining-drill/west.png",
        frame_count = 64,
        animation_speed = 4,
        run_mode = "forward-then-backward",
      }
    },
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    energy_usage = "1920kW",
    mining_speed = 4,
    mining_power = 10,
    resource_searching_radius = 2.49,
    vector_to_place_result = {0, -1.85},
    module_specification =
    {
      module_slots = 8,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    storage_slots = 6,
    fast_replaceable_group = "mining-drill",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/electric-mining-drill/electric-mining-drill-radius-visualization.png",
      width = 12,
      height = 12
    }
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-drills-1",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    order = "d-a-a-1",
    upgrade = "true",
    prerequisites =
    {
      "steel-processing",
      "electronics",
    },
    unit =
    {
      count = 50,
      time = 30,
      ingredients = {
        {"science-pack-1", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-mining-drill-1"
      },
    },
  },
  {
    type = "technology",
    name = "bob-drills-2",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    order = "d-a-a-2",
    upgrade = "true",
    prerequisites =
    {
      "bob-drills-1",
      "advanced-electronics"
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-mining-drill-2"
      },
    },
  },
  {
    type = "technology",
    name = "bob-drills-3",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    order = "d-a-a-3",
    upgrade = "true",
    prerequisites =
    {
      "bob-drills-2",
      "advanced-electronics-2"
    },
    unit =
    {
      count = 100,
      time = 30,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-mining-drill-3"
      },
    },
  },
  {
    type = "technology",
    name = "bob-drills-4",
    icon = "__base__/graphics/icons/electric-mining-drill.png",
    order = "d-a-a-4",
    upgrade = "true",
    prerequisites =
    {
      "bob-drills-3"
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients = {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "bob-mining-drill-4"
      },
    },
  },
}
)

