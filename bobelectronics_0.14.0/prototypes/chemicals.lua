data:extend(
{
  {
    type = "fluid",
    name = "ferric-chloride-solution",
    default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.6, b=0.2},
    flow_color = {r=0.5, g=0.5, b=0.5},
    max_temperature = 100,
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
    order = "a[fluid]-g[ferric-chloride-solution]"
  },

  {
    type = "recipe",
    name = "ferric-chloride-solution",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="iron-ore", amount=1},
      {type="fluid", name="water", amount=6},
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=5}
    },
    subgroup = "bob-fluid",
    icon = "__bobelectronics__/graphics/icons/ferric-chloride-solution.png",
    order = "b[fluid-chemistry]-a[ferric-chloride-solution]"
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "coal-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="coal", amount=2},
      {type="fluid", name="water", amount=1.5}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=1.2}
    },
    subgroup = "bob-fluid",
    icon = "__bobelectronics__/graphics/icons/coal-cracking.png",
    order = "b[fluid-chemistry]-a[coal-cracking]"
  },
}
)


data:extend(
{
  {
    type = "recipe",
    name = "bob-oil-processing",
    category = "oil-processing",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=10}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=5},
      {type="fluid", name="light-oil", amount=2},
      {type="fluid", name="petroleum-gas", amount=3}
    },
    icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
    subgroup = "fluid-recipes",
    order = "a[oil-processing]-c[bob-oil-processing]"
  },
}
)

