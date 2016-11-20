data.raw["item-with-entity-data"]["diesel-locomotive"].stack_size = 10
data.raw["item-with-entity-data"]["diesel-locomotive"].order = "a[train-system]-e[diesel-locomotive-1]"

data.raw["item-with-entity-data"]["cargo-wagon"].stack_size = 10
data.raw["item-with-entity-data"]["cargo-wagon"].order = "a[train-system]-f[cargo-wagon-1]"

data:extend(
{
  {
    type = "item-with-entity-data",
    name = "bob-diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-2]",
    place_result = "bob-diesel-locomotive-2",
    stack_size = 10
  },

  {
    type = "item-with-entity-data",
    name = "bob-diesel-locomotive-3",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-3]",
    place_result = "bob-diesel-locomotive-3",
    stack_size = 10
  },


  {
    type = "item-with-entity-data",
    name = "bob-armoured-diesel-locomotive",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-a-1]",
    place_result = "bob-armoured-diesel-locomotive",
    stack_size = 10
  },

  {
    type = "item-with-entity-data",
    name = "bob-armoured-diesel-locomotive-2",
    icon = "__base__/graphics/icons/diesel-locomotive.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-e[diesel-locomotive-a-2]",
    place_result = "bob-armoured-diesel-locomotive-2",
    stack_size = 10
  },


  {
    type = "item-with-entity-data",
    name = "bob-cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-2]",
    place_result = "bob-cargo-wagon-2",
    stack_size = 10
  },

  {
    type = "item-with-entity-data",
    name = "bob-cargo-wagon-3",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-3]",
    place_result = "bob-cargo-wagon-3",
    stack_size = 10
  },


  {
    type = "item-with-entity-data",
    name = "bob-armoured-cargo-wagon",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-a-1]",
    place_result = "bob-armoured-cargo-wagon",
    stack_size = 10
  },

  {
    type = "item-with-entity-data",
    name = "bob-armoured-cargo-wagon-2",
    icon = "__base__/graphics/icons/cargo-wagon.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-transport",
    order = "a[train-system]-f[cargo-wagon-a-2]",
    place_result = "bob-armoured-cargo-wagon-2",
    stack_size = 10
  },
}
)


