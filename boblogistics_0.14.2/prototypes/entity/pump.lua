function bobmods.logistics.small_pump_animations(tint)
  return {
    north = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-up.png",
          width = 46,
          height = 56,
          frame_count = 8,
          shift = {0.09375, 0.03125},
          animation_speed = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-up-mask.png",
          width = 46,
          height = 56,
          frame_count = 8,
          shift = {0.09375, 0.03125},
          tint = tint,
          animation_speed = 0.5
        }
      }
    },
    east = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-right.png",
          width = 51,
          height = 56,
          frame_count = 8,
          shift = {0.265625, -0.21875},
          animation_speed = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-right-mask.png",
          width = 51,
          height = 56,
          frame_count = 8,
          shift = {0.265625, -0.21875},
          tint = tint,
          animation_speed = 0.5
        }
      }
    },
    south = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-down.png",
          width = 61,
          height = 58,
          frame_count = 8,
          shift = {0.421875, -0.125},
          animation_speed = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-down-mask.png",
          width = 61,
          height = 58,
          frame_count = 8,
          shift = {0.421875, -0.125},
          tint = tint,
          animation_speed = 0.5
        }
      }
    },
    west = {
      layers = {
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-left.png",
          width = 56,
          height = 44,
          frame_count = 8,
          shift = {0.3125, 0.0625},
          animation_speed = 0.5
        },
        {
          filename = "__boblogistics__/graphics/entity/small-pump/small-pump-left-mask.png",
          width = 56,
          height = 44,
          frame_count = 8,
          shift = {0.3125, 0.0625},
          tint = tint,
          animation_speed = 0.5
        }
      }
    }
  }
end

local circuit_wire_connection_points = {
      {
        shadow =
        {
          red = {0.65625, 0.03125},
          green = {0.65625, 0.03125},
        },
        wire =
        {
          red = {0.34375, -0.375},
          green = {0.34375, -0.375},
        }
      },
      {
        shadow =
        {
          red = {0.625, 0.46875},
          green = {0.625, 0.46875},
        },
        wire =
        {
          red = {0.1875, -0.03125},
          green = {0.1875, -0.03125},
        }
      },
      {
        shadow =
        {
          red = {0.1875, 0.1875},
          green = {0.1875, 0.1875},
        },
        wire =
        {
          red = {-0.375, -0.15625},
          green = {-0.375, -0.15625},
        }
      },
      {
        shadow =
        {
          red = {0.3125, -0.03125},
          green = {0.3125, -0.03125},
        },
        wire =
        {
          red = {-0.15625, -0.5},
          green = {-0.15625, -0.5},
        }
      }
    }


data:extend(
{
  {
    type = "pump",
    name = "small-pump-2",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "small-pump-2"},
    max_health = 100,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1}, type="output" },
        { position = {0, 1}, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "82.5kW",
    pumping_speed = 1.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations = bobmods.logistics.small_pump_animations({r = 0.8, g = 0.8, b = 0.2, a = 1}),
    circuit_wire_connection_points = circuit_wire_connection_points,
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.40625, -0.3125}, nil, 24),
      get_circuit_connector_sprites({0.125, 0.21875}, {0.34375, 0.40625}, 18),
      get_circuit_connector_sprites({-0.40625, -0.25}, nil, 24),
      get_circuit_connector_sprites({0.203125, 0.203125}, {0.25, 0.40625}, 18),
    },
    circuit_wire_max_distance = 10
  },

  {
    type = "pump",
    name = "small-pump-3",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "small-pump-3"},
    max_health = 120,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1}, type="output" },
        { position = {0, 1}, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "125kW",
    pumping_speed = 2.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations = bobmods.logistics.small_pump_animations({r = 0.6, g = 0.2, b = 0.8, a = 1}),
    circuit_wire_connection_points = circuit_wire_connection_points,
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.40625, -0.3125}, nil, 24),
      get_circuit_connector_sprites({0.125, 0.21875}, {0.34375, 0.40625}, 18),
      get_circuit_connector_sprites({-0.40625, -0.25}, nil, 24),
      get_circuit_connector_sprites({0.203125, 0.203125}, {0.25, 0.40625}, 18),
    },
    circuit_wire_max_distance = 12.5
  },

  {
    type = "pump",
    name = "small-pump-4",
    icon = "__base__/graphics/icons/small-pump.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "small-pump-4"},
    max_health = 150,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1}, type="output" },
        { position = {0, 1}, type="input" },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.01 / 2.5
    },
    energy_usage = "157.5kW",
    pumping_speed = 3.5,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    animations = bobmods.logistics.small_pump_animations({r = 0.2, g = 0.8, b = 0.3, a = 1}),
    circuit_wire_connection_points = circuit_wire_connection_points,
    circuit_connector_sprites =
    {
      get_circuit_connector_sprites({-0.40625, -0.3125}, nil, 24),
      get_circuit_connector_sprites({0.125, 0.21875}, {0.34375, 0.40625}, 18),
      get_circuit_connector_sprites({-0.40625, -0.25}, nil, 24),
      get_circuit_connector_sprites({0.203125, 0.203125}, {0.25, 0.40625}, 18),
    },
    circuit_wire_max_distance = 15
  },
}
)



