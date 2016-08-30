data.raw["assembling-machine"]["chemical-plant"].fast_replaceable_group = "chemical-plant"
data.raw["assembling-machine"]["chemical-plant"].order = "e[chemical-plant-1]"

data.raw.item["chemical-plant"].stack_size = 50
data.raw.item["chemical-plant"].subgroup = "bob-chemical-machine"
data.raw.item["chemical-plant"].order = "e[chemical-plant-1]"


function bob_chemical_plant_facing(tint, x)
return {
  layers =
  {
    {
      filename = "__bobassembly__/graphics/entity/chemical-plants/chemical-plant.png",
      x = x,
      width = 156,
      height = 141,
      frame_count = 1,
      shift = {0.5, -0.078125}
    },
    {
      filename = "__bobassembly__/graphics/entity/chemical-plants/chemical-plant-mask.png",
      x = x,
      width = 156,
      height = 141,
      frame_count = 1,
      tint = tint,
      shift = {0.5, -0.078125}
    }
  }
}
end

function bob_chemical_plant_animation(tint)
return {
  north = bob_chemical_plant_facing(tint, 0),
  west = bob_chemical_plant_facing(tint, 156),
  south = bob_chemical_plant_facing(tint, 312),
  east = bob_chemical_plant_facing(tint, 468)
}
end

function bob_chemical_plant_fluid_boxes()
  return {
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = {{ type="input", position = {-1, -2} }}
    },
    {
      production_type = "input",
      pipe_covers = pipecoverspictures(),
      base_area = 10,
      base_level = -1,
      pipe_connections = {{ type="input", position = {1, -2} }}
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      base_level = 1,
      pipe_connections = {{ position = {-1, 2} }}
    },
    {
      production_type = "output",
      pipe_covers = pipecoverspictures(),
      base_level = 1,
      pipe_connections = {{ position = {1, 2} }}
    }
  }
end

function bob_chemical_plant_working_visualisations()
  return {
    {
      north_position = {0.94, -0.73},
      west_position = {-0.3, 0.02},
      south_position = {-0.97, -1.47},
      east_position = {0.05, -1.46},
      animation =
      {
        filename = "__bobassembly__/graphics/entity/chemical-plants/boiling-green-patch.png",
        frame_count = 35,
        width = 17,
        height = 12,
        animation_speed = 0.15
      }
    },
    {
      north_position = {1.4, -0.23},
      west_position = {-0.3, 0.55},
      south_position = {-1, -1},
      east_position = {0.05, -0.96},
      north_animation =
      {
        filename = "__bobassembly__/graphics/entity/chemical-plants/boiling-window-green-patch.png",
        frame_count = 1,
        width = 21,
        height = 10
      },
      west_animation =
      {
        filename = "__bobassembly__/graphics/entity/chemical-plants/boiling-window-green-patch.png",
        x = 21,
        frame_count = 1,
        width = 21,
        height = 10
      },
      south_animation =
      {
        filename = "__bobassembly__/graphics/entity/chemical-plants/boiling-window-green-patch.png",
        x = 42,
        frame_count = 1,
        width = 21,
        height = 10
      }
    }
  }
end


data:extend(
{
  {
    type = "item",
    name = "chemical-plant-2",
    icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-chemical-machine",
    order = "e[chemical-plant-2]",
    place_result = "chemical-plant-2",
    stack_size = 50
  },
  {
    type = "item",
    name = "chemical-plant-3",
    icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-chemical-machine",
    order = "e[chemical-plant-3]",
    place_result = "chemical-plant-3",
    stack_size = 50
  },
  {
    type = "item",
    name = "chemical-plant-4",
    icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-chemical-machine",
    order = "e[chemical-plant-4]",
    place_result = "chemical-plant-4",
    stack_size = 50
  },


  {
    type = "recipe",
    name = "chemical-plant-2",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"chemical-plant", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
      {"advanced-circuit", 5},
      {"pipe", 5},
    },
    result = "chemical-plant-2"
  },

  {
    type = "recipe",
    name = "chemical-plant-3",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"chemical-plant-2", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
      {"processing-unit", 10},
      {"pipe", 5},
    },
    result = "chemical-plant-3"
  },

  {
    type = "recipe",
    name = "chemical-plant-4",
    energy_required = 10,
    enabled = "false",
    ingredients =
    {
      {"chemical-plant-3", 1},
      {"steel-plate", 10},
      {"iron-gear-wheel", 5},
      {"processing-unit", 10},
      {"pipe", 5},
    },
    result = "chemical-plant-4"
  },


  {
    type = "assembling-machine",
    name = "chemical-plant-2",
    icon = "__bobassembly__/graphics/icons/chemical-plant-2.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "chemical-plant-2"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_specification =
    {
      module_slots = 4,
    },
    ingredient_count = 6,
    crafting_speed = 2,
    energy_usage = "300kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    crafting_categories = {"chemistry"},
    fluid_boxes = bob_chemical_plant_fluid_boxes(),
    animation = bob_chemical_plant_animation({r = 0.5, g = 0.1, b = 0.7}),
    working_visualisations = bob_chemical_plant_working_visualisations(),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "chemical-plant",
  },

  {
    type = "assembling-machine",
    name = "chemical-plant-3",
    icon = "__bobassembly__/graphics/icons/chemical-plant-3.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "chemical-plant-3"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_specification =
    {
      module_slots = 5,
    },
    ingredient_count = 8,
    crafting_speed = 2.75,
    energy_usage = "390kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    crafting_categories = {"chemistry"},
    fluid_boxes = bob_chemical_plant_fluid_boxes(),
    animation = bob_chemical_plant_animation({r = 0.7, g = 0.2, b = 0.1}),
    working_visualisations = bob_chemical_plant_working_visualisations(),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "chemical-plant",
  },

  {
    type = "assembling-machine",
    name = "chemical-plant-4",
    icon = "__bobassembly__/graphics/icons/chemical-plant-4.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "chemical-plant-4"},
    max_health = 500,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    module_specification =
    {
      module_slots = 6,
    },
    ingredient_count = 10,
    crafting_speed = 3.5,
    energy_usage = "480kW",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    crafting_categories = {"chemistry"},
    fluid_boxes = bob_chemical_plant_fluid_boxes(),
    animation = bob_chemical_plant_animation({r = 0.1, g = 0.7, b = 0.1}),
    working_visualisations = bob_chemical_plant_working_visualisations(),
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    fast_replaceable_group = "chemical-plant",
  },


  {
    type = "technology",
    name = "chemical-plant-2",
    icon = "__bobassembly__/graphics/icons/technology/chemical-plant.png",
    icon_size = 128,
    prerequisites =
    {
      "advanced-electronics",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-2"
      },
    },
    unit =
    {
      count = 50,
      ingredients = 
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "d-a-c2"
  },

  {
    type = "technology",
    name = "chemical-plant-3",
    icon = "__bobassembly__/graphics/icons/technology/chemical-plant.png",
    icon_size = 128,
    prerequisites =
    {
      "chemical-plant-2",
      "advanced-electronics-2",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-3"
      },
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
    upgrade = true,
    order = "d-a-c3"
  },

  {
    type = "technology",
    name = "chemical-plant-4",
    icon = "__bobassembly__/graphics/icons/technology/chemical-plant.png",
    icon_size = 128,
    prerequisites =
    {
      "chemical-plant-3",
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "chemical-plant-4"
      },
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
    upgrade = true,
    order = "d-a-c4"
  },
}
)

