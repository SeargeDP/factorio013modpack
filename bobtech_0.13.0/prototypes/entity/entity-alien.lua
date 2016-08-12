data:extend(
{
  {
    type = "lab",
    name = "lab-alien",
    icon = "__bobtech__/graphics/icons/lab-alien.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "lab-alien"},
    max_health = 200,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8},
    on_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
      width = 113,
      height = 91,
      frame_count = 33,
      line_length = 11,
      animation_speed = 1 / 3,
      shift = {0.2, 0.15}
    },
    off_animation =
    {
      filename = "__bobtech__/graphics/entity/lab/lab-alien.png",
      width = 113,
      height = 91,
      frame_count = 1,
      shift = {0.2, 0.15}
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "75kW",
    inputs =
    {
      "science-pack-gold",
      "alien-science-pack",
      "alien-science-pack-blue",
      "alien-science-pack-orange",
      "alien-science-pack-purple",
      "alien-science-pack-yellow",
      "alien-science-pack-green",
      "alien-science-pack-red",
    },
    researching_speed = 1.5,
    module_specification =
    {
      module_slots = 3,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    },
    fast_replaceable_group = "lab",
  },
}
)

