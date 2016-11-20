data:extend(
{
  {
    type = "item-group",
    name = "text-plates",
    order = "d-b", -- after combat, before fluids
    icon = "__textplates__/graphics/text-plates-group.png"
  },
  {
    type = "item-subgroup",
    name = "text-plates-blanks",
    group = "text-plates",
    order = "a",
  },
  {
    type = "item-subgroup",
    name = "text-plates-symbols",
    group = "text-plates",
    order = "b",
  },
}
)