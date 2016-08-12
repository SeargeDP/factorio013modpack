


data:extend({

 
  ---- smart-logistics-requester-chest
  {
    type = "logistic-container",
    name = "smart-logistics-requester-chest",
    icon = "__base__/graphics/icons/logistic-chest-requester.png",
    flags = {"placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "smart-logistics-requester-chest"},
    max_health = 150,
    corpse = "small-remnants",
    collision_box = {{-0.35, -0.35}, {0.35, 0.35}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fast_replaceable_group = "container",
    inventory_size = 48,
    logistic_mode = "requester",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    picture =
    {
      filename = "__base__/graphics/entity/logistic-chest/logistic-chest-requester.png",
      priority = "extra-high",
      width = 38,
      height = 32,
      shift = {0.1, 0}
    },
    circuit_wire_max_distance = 7.5
  },

})
