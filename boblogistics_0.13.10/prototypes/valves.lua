data:extend(
{
  {
    type = "item",
    name = "valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-c[valve]",
    place_result = "valve",
    stack_size = 50
  },
  {
    type = "recipe",
    name = "valve",
    energy_required = 2,
--    enabled = false,
    ingredients =
    {
      {"iron-plate", 1},
      {"pipe", 1}
    },
    result= "valve"
  },
  {
    type = "pipe-to-ground",
    name = "valve",
    icon = "__boblogistics__/graphics/icons/pipe/valve.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "valve"},
    max_health = 50,
    fast_replaceable_group = "pipe",
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
--      base_level = 0.8,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {
          position = {0, -1},
          type="output"
        },
        {
          position = {0, 1},
          type="input"
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 32,
      height = 32
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    pictures =
    {
      up =
      {
        layers = 
        {
          {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 44,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-up.png",
            width = 46,
            height = 56,
            shift = {0.09375, 0.03125},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-up-mask.png",
            width = 46,
            height = 56,
            shift = {0.09375, 0.03125},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      down =
      {
        layers = 
        {
          {
            filename = "__base__/graphics/entity/pipe/pipe-straight-vertical.png",
            priority = "extra-high",
            width = 44,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-down.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-down-mask.png",
            width = 61,
            height = 58,
            shift = {0.421875, -0.125},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      left =
      {
        layers = 
        {
          {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 32,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-left.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-left-mask.png",
            width = 56,
            height = 44,
            shift = {0.3125, 0.0625},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
      right =
      {
        layers = 
        {
          {
            filename = "__base__/graphics/entity/pipe/pipe-straight-horizontal.png",
            priority = "extra-high",
            width = 32,
            height = 42
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-right.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
          },
          {
            filename = "__boblogistics__/graphics/entity/small-pump/pipe-arrow-right-mask.png",
            width = 51,
            height = 56,
            shift = {0.265625, -0.21875},
            tint = {r = 0, g = 0, b = 1, a = 1}
          }
        }
      },
    }
  },
}
)

