data:extend(
{
  {
    type = "recipe-category",
    name = "ore-processing",
  },
  {
    type = "recipe-category",
    name = "blast-smelting",
  },
  {
    type = "item-group",
    name = "resource-processing",
    order = "m",
    inventory_order = "m",
    icon = "__angelsprocessing__/graphics/item-group/ore-processing-plant.png",
	icon_size = 64,
  },
  {
    type = "item-subgroup",
    name = "ore-processing",
	group = "resource-processing",
	order = "m-4",
  },
  {
    type = "item-subgroup",
    name = "ingot-smelting",
	group = "resource-processing",
	order = "m-b",
  },
  {
    type = "item-subgroup",
    name = "processing-buildings",
	group = "resource-processing",
	order = "m-l",
  },
  }
  )
  
if bobmods.plates then
data:extend(
{  
  {
    type = "item-subgroup",
    name = "bob-plate-from-processed",
	group = "bob-resource-products",
	order = "c-a-d",
  },
  {
    type = "item-subgroup",
    name = "bob-plate-from-ingot",
	group = "bob-resource-products",
	order = "c-a-e",
  },
}
)
end