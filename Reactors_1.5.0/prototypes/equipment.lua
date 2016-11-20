data:extend({
  {
    type = "generator-equipment",
    name = "rtg-equipment",
    sprite =
    {
      filename = "__Reactors__/graphics/equipment/rtg-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "75kW",
    categories = {"armor"}
  }
})