data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "silica-ore-processing",
    category = "ore-processing",
	subgroup = "angels-silicon",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"quartz", 4}},
    results=
    {
      {type="item", name="processed-silica", amount=1},
    },
    main_product= "processed-silica",
    icon = "__angelssmelting__/graphics/icons/processed-silica.png",
    order = "a [processed-silica]",
    },
    {
    type = "recipe",
    name = "silica-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-silicon",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-silica", 2}},
    results=
    {
      {type="item", name="pellet-silica", amount=12},
    },
    main_product= "pellet-silica",
    icon = "__angelssmelting__/graphics/icons/pellet-silica.png",
    order = "b [pellet-silica]",
    },
	--INGOT (carbon electrodes in arc furnace)
    {
    type = "recipe",
    name = "silicon-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="quartz", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=5},
    },
    main_product= "ingot-silicon",
    icon = "__angelssmelting__/graphics/icons/ingot-silicon.png",
    order = "c [ingot-silicon]",
    },
    {
    type = "recipe",
    name = "processed-silicon-smelting",
    category = "blast-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-silica", amount=1},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=6},
    },
    main_product= "ingot-silicon",
    icon = "__angelssmelting__/graphics/icons/ingot-silicon.png",
    order = "d [ingot-silicon]",
    },
    {
    type = "recipe",
    name = "pellet-silicon-smelting",
    category = "blast-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-silica", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=6},
    },
    main_product= "ingot-silicon",
    icon = "__angelssmelting__/graphics/icons/ingot-silicon.png",
    order = "e [ingot-silicon]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-silicon-smelting",
    category = "induction-smelting",
	subgroup = "angels-silicon",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-silicon", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silicon", amount=3},
    },
    main_product= "liquid-molten-silicon",
    icon = "__angelssmelting__/graphics/icons/molten-silicon.png",
    order = "g [molten-silicon-smelting]",
    },
}
)