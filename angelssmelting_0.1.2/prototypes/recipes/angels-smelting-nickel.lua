data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "nickel-ore-processing",
    category = "ore-processing",
	subgroup = "angels-nickel",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"nickel-ore", 4}},
    results=
    {
      {type="item", name="processed-nickel", amount=1},
    },
    main_product= "processed-nickel",
    icon = "__angelssmelting__/graphics/icons/processed-nickel.png",
    order = "a [processed-nickel]",
    },
    {
    type = "recipe",
    name = "nickel-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-nickel",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-nickel", 2}},
    results=
    {
      {type="item", name="pellet-nickel", amount=12},
    },
    main_product= "pellet-nickel",
    icon = "__angelssmelting__/graphics/icons/pellet-nickel.png",
    order = "b [pellet-nickel]",
    },
	--INGOT
    {
    type = "recipe",
    name = "nickel-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="nickel-ore", amount=5},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=5},
    },
    main_product= "ingot-nickel",
    icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
    order = "c [ingot-nickel]",
    },
    {
    type = "recipe",
    name = "processed-nickel-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-nickel", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=5},
    },
    main_product= "ingot-nickel",
    icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
    order = "d [ingot-nickel]",
    },
    {
    type = "recipe",
    name = "pellet-nickel-smelting",
    category = "blast-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-nickel", amount=5},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=5},
    },
    main_product= "ingot-nickel",
    icon = "__angelssmelting__/graphics/icons/ingot-nickel.png",
    order = "e [ingot-nickel]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-nickel-smelting",
    category = "induction-smelting",
	subgroup = "angels-nickel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-nickel", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-nickel", amount=3},
    },
    main_product= "liquid-molten-nickel",
    icon = "__angelssmelting__/graphics/icons/molten-nickel.png",
    order = "g [molten-nickel-smelting]",
    },
}
)