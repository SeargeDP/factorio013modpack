data:extend(
{
    {
    type = "recipe",
    name = "angels-iron-plate",
    category = "casting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-iron", amount=2},
	},
    results=
    {
      {type="item", name="iron-plate", amount=2},
    },
    main_product= "iron-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-iron-plate]",
    },
    {
    type = "recipe",
    name = "angels-copper-plate",
    category = "casting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-copper", amount=2},
	},
    results=
    {
      {type="item", name="copper-plate", amount=2},
    },
    main_product= "copper-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-copper-plate]",
    },
    {
    type = "recipe",
    name = "molten-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=2},
    },
    main_product= "liquid-molten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-steel.png",
    order = "z [molten-steel-smelting]",
    },
    {
    type = "recipe",
    name = "angels-steel-plate",
    category = "casting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-steel", amount=2},
	},
    results=
    {
      {type="item", name="steel-plate", amount=2},
    },
    main_product= "steel-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-steel-plate]",
    },
  }
  )
if bobmods.plates then
data:extend(
{
    {
    type = "recipe",
    name = "angels-bob-aluminium-plate",
    category = "casting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-aluminium", amount=2},
	},
    results=
    {
      {type="item", name="aluminium-plate", amount=2},
    },
    main_product= "aluminium-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-aluminium-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-cobalt-plate",
    category = "casting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt", amount=2},
	},
    results=
    {
      {type="item", name="cobalt-plate", amount=2},
    },
    main_product= "cobalt-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-cobalt-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-gold-plate",
    category = "casting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-gold", amount=2},
	},
    results=
    {
      {type="item", name="gold-plate", amount=2},
    },
    main_product= "gold-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-gold-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-lead-plate",
    category = "casting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-lead", amount=2},
	},
    results=
    {
      {type="item", name="lead-plate", amount=2},
    },
    main_product= "lead-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-lead-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-nickel-plate",
    category = "casting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-nickel", amount=2},
	},
    results=
    {
      {type="item", name="nickel-plate", amount=2},
    },
    main_product= "nickel-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-nickel-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-silicon-plate",
    category = "casting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silicon", amount=2},
	},
    results=
    {
      {type="item", name="silicon", amount=2},
    },
    main_product= "silicon",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-silicon-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-silver-plate",
    category = "casting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silver", amount=2},
	},
    results=
    {
      {type="item", name="silver-plate", amount=2},
    },
    main_product= "silver-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-silver-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-tin-plate",
    category = "casting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-tin", amount=2},
	},
    results=
    {
      {type="item", name="tin-plate", amount=2},
    },
    main_product= "tin-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-tin-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-titanium-plate",
    category = "casting",
	subgroup = "angels-titanium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-titanium", amount=2},
	},
    results=
    {
      {type="item", name="titanium-plate", amount=2},
    },
    main_product= "titanium-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-titanium-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-tungsten-plate",
    category = "casting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-tungsten", amount=2},
	},
    results=
    {
      {type="item", name="tungsten-plate", amount=2},
    },
    main_product= "tungsten-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-tungsten-plate]",
    },
    {
    type = "recipe",
    name = "angels-bob-zinc-plate",
    category = "casting",
	subgroup = "angels-zinc",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-zinc", amount=2},
	},
    results=
    {
      {type="item", name="zinc-plate", amount=2},
    },
    main_product= "zinc-plate",
    --icon = "__angelssmelting__/graphics/icons/.png",
    order = "z [angels-bob-zinc-plate]",
    },
  }
  )
end