data:extend(
{
 {
    type = "recipe",
    name = "medium-underground-belt",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
        {"iron-plate", 30},
        {"transport-belt", 15}
    },
    result_count = 2,
    result = "medium-underground-belt"
  },
   {
    type = "recipe",
    name = "long-underground-belt",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"steel-plate", 30},
      {"transport-belt", 30}
    },
    result_count = 2,
    result = "long-underground-belt"
  },
  {
    type = "recipe",
    name = "medium-fast-underground-belt",
    enabled = "false",
    ingredients =
    {
      {"iron-gear-wheel", 40},
      {"medium-underground-belt", 2}
    },
    result_count = 2,
    result = "medium-fast-underground-belt"
  },
  {
    type = "recipe",
    name = "long-fast-underground-belt",
    enabled = "false",
    ingredients =
    {
      {"iron-gear-wheel", 80},
      {"long-underground-belt", 2}
    },
    result_count = 2,
    result = "long-fast-underground-belt"
  },
  {
    type = "recipe",
    name = "medium-express-underground-belt",
    enabled = "false",
    ingredients =
    {
        {"iron-gear-wheel", 80},
        {"medium-fast-underground-belt", 2}
    },
    result_count = 2,
    result = "medium-express-underground-belt"
  },
   {
    type = "recipe",
    name = "long-express-underground-belt",
    enabled = "false",
    ingredients =
    {
        {"iron-gear-wheel", 160},
        {"long-fast-underground-belt", 2}
    },
    result_count = 2,
    result = "long-express-underground-belt"
  } 
  }
  )