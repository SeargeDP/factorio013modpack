data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "manganese-ore-processing",
    category = "ore-processing",
	subgroup = "angels-manganese",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"manganese-ore", 4}},
    results=
    {
      {type="item", name="processed-manganese", amount=1},
    },
    main_product= "processed-manganese",
    icon = "__angelssmelting__/graphics/icons/processed-manganese.png",
    order = "a [processed-manganese]",
    },
    {
    type = "recipe",
    name = "manganese-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-manganese",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-manganese", 2}},
    results=
    {
      {type="item", name="pellet-manganese", amount=12},
    },
    main_product= "pellet-manganese",
    icon = "__angelssmelting__/graphics/icons/pellet-manganese.png",
    order = "b [pellet-manganese]",
    },
	--INGOT
    {
    type = "recipe",
    name = "manganese-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="manganese-ore", amount=5},
      {type="fluid", name="liquid-sulfuric-acid", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=5},
    },
    main_product= "solid-manganese-sulfate",
    icon = "__angelssmelting__/graphics/icons/solid-manganese-sulfate.png",
    order = "c [manganese-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-manganese-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-manganese", amount=1},
      {type="fluid", name="liquid-sulfuric-acid", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=5},
    },
    main_product= "solid-manganese-sulfate",
    icon = "__angelssmelting__/graphics/icons/solid-manganese-sulfate.png",
    order = "d [processed-manganese-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-manganese-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-manganese", amount=5},
      {type="fluid", name="liquid-sulfuric-acid", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=5},
    },
    main_product= "solid-manganese-sulfate",
    icon = "__angelssmelting__/graphics/icons/solid-manganese-sulfate.png",
    order = "e [pellet-manganese-smelting]",
    },
    {
    type = "recipe",
    name = "solid-manganese-sulfate-smelting",
    category = "blast-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-manganese-sulfate", amount=5},
	},
    results=
    {
      {type="item", name="ingot-manganese", amount=5},
    },
    main_product= "ingot-manganese",
    icon = "__angelssmelting__/graphics/icons/ingot-manganese.png",
    order = "f [solid-manganese-sulfate-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-manganese-smelting",
    category = "induction-smelting",
	subgroup = "angels-manganese",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-manganese", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-manganese", amount=3},
    },
    main_product= "liquid-molten-manganese",
    icon = "__angelssmelting__/graphics/icons/molten-manganese.png",
    order = "g [molten-manganese-smelting]",
    },
}
)