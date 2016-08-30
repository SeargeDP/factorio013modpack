data.raw["item"]["steam-engine"].order="b[steam-power]-b[steam-engine-1]"
data.raw["item"]["steam-engine"].subgroup = "bob-energy-steam-engine"

data:extend(
{
  {
    type = "item",
    name = "steam-engine-2",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-2",
    place_result = "steam-engine-2",
    stack_size = 10,
  },
  {
    type = "item",
    name = "steam-engine-3",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-energy-steam-engine",
    order = "b[steam-power]-b[steam-engine]-3",
    place_result = "steam-engine-3",
    stack_size = 10,
  },
}
)


