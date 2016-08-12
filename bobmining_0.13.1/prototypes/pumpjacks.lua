data.raw["mining-drill"]["pumpjack"].fast_replaceable_group = "pumpjack"
data.raw.item["pumpjack"].order = "b[fluids]-b[pumpjack-1]"

data:extend(
{
  {
    type = "item",
    name = "bob-pumpjack-1",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack-2]",
    place_result = "bob-pumpjack-1",
    stack_size = 20
  },
  {
    type = "item",
    name = "bob-pumpjack-2",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack-3]",
    place_result = "bob-pumpjack-2",
    stack_size = 20
  },
  {
    type = "item",
    name = "bob-pumpjack-3",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack-4]",
    place_result = "bob-pumpjack-3",
    stack_size = 20
  },
  {
    type = "item",
    name = "bob-pumpjack-4",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "b[fluids]-b[pumpjack-5]",
    place_result = "bob-pumpjack-4",
    stack_size = 20
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-pumpjack-1",
    energy_required = 20,
    ingredients =
    {
      {"pumpjack", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 10},
      {"electronic-circuit", 5},
      {"pipe", 10},
    },
    result = "bob-pumpjack-1",
    enabled = "false"
  },
  {
    type = "recipe",
    name = "bob-pumpjack-2",
    energy_required = 20,
    ingredients =
    {
      {"bob-pumpjack-1", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 10},
      {"advanced-circuit", 5},
      {"pipe", 10},
    },
    result = "bob-pumpjack-2",
    enabled = "false"
  },
  {
    type = "recipe",
    name = "bob-pumpjack-3",
    energy_required = 20,
    ingredients =
    {
      {"bob-pumpjack-2", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 10},
      {"processing-unit", 5},
      {"pipe", 10},
    },
    result = "bob-pumpjack-3",
    enabled = "false"
  },
  {
    type = "recipe",
    name = "bob-pumpjack-4",
    energy_required = 20,
    ingredients =
    {
      {"bob-pumpjack-3", 1},
      {"steel-plate", 20},
      {"iron-gear-wheel", 10},
      {"processing-unit", 5},
      {"pipe", 10},
    },
    result = "bob-pumpjack-4",
    enabled = "false"
  },
}
)


data:extend(
{
  {
    type = "mining-drill",
    name = "bob-pumpjack-1",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-pumpjack-1"},
    resource_categories = {"basic-fluid"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "171kW",
    mining_speed = 2,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
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
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 1
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
  },
  {
    type = "mining-drill",
    name = "bob-pumpjack-2",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-pumpjack-2"},
    resource_categories = {"basic-fluid"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "243kW",
    mining_speed = 3,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
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
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 1.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
  },
  {
    type = "mining-drill",
    name = "bob-pumpjack-3",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-pumpjack-3"},
    resource_categories = {"basic-fluid"},
    max_health = 250,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 2.5,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "306kW",
    mining_speed = 4,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
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
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 2
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
  },
  {
    type = "mining-drill",
    name = "bob-pumpjack-4",
    icon = "__base__/graphics/icons/pumpjack.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "bob-pumpjack-4"},
    resource_categories = {"basic-fluid"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{ -1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{ -1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.6, -2.5}, {1.5, 1.6}},
    energy_source =
    {
      type = "electric",
      emissions = 0.15 / 1.5,
      usage_priority = "secondary-input"
    },
    fluid_box =
    {
      base_area = 3,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
        }
      },
    },
    energy_usage = "360kW",
    mining_speed = 5,
    mining_power = 2,
    resource_searching_radius = 0.49,
    vector_to_place_result = {0, 0},
    module_specification =
    {
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "pumpjack",
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
      width = 12,
      height = 12
    },
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
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 116,
        height = 110,
        line_length = 10,
        shift = {0.125, -0.71875},
        filename = "__base__/graphics/entity/pumpjack/pumpjack-animation.png",
        frame_count = 40,
        animation_speed = 2.5
      }
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/pumpjack.ogg" },
      apparent_volume = 1.5,
    },
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-pumpjacks-1",
    icon = "__base__/graphics/technology/oil-gathering.png",
    order = "d-a-c-1",
    upgrade = "true",
    prerequisites =
    {
      "oil-processing"
    },
    unit =
    {
      count = 50,
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
        recipe = "bob-pumpjack-1"
      },
    },
  },
  {
    type = "technology",
    name = "bob-pumpjacks-2",
    icon = "__base__/graphics/technology/oil-gathering.png",
    order = "d-a-c-2",
    upgrade = "true",
    prerequisites =
    {
      "bob-pumpjacks-1",
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
        recipe = "bob-pumpjack-2"
      },
    },
  },
  {
    type = "technology",
    name = "bob-pumpjacks-3",
    icon = "__base__/graphics/technology/oil-gathering.png",
    order = "d-a-c-3",
    upgrade = "true",
    prerequisites =
    {
      "bob-pumpjacks-2",
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
        recipe = "bob-pumpjack-3"
      },
    },
  },
  {
    type = "technology",
    name = "bob-pumpjacks-4",
    icon = "__base__/graphics/technology/oil-gathering.png",
    order = "d-a-c-4",
    upgrade = "true",
    prerequisites =
    {
      "bob-pumpjacks-3",
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
        recipe = "bob-pumpjack-4"
      },
    },
  },
}
)

