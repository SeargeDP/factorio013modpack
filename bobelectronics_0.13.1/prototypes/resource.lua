data:extend(
{
  {
    type = "item",
    name = "resin",
    icon = "__bobelectronics__/graphics/icons/resin.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource",
    order = "f[resin]",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "bob-resin-wood",
    category = "crafting-machine",
    subgroup = "bob-resource",
    energy_required = 1,
    ingredients =
    {
      { "raw-wood", 1},
    },
    result = "resin",
  },

  {
    type = "recipe",
    name = "bob-resin-oil",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=1},
    },
    result = "resin",
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "rubber",
    icon = "__bobelectronics__/graphics/icons/rubber.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-resource",
    order = "f[rubber]",
    stack_size = 100
  },

  {
    type = "recipe",
    name = "bob-rubber",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 3.5,
    ingredients =
    {
      { "resin", 1},
    },
    result = "rubber",
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "synthetic-wood",
    icon = "__bobelectronics__/graphics/icons/synthetic-wood.png",
    flags = {"goes-to-main-inventory"},
    fuel_value = "2MJ",
    subgroup = "bob-resource",
    order = "a[synthetic-wood]",
    stack_size = 200
  },

  {
    type = "recipe",
    name = "synthetic-wood",
    category = "chemistry",
    subgroup = "bob-resource-chemical",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="heavy-oil", amount=1}
    },
    result = "synthetic-wood",
    result_count = 2,
  },
}
)


if not data.raw.item["silicon-wafer"] then
  if data.raw.item["silicon"] or data.raw.item["silicon-plate"] then
    data:extend(
    {
      {
        type = "item",
        name = "silicon-wafer",
        icon = "__bobelectronics__/graphics/icons/silicon-wafer.png",
        flags = {"goes-to-main-inventory"},
        subgroup = "bob-resource",
        order = "f[silicon-wafer]",
        stack_size = 500
      },

      {
        type = "recipe",
        name = "silicon-wafer",
        category = "crafting-machine",
        enabled = false,
        energy_required = 5,
        ingredients =
        {
        },
        result = "silicon-wafer",
        result_count = 8
      },
    }
    )

    if data.raw.item["silicon"] then
      table.insert(data.raw.recipe["silicon-wafer"].ingredients ,{"silicon", 1})
    else
      table.insert(data.raw.recipe["silicon-wafer"].ingredients ,{"silicon-plate", 1})
    end
  end
end


if data.raw.item["tin-plate"] then
  data:extend(
  {
    {
      type = "item",
      name = "solder-alloy",
      icon = "__bobelectronics__/graphics/icons/solder-plate.png",
      flags = {"goes-to-main-inventory"},
      subgroup = "bob-alloy",
      order = "c-b-h[solder]",
      stack_size = 200
    },

    {
      type = "recipe",
      name = "solder-alloy",
      energy_required = 7,
      enabled = false,
      category = "crafting-machine",
      ingredients =
      {
        {"tin-plate", 9},
        {"copper-plate", 1},
      },
      result = "solder-alloy",
      result_count = 11,
    },
  }
  )
  if data.raw.item["silver-plate"] then
    table.insert(data.raw.recipe["solder-alloy"].ingredients,{"silver-plate", 1})
  end

  if data.raw.item["lead-plate"] then
    data:extend(
    {
      {
        type = "recipe",
        name = "solder-alloy-lead",
        energy_required = 7,
        enabled = false,
        category = "crafting-machine",
        ingredients =
        {
          {"tin-plate", 4},
          {"lead-plate", 7},
        },
        result = "solder-alloy",
        result_count = 11,
      },
    }
    )
  end
end

