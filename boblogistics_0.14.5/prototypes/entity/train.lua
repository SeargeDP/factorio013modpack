function rolling_stock_front_light()
  return
  {
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture =
      {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200
      },
      shift = {-0.6, -16},
      size = 2,
      intensity = 0.6
    },
    {
      type = "oriented",
      minimum_darkness = 0.3,
      picture =
      {
        filename = "__core__/graphics/light-cone.png",
        priority = "medium",
        scale = 2,
        width = 200,
        height = 200
      },
      shift = {0.6, -16},
      size = 2,
      intensity = 0.6
    }
  }
end

function rolling_stock_stop_trigger()
  return
  {
    -- left side
    {
      type = "create-smoke",
      repeat_count = 125,
      entity_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the left
      speed = {-0.03, 0},
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
    },
    -- right side
    {
      type = "create-smoke",
      repeat_count = 125,
      entity_name = "smoke-train-stop",
      initial_height = 0,
      -- smoke goes to the right
      speed = {0.03, 0},
      speed_multiplier = 0.75,
      speed_multiplier_deviation = 1.1,
      offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
    },
    {
      type = "play-sound",
      sound =
      {
        {
          filename = "__base__/sound/train-breaks.ogg",
          volume = 0.6
        },
      }
    },
  }
end

function rolling_stock_resistances()
  return
  {
    {
      type = "fire",
      decrease = 15,
      percent = 50
    },
    {
      type = "physical",
      decrease = 15,
      percent = 30
    },
    {
      type = "impact",
      decrease = 50,
      percent = 60
    },
    {
      type = "explosion",
      decrease = 15,
      percent = 30
    },
    {
      type = "acid",
      decrease = 10,
      percent = 20
    },

    {
      type = "laser",
      decrease = 10,
      percent = 30,
    },
    {
      type = "electric",
      decrease = 12,
      percent = 50,
    },
    {
      type = "poison",
      decrease = 15,
      percent = 60,
    }
  }
end

function rolling_stock_armor_resistances()
  return
  {
    {
      type = "fire",
      decrease = 25,
      percent = 75
    },
    {
      type = "physical",
      decrease = 25,
      percent = 50
    },
    {
      type = "impact",
      decrease = 75,
      percent = 90
    },
    {
      type = "explosion",
      decrease = 25,
      percent = 50
    },
    {
      type = "acid",
      decrease = 20,
      percent = 30
    },
    {
      type = "laser",
      decrease = 10,
      percent = 50,
    },
    {
      type = "electric",
      decrease = 12,
      percent = 75,
    },
    {
      type = "poison",
      decrease = 15,
      percent = 90,
    }
  }
end


data.raw.locomotive["diesel-locomotive"].resistances = rolling_stock_resistances()


data:extend(
{
  {
    type = "locomotive",
    name = "bob-diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "bob-diesel-locomotive-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1350,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    vertical_selection_shift = -0.5,
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 1.7,
    max_power = "900kW",
    reversing_power_modifier = 0.8,
    braking_force = 15,
    friction_force = 0.375, --0.001,
    air_resistance = 0.005625, --0.0015,  -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1.2,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },

    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 236,
          height = 228,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-diesel-locomotive-2",
  },

  {
    type = "locomotive",
    name = "bob-diesel-locomotive-3",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "bob-diesel-locomotive-3"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1700,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    vertical_selection_shift = -0.5,
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 2000,
    max_speed = 2,
    max_power = "1200kW",
    reversing_power_modifier = 1,
    braking_force = 20,
    friction_force = 0.25, --0.0005,
    air_resistance = 0.0075, --0.001, -- this is a percentage of current speed that will be subtracted
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1.4,
      fuel_inventory_size = 5,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },

    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 236,
          height = 228,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-diesel-locomotive-3",
  },
}
)



data.raw["cargo-wagon"]["cargo-wagon"].resistances = rolling_stock_resistances()

