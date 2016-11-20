empty_sprite =
{
  filename = "__core__/graphics/empty.png",
  priority = "extra-high",
  frame_count = 1,
  width = 1,
  height = 1
}

interface_led =
{
  filename = "__base__/graphics/entity/combinator/activity-leds/combinator-led-decider-south.png",
  width = 12,
  height = 12,
  frame_count = 1,
  shift = {-0.28125, -0.34375}
}

interface_connection =
{
  shadow =
  {
    red = {0.796875, 0.5},
    green = {0.203125, 0.5},
  },
  wire =
  {
    red = {0.296875, 0.0625},
    green = {-0.296875, 0.0625},
  }
}

reactor =
{
  type = "assembling-machine",
  name = "nuclear-reactor",
  icon = "__Reactors__/graphics/icons/nuclear-reactor.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "nuclear-reactor"},
  max_health = 1000,
  corpse = "big-remnants",
  dying_explosion = "massive-explosion",
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  collision_box = {{-1.4, -1.4}, {1.4, 0.7}},
  selection_box = {{-1.5, -1.5}, {1.5, 0.5}},
  drawing_box = {{-1.5, -2}, {1.5, 1.5}},
  vehicle_impact_sound = 
  {
    filename = "__base__/sound/car-metal-impact.ogg",
    volume = 0.65
  },
  working_sound =
  {
    sound = { filename = "__Reactors__/sound/reactor-active.ogg", volume = 0.6 },
    idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
    apparent_volume = 1.5
  },
  animation =
  {
    filename = "__Reactors__/graphics/entity/nuclear-reactor/nuclear-reactor.png",
    width = "140",
    height = "160",
    frame_count = 1,
    shift = {0.6875, -0.59375}
  },
  crafting_categories = {"fission"},
  crafting_speed = 1,
  energy_source =
  {
    type = "electric",
    usage_priority = "primary-input"
  },
  energy_usage = "180kW",
  ingredient_count = 2,
  allowed_effects = {"pollution"}
}

reactor_interface =
{
  type = "constant-combinator",
  name = "reactor-interface",
  icon = reactor.icon,
  flags = {"player-creation", "not-deconstructable"},
  max_health = reactor.max_health,
  collision_box = {{-1.4, -0.25}, {1.4, 0.4}},
  selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
  item_slot_count = 10,
  sprites =
  {
    north =
    {
      filename = "__Reactors__/graphics/entity/nuclear-reactor/nuclear-reactor-interface.png",
      priority = "extra-high",
      frame_count = 1,
      width = 32,
      height = 32
    },
    east =
    {
      filename = "__Reactors__/graphics/entity/nuclear-reactor/nuclear-reactor-interface.png",
      priority = "extra-high",
      frame_count = 1,
      width = 32,
      height = 32
    },
    south =
    {
      filename = "__Reactors__/graphics/entity/nuclear-reactor/nuclear-reactor-interface.png",
      priority = "extra-high",
      frame_count = 1,
      width = 32,
      height = 32
    },
    west =
    {
      filename = "__Reactors__/graphics/entity/nuclear-reactor/nuclear-reactor-interface.png",
      priority = "extra-high",
      frame_count = 1,
      width = 32,
      height = 32
    }
  },
  activity_led_sprites =
  {
    north = interface_led,
    east = interface_led,
    south = interface_led,
    west = interface_led
  },
  activity_led_light =
  {
    intensity = 0.8,
    size = 1,
  },
  activity_led_light_offsets =
  {
    interface_led.shift,
    interface_led.shift,
    interface_led.shift,
    interface_led.shift
  },
  circuit_wire_connection_points =
  {
    interface_connection,
    interface_connection,
    interface_connection,
    interface_connection
  },
  circuit_wire_max_distance = 7.5,
  order = "z"
}

reactor_boiler =
{
  type = "storage-tank",
  name = "reactor-boiler",
  icon = reactor.icon,
  flags = {"not-blueprintable", "not-deconstructable"},
  max_health = reactor.max_health,
  collision_mask = {"ghost-layer"},
  collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
  selection_box = {{-1.5,-1.5},{1.5,1.5}},
  fluid_box =
  {
    base_area = 50,
    pipe_covers = pipecoverspictures(),
    pipe_connections =
    {
      {position = {-2, -1}},
      {position = {-2, 1}},
      {position = {-1, -2}},
      {position = {-1, 2}},
      {position = {1, -2}},
      {position = {1, 2}},
      {position = {2, -1}},
      {position = {2, 1}}
    }
  },
  window_bounding_box = {{-0.1,-0.1}, {0.1,0.1}},
  pictures =
  {
    picture =
    {
      north = empty_sprite,
      east = empty_sprite,
      south = empty_sprite,
      west = empty_sprite
    },
    fluid_background = empty_sprite,
    window_background = empty_sprite,
    flow_sprite = empty_sprite
  },
  flow_length_in_ticks = 360,
  circuit_wire_connection_points = reactor_interface.circuit_wire_connection_points,
  circuit_wire_max_distance = 0,
  order = "z"
}

