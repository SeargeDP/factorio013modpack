data:extend({

 {
    type = "item",
    name = "rocket-engine",
    icon = "__CMHMod__/graphics/icons/rocket-engine.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "intermediate-product",
    stack_size= 5,
  },
  {
    type = "fluid",
    name = "CMH-NaOH",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.0, g=1.0, b=1.0},
    flow_color = {r=0.0, g=1.0, b=1.0},
    max_temperature = 100,
    icon = "__CMHMod__/graphics/icons/NaOH.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[nitric-acid]"
  },

})