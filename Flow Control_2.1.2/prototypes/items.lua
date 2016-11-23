data.raw["item"]["small-pump"].icon = "__Flow Control__/graphics/icon/small-pump.png"
data.raw["item"]["small-pump"].order = "b[pipe]-c[small-pump]c"

data:extend(
{
  {
    type = "item",
    name = "check-valve",
    icon = "__Flow Control__/graphics/icon/check-valve.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[small-pump]a",
    place_result = "check-valve",
    stack_size = 50
  },
  {
    type = "item",
    name = "overflow-valve",
    icon = "__Flow Control__/graphics/icon/overflow-valve.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[small-pump]b",
    place_result = "overflow-valve",
    stack_size = 50
  },
  {
    type = "item",
    name = "express-pump",
    icon = "__Flow Control__/graphics/icon/express-pump.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "b[pipe]-c[small-pump]d",
    place_result = "express-pump",
    stack_size = 50
  },
  {
    type = "item",
    name = "pipe-elbow",
    icon = "__Flow Control__/graphics/icon/pipe-elbow.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-a[pipe]a",
    place_result = "pipe-elbow",
    stack_size = 50
  },
  {
    type = "item",
    name = "pipe-junction",
    icon = "__Flow Control__/graphics/icon/pipe-junction.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-a[pipe]b",
    place_result = "pipe-junction",
    stack_size = 50
  },
  {
    type = "item",
    name = "pipe-straight",
    icon = "__Flow Control__/graphics/icon/pipe-straight.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe]-a[pipe]c",
    place_result = "pipe-straight",
    stack_size = 50
  }
})