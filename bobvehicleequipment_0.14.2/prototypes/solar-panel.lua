data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-1.png",
    placed_as_equipment_result = "vehicle-solar-panel-1",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-1",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-1",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 2},
      {"electronic-circuit", 5},
      {"copper-cable", 4},
    },
    result = "vehicle-solar-panel-1"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-1",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-1.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "50kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-1",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-a",
    prerequisites =
    {
      "logistics-2",
      "engine",
      "optics",
      "electronics", 
    },
    unit =
    {
      count = 50,
      time = 15,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-1"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-2.png",
    placed_as_equipment_result = "vehicle-solar-panel-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-2",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-solar-panel-1", 1},
      {"steel-plate", 2},
      {"advanced-circuit", 5},
      {"copper-plate", 2},
    },
    result = "vehicle-solar-panel-2"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-2",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-2.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "80kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-2",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-b",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-1",
    },
    unit =
    {
      count = 75,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-2"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-3.png",
    placed_as_equipment_result = "vehicle-solar-panel-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-3",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-solar-panel-2", 1},
      {"steel-plate", 2},
      {"processing-unit", 5},
      {"copper-plate", 2},
    },
    result = "vehicle-solar-panel-3"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-3",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-3.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "120kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-3",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-c",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-2",
      "advanced-electronics-2",
    },
    unit =
    {
      count = 90,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-3"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-4.png",
    placed_as_equipment_result = "vehicle-solar-panel-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-4",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-solar-panel-3", 1},
      {"steel-plate", 2},
      {"processing-unit", 5},
      {"copper-cable", 5},
    },
    result = "vehicle-solar-panel-4"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-4",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-4.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "200kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-4",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-d",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-3",
    },
    unit =
    {
      count = 100,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-4"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-5.png",
    placed_as_equipment_result = "vehicle-solar-panel-5",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-5",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-solar-panel-4", 1},
      {"steel-plate", 2},
      {"alien-artifact", 10},
      {"processing-unit", 5},
      {"copper-cable", 5},
    },
    result = "vehicle-solar-panel-5"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-5",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-5.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "320kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-5",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-e",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-4",
    },
    unit =
    {
      count = 125,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-5"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-solar-panel-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-solar-panel-6.png",
    placed_as_equipment_result = "vehicle-solar-panel-6",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-a[solar-panel]-6",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-solar-panel-6",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-solar-panel-5", 1},
      {"steel-plate", 2},
      {"alien-artifact", 10},
      {"processing-unit", 5},
      {"copper-cable", 5},
    },
    result = "vehicle-solar-panel-6"
  },

  {
    type = "solar-panel-equipment",
    name = "vehicle-solar-panel-6",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-solar-panel-6.png",
      width = 64,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "500kW",
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-solar-panel-equipment-6",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-solar-panel.png",
    icon_size = 128,
    upgrade = "true",
    order = "v-g-k-f",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-5",
    },
    unit =
    {
      count = 150,
      time = 45,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-solar-panel-6"
      }
    },
  },
}
)


