data.raw.item["tank"].order = "b[personal-transport]-b[tank-1]"
data.raw.item["tank"].stack_size = 10
data.raw.item["tank"].default_request_amount = 1

data:extend(
{
  {
    type = "item",
    name = "tank-2",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-b[tank-2]",
    place_result = "tank-2",
    stack_size = 10,
    default_request_amount = 1,
  },

  {
    type = "item",
    name = "tank-3",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-b[tank-3]",
    place_result = "tank-3",
    stack_size = 10,
    default_request_amount = 1,
  },
}
)

