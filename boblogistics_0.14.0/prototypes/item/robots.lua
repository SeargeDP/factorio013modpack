data.raw.item["logistic-robot"].order = "a[robot]-a[logistic-robot-1]"
data.raw.item["logistic-robot"].subgroup = "bob-logistic-robots"

data.raw.item["construction-robot"].order = "a[robot]-b[construction-robot-1]"
data.raw.item["construction-robot"].subgroup = "bob-logistic-robots"

data:extend(
{
  {
    type = "item",
    name = "bob-logistic-robot-2",
    icon = "__boblogistics__/graphics/icons/logistic-robot-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-2]",
    place_result = "bob-logistic-robot-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-logistic-robot-3",
    icon = "__boblogistics__/graphics/icons/logistic-robot-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-3]",
    place_result = "bob-logistic-robot-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-logistic-robot-4",
    icon = "__boblogistics__/graphics/icons/logistic-robot-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-a[logistic-robot-4]",
    place_result = "bob-logistic-robot-4",
    stack_size = 50
  },


  {
    type = "item",
    name = "bob-construction-robot-2",
    icon = "__boblogistics__/graphics/icons/construction-robot-2.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-2]",
    place_result = "bob-construction-robot-2",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-construction-robot-3",
    icon = "__boblogistics__/graphics/icons/construction-robot-3.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-3]",
    place_result = "bob-construction-robot-3",
    stack_size = 50
  },

  {
    type = "item",
    name = "bob-construction-robot-4",
    icon = "__boblogistics__/graphics/icons/construction-robot-4.png",
    flags = {"goes-to-quickbar"},
    subgroup = "bob-logistic-robots",
    order = "a[robot]-b[construction-robot-4]",
    place_result = "bob-construction-robot-4",
    stack_size = 50
  },
}
)





