data.raw.item["flying-robot-frame"].order = "j[flying-robot-frame-1]"
data.raw.item["flying-robot-frame"].subgroup = "bob-robot-parts"

data:extend(
{
  {
    type = "item",
    name = "flying-robot-frame-2",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-2]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-3",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-3]",
    stack_size = 50
  },
  {
    type = "item",
    name = "flying-robot-frame-4",
    icon = "__boblogistics__/graphics/icons/flying-robot-frame-4.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-robot-parts",
    order = "j[flying-robot-frame-4]",
    stack_size = 50
  },

  {
    type = "recipe",
    name = "flying-robot-frame-2",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"advanced-circuit", 3}
    },
    result = "flying-robot-frame-2",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-3",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-3",
  },
  {
    type = "recipe",
    name = "flying-robot-frame-4",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"electric-engine-unit", 1},
      {"battery", 2},
      {"steel-plate", 1},
      {"processing-unit", 3}
    },
    result = "flying-robot-frame-4",
  },
}
)


data:extend(
{
  {
    type = "technology",
    name = "bob-robotics-2",
    icon = "__base__/graphics/technology/robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-2"
      },
    },
    prerequisites =
    {
      "robotics",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-i-a",
  },

  {
    type = "technology",
    name = "bob-robotics-3",
    icon = "__base__/graphics/technology/robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-3"
      },
    },
    prerequisites =
    {
      "bob-robotics-2",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    upgrade = true,
    order = "c-i-b",
  },

  {
    type = "technology",
    name = "bob-robotics-4",
    icon = "__base__/graphics/technology/robotics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "flying-robot-frame-4"
      },
    },
    prerequisites =
    {
      "bob-robotics-3",
    },
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1}
      },
      time = 30
    },
    upgrade = true,
    order = "c-i-c",
  },
}
)
