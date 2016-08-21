data.raw.item["diesel-locomotive"].stack_size = 10
data.raw.item["diesel-locomotive"].order = "a[train-system]-e[diesel-locomotive-1]"

data.raw.item["cargo-wagon"].stack_size = 10
data.raw.item["cargo-wagon"].order = "a[train-system]-f[cargo-wagon-1]"

data:extend(
{
  {
    type = "item",
    name = "diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-2]",
    place_result = "diesel-locomotive-2",
    stack_size = 10
  },

  {
    type = "item",
    name = "diesel-locomotive-3",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-3]",
    place_result = "diesel-locomotive-3",
    stack_size = 10
  },


  {
    type = "item",
    name = "armoured-diesel-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-a]",
    place_result = "armoured-diesel-locomotive",
    stack_size = 10
  },


  {
    type = "item",
    name = "cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-2]",
    place_result = "cargo-wagon-2",
    stack_size = 10
  },

  {
    type = "item",
    name = "cargo-wagon-3",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-3]",
    place_result = "cargo-wagon-3",
    stack_size = 10
  },


  {
    type = "item",
    name = "armoured-cargo-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon]",
    place_result = "armoured-cargo-wagon",
    stack_size = 10
  },
}
)


