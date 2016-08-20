data:extend({
  {
    type = "item",
    name = "zcs-trash-landfill",
    icon = "__ZCS-Trash-Landfill__/graphics/zcs-trash-landfill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "storage",
    order = "a[landfill]",
    place_result = "zcs-trash-landfill",
    stack_size = 1
  },
  
  {
    type = "recipe",
    name = "zcs-trash-landfill",
    ingredients = {{"iron-plate",50},{"steel-chest",4},{"steel-furnace",1},{"stone-brick",50}},
    result = "zcs-trash-landfill",
    result_count = 1,
    enabled = "false"
  },
  
  {
    type = "container",
    name = "zcs-trash-landfill",
    icon = "__ZCS-Trash-Landfill__/graphics/zcs-trash-landfill.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {mining_time = 1, result = "zcs-trash-landfill"},
    max_health = 200,
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume=0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 100
      }
    },
    collision_box = {{-4.5, -4.5}, {4.5, 4.5}},
    selection_box = {{-4.75, -4.75}, {4.75, 4.75}},
    fast_replaceable_group = "container",
    inventory_size = 48,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__ZCS-Trash-Landfill__/graphics/zcs-trash-landfill-entity.png",
      priority = "extra-high",
      width = 285,
      height = 285,
      shift = {0, 0}
    },
  },
  
  {
    type = "technology",
    name = "zcs-trash-landfill",
    icon = "__ZCS-Trash-Landfill__/graphics/zcs-trash-landfill.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "zcs-trash-landfill"
      }
    },
    prerequisites =
    {
      "advanced-material-processing",
      "gates"
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 30
    }
  }
})