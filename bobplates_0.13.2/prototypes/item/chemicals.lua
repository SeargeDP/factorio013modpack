--data.raw.fluid["petroleum-gas"].pressure_to_speed_ratio = 0.6
--data.raw.fluid["petroleum-gas"].flow_to_energy_ratio = 0.59

data.raw.fluid["heavy-oil"].pressure_to_speed_ratio = 0.3
data.raw.fluid["heavy-oil"].flow_to_energy_ratio = 0.5

data.raw.fluid["crude-oil"].pressure_to_speed_ratio = 0.3
data.raw.fluid["crude-oil"].flow_to_energy_ratio = 0.5

data:extend(
{
  {
    type = "fluid",
    name = "liquid-air",
    default_temperature = 100,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0, b=0},
    flow_color = {r=0.5, g=1.0, b=1.0},
    icon = "__bobplates__/graphics/icons/liquid-air.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[liquid-air]",
  },

  {
    type = "fluid",
    name = "lithia-water",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.34, b=0.6},
    flow_color = {r=0.7, g=1.0, b=1.0},
    icon = "__bobplates__/graphics/icons/lithia-water.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-a[water-lithia]",
  },

  {
    type = "fluid",
    name = "hydrogen",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/hydrogen.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[hydrogen]"
  },

  {
    type = "fluid",
    name = "oxygen",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/oxygen.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[oxygen]"
  },

  {
    type = "fluid",
    name = "nitrogen",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=0.0, b=1.0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/nitrogen.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitrogen]"
  },

  {
    type = "fluid",
    name = "chlorine",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.7, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/chlorine.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[chlorine]"
  },

  {
    type = "fluid",
    name = "hydrogen-chloride",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.2, g=0.7, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/hydrogen-chloride.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[hydrogen-chloride]"
  },

  {
    type = "fluid",
    name = "nitrogen-dioxide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.8, g=0.0, b=1.0},
    flow_color = {r=0.0, g=0.0, b=1.0},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/nitrogen-dioxide.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitrogen-dioxide]"
  },

  {
    type = "fluid",
    name = "sulfur-dioxide",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/sulfur-dioxide.png",
--    pressure_to_speed_ratio = 0.6,
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[sulfur-dioxide]"
  },

  {
    type = "fluid",
    name = "nitric-acid",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=1.0, g=0.7, b=0.0},
    flow_color = {r=0.0, g=0.0, b=1.0},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/nitric-acid.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitric-acid]"
  },

  {
    type = "fluid",
    name = "tungstic-acid",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.2, b=0.7},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/tungstic-acid.png",
    pressure_to_speed_ratio = 0.2,
    flow_to_energy_ratio = 0.3,
    order = "a[fluid]-g[tungstic-acid]"
  },

  {
    type = "fluid",
    name = "ferric-chloride-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/ferric-chloride-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[ferric-chloride-solution]"
  },

  {
    type = "fluid",
    name = "liquid-fuel",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=1.0, g=0.9, b=0.5},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobplates__/graphics/icons/liquid-fuel.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[liquid-fuel]"
  },

  {
    type = "item",
    name = "salt",
    icon = "__bobplates__/graphics/icons/salt.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[salt]",
    stack_size = 100
  },

  {
    type = "item",
    name = "lithium-chloride",
    icon = "__bobplates__/graphics/icons/lithium-chloride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[lithium-chloride]",
    stack_size = 100
  },

  {
    type = "item",
    name = "lithium-perchlorate",
    icon = "__bobplates__/graphics/icons/lithium-perchlorate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[lithium-perchlorate]",
    stack_size = 100
  },

  {
    type = "item",
    name = "sodium-hydroxide",
    icon = "__bobplates__/graphics/icons/sodium-hydroxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[sodium-hydroxide]",
    stack_size = 100
  },

  {
    type = "item",
    name = "calcium-chloride",
    icon = "__bobplates__/graphics/icons/calcium-chloride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[calcium-chloride]",
    stack_size = 100
  },

  {
    type = "item",
    name = "lead-oxide",
    icon = "__bobplates__/graphics/icons/lead-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[lead-oxide]",
    stack_size = 100
  },

  {
    type = "item",
    name = "alumina",
    icon = "__bobplates__/graphics/icons/corundum.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[alumina]",
    stack_size = 100
  },

  {
    type = "item",
    name = "tungsten-oxide",
    icon = "__bobplates__/graphics/icons/tungsten-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[tungsten-oxide]",
    stack_size = 100
  },

  {
    type = "item",
    name = "powdered-tungsten",
    icon = "__bobplates__/graphics/icons/powdered-tungsten.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[powdered-tungsten]",
    stack_size = 100
  },

  {
    type = "item",
    name = "silicon-powder",
    icon = "__bobplates__/graphics/icons/powdered-silicon.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[silicon-powder]",
    stack_size = 100
  },

  {
    type = "item",
    name = "silicon-nitride",
    icon = "__bobplates__/graphics/icons/silicon-nitride.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[silicon-nitride]",
    stack_size = 100
  },

  {
    type = "item",
    name = "cobalt-oxide",
    icon = "__bobplates__/graphics/icons/cobalt-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[cobalt-oxide]",
    stack_size = 100
  },

  {
    type = "item",
    name = "silicon-carbide",
    icon = "__bobplates__/graphics/icons/silicon-carbide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[silicon-carbide]",
    stack_size = 100
  },


  {
    type = "item",
    name = "silver-nitrate",
    icon = "__bobplates__/graphics/icons/silver-nitrate.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[silver-nitrate]",
    stack_size = 100
  },

  {
    type = "item",
    name = "silver-oxide",
    icon = "__bobplates__/graphics/icons/silver-oxide.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource-chemical",
    order = "f[silver-oxide]",
    stack_size = 100
  },
}
)

table.insert(data.raw["fluid-turret"]["flamethrower-turret"].attack_parameters.fluids, {type = "liquid-fuel", damage_modifier = 1.5})
