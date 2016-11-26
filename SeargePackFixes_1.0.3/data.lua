if not data.raw.item["small-alien-artifact"] then
data:extend(
{
 {
    type = "item",
    name = "small-alien-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-red.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-b[red]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-orange.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-c[orange]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-yellow.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-d[yellow]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-green.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-e[green]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-blue.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-f[blue]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-purple.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-g[purple]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "item",
    name = "small-alien-artifact",
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact.png",
    flags = { "goes-to-main-inventory" },
    subgroup = "raw-material",
    order = "g[alien-artifact]-a[pink]-a[small]",
    stack_size = 500,
    default_request_amount = 100
  },
  {
    type = "recipe",
    name = "alien-goo",
    category = "chemistry",
    energy_required = 5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=3},
      {type="item", name="alien-ore", amount=5}
    },
    results=
    {
      {type="fluid", name="alien-goo", amount=2}
    }
  },
}
)
end
