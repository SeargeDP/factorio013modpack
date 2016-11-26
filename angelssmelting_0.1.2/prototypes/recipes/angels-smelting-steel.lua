data:extend(
{
--STEEL
	--SMELTING
    {
    type = "recipe",
    name = "molten-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=3},
    },
    main_product= "liquid-molten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-steel.png",
    order = "g [molten-steel-smelting]",
    },
    {
    type = "recipe",
    name = "molten-silicon-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=4},
      {type="item", name="ingot-silicon", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silicon-steel", amount=6},
    },
    main_product= "liquid-molten-silicon-steel",
    icon = "__angelssmelting__/graphics/icons/molten-silicon-steel.png",
    order = "g [molten-silicon-steel-smelting]",
    },
    {
    type = "recipe",
    name = "angels-roll-silicon-steel-casting",
    category = "strand-casting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-silicon-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-steel", amount=3},
    },
    main_product= "angels-roll-steel",
    icon = "__angelssmelting__/graphics/icons/roll-steel.png",
    order = "g [angels-roll-silicon-steel-casting]",
    },
    {
    type = "recipe",
    name = "molten-manganese-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=4},
      {type="item", name="ingot-manganese", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-manganese-steel", amount=6},
    },
    main_product= "liquid-molten-manganese-steel",
    icon = "__angelssmelting__/graphics/icons/molten-manganese-steel.png",
    order = "g [molten-manganese-steel-smelting]",
    },
    {
    type = "recipe",
    name = "angels-roll-manganese-steel-casting",
    category = "strand-casting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-manganese-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-manganese", amount=3},
    },
    main_product= "angels-roll-manganese",
    icon = "__angelssmelting__/graphics/icons/roll-manganese.png",
    order = "g [angels-roll-manganese-steel-casting]",
    },
    {
    type = "recipe",
    name = "molten-cobalt-nickel-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
      {type="item", name="ingot-cobalt", amount=2},
      {type="item", name="ingot-nickel", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt-nickel-steel", amount=6},
    },
    main_product= "liquid-molten-cobalt-nickel-steel",
    icon = "__angelssmelting__/graphics/icons/molten-cobalt-nickel-steel.png",
    order = "g [molten-cobalt-nickel-steel-smelting]",
    },
    {
    type = "recipe",
    name = "angels-roll-cobalt-casting",
    category = "strand-casting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-nickel-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-cobalt", amount=3},
    },
    main_product= "angels-roll-cobalt",
    icon = "__angelssmelting__/graphics/icons/roll-cobalt.png",
    order = "g [angels-roll-cobalt-casting]",
    },
    {
    type = "recipe",
    name = "molten-chrome-tungsten-steel-smelting",
    category = "induction-smelting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
      {type="item", name="ingot-chrome", amount=2},
      {type="item", name="ingot-tungsten", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-chrome-tungsten-steel", amount=6},
    },
    main_product= "liquid-molten-chrome-tungsten-steel",
    icon = "__angelssmelting__/graphics/icons/molten-chrome-tungsten-steel.png",
    order = "g [molten-chrome-tungsten-steel-smelting]",
    },
    {
    type = "recipe",
    name = "angels-roll-chrome-casting",
    category = "strand-casting",
	subgroup = "angels-steel",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-chrome-tungsten-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-chrome", amount=3},
    },
    main_product= "angels-roll-chrome",
    icon = "__angelssmelting__/graphics/icons/roll-chrome.png",
    order = "g [angels-roll-chrome-casting]",
    },
}
)