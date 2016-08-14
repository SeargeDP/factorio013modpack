data:extend(
{
  {
    type = "electric-pole",
    name = "huge-electric-pole",
    icon = "__DistancePlus__/graphics/icons/huge-electric-pole.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "huge-electric-pole"},
    max_health = 150,
    corpse = "big-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 100
      }
    },

    collision_box = {{-1.2, -1.3}, {1.2, 0.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 0.5}},
    drawing_box = {{0, 0}, {0, 0}},
    maximum_wire_distance = 250,
    supply_area_distance = 0,
    pictures =
    {
      filename = "__DistancePlus__/graphics/entity/huge-electric-pole.png",
      priority = "high",
      width = 278,
      height = 206,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {3.1, -2.8}
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {7, -0.6},
          green = {7, -0.6},
          red = {7, -0.6}
        },
        wire =
        {
          copper = {0, -5.7},
          green = {0, -5.7},
          red = {0,-5.7}
        }
      },
    },
    copper_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    green_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12
    },
    red_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    wire_shadow_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    }
  },
  {
    type = "electric-pole",
    name = "big-substation",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "big-substation"},
    max_health = 200,
    corpse = "medium-remnants",
    resistances = 
    {
      {
        type = "fire",
        percent = 90
      }
    },
    collision_box = {{-1.5, -1.5}, {1.5, 1.5}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    drawing_box = {{-1.5, -1.5}, {1.5, 1.5}},
    maximum_wire_distance = 26,
    supply_area_distance = 32,
    pictures =
    {
      filename = "__base__/graphics/entity/substation/substation.png",
      priority = "high",
      width = 132,
      height = 144,
      axially_symmetrical = false,
      direction_count = 4,
      shift = {0.8, -0.7}
    },
    working_sound =
    {
      sound = { filename = "__base__/sound/substation.ogg" },
      apparent_volume = 1.5,
    },
    connection_points =
    {
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.3, -0.6},
          red = {2.65, -0.6}
        },
        wire =
        {
          copper = {-0.23, -2.65},
          green = {-0.85,-2.65},
          red = {0.35,-2.65}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.2, -0.8},
          red = {2.5, -0.35}
        },
        wire =
        {
          copper = {-0.26, -2.71},
          green = {-0.67,-3},
          red = {0.17,-2.47}
        }
      },
      {
        shadow =
        {
          copper = {1.9, -0.6},
          green = {1.9, -0.9},
          red = {1.9, -0.3}
        },
        wire =
        {
          copper = {-0.23, -2.7},
          green = {-0.23,-3.2},
          red = {-0.23,-2.35}
        }
      },
      {
        shadow =
        {
          copper = {1.8, -0.7},
          green = {1.3, -0.6},
          red = {2.4, -1.15}
        },
        wire =
        {
          copper = {-0.2, -2.7},
          green = {-0.62,-2.45},
          red = {0.25,-2.98}
        }
      }
    },
    copper_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/copper-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    green_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/green-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    radius_visualisation_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/electric-pole-radius-visualization.png",
      width = 12,
      height = 12
    },
    red_wire_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/red-wire.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    },
    wire_shadow_picture =
    {
      filename = "__base__/graphics/entity/small-electric-pole/wire-shadow.png",
      priority = "extra-high-no-scale",
      width = 224,
      height = 46
    }
  }
  })