data:extend(
{
  {
    type = "cargo-wagon",
    name = "bob-cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 60,
    minable = {mining_time = 1, result = "bob-cargo-wagon-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 800,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    vertical_selection_shift = -0.796875,
    weight = 1500,
    max_speed = 2.5,
    braking_force = 4,
    friction_force = 0.375,
    air_resistance = 0.003,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },

    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875}
        },
        {
          flags = { "mask" },
          width = 196,
          height = 174,
          direction_count = 128,
          back_equals_front = true,
          apply_runtime_tint = true,
          shift = {0, -1.125},
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
          },
          line_length = 4,
          lines_per_file = 11,
        },
        {
          flags = { "compressed" },
          width = 246,
          height = 201,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.8, -0.078125}
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 202,
          frame_count = 8,
          shift = {0, -0.84375}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-cargo-wagon-2",
  },

  {
    type = "cargo-wagon",
    name = "bob-cargo-wagon-3",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 80,
    minable = {mining_time = 1, result = "bob-cargo-wagon-3"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 1000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    vertical_selection_shift = -0.796875,
    weight = 2000,
    max_speed = 3.5,
    braking_force = 5,
    friction_force = 0.25,
    air_resistance = 0.002,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_resistances(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },

    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875}
        },
        {
          flags = { "mask" },
          width = 196,
          height = 174,
          direction_count = 128,
          back_equals_front = true,
          apply_runtime_tint = true,
          shift = {0, -1.125},
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
          },
          line_length = 4,
          lines_per_file = 11,
        },
        {
          flags = { "compressed" },
          width = 246,
          height = 201,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.8, -0.078125}
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 202,
          frame_count = 8,
          shift = {0, -0.84375}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-cargo-wagon-3",
  },
}
)



data:extend(
{
  {
    type = "locomotive",
    name = "bob-armoured-diesel-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "bob-armoured-diesel-locomotive"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 5000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    vertical_selection_shift = -0.5,
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 4000,
    max_speed = 1,
    max_power = "750kW",
    reversing_power_modifier = 0.75,
    braking_force = 10,
    friction_force = 0.5,
    air_resistance = 0.0075,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_armor_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 3,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },

    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 236,
          height = 228,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-armoured-diesel-locomotive",
  },


  {
    type = "cargo-wagon",
    name = "bob-armoured-cargo-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 40,
    minable = {mining_time = 1, result = "bob-armoured-cargo-wagon"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 3000,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    vertical_selection_shift = -0.796875,
    weight = 2000,
    max_speed = 1.2,
    braking_force = 3,
    friction_force = 0.5,
    air_resistance = 0.005,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    resistances = rolling_stock_armor_resistances(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,

    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875}
        },
        {
          flags = { "mask" },
          width = 196,
          height = 174,
          direction_count = 128,
          back_equals_front = true,
          apply_runtime_tint = true,
          shift = {0, -1.125},
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
          },
          line_length = 4,
          lines_per_file = 11,
        },
        {
          flags = { "compressed" },
          width = 246,
          height = 201,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.8, -0.078125}
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 202,
          frame_count = 8,
          shift = {0, -0.84375}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-armoured-cargo-wagon",
  },
}
)




