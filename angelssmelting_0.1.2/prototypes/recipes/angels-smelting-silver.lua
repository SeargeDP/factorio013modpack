data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "silver-ore-processing",
    category = "ore-processing",
	subgroup = "angels-silver",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"silver-ore", 4}},
    results=
    {
      {type="item", name="processed-silver", amount=1},
    },
    main_product= "processed-silver",
    icon = "__angelssmelting__/graphics/icons/processed-silver.png",
    order = "a [processed-silver]",
    },
    {
    type = "recipe",
    name = "silver-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-silver",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-silver", 2}},
    results=
    {
      {type="item", name="pellet-silver", amount=12},
    },
    main_product= "pellet-silver",
    icon = "__angelssmelting__/graphics/icons/pellet-silver.png",
    order = "b [pellet-silver]",
    },
	--INGOT
    {
    type = "recipe",
    name = "silver-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="silver-ore", amount=5},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=5},
    },
    main_product= "ingot-silver",
    icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
    order = "c [ingot-silver]",
    },
    {
    type = "recipe",
    name = "processed-silver-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-silver", amount=1},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=5},
    },
    main_product= "ingot-silver",
    icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
    order = "d [ingot-silver]",
    },
    {
    type = "recipe",
    name = "pellet-silver-smelting",
    category = "blast-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-silver", amount=5},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=5},
    },
    main_product= "ingot-silver",
    icon = "__angelssmelting__/graphics/icons/ingot-silver.png",
    order = "e [ingot-silver]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-silver-smelting",
    category = "induction-smelting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-silver", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silver", amount=3},
    },
    main_product= "liquid-molten-silver",
    icon = "__angelssmelting__/graphics/icons/molten-silver.png",
    order = "f [molten-silver-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-silver-casting",
    category = "casting",
	subgroup = "angels-silver",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silver", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-silver", amount=3},
    },
    main_product= "angels-wire-coil-silver",
    icon = "__angelssmelting__/graphics/icons/wire-coil-silver.png",
    order = "g [angels-wire-coil-silver]",
    },
}
)