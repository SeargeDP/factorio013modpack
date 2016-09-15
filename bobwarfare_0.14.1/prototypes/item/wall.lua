data:extend(
{
  {
    type = "item",
    name = "reinforced-wall",
    icon = "__bobwarfare__/graphics/icons/reinforced-wall.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[stone-wall]-c[reinforced]",
    place_result = "reinforced-wall",
    stack_size = 50,
  },
  {
    type = "item",
    name = "reinforced-gate",
    icon = "__base__/graphics/icons/gate.png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = "a[gate]-d[reinforced]",
    place_result = "reinforced-gate",
    stack_size = 50,
  },
}
)