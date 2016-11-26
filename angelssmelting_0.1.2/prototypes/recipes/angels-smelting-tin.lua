data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "tin-ore-processing",
    category = "ore-processing",
	subgroup = "angels-tin",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tin-ore", 4}},
    results=
    {
      {type="item", name="processed-tin", amount=1},
    },
    main_product= "processed-tin",
    icon = "__angelssmelting__/graphics/icons/processed-tin.png",
    order = "a [processed-tin]",
    },
    {
    type = "recipe",
    name = "tin-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-tin",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-tin", 2}},
    results=
    {
      {type="item", name="pellet-tin", amount=12},
    },
    main_product= "pellet-tin",
    icon = "__angelssmelting__/graphics/icons/pellet-tin.png",
    order = "b [pellet-tin]",
    },
	--INGOT
    {
    type = "recipe",
    name = "tin-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="tin-ore", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=5},
    },
    main_product= "ingot-tin",
    icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
    order = "c [ingot-tin]",
    },
    {
    type = "recipe",
    name = "processed-tin-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-tin", amount=1},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=6},
    },
    main_product= "ingot-tin",
    icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
    order = "d [ingot-tin]",
    },
    {
    type = "recipe",
    name = "pellet-tin-smelting",
    category = "blast-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-tin", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=5},
    },
    main_product= "ingot-tin",
    icon = "__angelssmelting__/graphics/icons/ingot-tin.png",
    order = "e [ingot-tin]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-tin-smelting",
    category = "induction-smelting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-tin", amount=3},
    },
    main_product= "liquid-molten-tin",
    icon = "__angelssmelting__/graphics/icons/molten-tin.png",
    order = "f [molten-tin-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-tin-casting",
    category = "casting",
	subgroup = "angels-tin",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-tin", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-tin", amount=3},
    },
    main_product= "angels-wire-coil-tin",
    icon = "__angelssmelting__/graphics/icons/wire-coil-tin.png",
    order = "g [angels-wire-coil-tin]",
    },
}
)