data:extend(
{
-- tank-assembling-machine
  {
    type = "recipe",
    name = "tank-recall-token",
    enabled = "false",
    ingredients =
    {
      {"plastic-bar", 3},
      {"electronic-circuit", 3},
      {"advanced-circuit", 1},
    },
    result = "tank-recall-token"
  },
-- tank-assembling-machine
  {
    type = "recipe",
    name = "tank-assembling-machine",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1},
      {"electronic-circuit", 3},
      {"iron-gear-wheel", 5},
      {"assembling-machine-2", 1}
    },
    result = "tank-assembling-machine"
  },
-- tank-ammo-assembling-machine
  {
    type = "recipe",
    name = "tank-ammo-assembling-machine",
    enabled = "false",
    ingredients =
    {
      {"iron-plate", 1},
      {"electronic-circuit", 3},
      {"iron-gear-wheel", 5},
      {"assembling-machine-2", 1}
    },
    result = "tank-ammo-assembling-machine"
  },
-- tank-light-chasis-wlsk
  {
    type = "recipe",
    name = "tank-light-chasis-wlsk",
    enabled = "false",
	category = "tank-crafting",
    ingredients =
    {
      {"steel-plate", 75},
      {"advanced-circuit", 60},
      {"processing-unit", 5},
      {"electric-engine-unit",25}
    },
    result = "tank-light-chasis-wlsk"
  },
-- Iron-wall
  {
    type = "recipe",
    name = "iron-walls",
    enabled = "false",
    energy_required = "5",
    ingredients = 
    {
      {"iron-plate", 4},
      {"steel-plate", 1},
    },
    results= 
    {
      {type = "item", name="iron-wall", amount=1},
    },
  },
-- ammo components
-- name = "tank-ammo-universal-explosive",
  {
    type = "recipe",
    name = "tank-ammo-universal-explosive",
    enabled = "false",
    category = "tank-ammo-component",
    energy_required = 5,
    ingredients =
    {
      {"plastic-bar", 1},
      {"explosives", 1}
    },
    results=
    {
      {type="item", name="tank-ammo-universal-explosive", amount=1},
    },
  },
--     name = "tank-ammo-universal-explosive-synthetic",
  {
    type = "recipe",
    name = "tank-ammo-universal-explosive-synthetic",
    enabled = "false",
    category = "tank-ammo-component",
    energy_required = 60,
    ingredients =
    {
      {"raw-wood", 100},
      {"stone", 100}
    },
    results=
    {
      {type="item", name="tank-ammo-universal-explosive", amount=9},
    },
  },
--    name = "tank-ammo-casing",	
  {
    type = "recipe",
    name = "tank-ammo-casing",
    enabled = "false",
    category = "tank-ammo-component",
    energy_required = 0.5,
    ingredients =
    {
      {"copper-plate", 1},
    },
    results=
    {
      {type="item", name="tank-ammo-casing", amount=1},
    },
  },
--    name = "tank-ammo-reinforced-casing",  
  {
    type = "recipe",
    name = "tank-ammo-reinforced-casing",
    enabled = "false",
    category = "tank-ammo-component",
    energy_required = 2,
    ingredients =
    {
      {"steel-plate", 1},
    },
    results=
    {
      {type="item", name="tank-ammo-reinforced-casing", amount=1},
    },
  },
-- extras
    {
      type = "recipe",
      name = "land-mine-poison",
      enabled = "false",
      energy_required = 5,
      ingredients =
      {
         {"steel-plate", 1},
         {"explosives", 2},
  	     {"sulfur", 1},
      },
      result = "land-mine-poison",
      result_count = 4
    },
    {
      type = "recipe",
      name = "fish-kit",
      enabled = "false",
  	  category = "tank-ammo-component",
      energy_required = 5,
      ingredients =
      {
        {"raw-fish", 5},
      },
      results=
      {
        {type="item", name="fish-kit", amount=6},
      },
    },
  }
)
--
