data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "lead-ore-processing",
    category = "ore-processing",
	subgroup = "angels-lead",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"lead-ore", 4}},
    results=
    {
      {type="item", name="processed-lead", amount=1},
    },
    main_product= "processed-lead",
    icon = "__angelssmelting__/graphics/icons/processed-lead.png",
    order = "a [processed-lead]",
    },
    {
    type = "recipe",
    name = "lead-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-lead",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-lead", 2}},
    results=
    {
      {type="item", name="pellet-lead", amount=12},
    },
    main_product= "pellet-lead",
    icon = "__angelssmelting__/graphics/icons/pellet-lead.png",
    order = "b [pellet-lead]",
    },
	--INGOT
    {
    type = "recipe",
    name = "lead-ore-smelting",
    category = "blast-smelting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="lead-ore", amount=5},
      {type="fluid", name="gas-oxygen", amount=5},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=5},
	  {type="fluid", name="gas-sulfur-dioxide", amount=2.5},
    },
    main_product= "solid-lead-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png",
    order = "c [solid-lead-oxide]",
    },
    {
    type = "recipe",
    name = "processed-lead-smelting",
    category = "blast-smelting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-lead", amount=1},
      {type="fluid", name="gas-oxygen", amount=5},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=5},
	  {type="fluid", name="gas-sulfur-dioxide", amount=2.5},
    },
    main_product= "solid-lead-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png",
    order = "d [solid-lead-oxide]",
    },
    {
    type = "recipe",
    name = "pellet-lead-smelting",
    category = "blast-smelting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-lead", amount=5},
      {type="fluid", name="gas-oxygen", amount=5},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=5},
      {type="fluid", name="gas-sulfur-dioxide", amount=2.5},
    },
    main_product= "solid-lead-oxide",
    icon = "__angelssmelting__/graphics/icons/solid-lead-oxide.png",
    order = "e [solid-lead-oxide]",
    },
    {
    type = "recipe",
    name = "solid-lead-oxide-smelting",
    category = "blast-smelting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="solid-lead-oxide", amount=5},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-lead", amount=5},
    },
    main_product= "ingot-lead",
    icon = "__angelssmelting__/graphics/icons/ingot-lead.png",
    order = "f [solid-lead-oxide-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-lead-smelting",
    category = "induction-smelting",
	subgroup = "angels-lead",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-lead", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-lead", amount=3},
    },
    main_product= "liquid-molten-lead",
    icon = "__angelssmelting__/graphics/icons/molten-lead.png",
    order = "g [molten-lead-smelting]",
    },
}
)