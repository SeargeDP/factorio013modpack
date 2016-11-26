data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore", 4}},
    results=
    {
      {type="item", name="processed-iron", amount=1},
    },
    main_product= "processed-iron",
    icon = "__angelssmelting__/graphics/icons/processed-iron.png",
    order = "a [processed-iron]",
    },
    {
    type = "recipe",
    name = "iron-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-iron",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-iron", 2}},
    results=
    {
      {type="item", name="pellet-iron", amount=12},
    },
    main_product= "pellet-iron",
    icon = "__angelssmelting__/graphics/icons/pellet-iron.png",
    order = "b [pellet-iron]",
    },
	--INGOT
    {
    type = "recipe",
    name = "iron-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="iron-ore", amount=4},
      {type="item", name="solid-coke", amount=1},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=5},
    },
    main_product= "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
    order = "c [iron-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-iron", amount=1},
      {type="item", name="solid-coke", amount=1},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=6},
    },
    main_product= "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
    order = "d [processed-iron-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-iron", amount=4},
      {type="item", name="solid-coke", amount=1},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=5},
    },
    main_product= "ingot-iron",
    icon = "__angelssmelting__/graphics/icons/ingot-iron.png",
    order = "e [pellet-iron-smelting]",
    },
    {
    type = "recipe",
    name = "ingot-iron-smelting",
    category = "blast-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=6},
      {type="fluid", name="gas-oxygen", amount=6},
	},
    results=
    {
      {type="item", name="ingot-steel", amount=3},
    },
    main_product= "ingot-steel",
    icon = "__angelssmelting__/graphics/icons/ingot-steel.png",
    order = "f [ingot-iron-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-iron-smelting",
    category = "induction-smelting",
	subgroup = "angels-iron",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-iron", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=3},
    },
    main_product= "liquid-molten-iron",
    icon = "__angelssmelting__/graphics/icons/molten-iron.png",
    order = "g [molten-iron-smelting]",
    },
}
)