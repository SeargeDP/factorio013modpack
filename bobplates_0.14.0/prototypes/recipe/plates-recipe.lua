data:extend(
{
  {
    type = "recipe",
    name = "lead-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients = {{"lead-ore", 1}},
    result = "lead-plate"
  },

  {
    type = "recipe",
    name = "silver-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients = {{"silver-ore", 1}},
    result = "silver-plate"
  },

  {
    type = "recipe",
    name = "tin-plate",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients = {{"tin-ore", 1}},
    result = "tin-plate"
  },


  {
    type = "recipe",
    name = "bob-lead-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {"lead-oxide", 2},
      {"carbon", 1},
    },
    result = "lead-plate",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "bob-gold-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="gold-ore", amount=1},
      {type="fluid", name="chlorine", amount=0.5}
    },
    result = "gold-plate",
  },

  {
    type = "recipe",
    name = "cobalt-plate",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cobalt-oxide", amount=1},
      {type="fluid", name="sulfuric-acid", amount=1},
    },
    result = "cobalt-plate",
  },


  {
    type = "recipe",
    name = "bob-tungsten-plate",
    enabled = false,
    category = "mixing-furnace",
    subgroup = "bob-alloy",
    energy_required = 17.5,
    ingredients =
    {
      {type="item", name="nickel-plate", amount=1},
      {type="item", name="powdered-tungsten", amount=4},
    },
    result = "tungsten-plate",
    result_count = 5,
  },


  {
    type = "recipe",
    name = "bob-zinc-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="zinc-ore", amount=1},
      {type="fluid", name="sulfuric-acid", amount=1}
    },
    result = "zinc-plate",
  },

  {
    type = "recipe",
    name = "bob-nickel-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    enabled = "false",
    energy_required = 3.5,
    ingredients =
    {
      {type="item", name="nickel-ore", amount=1},
--      {type="fluid", name="water", amount=1},
--      {type="fluid", name="oxygen", amount=1.5}
      {type="fluid", name="oxygen", amount=1}
    },
    results=
    {
--      {type="fluid", name="sulfuric-acid", amount=1},
      {type="fluid", name="sulfur-dioxide", amount=1},
      {type="item", name="nickel-plate", amount=1}
    },
    main_product= "nickel-plate",
    icon = "__bobplates__/graphics/icons/plate/nickel-plate.png",
    order = "c-a-f[nickel-plate]",
  },

  {
    type = "recipe",
    name = "bob-aluminium-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {"alumina", 2},
      {"carbon", 1},
    },
    result = "aluminium-plate",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "bob-titanium-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="rutile-ore", amount=2}
    },
    result = "titanium-plate",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "bob-silicon-plate",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="quartz", amount=2}
    },
    result = "silicon",
    result_count = 2,
  },

  {
    type = "recipe",
    name = "lithium",
    category = "electrolysis",
    subgroup = "bob-material-electrolysis",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {"lithium-chloride", 1},
    },
    result = "lithium",
  },
}
)


