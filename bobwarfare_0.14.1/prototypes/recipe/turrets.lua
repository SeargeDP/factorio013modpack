data:extend(
{
  {
    type = "recipe",
    name = "bob-gun-turret-2",
    enabled = "false",
    energy_required = 5,
    ingredients =
    {
      {"gun-turret", 1},
      {"iron-gear-wheel", 10},
      {"steel-plate", 20}
    },
    result = "bob-gun-turret-2"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-2", 1},
      {"iron-gear-wheel", 10},
      {"steel-plate", 20}
    },
    result = "bob-gun-turret-3"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-3", 1},
      {"iron-gear-wheel", 10},
      {"steel-plate", 20}
    },
    result = "bob-gun-turret-4"
  },
  {
    type = "recipe",
    name = "bob-gun-turret-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"bob-gun-turret-4", 1},
      {"iron-gear-wheel", 10},
      {"steel-plate", 20}
    },
    result = "bob-gun-turret-5"
  },

  {
    type = "recipe",
    name = "bob-sniper-turret-1",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"iron-gear-wheel", 20},
      {"copper-plate", 20},
      {"iron-plate", 20}
    },
    result = "bob-sniper-turret-1"
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-2",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-sniper-turret-1", 1},
      {"iron-gear-wheel", 20},
      {"steel-plate", 20},
      {"iron-plate", 20}
    },
    result = "bob-sniper-turret-2"
  },
  {
    type = "recipe",
    name = "bob-sniper-turret-3",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-sniper-turret-2", 1},
      {"iron-gear-wheel", 20},
      {"steel-plate", 20},
      {"plastic-bar", 20}
    },
    result = "bob-sniper-turret-3"
  },

  {
    type = "recipe",
    name = "bob-laser-turret-2",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"laser-turret", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
    },
    result = "bob-laser-turret-2"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-3",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-2", 1},
      {"steel-plate", 20},
      {"battery", 12}
    },
    result = "bob-laser-turret-3"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-4",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-3", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "bob-laser-turret-4"
  },
  {
    type = "recipe",
    name = "bob-laser-turret-5",
    enabled = "false",
    energy_required = 20,
    ingredients =
    {
      {"bob-laser-turret-4", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "bob-laser-turret-5"
  },
}
)
