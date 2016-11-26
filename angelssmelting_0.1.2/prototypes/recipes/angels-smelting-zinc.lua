data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "zinc-ore-processing",
    category = "ore-processing",
	subgroup = "angels-zinc",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"zinc-ore", 4}},
    results=
    {
      {type="item", name="processed-zinc", amount=1},
    },
    main_product= "processed-zinc",
    icon = "__angelssmelting__/graphics/icons/processed-zinc.png",
    order = "a [processed-zinc]",
    },
    {
    type = "recipe",
    name = "zinc-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-zinc",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-zinc", 2}},
    results=
    {
      {type="item", name="pellet-zinc", amount=12},
    },
    main_product= "pellet-zinc",
    icon = "__angelssmelting__/graphics/icons/pellet-zinc.png",
    order = "b [pellet-zinc]",
    },
	--INGOT
    {
    type = "recipe",
    name = "zinc-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-zinc",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="zinc-ore", amount=5},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=5},
    },
    main_product= "ingot-zinc",
    icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
    order = "c [ingot-zinc]",
    },
    {
    type = "recipe",
    name = "processed-zinc-smelting",
    category = "blast-smelting",
	subgroup = "angels-zinc",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-zinc", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=5},
    },
    main_product= "ingot-zinc",
    icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
    order = "d [ingot-zinc]",
    },
    {
    type = "recipe",
    name = "pellet-zinc-smelting",
    category = "blast-smelting",
	subgroup = "angels-zinc",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-zinc", amount=5},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=5},
    },
    main_product= "ingot-zinc",
    icon = "__angelssmelting__/graphics/icons/ingot-zinc.png",
    order = "e [ingot-zinc]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-zinc-smelting",
    category = "induction-smelting",
	subgroup = "angels-zinc",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-zinc", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-zinc", amount=3},
    },
    main_product= "liquid-molten-zinc",
    icon = "__angelssmelting__/graphics/icons/molten-zinc.png",
    order = "g [molten-zinc-smelting]",
    },
}
)