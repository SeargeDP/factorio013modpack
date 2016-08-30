data.raw["lab"]["lab"].fast_replaceable_group = "lab"

data:extend(
{
  {
    type = "item",
    name = "lab-module",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab]-a[module]",
    place_result = "lab-module",
    stack_size = 10
  },

  {
    type = "lab",
    name = "lab-module",
    icon = "__base__/graphics/icons/lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-module"},
    max_health = 200,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__base__/graphics/entity/lab/lab.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1.5
    },
    energy_usage = "75kW",
    inputs =
    {
      "module-case",
      "module-circuit-board",
      "speed-processor",
      "effectivity-processor",
      "productivity-processor",
      "pollution-clean-processor",
      "pollution-create-processor",
   },
    researching_speed = 1.5,
    module_specification =
    {
      module_slots = 3,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "lab",
  },

  {
    type = "recipe",
    name = "lab-module",
    enabled = "false",
    energy_required = 15,
    ingredients =
    {
      {"lab", 1},
      {"speed-processor", 5},
      {"effectivity-processor", 5},
      {"productivity-processor", 5},
    },
    result = "lab-module"
  },
}
)

bobmods.lib.tech.add_recipe_unlock("modules", "lab-module")

