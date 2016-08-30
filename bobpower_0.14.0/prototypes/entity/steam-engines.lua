data.raw["generator"]["steam-engine"].fast_replaceable_group = "steam-engine"


-- water = 100(max_temperature) - 15(default_temperature) = 85. 85 * 1kJ(heat_capacity) per degree = 85kJ. 85kJ * 60(ticks) = 5100kJ
-- generator = 5100kJ * 1(effectivity ) * 0.1(fluid_usage_per_tick) = 510kJ
-- a standard boiler is capable of heating 0.075 of flow from 15 degrees to 100.

data:extend(
{
  {
    type = "generator",
    name = "steam-engine-2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-2"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1.1,
    fluid_usage_per_tick = 0.15,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    fast_replaceable_group = "steam-engine",
  },

  {
    type = "generator",
    name = "steam-engine-3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "steam-engine-3"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1.2,
    fluid_usage_per_tick = 0.2,
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    collision_box = {{-1.4, -2.4}, {1.4, 2.4}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, 3} },
        { position = {0, -3} },
      },
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output",
    },
    horizontal_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34, -0.06}
    },
    vertical_animation =
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.812, 0.031}
    },
    smoke =
    {
      {
        name = "smoke",
        north_position = {0, -2.2},
        east_position = {-1.9, -1.6},
        deviation = {0.2, 0.2},
        frequency = 2 / 31,
        starting_vertical_speed = 0.05
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5,
    fast_replaceable_group = "steam-engine",
  },
}
)


