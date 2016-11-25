data:extend(
{
  {
    type = "fluid",
    name = "alien-goo",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.5, g=0.0, b=0.5},
    flow_color = {r=0.9, g=0.9, b=0.9},
    max_temperature = 100,
    icon = "__peacemod__/graphics/icons/alien-goo.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "f[alien-goo]"
  },
	
  {
    type = "recipe",
    name = "alien-goo",
    category = "chemistry",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=3},
      {type="item", name="alien-ore", amount=5}
    },
    results=
    {
      {type="fluid", name="alien-goo", amount=2}
    }
  },

}
)