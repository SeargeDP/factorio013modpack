data:extend(
{
  {
    type = "recipe",
    name = "algae-green",
    category = "bio-processing",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 20,
    ingredients ={
	  {type="fluid", name="water-mineralized", amount=10},
	  {type="fluid", name="gas-carbon-dioxide", amount=10}
	},
    results=
    {
      {type="item", name="algae-green", amount=40},
    },
    main_product= "algae-green",
    icon = "__angelsbioprocessing__/graphics/icons/algae-green.png",
    order = "a [algae-farming]",
  },
  {
    type = "recipe",
    name = "cellulose-fiber-algae",
    category = "chemistry",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 3,
    ingredients ={
	{type="item", name="algae-green", amount=10},
	},
    results=
    {
      {type="item", name="cellulose-fiber", amount=5},
    },
    main_product= "cellulose-fiber",
    icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-algae.png",
    order = "b [cellulose-fiber-algae]",
  },
  {
    type = "recipe",
    name = "paste-from-sodium-hydroxide",
    category = "chemistry",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="cellulose-fiber", amount=5},
	{type="item", name="solid-sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="paste-cellulose", amount=10},
    },
    main_product= "paste-cellulose",
    icon = "__angelsbioprocessing__/graphics/icons/paste-cellulose.png",
    order = "e [paste-from-sodium-hydroxide]",
  },
  {
    type = "recipe",
    name = "paste-from-gas-chlor-methane",
    category = "chemistry",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="cellulose-fiber", amount=5},
	{type="fluid", name="gas-chlor-methane", amount=1},
	},
    results=
    {
      {type="item", name="paste-cellulose", amount=10},
    },
    main_product= "paste-cellulose",
    icon = "__angelsbioprocessing__/graphics/icons/paste-cellulose.png",
    order = "f [paste-from-gas-chlor-methane]",
  },
  {
    type = "recipe",
    name = "cellulose-fiber-raw-wood",
    category = "crafting",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="raw-wood", amount=1},
	},
    results=
    {
      {type="item", name="cellulose-fiber", amount=4},
    },
    main_product= "cellulose-fiber",
    icon = "__angelsbioprocessing__/graphics/icons/cellulose-fiber-raw-wood.png",
    order = "c [cellulose-fiber-raw-wood]",
  },
  {
    type = "recipe",
    name = "wood-from-cellulose",
    category = "crafting",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=4},
		{type="item", name="paste-cellulose", amount=2},
	},
    results=
    {
      {type="item", name="wood", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-cellulose.png",
    order = "g [wood-from-cellulose]",
  },
  {
    type = "recipe",
    name = "wood-from-cellulose-resin",
    category = "crafting",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=4},
		{type="item", name="resin", amount=1},
	},
    results=
    {
      {type="item", name="wood", amount=5},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-cellulose.png",
    order = "h [wood-from-cellulose-resin]",
  },
  {
    type = "recipe",
    name = "wood-pellets",
    category = "crafting",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=12},
	},
    results=
    {
      {type="item", name="wood-pellets", amount=2},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-pellets.png",
    order = "i [wood-pellets]",
  },
  {
    type = "recipe",
    name = "wood-bricks",
    category = "crafting",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="wood-pellets", amount=8},
	},
    results=
    {
      {type="item", name="wood-bricks", amount=4},
    },
    icon = "__angelsbioprocessing__/graphics/icons/wood-bricks.png",
    order = "j [wood-bricks]",
  },
  {
    type = "recipe",
    name = "gas-carbon-dioxide-from-wood",
    category = "liquifying",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="wood-pellets", amount=1},
	},
    results=
    {
      {type="fluid", name="gas-carbon-dioxide", amount=7},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-carbon-dioxide.png",
    order = "j [gas-carbon-dioxide-from-wood]",
  },
  {
    type = "recipe",
    name = "gas-methanol-from-wood",
    category = "liquifying",
	subgroup = "bio-processing-green",
	enabled = "false",
    energy_required = 30,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=20},
	},
    results=
    {
      {type="fluid", name="gas-methanol", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-methanol.png",
    order = "j [gas-methanol-from-wood]",
  },
}
)