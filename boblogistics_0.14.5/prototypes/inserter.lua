data:extend(
{
  {
    type = "item",
    name = "express-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/cyan-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "d[fast-inserter][express]",
    place_result = "express-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "express-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/magenta-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "e[filter-inserter][express]",
    place_result = "express-filter-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "express-inserter",
    enabled = "false",
    ingredients =
    {
      {"fast-inserter", 1},
      {"advanced-circuit", 2},
      {"iron-gear-wheel", 2},
    },
    result = "express-inserter",
    requester_paste_multiplier = 4
  },
  {
    type = "recipe",
    name = "express-filter-inserter",
    enabled = false,
    ingredients =
    {
      {"filter-inserter", 1},
      {"advanced-circuit", 4}
    },
    result = "express-filter-inserter",
    requester_paste_multiplier = 4
  },

  {
    type = "inserter",
    name = "express-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/cyan-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "express-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
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
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    energy_per_movement = 5000,
    energy_per_rotation = 5000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.4kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    fast_replaceable_group = "inserter",
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet=
      {
        filename = "__boblogistics__/graphics/entity/inserter/cyan-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },

  {
    type = "inserter",
    name = "express-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/magenta-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "express-filter-inserter"},
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
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
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = 8000,
    energy_per_rotation = 8000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "0.5kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    fast_replaceable_group = "inserter",
    filter_count = 5,
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-closed.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-hand-open.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet=
      {
        filename = "__boblogistics__/graphics/entity/inserter/magenta-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },

    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },

  {
    type = "technology",
    name = "express-inserters",
    icon = "__boblogistics__/graphics/icons/technology/express-inserter.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "express-filter-inserter"
      },
    },
    prerequisites =
    {
      "advanced-electronics",
      "logistics",
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "a-f",
  },
}
)





data:extend(
{
  {
    type = "item",
    name = "express-stack-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "f[stack-inserter][express]",
    place_result = "express-stack-inserter",
    stack_size = 50
  },
  {
    type = "item",
    name = "express-stack-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/stripe-inserter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "inserter",
    order = "g[stack-filter-inserter][express]",
    place_result = "express-stack-filter-inserter",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "express-stack-inserter",
    enabled = false,
    ingredients =
    {
      {"stack-inserter", 1},
      {"iron-gear-wheel", 15},
      {"advanced-circuit", 5},
    },
    result = "express-stack-inserter",
    requester_paste_multiplier = 4
  },
  {
    type = "recipe",
    name = "express-stack-filter-inserter",
    enabled = false,
    ingredients =
    {
      {"stack-filter-inserter", 1},
      {"iron-gear-wheel", 15},
      {"advanced-circuit", 5}
    },
    result = "express-stack-filter-inserter",
    requester_paste_multiplier = 4
  },

  {
    type = "inserter",
    name = "express-stack-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/dark-green-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "express-stack-inserter"
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = 20000,
    energy_per_rotation = 20000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
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
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/dark-green-big-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__boblogistics__/graphics/entity/inserter/dark-green-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },

  {
    type = "inserter",
    name = "express-stack-filter-inserter",
    icon = "__boblogistics__/graphics/icons/inserter/stripe-inserter.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    stack = true,
    filter_count = 2,
    minable =
    {
      hardness = 0.2,
      mining_time = 0.5,
      result = "express-stack-filter-inserter"
    },
    max_health = 40,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-0.15, -0.15}, {0.15, 0.15}},
    selection_box = {{-0.4, -0.35}, {0.4, 0.45}},
    pickup_position = {0, -1},
    insert_position = {0, 1.2},
    energy_per_movement = 20000,
    energy_per_rotation = 20000,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      drain = "1kW"
    },
    extension_speed = 0.25,
    rotation_speed = 0.1,
    fast_replaceable_group = "inserter",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
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
    hand_base_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-base.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-closed.png",
      priority = "extra-high",
      width = 24,
      height = 41
    },
    hand_open_picture =
    {
      filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-hand-open.png",
      priority = "extra-high",
      width = 32,
      height = 41
    },
    hand_base_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-base-shadow.png",
      priority = "extra-high",
      width = 8,
      height = 34
    },
    hand_closed_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-closed-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    hand_open_shadow =
    {
      filename = "__boblogistics__/graphics/entity/inserter/burner-inserter-hand-open-shadow.png",
      priority = "extra-high",
      width = 18,
      height = 41
    },
    platform_picture =
    {
      sheet =
      {
        filename = "__boblogistics__/graphics/entity/inserter/stripe-inserter-platform.png",
        priority = "extra-high",
        width = 46,
        height = 46,
        shift = {0.09375, 0}
      }
    },
    circuit_wire_connection_point = inserter_circuit_wire_connection_point,
    circuit_connector_sprites = inserter_circuit_connector_sprites,
    circuit_wire_max_distance = inserter_circuit_wire_max_distance
  },


  {
    type = "technology",
    name = "stack-inserter-2",
    icon = "__base__/graphics/technology/inserter-capacity.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "express-stack-inserter"
      },
      {
        type = "unlock-recipe",
        recipe = "express-stack-filter-inserter"
      }
    },
    prerequisites =
    {
      "logistics-2",
      "advanced-electronics"
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-o-a2",
  },
}
)


if data.raw.technology["stack-inserter"] then
  data.raw.technology["stack-inserter-2"].icon = "__base__/graphics/technology/stack-inserter.png"
  data.raw.technology["stack-inserter-2"].prerequisites = {"stack-inserter"}
end

