data:extend(
{
  {
    type = "item",
    name = "electric-chemical-mixing-furnace",
    icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smelting-machine",
    order = "d[electric-chemical-mixing-furnace-1]",
    place_result = "electric-chemical-mixing-furnace",
    stack_size = 50
  },
  {
    type = "item",
    name = "electric-chemical-mixing-furnace-2",
    icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-smelting-machine",
    order = "d[electric-chemical-mixing-furnace-2]",
    place_result = "electric-chemical-mixing-furnace-2",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "electric-chemical-mixing-furnace",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"chemical-furnace", 1},
      {"steel-plate", 15},
      {"stone-brick", 10},
      {"processing-unit", 10},
      {"iron-gear-wheel", 10},
      {"pipe", 5},
    },
    result = "electric-chemical-mixing-furnace"
  },

  {
    type = "recipe",
    name = "electric-chemical-mixing-furnace-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"electric-chemical-mixing-furnace", 1},
      {"steel-plate", 15},
      {"stone-brick", 10},
      {"processing-unit", 10},
      {"iron-gear-wheel", 10},
      {"pipe", 5},
    },
    result = "electric-chemical-mixing-furnace-2"
  },


  {
    type = "assembling-machine",
    name = "electric-chemical-mixing-furnace",
    icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-chemical-mixing-furnace"},
    max_health = 350,
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
      module_slots = 5,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    ingredient_count = 6,
    crafting_speed = 3,
    crafting_categories = {"smelting", "mixing-furnace", "chemical-furnace"},
    energy_usage = "250kW",
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
      filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace.png",
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
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-heater.png",
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
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
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
    name = "electric-chemical-mixing-furnace-2",
    icon = "__bobassembly__/graphics/icons/electric-chemical-mixing-furnace-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "electric-chemical-mixing-furnace-2"},
    max_health = 450,
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
      module_slots = 6,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    ingredient_count = 8,
    crafting_speed = 4,
    crafting_categories = {"smelting", "mixing-furnace", "chemical-furnace"},
    energy_usage = "300kW",
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
      filename = "__bobassembly__/graphics/entity/electric-furnace/electric-chemical-mixing-furnace-2.png",
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
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-heater.png",
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
          filename = "__bobassembly__/graphics/entity/electric-furnace/electric-furnace-propeller-1.png",
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
    type = "technology",
    name = "multi-purpose-furnace-1",
    icon = "__bobassembly__/graphics/icons/technology/multi-purpose-furnace.png",
    icon_size = 128,
    upgrade = true,
    order = "c-c-b-1",
    prerequisites =
    {
      "alloy-processing-2",
      "chemical-processing-3",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 75,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-chemical-mixing-furnace"
      },
    },
  },

  {
    type = "technology",
    name = "multi-purpose-furnace-2",
    icon = "__bobassembly__/graphics/icons/technology/multi-purpose-furnace.png",
    icon_size = 128,
    upgrade = true,
    order = "c-c-b-2",
    prerequisites =
    {
      "multi-purpose-furnace-1",
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "electric-chemical-mixing-furnace-2"
      },
    },
  },
}
)


