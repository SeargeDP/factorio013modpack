data:extend(
{
--GOLD
	--INTERMEDIATE
    {
    type = "recipe",
    name = "gold-ore-processing",
    category = "ore-processing",
	subgroup = "angels-gold",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"gold-ore", 4}},
    results=
    {
      {type="item", name="processed-gold", amount=1},
    },
    main_product= "processed-gold",
    icon = "__angelssmelting__/graphics/icons/processed-gold.png",
    order = "a [processed-gold]",
    },
    {
    type = "recipe",
    name = "gold-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-gold",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-gold", 2}},
    results=
    {
      {type="item", name="pellet-gold", amount=12},
    },
    main_product= "pellet-gold",
    icon = "__angelssmelting__/graphics/icons/pellet-gold.png",
    order = "b [pellet-gold]",
    },
	--INGOT
    {
    type = "recipe",
    name = "gold-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="gold-ore", amount=5},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="item", name="ingot-gold", amount=5},
    },
    main_product= "ingot-gold",
    icon = "__angelssmelting__/graphics/icons/ingot-gold.png",
    order = "c [ingot-gold]",
    },
    {
    type = "recipe",
    name = "processed-gold-smelting",
    category = "blast-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-gold", amount=1},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="item", name="ingot-gold", amount=5},
    },
    main_product= "ingot-gold",
    icon = "__angelssmelting__/graphics/icons/ingot-gold.png",
    order = "d [ingot-gold]",
    },
    {
    type = "recipe",
    name = "pellet-gold-smelting",
    category = "blast-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-gold", amount=5},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="item", name="ingot-gold", amount=5},
    },
    main_product= "ingot-gold",
    icon = "__angelssmelting__/graphics/icons/ingot-gold.png",
    order = "e [ingot-gold]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-gold-smelting",
    category = "induction-smelting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-gold", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-gold", amount=3},
    },
    main_product= "liquid-molten-gold",
    icon = "__angelssmelting__/graphics/icons/molten-gold.png",
    order = "f [molten-gold-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-gold-casting",
    category = "casting",
	subgroup = "angels-gold",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-gold", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-gold", amount=3},
    },
    main_product= "angels-wire-coil-gold",
    icon = "__angelssmelting__/graphics/icons/wire-coil-gold.png",
    order = "g [angels-wire-coil-gold]",
    },
}
)