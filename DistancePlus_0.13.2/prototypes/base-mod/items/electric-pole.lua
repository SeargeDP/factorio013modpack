data:extend(
{
  {
    type = "item",
    name = "huge-electric-pole",
    icon = "__DistancePlus__/graphics/icons/huge-electric-pole.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[huge-electric-pole]",
    place_result = "huge-electric-pole",
    stack_size = 5
  },
  {
    type = "item",
    name = "big-substation",
    icon = "__base__/graphics/icons/substation.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[energy]-e[substation]",
    place_result = "big-substation",
    stack_size = 50
  }
 })