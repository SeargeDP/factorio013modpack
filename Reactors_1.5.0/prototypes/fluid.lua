data:extend({
  {
    type = "fluid",
    name = "uranium-slurry",
    default_temperature = 25,
    heat_capacity = "1KJ",
    -- base_color = {r=0, g=1, b=0.667},
    base_color = {r=0, g=0.5, b=0.333},
    flow_color = {r=1, g=1, b=0},
    max_temperature = 100,
    icon = "__Reactors__/graphics/icons/uranium-slurry.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[leachate]"
  }
})