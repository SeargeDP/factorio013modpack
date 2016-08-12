---------------------- PURPLE BELT PICTURES
purple_belt_horizontal =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32
  }
purple_belt_vertical =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 40,
  }
purple_belt_ending_top =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 80
  }
purple_belt_ending_bottom =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 120
  }
purple_belt_ending_side =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 160
  }
purple_belt_starting_top =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 200
  }
purple_belt_starting_bottom =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 240
  }
purple_belt_starting_side =
  {
    filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
    priority = "extra-high",
    width = 40,
    height = 40,
    frame_count = 32,
    y = 280
  }



data:extend(
{
  {
    type = "item",
    name = "purple-transport-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-belt",
    order = "a[transport-belt]-e[purple-transport-belt]",
    place_result = "purple-transport-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "purple-underground-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-belt",
    order = "b[underground-belt]-e[purple-underground-belt]",
    place_result = "purple-underground-belt",
    stack_size = 50
  },
  {
    type = "item",
    name = "purple-splitter",
    icon = "__boblogistics__/graphics/icons/purple-splitter.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-belt",
    order = "c[splitter]-e[purple-splitter]",
    place_result = "purple-splitter",
    stack_size = 50
  },

  {
    type = "transport-belt",
    name = "purple-transport-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "purple-transport-belt"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 50
      }
    },
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/express-transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 32,
      direction_count = 12
    },
    belt_horizontal = purple_belt_horizontal,
    belt_vertical = purple_belt_vertical,
    ending_top = purple_belt_ending_top,
    ending_bottom = purple_belt_ending_bottom,
    ending_side = purple_belt_ending_side,
    starting_top = purple_belt_starting_top,
    starting_bottom = purple_belt_starting_bottom,
    starting_side = purple_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.15625,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector_sprites = transport_belt_circuit_connector_sprites,
    circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },

  {
    type = "underground-belt",
    name = "purple-underground-belt",
    icon = "__boblogistics__/graphics/icons/purple-transport-belt-to-ground.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-underground-belt"},
    max_health = 60,
    corpse = "small-remnants",
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
      scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.5,
    animation_speed_coefficient = 32,
    belt_horizontal = purple_belt_horizontal,
    belt_vertical = purple_belt_vertical,
    ending_top = purple_belt_ending_top,
    ending_bottom = purple_belt_ending_bottom,
    ending_side = purple_belt_ending_side,
    starting_top = purple_belt_starting_top,
    starting_bottom = purple_belt_starting_bottom,
    starting_side = purple_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "underground-belt",
    speed = 0.15625,
    max_distance = 25,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt-to-ground-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__boblogistics__/graphics/entity/transport-belt/purple-transport-belt-to-ground-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      },
    },
  },

  {
    type = "splitter",
    name = "purple-splitter",
    icon = "__boblogistics__/graphics/icons/purple-splitter.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "purple-splitter"},
    max_health = 80,
    corpse = "medium-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.9, -0.1}, {0.9, 0.1}},
    selection_box = {{-0.9, -0.5}, {0.9, 0.5}},
    animation_speed_coefficient = 32,
    structure_animation_speed_coefficient = 1.2,
    structure_animation_movement_cooldown = 10,
    belt_horizontal = purple_belt_horizontal,
    belt_vertical = purple_belt_vertical,
    ending_top = purple_belt_ending_top,
    ending_bottom = purple_belt_ending_bottom,
    ending_side = purple_belt_ending_side,
    starting_top = purple_belt_starting_top,
    starting_bottom = purple_belt_starting_bottom,
    starting_side = purple_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "splitter",
    speed = 0.15625,
    structure =
    {
      north =
      {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-north.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 80,
        height = 35,
        shift = {0.225, 0}
      },
      east =
      {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-east.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 46,
        height = 81,
        shift = {0.075, 0}
      },
      south =
      {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-south.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 82,
        height = 36,
        shift = {0.075, 0}
      },
      west =
      {
        filename = "__boblogistics__/graphics/entity/transport-belt/purple-splitter-west.png",
        frame_count = 32,
        line_length = 16,
        priority = "extra-high",
        width = 47,
        height = 79,
        shift = {0.25, 0.05}
      },
    },
  },

  {
    type = "recipe",
    name = "purple-transport-belt",
    enabled = "false",
    ingredients =
    {
      {"green-transport-belt", 1},
      {"iron-gear-wheel", 5},
    },
    result = "purple-transport-belt"
  },
  {
    type = "recipe",
    name = "purple-underground-belt",
    enabled = "false",
    ingredients =
    {
      {"green-underground-belt", 2},
      {"iron-gear-wheel", 20},
    },
    result_count = 2,
    result = "purple-underground-belt"
  },
  {
    type = "recipe",
    name = "purple-splitter",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {"green-splitter", 1},
      {"processing-unit", 10},
      {"iron-gear-wheel", 10},
    },
    result = "purple-splitter"
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-logistics-5",
    icon = "__base__/graphics/technology/logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "purple-transport-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-underground-belt"
      },
      {
        type = "unlock-recipe",
        recipe = "purple-splitter"
      }
    },
    prerequisites = {"bob-logistics-4"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    order = "a-f-e",
  },
}
)


