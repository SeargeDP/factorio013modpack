data.raw["item-with-entity-data"]["tank"].order = "b[personal-transport]-b[tank-1]"
data.raw["item-with-entity-data"]["tank"].stack_size = 10
data.raw["item-with-entity-data"]["tank"].default_request_amount = 1

data:extend(
{
  {
    type = "item-with-entity-data",
    name = "bob-tank-2",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-b[tank-2]",
    place_result = "bob-tank-2",
    stack_size = 10,
    default_request_amount = 1,
  },

  {
    type = "item-with-entity-data",
    name = "bob-tank-3",
    icon = "__base__/graphics/icons/tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = "b[personal-transport]-b[tank-3]",
    place_result = "bob-tank-3",
    stack_size = 10,
    default_request_amount = 1,
  },
}
)

