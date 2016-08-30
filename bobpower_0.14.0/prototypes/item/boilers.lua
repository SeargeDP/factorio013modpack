data.raw.item["boiler"].order = "b[steam-power]-a[boiler-1]"
data.raw.item["boiler"].subgroup = "bob-energy-boiler"

data:extend(
{
  {
    type = "item",
    name = "boiler-2",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-2]",
    place_result = "boiler-2",
    stack_size = 50,
  },

  {
    type = "item",
    name = "boiler-3",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-3]",
    place_result = "boiler-3",
    stack_size = 50,
  },

  {
    type = "item",
    name = "boiler-4",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-boiler",
    order = "b[steam-power]-a[boiler-4]",
    place_result = "boiler-4",
    stack_size = 50,
  },
}
)


