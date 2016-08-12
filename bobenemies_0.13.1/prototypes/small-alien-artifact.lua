data:extend(
{
  {
    type = "item",
    name = "small-alien-artifact",
    icon = "__bobenemies__/graphics/icons/small-alien-artifact.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-a[pink]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-artifact-from-small",
    result = "alien-artifact",
    ingredients =
    {
      {"small-alien-artifact", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
}
)

