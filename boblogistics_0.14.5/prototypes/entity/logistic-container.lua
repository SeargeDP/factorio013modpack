-- name, icon, max_health, inventory_size, logistic_mode, picture, circuit_wire_max_distance
function bobmods.logistics.logistic_container(inputs)
  return {
    type = "logistic-container",
    name = inputs.name,
    icon = inputs.icon,
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = inputs.name},
    max_health = inputs.max_health or 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = inputs.inventory_size or 48,
    logistic_mode = inputs.logistic_mode or "passive-provider",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture = inputs.picture,
    circuit_wire_connection_point =
    {
      shadow =
      {
        red = {0.734375, 0.453125},
        green = {0.609375, 0.515625},
      },
      wire =
      {
        red = {0.40625, 0.21875},
        green = {0.40625, 0.375},
      }
    },
    circuit_connector_sprites = get_circuit_connector_sprites({0.1875, 0.15625}, nil, 18),
    circuit_wire_max_distance = inputs.circuit_wire_max_distance or 7.5
  }
end

function bobmods.logistics.logistic_container_2_picture(tint)
return {
  layers =
  {
    {
      filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-2.png",
      width = 38,
      height = 32,
      frame_count = 1,
      shift = {0.1, 0}
    },
    {
      filename = "__boblogistics__/graphics/entity/logistic-chest/logistic-chest-mask.png",
      width = 38,
      height = 32,
      frame_count = 1,
      tint = tint,
      shift = {0.1, 0}
    }
  }
}
end

data:extend(
{
  bobmods.logistics.logistic_container{
    name = "logistic-chest-passive-provider-2",
    icon = "__boblogistics__/graphics/icons/logistic-chest-passive-provider-2.png",
    max_health = 250,
    inventory_size = 60,
    logistic_mode = "passive-provider",
    picture = bobmods.logistics.logistic_container_2_picture({r = 1, g = 0.14, b = 0, a = 1}),
    circuit_wire_max_distance = 10
  },

  bobmods.logistics.logistic_container{
    name = "logistic-chest-active-provider-2",
    icon = "__boblogistics__/graphics/icons/logistic-chest-active-provider-2.png",
    max_health = 250,
    inventory_size = 60,
    logistic_mode = "active-provider",
    picture = bobmods.logistics.logistic_container_2_picture({r = 0.75, g = 0, b = 1, a = 1}),
    circuit_wire_max_distance = 10
  },

  bobmods.logistics.logistic_container{
    name = "logistic-chest-storage-2",
    icon = "__boblogistics__/graphics/icons/logistic-chest-storage-2.png",
    max_health = 250,
    inventory_size = 60,
    logistic_mode = "storage",
    picture = bobmods.logistics.logistic_container_2_picture({r = 1, g = 0.78, b = 0, a = 1}),
    circuit_wire_max_distance = 10
  },

  bobmods.logistics.logistic_container{
    name = "logistic-chest-requester-2",
    icon = "__boblogistics__/graphics/icons/logistic-chest-requester-2.png",
    max_health = 250,
    inventory_size = 60,
    logistic_mode = "requester",
    picture = bobmods.logistics.logistic_container_2_picture({r = 0, g = 0.42, b = 1, a = 1}),
    circuit_wire_max_distance = 10
  }
}
)

