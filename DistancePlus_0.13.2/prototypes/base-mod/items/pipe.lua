 data:extend(
{
 {
    type = "item",
    name = "medium-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/medium-pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[pipe-to-ground]-b[medium-pipe-to-ground]",
    place_result = "medium-pipe-to-ground",
    stack_size = 30
  },
  {
    type = "item",
    name = "long-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/long-pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[medium-pipe-to-ground]-b[long-pipe-to-ground]",
    place_result = "long-pipe-to-ground",
    stack_size = 20
  },
  {
    type = "item",
    name = "ultra-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/ultra-pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[long-pipe-to-ground]-b[ultra-pipe-to-ground]",
    place_result = "ultra-pipe-to-ground",
    stack_size = 10
  },  
  {
    type = "item",
    name = "continental-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/continental-pipe-to-ground.png",
    flags = {"goes-to-quickbar"},
    subgroup = "energy-pipe-distribution",
    order = "a[ultra-pipe-to-ground]-b[continental-pipe-to-ground]",
    place_result = "continental-pipe-to-ground",
    stack_size = 2
  }
 }
 )