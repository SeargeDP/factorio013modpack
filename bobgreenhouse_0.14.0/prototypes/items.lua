data:extend(
{
  {
    type = "item",
    name = "bob-greenhouse",
    icon = "__bobgreenhouse__/graphics/icons/greenhouse.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-greenhouse",
    order = "g[greenhouse]",
    place_result = "bob-greenhouse",
    stack_size = 20
  },
  {
    type = "item",
    name = "fertiliser",
    icon = "__bobgreenhouse__/graphics/icons/fertiliser.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-greenhouse-items",
    order = "g[fertiliser]",
    stack_size = 100
  },
  {
    type = "item",
    name = "seedling",
    icon = "__bobgreenhouse__/graphics/icons/seedling.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "200J",
    subgroup = "bob-greenhouse-items",
    order = "g[seedling]",
    stack_size = 200
  },
}
)

