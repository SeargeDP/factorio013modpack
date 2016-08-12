data:extend(
{
--IRON
  {
    type = "item",
    name = "iron-processed",
    icon = "__angelsprocessing__/graphics/icons/iron-processed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing",
    order = "a[iron-processed]",
    stack_size = 200
  },
  {
    type = "item",
    name = "iron-ingot",
    icon = "__angelsprocessing__/graphics/icons/iron-ingot.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ingot-smelting",
    order = "a[iron-ingot]",
    stack_size = 200
  },
--COPPER
  {
    type = "item",
    name = "copper-processed",
    icon = "__angelsprocessing__/graphics/icons/copper-processed.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ore-processing",
    order = "b[copper-processed]",
    stack_size = 200
  },
  {
    type = "item",
    name = "copper-ingot",
    icon = "__angelsprocessing__/graphics/icons/copper-ingot.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "ingot-smelting",
    order = "b[copper-ingot]",
    stack_size = 200
  },
}
)