data:extend(
{
--BAUXITE/ALUMINIUM
	--INTERMEDIATE
    {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"bauxite-ore", 4}},
    results=
    {
      {type="item", name="processed-aluminium", amount=1},
    },
    main_product= "processed-aluminium",
    icon = "__angelssmelting__/graphics/icons/processed-aluminium.png",
    order = "a [processed-aluminium]",
    },
    {
    type = "recipe",
    name = "aluminium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-aluminium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-aluminium", 2}},
    results=
    {
      {type="item", name="pellet-aluminium", amount=12},
    },
    main_product= "pellet-aluminium",
    icon = "__angelssmelting__/graphics/icons/pellet-aluminium.png",
    order = "b [pellet-aluminium]",
    },
	--INGOT
    {
    type = "recipe",
    name = "bauxite-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="bauxite-ore", amount=5},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=5},
    },
    main_product= "solid-aluminium-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
    order = "c [bauxite-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-aluminium-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-aluminium", amount=1},
      {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=5},
    },
    main_product= "solid-aluminium-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
    order = "d [processed-aluminium-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-aluminium-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-aluminium", amount=5},
	  {type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=5},
    },
    main_product= "solid-aluminium-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-aluminium-oxide.png",
    order = "e [pellet-aluminium-smelting]",
    },
    {
    type = "recipe",
    name = "solid-aluminium-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-aluminium-oxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-aluminium", amount=5},
    },
    main_product= "ingot-aluminium",
    icon = "__angelssmelting__/graphics/icons/ingot-aluminium.png",
    order = "f [solid-aluminium-oxide-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-aluminium-smelting",
    category = "induction-smelting",				--electrolysis
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-aluminium", amount=2},
      {type="item", name="ingot-manganese", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=3},
    },
    main_product= "liquid-molten-aluminium",
    icon = "__angelssmelting__/graphics/icons/molten-aluminium.png",
    order = "g [molten-aluminium-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "roll-aluminium-casting",
    category = "strand-casting",
	subgroup = "angels-aluminium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-aluminium", amount=2},
	},
    results=
    {
      {type="item", name="angels-roll-aluminium", amount=2},
    },
    main_product= "angels-roll-aluminium",
    icon = "__angelssmelting__/graphics/icons/roll-aluminium.png",
    order = "h [roll-aluminium-casting]",
    },
}
)