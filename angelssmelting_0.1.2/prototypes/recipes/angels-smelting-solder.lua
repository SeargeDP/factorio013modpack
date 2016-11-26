data:extend(
{
--SOLDER
    {
    type = "recipe",
    name = "angels-solder-1-smelting",
    category = "induction-smelting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=4},
      {type="item", name="ingot-lead", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-1", amount=6},
    },
    main_product= "liquid-molten-solder-1",
    icon = "__angelssmelting__/graphics/icons/molten-solder-1.png",
    order = "a [angels-solder-1-smelting]",
    },
    {
    type = "recipe",
    name = "angels-solder-2-smelting",
    category = "induction-smelting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=2},
      {type="item", name="ingot-copper", amount=2},
      {type="item", name="ingot-silver", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-2", amount=6},
    },
    main_product= "liquid-molten-solder-2",
    icon = "__angelssmelting__/graphics/icons/molten-solder-2.png",
    order = "a [angels-solder-2-smelting]",
    },
    {
    type = "recipe",
    name = "angels-solder-3-smelting",
    category = "induction-smelting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-tin", amount=4},
      {type="item", name="ingot-zinc", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-3", amount=6},
    },
    main_product= "liquid-molten-solder-3",
    icon = "__angelssmelting__/graphics/icons/molten-solder-3.png",
    order = "a [angels-solder-3-smelting]",
    },
    {
    type = "recipe",
    name = "angels-solder-1-casting",
    category = "casting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-solder-1", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-1", amount=3},
    },
    main_product= "angels-solder-1",
    icon = "__angelssmelting__/graphics/icons/solder-1.png",
    order = "g [angels-solder-1-casting]",
    },
    {
    type = "recipe",
    name = "angels-solder-2-casting",
    category = "casting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-solder-2", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-2", amount=3},
    },
    main_product= "angels-solder-2",
    icon = "__angelssmelting__/graphics/icons/solder-2.png",
    order = "g [angels-solder-2-casting]",
    },
	{
    type = "recipe",
    name = "angels-solder-3-casting",
    category = "casting",
	subgroup = "angels-alloys",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-molten-solder-3", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-3", amount=3},
    },
    main_product= "angels-solder-3",
    icon = "__angelssmelting__/graphics/icons/solder-3.png",
    order = "g [angels-solder-3-casting]",
    },
}
)