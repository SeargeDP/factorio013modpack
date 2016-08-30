data:extend(
{
  {
    type = "item",
    name = "alien-blue-alloy",
    icon = "__bobplates__/graphics/icons/alien/alien-blue-alloy.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-alien-resource",
    order = "f[alien]-a",
    stack_size = 200
  },

  {
    type = "item",
    name = "alien-orange-alloy",
    icon = "__bobplates__/graphics/icons/alien/alien-orange-alloy.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-alien-resource",
    order = "f[alien]-b",
    stack_size = 200
  },

  {
    type = "fluid",
    name = "alien-acid",
    icon = "__bobplates__/graphics/icons/alien/alien-acid.png",
    subgroup = "bob-alien-resource",
    order = "f[alien]-c",
    default_temperature = 20,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.4, g=0.0, b=0.8},
    flow_color = {r=0.6, g=0.5, b=1.0},
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
  },

  {
    type = "fluid",
    name = "alien-explosive",
    icon = "__bobplates__/graphics/icons/alien/alien-explosive.png",
    subgroup = "bob-alien-resource",
    order = "f[alien]-d",
    default_temperature = 20,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.8, b=0.0},
    flow_color = {r=1.0, g=1.0, b=0.5},
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
  },

  {
    type = "fluid",
    name = "alien-poison",
    icon = "__bobplates__/graphics/icons/alien/alien-poison.png",
    subgroup = "bob-alien-resource",
    order = "f[alien]-e",
    default_temperature = 20,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.8, b=0.0},
    flow_color = {r=0.5, g=1.0, b=0.5},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
  },

  {
    type = "fluid",
    name = "alien-fire",
    icon = "__bobplates__/graphics/icons/alien/alien-fire.png",
    subgroup = "bob-alien-resource",
    order = "f[alien]-f",
    default_temperature = 20,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0, b=0},
    flow_color = {r=1.0, g=0.5, b=0.5},
    max_temperature = 100,
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
  },
}
)




data:extend(
{
  {
    type = "item",
    name = "alien-acid-barrel",
    icon = "__bobplates__/graphics/icons/alien-acid-barrel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-barrel",
    order = "f-c[alien-acid-barrel]",
    stack_size = 20
  },

  {
    type = "item",
    name = "alien-explosive-barrel",
    icon = "__bobplates__/graphics/icons/alien-explosive-barrel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-barrel",
    order = "f-c[alien-explosive-barrel]",
    stack_size = 20
  },

  {
    type = "item",
    name = "alien-poison-barrel",
    icon = "__bobplates__/graphics/icons/alien-poison-barrel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-barrel",
    order = "f-c[alien-poison-barrel]",
    stack_size = 20
  },

  {
    type = "item",
    name = "alien-fire-barrel",
    icon = "__bobplates__/graphics/icons/alien-fire-barrel.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-barrel",
    order = "f-c[alien-fire-barrel]",
    stack_size = 20
  },
}
)



