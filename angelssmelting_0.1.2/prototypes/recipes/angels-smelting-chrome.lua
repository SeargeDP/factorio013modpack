data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "chrome-ore-processing",
    category = "ore-processing",
	subgroup = "angels-chrome",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"chrome-ore", 4}},
    results=
    {
      {type="item", name="processed-chrome", amount=1},
    },
    main_product= "processed-chrome",
    icon = "__angelssmelting__/graphics/icons/processed-chrome.png",
    order = "a [processed-chrome]",
    },
    {
    type = "recipe",
    name = "chrome-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-chrome",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-chrome", 2}},
    results=
    {
      {type="item", name="pellet-chrome", amount=12},
    },
    main_product= "pellet-chrome",
    icon = "__angelssmelting__/graphics/icons/pellet-chrome.png",
    order = "b [pellet-chrome]",
    },
	--INGOT
    {
    type = "recipe",
    name = "chrome-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-chrome",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="chrome-ore", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=5},
    },
    main_product= "solid-chrome-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-chrome-oxide.png",
    order = "c [solid-chrome-oxide]",
    },
    {
    type = "recipe",
    name = "processed-chrome-smelting",
    category = "blast-smelting",
	subgroup = "angels-chrome",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-chrome", amount=1},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=6},
    },
    main_product= "solid-chrome-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-chrome-oxide.png",
    order = "d [solid-chrome-oxide]",
    },
    {
    type = "recipe",
    name = "pellet-chrome-smelting",
    category = "blast-smelting",
	subgroup = "angels-chrome",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-chrome", amount=4},
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=5},
    },
    main_product= "solid-chrome-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-chrome-oxide.png",
    order = "e [solid-chrome-oxide]",
    },
    {
    type = "recipe",
    name = "solid-chrome-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-chrome",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-chrome-oxide", amount=5},
      {type="fluid", name="liquid-sulfuric-acid", amount=2.5},
	},
    results=
    {
      {type="item", name="ingot-chrome", amount=5},
    },
    main_product= "ingot-chrome",
    icon = "__angelssmelting__/graphics/icons/ingot-chrome.png",
    order = "f [solid-chrome-oxide-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-chrome-smelting",
    category = "induction-smelting",
	subgroup = "angels-chrome",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-chrome", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-chrome", amount=3},
    },
    main_product= "liquid-molten-chrome",
    icon = "__angelssmelting__/graphics/icons/molten-chrome.png",
    order = "g [molten-chrome-smelting]",
    },
}
)