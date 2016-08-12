data:extend(
{
  {
    type = "recipe",
    name = "hydrogen-canister",
    icon = "__bobplates__/graphics/icons/fill-hydrogen-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="hydrogen", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="hydrogen-canister", amount=1},
    },
    main_product= "hydrogen-canister",
    order = "b[fill-hydrogen-canister]",
  },

  {
    type = "recipe",
    name = "empty-hydrogen-canister",
    icon = "__bobplates__/graphics/icons/empty-hydrogen-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"hydrogen-canister", 1},
    },
    results =
    {
      {type="fluid", name="hydrogen", amount=5},
      {"gas-canister", 1},
    },
    main_product= "hydrogen",
    order = "c[empty-hydrogen-canister]",
  },

  {
    type = "recipe",
    name = "oxygen-canister",
    icon = "__bobplates__/graphics/icons/fill-oxygen-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="oxygen", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="oxygen-canister", amount=1},
    },
    main_product= "oxygen-canister",
    order = "b[fill-oxygen-canister]",
  },

  {
    type = "recipe",
    name = "empty-oxygen-canister",
    icon = "__bobplates__/graphics/icons/empty-oxygen-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"oxygen-canister", 1},
    },
    results =
    {
      {type="fluid", name="oxygen", amount=5},
      {"gas-canister", 1},
    },
    main_product= "oxygen",
    order = "c[empty-oxygen-canister]",
  },

  {
    type = "recipe",
    name = "nitrogen-canister",
    icon = "__bobplates__/graphics/icons/fill-nitrogen-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="nitrogen", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="nitrogen-canister", amount=1},
    },
    main_product= "nitrogen-canister",
    order = "b[fill-nitrogen-canister]",
  },

  {
    type = "recipe",
    name = "empty-nitrogen-canister",
    icon = "__bobplates__/graphics/icons/empty-nitrogen-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"nitrogen-canister", 1},
    },
    results =
    {
      {type="fluid", name="nitrogen", amount=5},
      {"gas-canister", 1},
    },
    main_product= "nitrogen",
    order = "c[empty-nitrogen-canister]",
  },

  {
    type = "recipe",
    name = "chlorine-canister",
    icon = "__bobplates__/graphics/icons/fill-chlorine-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="chlorine", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="chlorine-canister", amount=1},
    },
    main_product= "chlorine-canister",
    order = "b[fill-chlorine-canister]",
  },

  {
    type = "recipe",
    name = "empty-chlorine-canister",
    icon = "__bobplates__/graphics/icons/empty-chlorine-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"chlorine-canister", 1},
    },
    results =
    {
      {type="fluid", name="chlorine", amount=5},
      {"gas-canister", 1},
    },
    main_product= "chlorine",
    order = "c[empty-chlorine-canister]",
  },

  {
    type = "recipe",
    name = "hydrogen-chloride-canister",
    icon = "__bobplates__/graphics/icons/fill-hydrogen-chloride-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="hydrogen-chloride", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="hydrogen-chloride-canister", amount=1},
    },
    main_product= "hydrogen-chloride-canister",
    order = "b[fill-hydrogen-chloride-canister]",
  },

  {
    type = "recipe",
    name = "empty-hydrogen-chloride-canister",
    icon = "__bobplates__/graphics/icons/empty-hydrogen-chloride-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"hydrogen-chloride-canister", 1},
    },
    results =
    {
      {type="fluid", name="hydrogen-chloride", amount=5},
      {"gas-canister", 1},
    },
    main_product= "hydrogen-chloride",
    order = "c[empty-hydrogen-chloride-canister]",
  },

  {
    type = "recipe",
    name = "petroleum-gas-canister",
    icon = "__bobplates__/graphics/icons/fill-petroleum-gas-canister.png",
    category = "air-pump",
    subgroup = "bob-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="petroleum-gas", amount=5},
      {"gas-canister", 1},
    },
    results =
    {
      {type="item", name="petroleum-gas-canister", amount=1},
    },
    main_product= "petroleum-gas-canister",
    order = "b[fill-petroleum-gas-canister]",
  },

  {
    type = "recipe",
    name = "empty-petroleum-gas-canister",
    icon = "__bobplates__/graphics/icons/empty-petroleum-gas-canister.png",
    category = "air-pump",
    subgroup = "bob-empty-gas-bottle",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {"petroleum-gas-canister", 1},
    },
    results =
    {
      {type="fluid", name="petroleum-gas", amount=5},
      {"gas-canister", 1},
    },
    main_product= "petroleum-gas",
    order = "c[empty-petroleum-gas-canister]",
  },


  {
    type = "recipe",
    name = "fill-heavy-oil-barrel",
    icon = "__bobplates__/graphics/icons/fill-heavy-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="heavy-oil-barrel", amount=1}
    },
    main_product= "heavy-oil-barrel",
    order = "b[fill-heavy-oil-barrel]",
  },

  {
    type = "recipe",
    name = "empty-heavy-oil-barrel",
    icon = "__bobplates__/graphics/icons/empty-heavy-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="heavy-oil-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "heavy-oil",
    order = "c[empty-heavy-oil-barrel]",
  },

  {
    type = "recipe",
    name = "fill-light-oil-barrel",
    icon = "__bobplates__/graphics/icons/fill-light-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="light-oil", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="light-oil-barrel", amount=1}
    },
    main_product= "light-oil-barrel",
    order = "b[fill-light-oil-barrel]",
  },

  {
    type = "recipe",
    name = "empty-light-oil-barrel",
    icon = "__bobplates__/graphics/icons/empty-light-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="light-oil-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="light-oil", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "light-oil",
    order = "c[empty-light-oil-barrel]",
  },

  {
    type = "recipe",
    name = "fill-lubricant-barrel",
    icon = "__bobplates__/graphics/icons/fill-lubricant-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="lubricant", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="lubricant-barrel", amount=1}
    },
    main_product= "lubricant-barrel",
    order = "b[fill-lubricant-barrel]",
  },

  {
    type = "recipe",
    name = "empty-lubricant-barrel",
    icon = "__bobplates__/graphics/icons/empty-lubricant-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="lubricant-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="lubricant", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "lubricant",
    order = "c[empty-lubricant-barrel]",
  },

  {
    type = "recipe",
    name = "fill-sulfuric-acid-barrel",
    icon = "__bobplates__/graphics/icons/fill-sulfuric-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="sulfuric-acid-barrel", amount=1}
    },
    main_product= "sulfuric-acid-barrel",
    order = "b[fill-sulfuric-acid-barrel]",
  },

  {
    type = "recipe",
    name = "empty-sulfuric-acid-barrel",
    icon = "__bobplates__/graphics/icons/empty-sulfuric-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="sulfuric-acid-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="sulfuric-acid", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "sulfuric-acid",
    order = "c[empty-sulfuric-acid-barrel]",
  },

  {
    type = "recipe",
    name = "bob-fill-crude-oil-barrel",
    icon = "__base__/graphics/icons/fluid/fill-crude-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="crude-oil", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="crude-oil-barrel", amount=1}
    },
    main_product= "crude-oil-barrel",
    order = "b[fill-crude-oil-barrel]",
  },

  {
    type = "recipe",
    name = "bob-empty-crude-oil-barrel",
    icon = "__base__/graphics/icons/fluid/empty-crude-oil-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="crude-oil-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="crude-oil", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "crude-oil",
    order = "c[empty-crude-oil-barrel]",
  },

  {
    type = "recipe",
    name = "fill-water-barrel",
    icon = "__bobplates__/graphics/icons/fill-water-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="water-barrel", amount=1}
    },
    main_product= "water-barrel",
    order = "b[fill-water-barrel]",
  },

  {
    type = "recipe",
    name = "empty-water-barrel",
    icon = "__bobplates__/graphics/icons/empty-water-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="water-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="water", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "water",
    order = "c[empty-water-barrel]",
  },

  {
    type = "recipe",
    name = "fill-lithia-water-barrel",
    icon = "__bobplates__/graphics/icons/fill-lithia-water-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="lithia-water", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="lithia-water-barrel", amount=1}
    },
    main_product= "lithia-water-barrel",
    order = "b[fill-lithia-water-barrel]",
  },

  {
    type = "recipe",
    name = "empty-lithia-water-barrel",
    icon = "__bobplates__/graphics/icons/empty-lithia-water-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="lithia-water-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="lithia-water", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "lithia-water",
    order = "c[empty-lithia-water-barrel]",
  },

  {
    type = "recipe",
    name = "fill-nitric-acid-barrel",
    icon = "__bobplates__/graphics/icons/fill-nitric-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="nitric-acid", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="nitric-acid-barrel", amount=1}
    },
    main_product= "nitric-acid-barrel",
    order = "b[fill-nitric-acid-barrel]",
  },

  {
    type = "recipe",
    name = "empty-nitric-acid-barrel",
    icon = "__bobplates__/graphics/icons/empty-nitric-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="nitric-acid-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="nitric-acid", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "nitric-acid",
    order = "c[empty-nitric-acid-barrel]",
  },


  {
    type = "recipe",
    name = "liquid-fuel-canister",
    icon = "__bobplates__/graphics/icons/fill-liquid-fuel-canister.png",
    category = "water-pump",
    subgroup = "bob-canister",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="liquid-fuel", amount=5},
      {type="item", name="empty-canister", amount=1},
    },
    results=
    {
      {type="item", name="liquid-fuel-canister", amount=1}
    },
    main_product= "liquid-fuel-canister",
    order = "b[fill-liquid-fuel-canister]",
  },

  {
    type = "recipe",
    name = "empty-liquid-fuel-canister",
    icon = "__bobplates__/graphics/icons/empty-liquid-fuel-canister.png",
    category = "water-pump",
    subgroup = "bob-empty-canister",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="liquid-fuel-canister", amount=1}
    },
    results=
    {
      {type="fluid", name="liquid-fuel", amount=5},
      {type="item", name="empty-canister", amount=1}
    },
    main_product= "liquid-fuel",
    order = "c[empty-liquid-fuel-canister]",
  },


  {
    type = "recipe",
    name = "ferric-chloride-canister",
    icon = "__bobplates__/graphics/icons/fill-ferric-chloride-canister.png",
    category = "water-pump",
    subgroup = "bob-canister",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="ferric-chloride-solution", amount=5},
      {type="item", name="empty-canister", amount=1},
    },
    results=
    {
      {type="item", name="ferric-chloride-canister", amount=1}
    },
    main_product= "ferric-chloride-canister",
    order = "b[fill-ferric-chloride-canister]",
  },

  {
    type = "recipe",
    name = "empty-ferric-chloride-canister",
    icon = "__bobplates__/graphics/icons/empty-ferric-chloride-canister.png",
    category = "water-pump",
    subgroup = "bob-empty-canister",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="ferric-chloride-canister", amount=1}
    },
    results=
    {
      {type="fluid", name="ferric-chloride-solution", amount=5},
      {type="item", name="empty-canister", amount=1}
    },
    main_product= "ferric-chloride-solution",
    order = "c[empty-ferric-chloride-canister]",
  },
}
)

