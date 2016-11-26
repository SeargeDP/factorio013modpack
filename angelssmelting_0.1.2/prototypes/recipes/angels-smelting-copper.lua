data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore", 4}},
    results=
    {
      {type="item", name="processed-copper", amount=1},
    },
    main_product= "processed-copper",
    icon = "__angelssmelting__/graphics/icons/processed-copper.png",
    order = "a [processed-copper]",
    },
    {
    type = "recipe",
    name = "copper-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-copper",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-copper", 2}},
    results=
    {
      {type="item", name="pellet-copper", amount=12},
    },
    main_product= "pellet-copper",
    icon = "__angelssmelting__/graphics/icons/pellet-copper.png",
    order = "b [pellet-copper]",
    },
	--INGOT
    {
    type = "recipe",
    name = "copper-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="copper-ore", amount=5},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=5},
    },
    main_product= "ingot-copper",
    icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
    order = "c [copper-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-copper", amount=1},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=5},
    },
    main_product= "ingot-copper",
    icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
    order = "d [processed-copper-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-copper-smelting",
    category = "blast-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-copper", amount=5},
	},
    results=
    {
      {type="item", name="ingot-copper", amount=5},
    },
    main_product= "ingot-copper",
    icon = "__angelssmelting__/graphics/icons/ingot-copper.png",
    order = "e [pellet-copper-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-copper-smelting",
    category = "induction-smelting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-copper", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-copper", amount=3},
    },
    main_product= "liquid-molten-copper",
    icon = "__angelssmelting__/graphics/icons/molten-copper.png",
    order = "f [molten-copper-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-copper-casting",
    category = "casting",
	subgroup = "angels-copper",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-copper", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-copper", amount=3},
    },
    main_product= "angels-wire-coil-copper",
    icon = "__angelssmelting__/graphics/icons/wire-coil-copper.png",
    order = "g [angels-wire-coil-copper]",
    },
}
)