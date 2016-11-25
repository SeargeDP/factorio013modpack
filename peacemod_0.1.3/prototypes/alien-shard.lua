data:extend(
{
  {
    type = "item",
    name = "alien-shard",
    icon = "__peacemod__/graphics/icons/alien-shard.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "raw-material",
    order = "h[alien-artifact]-a[alien-shard]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "alien-shard",
    category = "smelting",
    energy_required = 14,
    enabled = "false",
    ingredients = {{"alien-ore", 4}},
    result = "alien-shard"
  }
}
)