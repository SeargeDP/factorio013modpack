data:extend(
{
   {
    type = "item-group",
    name = "bob-logistics",
    order = "aaa-a",
    inventory_order = "c-a",
    icon = "__boblogistics__/graphics/icons/technology/logistics.png",
  },

  {
    type = "item-subgroup",
    name = "bob-storage",
    group = "bob-logistics",
    order = "a-a",
  },
  {
    type = "item-subgroup",
    name = "bob-belt",
    group = "bob-logistics",
    order = "b-a",
  },
  {
    type = "item-subgroup",
    name = "bob-smart-inserter",
    group = "logistics",
    order = "c-a",
  },
  {
    type = "item-subgroup",
    name = "bob-purple-inserter",
    group = "bob-logistics",
    order = "c-c",
  },
  {
    type = "item-subgroup",
    name = "pipe",
    group = "bob-logistics",
    order = "d-a-1"
  },
  {
    type = "item-subgroup",
    name = "pipe-to-ground",
    group = "bob-logistics",
    order = "d-a-2"
  },
  {
    type = "item-subgroup",
    name = "bob-transport",
    group = "bob-logistics",
    order = "e-a",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-robots",
    group = "bob-logistics",
    order = "f-a",
  },
  {
    type = "item-subgroup",
    name = "bob-logistic-roboport",
    group = "bob-logistics",
    order = "f-b",
  },

  {
    type = "item-subgroup",
    name = "bob-roboport-parts",
    group = "intermediate-products",
    order = "e-d"
  },

  {
    type = "item-subgroup",
    name = "bob-robot-parts",
    group = "intermediate-products",
    order = "e-e"
  },
}
)

if data.raw["item-group"]["bob-intermediate-products"] then
  data.raw["item-subgroup"]["bob-roboport-parts"].group = "bob-intermediate-products"
  data.raw["item-subgroup"]["bob-robot-parts"].group = "bob-intermediate-products"
end

