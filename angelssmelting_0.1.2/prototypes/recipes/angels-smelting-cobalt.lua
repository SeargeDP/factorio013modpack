data:extend(
{
--COBALT
	--INTERMEDIATE
    {
    type = "recipe",
    name = "cobalt-ore-processing",
    category = "ore-processing",
	subgroup = "angels-cobalt",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"cobalt-ore", 4}},
    results=
    {
      {type="item", name="processed-cobalt", amount=1},
    },
    main_product= "processed-cobalt",
    icon = "__angelssmelting__/graphics/icons/processed-cobalt.png",
    order = "a [processed-cobalt]",
    },
    {
    type = "recipe",
    name = "cobalt-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-cobalt",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-cobalt", 2}},
    results=
    {
      {type="item", name="pellet-cobalt", amount=12},
    },
    main_product= "pellet-cobalt",
    icon = "__angelssmelting__/graphics/icons/pellet-cobalt.png",
    order = "b [pellet-cobalt]",
    },
	--INGOT
    {
    type = "recipe",
    name = "cobalt-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="cobalt-ore", amount=4},
      {type="item", name="solid-carbon", amount=1},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=5},
    },
    main_product= "ingot-cobalt",
    icon = "__angelssmelting__/graphics/icons/ingot-cobalt.png",
    order = "c [ingot-cobalt]",
    },
    {
    type = "recipe",
    name = "processed-cobalt-smelting",
    category = "blast-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-cobalt", amount=1},
      {type="item", name="solid-carbon", amount=1},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=6},
    },
    main_product= "ingot-cobalt",
    icon = "__angelssmelting__/graphics/icons/ingot-cobalt.png",
    order = "d [ingot-cobalt]",
    },
    {
    type = "recipe",
    name = "pellet-cobalt-smelting",
    category = "blast-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-cobalt", amount=4},
      {type="item", name="solid-carbon", amount=1},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=5},
    },
    main_product= "ingot-cobalt",
    icon = "__angelssmelting__/graphics/icons/ingot-cobalt.png",
    order = "e [ingot-cobalt]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-cobalt-smelting",
    category = "induction-smelting",
	subgroup = "angels-cobalt",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-cobalt", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt", amount=3},
    },
    main_product= "liquid-molten-cobalt",
    icon = "__angelssmelting__/graphics/icons/molten-cobalt.png",
    order = "g [molten-cobalt-smelting]",
    },
}
)