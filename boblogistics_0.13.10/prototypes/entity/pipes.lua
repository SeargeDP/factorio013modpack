data.raw["pipe-to-ground"]["pipe-to-ground"].fast_replaceable_group = "pipe-to-ground"

data:extend(
{
  {
    type = "pipe",
    name = "stone-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "stone-pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "stone-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/stone-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "stone-pipe-to-ground"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/stone/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "copper-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "copper-pipe"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "copper-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/copper-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "copper-pipe-to-ground"},
    max_health = 50,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/copper/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "steel-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "steel-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "steel-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/steel-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "steel-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/steel/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },


  {
    type = "pipe",
    name = "plastic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "plastic-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "plastic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/plastic-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "plastic-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/plastic/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)


if data.raw.item["bronze-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "bronze-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "bronze-pipe"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "bronze-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/bronze-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.3, mining_time = 0.5, result = "bronze-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 15
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/bronze/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["brass-alloy"] then
data:extend(
{
  {
    type = "pipe",
    name = "brass-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "brass-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "brass-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/brass-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.1, mining_time = 0.5, result = "brass-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 0.5,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/brass/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["silicon-nitride"] then
data:extend(
{
  {
    type = "pipe",
    name = "ceramic-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ceramic-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "ceramic-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/ceramic-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ceramic-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 2,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/ceramic/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["titanium-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "titanium-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "titanium-pipe"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "titanium-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/titanium-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "titanium-pipe-to-ground"},
    max_health = 150,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 20
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/titanium/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end


if data.raw.item["tungsten-plate"] then
data:extend(
{
  {
    type = "pipe",
    name = "tungsten-pipe",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "tungsten-pipe"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      }
    },
    fast_replaceable_group = "pipe",
    collision_box = {{-0.29, -0.29}, {0.29, 0.29}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_connections =
      {
        { position = {0, -1} },
        { position = {1, 0} },
        { position = {0, 1} },
        { position = {-1, 0} }
      },
    },
    pictures = 
    {
      straight_vertical_single =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-straight-vertical-single.png",
        priority = "extra-high",
        width = 44,
        height = 58
      },
      straight_vertical =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-straight-vertical.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      straight_vertical_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-straight-vertical-window.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      straight_horizontal =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-straight-horizontal.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      straight_horizontal_window =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-straight-horizontal-window.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      corner_up_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-corner-up-right.png",
        priority = "extra-high",
        width = 32,
        height = 40
      },
      corner_up_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-corner-up-left.png",
        priority = "extra-high",
        width = 44,
        height = 44
      },
      corner_down_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-corner-down-right.png",
        priority = "extra-high",
        width = 32,
        height = 32
      },
      corner_down_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-corner-down-left.png",
        priority = "extra-high",
        width = 36,
        height = 32
      },
      t_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-t-up.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      t_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-t-down.png",
        priority = "extra-high",
        width = 40,
        height = 44
      },
      t_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-t-right.png",
        priority = "extra-high",
        width = 40,
        height = 32
      },
      t_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-t-left.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      cross =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-cross.png",
        priority = "extra-high",
        width = 40,
        height = 40
      },
      ending_up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-ending-up.png",
        priority = "extra-high",
        width = 44,
        height = 42
      },
      ending_down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-ending-down.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      ending_right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-ending-right.png",
        priority = "extra-high",
        width = 32,
        height = 44
      },
      ending_left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-ending-left.png",
        priority = "extra-high",
        width = 58,
        height = 44
      },
      horizontal_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-horizontal-window-background.png",
        priority = "extra-high",
        width = 32,
        height = 42
      },
      vertical_window_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-vertical-window-background.png",
        priority = "extra-high",
        width = 44,
        height = 32
      },
      fluid_background =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/fluid-background.png",
        priority = "extra-high",
        width = 32,
        height = 20
      },
      low_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/fluid-flow-low-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      middle_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/fluid-flow-medium-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
      high_temperature_flow =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/fluid-flow-high-temperature.png",
        priority = "extra-high",
        width = 160,
        height = 18
      },
    },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/pipe.ogg",
          volume = 0.65
        },
      },
      match_volume_to_activity = true,
      max_sounds_per_type = 3
    },
    horizontal_window_bounding_box = {{-0.25, -0.25}, {0.25, 0.15625}},
    vertical_window_bounding_box = {{-0.28125, -0.40625}, {0.03125, 0.125}},
  },

  {
    type = "pipe-to-ground",
    name = "tungsten-pipe-to-ground",
    icon = "__boblogistics__/graphics/icons/pipe/tungsten-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.4, mining_time = 0.5, result = "tungsten-pipe-to-ground"},
    max_health = 200,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    fast_replaceable_group = "pipe-to-ground",
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "extra-high-no-scale",
      width = 64,
      height = 64,
      scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32
      },
      down =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32
      },
      left =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42
      },
      right =
      {
        filename = "__boblogistics__/graphics/entity/pipe/tungsten/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40
      },
    },
  },
}
)
end