data:extend(
{
  {
    type = "locomotive",
    name = "bob-armoured-diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    minable = {mining_time = 1, result = "bob-armoured-diesel-locomotive-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 7500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
    selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
    vertical_selection_shift = -0.5,
    drawing_box = {{-1, -4}, {1, 3}},
    weight = 4000,
    max_speed = 1.5,
    max_power = "1000kW",
    reversing_power_modifier = 0.85,
    braking_force = 15,
    friction_force = 0.5,
    air_resistance = 0.0075,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    sound_minimum_speed = 0.5,
    resistances = rolling_stock_armor_resistances(),
    energy_source =
    {
      type = "burner",
      effectivity = 1.2,
      fuel_inventory_size = 4,
      smoke =
      {
        {
          name = "train-smoke",
          deviation = {0.3, 0.3},
          frequency = 100,
          position = {0, 0},
          starting_frame = 0,
          starting_frame_deviation = 60,
          height = 2,
          height_deviation = 0.5,
          starting_vertical_speed = 0.2,
          starting_vertical_speed_deviation = 0.1,
        }
      }
    },
    front_light = rolling_stock_front_light(),
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    stop_trigger = rolling_stock_stop_trigger(),
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-engine.ogg",
        volume = 0.4
      },
      match_speed_to_activity = true,
    },

    color = {r = 0.92, g = 0.07, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 238,
          height = 230,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5}
        },
        {
          priority = "very-low",
          flags = { "mask" },
          width = 236,
          height = 228,
          direction_count = 256,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.0, -0.5},
          apply_runtime_tint = true
        },
        {
          priority = "very-low",
          flags = { "compressed" },
          width = 253,
          height = 212,
          direction_count = 256,
          draw_as_shadow = true,
          filenames =
          {
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
            "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {1, 0.3}
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-armoured-diesel-locomotive-2",
  },


  {
    type = "cargo-wagon",
    name = "bob-armoured-cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
    inventory_size = 60,
    minable = {mining_time = 1, result = "bob-armoured-cargo-wagon-2"},
    mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
    max_health = 4500,
    corpse = "medium-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-0.6, -2.4}, {0.6, 2.4}},
    selection_box = {{-0.7, -2.5}, {1, 2.5}},
    vertical_selection_shift = -0.796875,
    weight = 2000,
    max_speed = 1.8,
    braking_force = 4.5,
    friction_force = 0.5,
    air_resistance = 0.005,
    connection_distance = 3,
    joint_distance = 4,
    energy_per_hit_point = 5,
    back_light = rolling_stock_back_light(),
    stand_by_light = rolling_stock_stand_by_light(),
    resistances = rolling_stock_armor_resistances(),
    rail_category = "regular",
    drive_over_tie_trigger = drive_over_tie(),
    tie_distance = 50,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/train-wheels.ogg",
        volume = 0.5
      },
      match_volume_to_activity = true,
    },
    crash_trigger = crash_trigger(),
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    sound_minimum_speed = 0.5,

    color = {r = 0.43, g = 0.23, b = 0, a = 0.5},
    pictures =
    {
      layers =
      {
        {
          priority = "very-low",
          width = 222,
          height = 205,
          back_equals_front = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0, -0.796875}
        },
        {
          flags = { "mask" },
          width = 196,
          height = 174,
          direction_count = 128,
          back_equals_front = true,
          apply_runtime_tint = true,
          shift = {0, -1.125},
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-mask-3.png"
          },
          line_length = 4,
          lines_per_file = 11,
        },
        {
          flags = { "compressed" },
          width = 246,
          height = 201,
          back_equals_front = true,
          draw_as_shadow = true,
          direction_count = 128,
          filenames =
          {
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-1.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-2.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-3.png",
            "__base__/graphics/entity/cargo-wagon/cargo-wagon-shadow-4.png"
          },
          line_length = 4,
          lines_per_file = 8,
          shift = {0.8, -0.078125}
        }
      }
    },
    horizontal_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-end.png",
          line_length = 1,
          width = 220,
          height = 33,
          frame_count = 8,
          shift = {0, -0.921875}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side.png",
          line_length = 1,
          width = 186,
          height = 38,
          frame_count = 8,
          shift = {0, -0.78125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-side-mask.png",
          width = 182,
          height = 35,
          line_length = 1,
          frame_count = 8,
          shift = {0, -0.828125},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top.png",
          line_length = 1,
          width = 184,
          height = 28,
          frame_count = 8,
          shift = {0.015625, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-horizontal-top-mask.png",
          width = 185,
          height = 23,
          frame_count = 8,
          line_length = 1,
          shift = {0.015625, -1.17188},
          apply_runtime_tint = true
        }
      }
    },
    vertical_doors =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-end.png",
          line_length = 8,
          width = 30,
          height = 202,
          frame_count = 8,
          shift = {0, -0.84375}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side.png",
          line_length = 8,
          width = 67,
          height = 169,
          frame_count = 8,
          shift = {0.015625, -1.01563}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-side-mask.png",
          line_length = 8,
          width = 56,
          height = 163,
          frame_count = 8,
          shift = {0, -1.10938},
          apply_runtime_tint = true
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top.png",
          line_length = 8,
          width = 32,
          height = 168,
          frame_count = 8,
          shift = {0, -1.125}
        },
        {
          filename = "__base__/graphics/entity/cargo-wagon/cargo-wagon-door-vertical-top-mask.png",
          line_length = 8,
          width = 32,
          height = 166,
          frame_count = 8,
          shift = {0, -1.15625},
          apply_runtime_tint = true
        }
      }
    },
    wheels = standard_train_wheels,
    equipment_grid = "bob-armoured-cargo-wagon-2",
  },
}
)