cooling_tower =
{
  type = "furnace",
  name = "cooling-tower",
  icon = "__Reactors__/graphics/icons/cooling-tower.png",
  flags = {"placeable-neutral", "placeable-player", "player-creation"},
  minable = {hardness = 0.2, mining_time = 0.5, result = "cooling-tower"},
  max_health = 500,
  corpse = "medium-remnants",
  resistances =
  {
    {
      type = "fire",
      percent = 70
    }
  },
  collision_box = {{-1.3, -1.3}, {1.3, 1.3}},
  selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
  drawing_box = {{-1.5, -3}, {1.5, 1.5}},
  fluid_boxes =
  {
    {
      production_type = "input",
      base_area = 25,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {position = {-2, -1}},
        {position = {-2, 1}},
        {position = {-1, -2}},
        {position = {-1, 2}}
      }
    },
    {
      production_type = "output",
      base_area = 25,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {position = {1, -2}},
        {position = {1, 2}},
        {position = {2, -1}},
        {position = {2, 1}}
      }
    }
  },
  source_inventory_size = 0,
  result_inventory_size = 0,
  crafting_categories = {"water-cooling"},
  energy_usage = "30kW",
  crafting_speed = 1,
  energy_source =
  {
    type = "electric",
    usage_priority = "primary-input",
    emissions = 0,
  },
  animation =
  {
    filename = "__Reactors__/graphics/entity/cooling-tower/cooling-tower-omni.png",
    width = 140,
    height = 160,
    frame_count = 1,
    shift = {0.6875, -0.59375}
  }
}

cooling_tower_steam =
{
  type = "furnace",
  name = "cooling-tower-steam",
  icon = cooling_tower.icon,
  flags = {"not-blueprintable", "not-deconstructable"},
  max_health = cooling_tower.max_health,
  collision_mask = {"ghost-layer"},
  collision_box = {{-0.5,-0.5},{0.5,0.5}},
  selection_box = {{-0.5,-0.5},{0.5,0.5}},
  fluid_boxes =
  {
    {
      production_type = "input",
      base_area = 0.1,
      pipe_connections = { }
    },
    {
      production_type = "output",
      base_area = 0,
      pipe_connections = { }
    }
  },
  source_inventory_size = 0,
  result_inventory_size = 0,
  crafting_categories = {"steaming"},
  energy_usage = "1W",
  crafting_speed = 1,
  energy_source =
  {
    type = "burner",
    effectivity = 1,
    fuel_inventory_size = 1,
    emissions = 0,
    light_flicker =
    {
      minimum_intensity = 0,
      maximum_intensity = 0
    },
    smoke =
    {
      {
        name = "cooling-tower-steam-puff",
        deviation = {0.1, 0.1},
        frequency = 10,
        position = {0.0, -2.25},
        starting_vertical_speed = 0.00,
        starting_frame_deviation = 60
      }
    }
  },
  animation = empty_sprite
}

turbine = util.table.deepcopy(data.raw["generator"]["steam-engine"])
turbine.name = "steam-turbine"
turbine.icon = nil
turbine.icons =
{
  {
    icon = "__base__/graphics/icons/steam-engine.png",
  },
  {
    icon = "__base__/graphics/icons/steam-engine.png",
    tint = turbine_tint
  }
}
turbine.minable.result = "steam-turbine"
turbine.fluid_usage_per_tick = 2.5
turbine.fluid_box.base_area = 25
turbine.energy_source.usage_priority = "primary-output"
turbine.vertical_animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.796875, 0.03125}
    },
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-vertical.png",
      flags = {"mask"},
      tint = turbine_tint,
      width = 155,
      height = 186,
      frame_count = 32,
      line_length = 8,
      shift = {0.796875, 0.03125}
    }
  }
}
turbine.horizontal_animation =
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34375, -0.046875}
    },
    {
      filename = "__base__/graphics/entity/steam-engine/steam-engine-horizontal.png",
      flags = {"mask"},
      tint = turbine_tint,
      width = 246,
      height = 137,
      frame_count = 32,
      line_length = 8,
      shift = {1.34375, -0.046875}
    }
  }
}

data:extend({
  smoke {
    name = "cooling-tower-steam-puff",
    color = {r = 0.8, g = 0.8, b = 0.8, a = 0.1},
    duration = 150,
    spread_duration = 100,
    fade_away_duration = 100,
    start_scale = 1.25,
    end_scale = 2.0,
    affected_by_wind = true
  },
  
  reactor,
  reactor_interface,
  reactor_boiler,
  cooling_tower,
  cooling_tower_steam,
  turbine
})