data:extend(
{
  {
    type = "tool",
    name = "science-pack-4",
    icon = "__bobtech__/graphics/icons/science-pack-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "a[science-pack-4]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },
  {
    type = "tool",
    name = "science-pack-gold",
    icon = "__bobtech__/graphics/icons/science-pack-gold.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "science-pack",
    order = "a[science-pack-gold]",
    stack_size = 200,
    durability = 1,
    durability_description_key = "description.science-pack-remaining-amount"
  },

  {
    type = "item",
    name = "lab-2",
    icon = "__bobtech__/graphics/icons/lab2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "production-machine",
    order = "g[lab-2]",
    place_result = "lab-2",
    stack_size = 10
  },
}
)



