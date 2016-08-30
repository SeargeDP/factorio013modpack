data:extend(
{ 
  {
    type = "recipe",
    name = "alien-blue-alloy",
    category = "mixing-furnace",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "alien-artifact-blue", amount = 1},
      {type = "item", name = "tungsten-plate", amount = 10},
    },
    result = "alien-blue-alloy",
    result_count = 10,
  },

  {
    type = "recipe",
    name = "alien-orange-alloy",
    category = "mixing-furnace",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type = "item", name = "alien-artifact-orange", amount = 1},
      {type = "item", name = "steel-plate", amount = 10},
    },
    result = "alien-orange-alloy",
    result_count = 10,
  },

  {
    type = "recipe",
    name = "alien-acid",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "alien-artifact-purple", amount = 1},
      {type = "fluid", name = "sulfuric-acid", amount = 10},
    },
    results =
    {
      {type = "fluid", name = "alien-acid", amount = 10},
    },
    main_product= "alien-acid",
  },

  {
    type = "recipe",
    name = "alien-explosive",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "alien-artifact-yellow", amount = 1},
      {type = "item", name = "coal", amount = 8},
      {type = "item", name = "sulfur", amount = 8},
    },
    results =
    {
      {type = "fluid", name = "alien-explosive", amount = 10},
    },
    main_product= "alien-explosive",
  },

  {
    type = "recipe",
    name = "alien-poison",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "alien-artifact-green", amount = 1},
      {type = "item", name = "coal", amount = 8},
      {type = "fluid", name = "nitric-acid", amount = 8},
    },
    results =
    {
      {type = "fluid", name = "alien-poison", amount = 10},
    },
    main_product= "alien-poison",
  },

  {
    type = "recipe",
    name = "alien-fire",
    category = "chemistry",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type = "item", name = "alien-artifact-red", amount = 1},
      {type = "fluid", name = "heavy-oil", amount = 8},
      {type = "fluid", name = "light-oil", amount = 8},
    },
    results =
    {
      {type = "fluid", name = "alien-fire", amount = 10},
    },
    main_product= "alien-fire",
  },
}
)


data:extend(
{ 
  {
    type = "recipe",
    name = "fill-alien-acid-barrel",
    icon = "__bobplates__/graphics/icons/fill-alien-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="alien-acid", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="alien-acid-barrel", amount=1}
    },
    main_product= "alien-acid-barrel",
    order = "b[fill-alien-acid-barrel]",
  },

  {
    type = "recipe",
    name = "empty-alien-acid-barrel",
    icon = "__bobplates__/graphics/icons/empty-alien-acid-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="alien-acid-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="alien-acid", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "alien-acid",
    order = "c[empty-alien-acid-barrel]",
  },

  {
    type = "recipe",
    name = "fill-alien-explosive-barrel",
    icon = "__bobplates__/graphics/icons/fill-alien-explosive-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="alien-explosive", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="alien-explosive-barrel", amount=1}
    },
    main_product= "alien-explosive-barrel",
    order = "b[fill-alien-explosive-barrel]",
  },

  {
    type = "recipe",
    name = "empty-alien-explosive-barrel",
    icon = "__bobplates__/graphics/icons/empty-alien-explosive-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="alien-explosive-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="alien-explosive", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "alien-explosive",
    order = "c[empty-alien-explosive-barrel]",
  },

  {
    type = "recipe",
    name = "fill-alien-poison-barrel",
    icon = "__bobplates__/graphics/icons/fill-alien-poison-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="alien-poison", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="alien-poison-barrel", amount=1}
    },
    main_product= "alien-poison-barrel",
    order = "b[fill-alien-poison-barrel]",
  },

  {
    type = "recipe",
    name = "empty-alien-poison-barrel",
    icon = "__bobplates__/graphics/icons/empty-alien-poison-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="alien-poison-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="alien-poison", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "alien-poison",
    order = "c[empty-alien-poison-barrel]",
  },

  {
    type = "recipe",
    name = "fill-alien-fire-barrel",
    icon = "__bobplates__/graphics/icons/fill-alien-fire-barrel.png",
    category = "water-pump",
    subgroup = "bob-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="alien-fire", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="alien-fire-barrel", amount=1}
    },
    main_product= "alien-fire-barrel",
    order = "b[fill-alien-fire-barrel]",
  },

  {
    type = "recipe",
    name = "empty-alien-fire-barrel",
    icon = "__bobplates__/graphics/icons/empty-alien-fire-barrel.png",
    category = "water-pump",
    subgroup = "bob-empty-barrel",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="alien-fire-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="alien-fire", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "alien-fire",
    order = "c[empty-alien-fire-barrel]",
  },
}
)

