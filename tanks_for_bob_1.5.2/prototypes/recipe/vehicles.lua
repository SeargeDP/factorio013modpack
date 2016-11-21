data:extend(
{
--flame-tank
  {
    type = "recipe",
    name = "flame-tank",
    enabled = "false",
    category = "tank-crafting",
    energy_required = 45,
    ingredients =
    {
      {"engine-unit", 15},
      {"steel-plate", 45},
      {"iron-gear-wheel", 20},
      {"advanced-circuit", 5}
    },
    result = "flame-tank"
  },
--auto-tank
  {
    type = "recipe",
    name = "auto-tank",
    enabled = "false",
    category = "tank-crafting",
    energy_required = 45,
    ingredients =
    {
      {"engine-unit", 15},
      {"steel-plate", 45},
      {"iron-gear-wheel", 20},
      {"advanced-circuit", 5}
    },
    result = "auto-tank"
  },
--nade-tank
  {
    type = "recipe",
    name = "nade-tank",
    enabled = "false",
  category = "tank-crafting",

  energy_required = 45,
    ingredients =
    {
      {"engine-unit", 15},
      {"steel-plate", 45},
      {"iron-gear-wheel", 20},
      {"advanced-circuit", 5}
    },
    result = "nade-tank"
  },
--flame-tank-wlsk
  {
    type = "recipe",
    name = "flame-tank-wlsk",
    enabled = "false",
  category = "tank-crafting",

  energy_required = 15,
    ingredients =
    {
      {"tank-light-chasis-wlsk", 1},
      {"flame-tank", 1}
    },
    result = "flame-tank-wlsk"
  },
--auto-tank-wlsk
  {
    type = "recipe",
    name = "auto-tank-wlsk",
    enabled = "false",
  category = "tank-crafting",

  energy_required = 15,
    ingredients =
    {
      {"tank-light-chasis-wlsk", 1},
      {"auto-tank", 1}
      --{"iron-gear-wheel", 1},
      --{"electronic-circuit", 1}
    },
    result = "auto-tank-wlsk"
  },
--nade-tank-wlsk
  {
    type = "recipe",
    name = "nade-tank-wlsk",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 15,
    ingredients =
    {
      {"tank-light-chasis-wlsk", 1},
      {"nade-tank", 1}
      --{"iron-gear-wheel", 1},
      --{"electronic-circuit", 1}
    },
    result = "nade-tank-wlsk"
  },
--mine-tank
  {
    type = "recipe",
    name = "mine-tank",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 60,
    ingredients =
    {
      {"engine-unit", 15},
      {"steel-plate", 30},
      {"iron-gear-wheel", 20},
      {"advanced-circuit", 5}
    },
    result = "mine-tank"
  },
--rocket-tank
  {
    type = "recipe",
    name = "rocket-tank",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 60,
    ingredients =
    {
      {"engine-unit", 15},
      {"steel-plate", 45},
      {"iron-gear-wheel", 20},
      {"advanced-circuit", 5}
    },
    result = "rocket-tank"
  },
--super-tank A
  {
    type = "recipe",
    name = "super-tank",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 100,
    ingredients =
    {
      {"electric-engine-unit", 30},
      {"steel-plate", 75},
      {"processing-unit", 40},
      {"advanced-circuit", 15}
    },
    result = "super-tank"
  },
--super-tank B
  {
    type = "recipe",
    name = "super-tank-alternate",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 100,
    ingredients =
    {
      {"electric-engine-unit", 30},
      {"steel-plate", 75},
      {"processing-unit", 40},
      {"advanced-circuit", 15}
    },
    result = "super-tank-alternate"
  },
--super-tank C
  {
    type = "recipe",
    name = "super-tank-wmd",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 240,
    ingredients =
    {
      {"electric-engine-unit", 30},
      {"steel-plate", 75},
      {"processing-unit", 40},
      {"advanced-circuit", 15}
    },
    result = "super-tank-wmd"
  },
-- Car flamer  
  {
    type = "recipe",
    name = "car-flamer",
    enabled = "false",
  category = "tank-crafting",
  energy_required = 25,
    ingredients =
    {
      {"engine-unit", 10},
      {"iron-gear-wheel", 10},
      {"steel-plate", 10}
    },
    result = "car-flamer"
  }
 }
)