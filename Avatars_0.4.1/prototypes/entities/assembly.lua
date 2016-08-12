function avatarAssemblingMachineOutputDoor()
  return 
  {
    north =
    {
      filename = "__Avatars__/graphics/entity/assembly/door-north.png",
      priority = "extra-high",
      width = 34,
      height = 3,
      shift = {0, 0.6}
    },
    east =
    {
      filename = "__Avatars__/graphics/entity/assembly/door-east.png",
      priority = "extra-high",
      width = 15,
      height = 34,
      shift = {-1, -0.1}
    },
    south =
    {
      filename = "__Avatars__/graphics/entity/assembly/door-south.png",
      priority = "extra-high",
      width = 27,
      height = 30,
      shift = {0, -1}
    },
    west =
    {
      filename = "__Avatars__/graphics/entity/assembly/door-west.png",
      priority = "extra-high",
      width = 15,
      height = 34,
      shift = {0.9125, -0.1}
    }
  }
end



data:extend({

   {
    type = "assembling-machine",
    name = "avatar-assembling-machine",
    icon = "__Avatars__/graphics/icons/avatar-assembling-machine.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 2, result = "avatar-assembling-machine"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      
      {
        production_type = "output",
        pipe_picture = avatarAssemblingMachineOutputDoor(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }}
      },
      off_when_no_fluid_recipe = false
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t3-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t3-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
	  layers =
      {
        {
          filename = "__Avatars__/graphics/entity/assembly/assembling-machine-3.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
        },
        {
          filename = "__Avatars__/graphics/entity/assembly/assembling-machine-3-mask.png",
          priority = "high",
          width = 142,
          height = 113,
          frame_count = 32,
          line_length = 8,
          shift = {0.84, -0.09},
          tint = {r = 0, g = 255, b = 255}
        },
      }
    },
    crafting_categories = {"crafting", "advanced-crafting"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 5
    },
    energy_usage = "450kW",
    ingredient_count = 6,
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "pollution"}
  }
})