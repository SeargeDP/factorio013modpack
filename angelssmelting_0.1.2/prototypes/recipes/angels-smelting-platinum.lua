data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "platinum-ore-processing",
    category = "ore-processing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"platinum-ore", 4}},
    results=
    {
      {type="item", name="processed-platinum", amount=1},
    },
    main_product= "processed-platinum",
    icon = "__angelssmelting__/graphics/icons/processed-platinum.png",
    order = "a [processed-platinum]",
    },
    {
    type = "recipe",
    name = "platinum-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-platinum",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-platinum", 2}},
    results=
    {
      {type="item", name="pellet-platinum", amount=12},
    },
    main_product= "pellet-platinum",
    icon = "__angelssmelting__/graphics/icons/pellet-platinum.png",
    order = "b [pellet-platinum]",
    },
	--INGOT
    {
    type = "recipe",
    name = "platinum-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="platinum-ore", amount=5},
      {type="fluid", name="gas-ammonium-chloride", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=5},
    },
    main_product= "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    order = "c [platinum-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-platinum-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-platinum", amount=1},
      {type="fluid", name="gas-ammonium-chloride", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=5},
    },
    main_product= "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    order = "d [processed-platinum-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-platinum-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-platinum", amount=5},
	  {type="fluid", name="gas-ammonium-chloride", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=5},
    },
    main_product= "solid-ammonium-chloroplatinate",
    icon = "__angelssmelting__/graphics/icons/solid-ammonium-chloroplatinate.png",
    order = "e [pellet-platinum-smelting]",
    },
    {
    type = "recipe",
    name = "solid-platinum-chloroplatinate-smelting",
    category = "blast-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-ammonium-chloroplatinate", amount=5},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=5},
    },
    main_product= "ingot-platinum",
    icon = "__angelssmelting__/graphics/icons/ingot-platinum.png",
    order = "f [solid-platinum-chloroplatinate-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-platinum-smelting",
    category = "induction-smelting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-platinum", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-platinum", amount=3},
    },
    main_product= "liquid-molten-platinum",
    icon = "__angelssmelting__/graphics/icons/molten-platinum.png",
    order = "g [molten-platinum-smelting]",
    },
	--CASTING
    {
    type = "recipe",
    name = "angels-wire-coil-platinum-casting",
    category = "casting",
	subgroup = "angels-platinum",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-platinum", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-platinum", amount=3},
    },
    main_product= "angels-wire-coil-platinum",
    icon = "__angelssmelting__/graphics/icons/wire-coil-platinum.png",
    order = "h [angels-wire-coil-platinum]",
    },
}
)