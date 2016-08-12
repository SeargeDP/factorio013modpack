data:extend(
{

  -- original 2x1 tile one-digit nixie tube
  {
    type = "recipe",
    name = "nixie-tube",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit",1},
      {"iron-plate",2},
      {"iron-stick", 10},
    },
    result = "nixie-tube"
  },
  {
    type = "item",
    name = "nixie-tube",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "circuit-network",
    order = "c-a",
    place_result = "nixie-tube",
    stack_size = 50
  },

  {
    type = "lamp",
    name = "nixie-tube",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
    flags = {"placeable-neutral","player-creation", "not-on-map"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "nixie-tube"},
    max_health = 55,
    order = "z[zebra]",
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9}, {0.4, .9}},
    selection_box = {{-.5, -1.0}, {0.5, 1.0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage_per_tick = "4KW",
    light = {intensity = 0.0, size = 0, color = {r=1, g=.6, b=.3, a=0}},
    picture_off =
    {
      filename = "__nixie-tubes__/graphics/nixie-base.png",
      priority = "high",
      width = 40,
      height = 64,
      shift = {0,0}
    },
    picture_on =
    {
      filename = "__nixie-tubes__/graphics/empty.png",
      priority = "high",
      width = 1,
      height = 1,
      shift = {0,0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {22.5/32, 23.5/32},
        green = {18.5/32, 28.5/32},
      },
      wire =
      {
        red = {12/32, 23/32},
        green = {12/32, 28/32},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({4/32, 21/32}, {4/32, 21/32}, 18),
    circuit_wire_max_distance = 7.5
  },
  
  -- 2x1 tile one-charater alpha nixie tube
  {
    type = "recipe",
    name = "nixie-tube-alpha",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit",1},
      {"iron-plate",2},
      {"iron-stick", 10},
    },
    result = "nixie-tube-alpha"
  },
  {
    type = "item",
    name = "nixie-tube-alpha",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "circuit-network",
    order = "c-a",
    place_result = "nixie-tube-alpha",
    stack_size = 50
  },
  {
    type = "lamp",
    name = "nixie-tube-alpha",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
    flags = {"placeable-neutral","player-creation", "not-on-map"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "nixie-tube-alpha"},
    max_health = 55,
    order = "z[zebra]",
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.9}, {0.4, .9}},
    selection_box = {{-.5, -1.0}, {0.5, 1.0}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage_per_tick = "4KW",
    light = {intensity = 0.0, size = 0, color = {r=1, g=.6, b=.3, a=0}},
    picture_off =
    {
      filename = "__nixie-tubes__/graphics/nixie-base.png",
      priority = "high",
      width = 40,
      height = 64,
      shift = {0,0}
    },
    picture_on =
    {
      filename = "__nixie-tubes__/graphics/empty.png",
      priority = "high",
      width = 1,
      height = 1,
      shift = {0,0}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {22.5/32, 23.5/32},
        green = {18.5/32, 28.5/32},
      },
      wire =
      {
        red = {12/32, 23/32},
        green = {12/32, 28/32},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({4/32, 21/32}, {4/32, 21/32}, 18),
    circuit_wire_max_distance = 7.5
  },

  {
    type = "car",
    name = "nixie-tube-sprite",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
    flags = {"placeable-neutral", "placeable-off-grid", "player-creation"},
    minable = {mining_time = 1, result = "nixie-tube"},
    max_health = 200,
    order="z[zebra]",
    corpse = "small-remnants",
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 30
      }
    },
    collision_box = {{-0.1, -.1}, {.1,.1}},
    collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
    selection_box = {{0,0}, {0,0}},
    effectivity = 0.5,
    braking_power = "200kW",
    burner =
    {
      effectivity = 0.6,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "150kW",
    friction = 2e-3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 1,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 0,
          width = 0,
          height = 0
        },
        shift = {0, 0},
        size = 2,
        intensity = 0
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 20,
          height = 44,
          frame_count = 1,
          direction_count = 40,
          apply_runtime_tint = true,
          max_advance = 0.2,
          shift = {-5/32,-7/32},
          stripes =
          {
            {
             filename = "__nixie-tubes__/graphics/nixie-digits-mono.png",
             width_in_frames = 10,
             height_in_frames = 4,
            },
          }
        }
      }
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0
          },
        }
      },
    },
    sound_minimum_speed = 0;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0 },
    rotation_speed = 0.015,
    weight = 700,
    guns = { "vehicle-machine-gun" },
    inventory_size = 0
  },


  -- small 1x1 tile two-digit nixie tube
  {
    type = "recipe",
    name = "nixie-tube-small",
    enabled = "false",
    ingredients =
    {
      {"electronic-circuit",1},
      {"iron-plate", 1},
      {"iron-stick", 5},
    },
    result = "nixie-tube-small"
  },
  {
    type = "item",
    name = "nixie-tube-small",
    icon = "__nixie-tubes__/graphics/nixie-small-base-icon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "circuit-network",
    order = "c-a",
    place_result = "nixie-tube-small",
    stack_size = 50
  },

  {
    type = "lamp",
    name = "nixie-tube-small",
    icon = "__nixie-tubes__/graphics/nixie-small-base-icon.png",
    flags = {"placeable-neutral","player-creation", "not-on-map"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "nixie-tube-small"},
    max_health = 40,
    order = "z[zebra]",
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, .4}},
    selection_box = {{-.5, -0.5}, {0.5, 0.5}},
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
    },
    energy_usage_per_tick = "4KW",
    light = {intensity = 0.0, size = 0, color = {r=1, g=.6, b=.3, a=0}},
    picture_off =
    {
      filename = "__nixie-tubes__/graphics/nixie-small-base.png",
      priority = "high",
      width = 48,
      height = 42,
      shift = {7/32,-5/32}
    },
    picture_on =
    {
      filename = "__nixie-tubes__/graphics/nixie-small-base.png",
      priority = "high",
      width = 48,
      height = 42,
      shift = {7/32,-5/32}
    },
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {26/32, -11/32},
        green = {26/32, -11/32},
      },
      wire =
      {
        red = {12/32, -25/32},
        green = {12/32, -25/32},
      }
    },

    circuit_wire_max_distance = 7.5
  },

  {
    type = "car",
    name = "nixie-tube-small-sprite",
    icon = "__nixie-tubes__/graphics/nixie-small-base-icon.png",
    flags = {"placeable-neutral", "placeable-off-grid", "player-creation"},
    minable = {mining_time = 1, result = "nixie-tube-small"},
    max_health = 120,
    order="z[zebra]",
    corpse = "small-remnants",
    energy_per_hit_point = 1,
    crash_trigger = crash_trigger(),
    resistances =
    {
      {
        type = "fire",
        percent = 50
      },
      {
        type = "impact",
        percent = 30,
        decrease = 30
      }
    },
    collision_box = {{-0.1, -.1}, {.1,.1}},
    collision_mask = { "item-layer", "object-layer", "player-layer", "water-tile"},
    selection_box = {{0,0}, {0,0}},
    effectivity = 0.5,
    braking_power = "200kW",
    burner =
    {
      effectivity = 0.6,
      fuel_inventory_size = 1,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.25, 0.25},
          frequency = 50,
          position = {0, 1.5},
          starting_frame = 3,
          starting_frame_deviation = 5,
          starting_frame_speed = 0,
          starting_frame_speed_deviation = 5
        }
      }
    },
    consumption = "150kW",
    friction = 2e-3,
    light =
    {
      {
        type = "oriented",
        minimum_darkness = 1,
        picture =
        {
          filename = "__core__/graphics/light-cone.png",
          priority = "medium",
          scale = 0,
          width = 0,
          height = 0
        },
        shift = {0, 0},
        size = 0,
        intensity = 0
      }
    },
    animation =
    {
      layers =
      {
        {
          width = 10,
          height = 22,
          frame_count = 1,
          direction_count = 12,
          shift = {-2/32,-8/32},
          animation_speed = 0.1,
          max_advance = 0.2,
          stripes =
          {
            {
             filename = "__nixie-tubes__/graphics/nixie-small-digits.png",
             width_in_frames = 1,
             height_in_frames = 12,
            },
          }
        },
      }
    },
    stop_trigger_speed = 0.2,
    stop_trigger =
    {
      {
        type = "play-sound",
        sound =
        {
          {
            filename = "__base__/sound/car-breaks.ogg",
            volume = 0
          },
        }
      },
    },
    sound_minimum_speed = 0;
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/car-engine.ogg",
        volume = 0
      },
      activate_sound =
      {
        filename = "__base__/sound/car-engine-start.ogg",
        volume = 0
      },
      deactivate_sound =
      {
        filename = "__base__/sound/car-engine-stop.ogg",
        volume = 0
      },
      match_speed_to_activity = true,
    },
    open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
    close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
    rotation_speed = 0.015,
    weight = 700,
    guns = { "vehicle-machine-gun" },
    inventory_size = 0
  },


})