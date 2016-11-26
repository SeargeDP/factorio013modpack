data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "tungsten-ore-processing",
    category = "ore-processing",
	subgroup = "angels-tungsten",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tungsten-ore", 4}},
    results=
    {
      {type="item", name="processed-tungsten", amount=1},
    },
    main_product= "processed-tungsten",
    icon = "__angelssmelting__/graphics/icons/processed-tungsten.png",
    order = "a [processed-tungsten]",
    },
    {
    type = "recipe",
    name = "tungsten-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-tungsten",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-tungsten", 2}},
    results=
    {
      {type="item", name="pellet-tungsten", amount=12},
    },
    main_product= "pellet-tungsten",
    icon = "__angelssmelting__/graphics/icons/pellet-tungsten.png",
    order = "b [pellet-tungsten]",
    },
	--INGOT
    {
    type = "recipe",
    name = "tungsten-ore-smelting",
    category = "liquifying",
	subgroup = "angels-tungsten",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="tungsten-ore", amount=5},
      {type="fluid", name="gas-ammonia", amount=5},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=5},
    },
    main_product= "solid-ammonium-paratungstate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-paratungstate.png",
    order = "c [tungsten-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-tungsten-smelting",
    category = "liquifying",
	subgroup = "angels-tungsten",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-tungsten", amount=1},
      {type="fluid", name="gas-ammonia", amount=5},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=5},
    },
    main_product= "solid-ammonium-paratungstate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-paratungstate.png",
    order = "d [processed-tungsten-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-tungsten-smelting",
    category = "liquifying",
	subgroup = "angels-tungsten",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-tungsten", amount=5},
      {type="fluid", name="gas-ammonia", amount=5},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=5},
    },
    main_product= "solid-ammonium-paratungstate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-paratungstate.png",
    order = "e [pellet-tungsten-smelting]",
    },
    {
    type = "recipe",
    name = "solid-ammonium-paratungstate-smelting",
    category = "blast-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-ammonium-paratungstate", amount=5},
	},
    results=
    {
      {type="item", name="solid-tungsten-oxide", amount=5},
    },
    main_product= "solid-tungsten-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-tungsten-oxide.png",
    order = "f [solid-ammonium-paratungstate-smelting]",
    },
    {
    type = "recipe",
    name = "solid-tungsten-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-tungsten-oxide", amount=5},
      {type="fluid", name="gas-hydrogen", amount=5},
	},
    results=
    {
      {type="item", name="ingot-tungsten", amount=5},
    },
    main_product= "ingot-tungsten",
    icon = "__angelssmelting__/graphics/icons/ingot-tungsten.png",
    order = "g [solid-tungsten-oxide-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-tungsten-smelting",
    category = "induction-smelting",
	subgroup = "angels-tungsten",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tungsten", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-tungsten", amount=3},
    },
    main_product= "liquid-molten-tungsten",
    icon = "__angelssmelting__/graphics/icons/molten-tungsten.png",
    order = "h [molten-tungsten-smelting]",
    },
}
)