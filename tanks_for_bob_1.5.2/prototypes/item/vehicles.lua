data:extend(
{
   {
    type = "item",
    name = "modular-tank",
    icon = "__tanks_for_bob__/graphics/icons/auto-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[modular-tank]-a[modular-tank]",
    place_result = "modular-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "flame-tank",
    icon = "__tanks_for_bob__/graphics/icons/flame-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[battle-tank]-a[flame-tank]",
    place_result = "flame-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "auto-tank",
    icon = "__tanks_for_bob__/graphics/icons/auto-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[battle-tank]-a[flame-tank]",
    place_result = "auto-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "nade-tank",
    icon = "__tanks_for_bob__/graphics/icons/nade-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle",
    order = "b[battle-tank]-a[flame-tank]",
    place_result = "nade-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "flame-tank-wlsk",
    icon = "__tanks_for_bob__/graphics/icons/flame-tank-wlsk.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "a[tank-vehicle-upgrades]-a[flame-tank]",
    place_result = "flame-tank-wlsk",
    stack_size = 1
  },
  {
    type = "item",
    name = "auto-tank-wlsk",
    icon = "__tanks_for_bob__/graphics/icons/auto-tank-lvl2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "a[tank-vehicle-upgrades]-a[flame-tank]",
    place_result = "auto-tank-wlsk",
    stack_size = 1
  },
  {
    type = "item",
    name = "nade-tank-wlsk",
    icon = "__tanks_for_bob__/graphics/icons/nade-tank-wlsk.png",
    flags = {"goes-to-quickbar"},
    subgroup = "tank-vehicle-upgrades",
    order = "a[tank-vehicle-upgrades]-a[flame-tank]",
    place_result = "nade-tank-wlsk",
    stack_size = 1
  },
  {
    type = "item",
    name = "mine-tank",
    icon = "__tanks_for_bob__/graphics/icons/mine-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "support-vehicles",
    order = "b[support-vehicles]-a[mine-tank]",
    place_result = "mine-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "rocket-tank",
    icon = "__tanks_for_bob__/graphics/icons/rocket-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "support-vehicles",
    order = "b[support-vehicles]-a[mine-tank]",
    place_result = "rocket-tank",
    stack_size = 1
  },
  --eol
  {
    type = "item",
    name = "super-tank",
    icon = "__tanks_for_bob__/graphics/icons/super-tank.png",
    flags = {"goes-to-quickbar"},
    subgroup = "super-tank-vehicle",
    order = "b[super-tank-vehicle]-a[super-tank]",
    place_result = "super-tank",
    stack_size = 1
  },
  {
    type = "item",
    name = "super-tank-alternate",
    icon = "__tanks_for_bob__/graphics/icons/super-tank-alternate.png",
    flags = {"goes-to-quickbar"},
    subgroup = "super-tank-vehicle",
    order = "b[super-tank]-a[super-tank]",
    place_result = "super-tank-alternate",
    stack_size = 1
  },
  {
    type = "item",
    name = "super-tank-wmd",
    icon = "__tanks_for_bob__/graphics/icons/super-tank-wmd.png",
    flags = {"goes-to-quickbar"},
    subgroup = "super-tank-vehicle",
    order = "b[super-tank]-a[super-tank]",
    place_result = "super-tank-wmd",
    stack_size = 1
  },
  {
    type = "item",
    name = "car-flamer",
    icon = "__tanks_for_bob__/graphics/icons/car-flamer.png",
    flags = {"goes-to-quickbar"},
    subgroup = "support-vehicles",
    order = "b[support-vehicles]-a[mine-tank]",
    place_result = "car-flamer",
    stack_size = 1
  },
 }
)