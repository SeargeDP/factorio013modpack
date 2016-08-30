data.raw["lab"]["lab"].fast_replaceable_group = "lab"

data:extend(
{
  {
    type = "lab",
    name = "lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-2"},
    max_health = 250,
    corpse = "big-remnants",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab2.png",
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
    energy_usage = "75kW",
    inputs =
    {
      "science-pack-1",
      "science-pack-2",
      "science-pack-3",
      "science-pack-4",
      "alien-science-pack",
    },
    researching_speed = 2,
    module_specification =
    {
      module_slots = 4,
      module_info_icon_shift = {0, 0.5},
      module_info_multi_row_initial_height_modifier = -0.3
    },
    fast_replaceable_group = "lab",
  },
}
)

