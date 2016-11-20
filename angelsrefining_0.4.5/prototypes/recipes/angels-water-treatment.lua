data:extend(
{
	{
    type = "recipe",
    name = "water-mineralized",
    category = "liquifying",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="fluid", name="water", amount=10},
	  {type="item", name="stone-crushed", amount=10},
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
    order = "a[water-water-mineralized]",
	},
	{
    type = "recipe",
    name = "water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water", amount=15}
	},
    results=
    {
      {type="fluid", name="water-saline", amount=2},
      {type="fluid", name="water-purified", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/water-purification.png",
    order = "b[water-purification]",
	},
	{
    type = "recipe",
    name = "thermal-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="thermal-water", amount=5}
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=2},
      {type="fluid", name="water-purified", amount=3},
    },
    icon = "__angelsrefining__/graphics/icons/water-thermal-purification.png",
    order = "c[thermal-water-purification]",
	},
	{
    type = "recipe",
    name = "yellow-waste-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water-yellow-waste", amount=10}
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=2},
      {type="fluid", name="water-purified", amount=7},
	  {type="item", name="sulfur", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/water-yellow-waste-purification.png",
    order = "d[yellow-waste-water-purification]",
	},
	{
    type = "recipe",
    name = "red-waste-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water-red-waste", amount=10}
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=2},
      {type="fluid", name="water-purified", amount=7},
	  --{type="item", name="phosphor", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/water-red-waste-purification.png",
    order = "e[yellow-waste-water-purification]",
	},
	{
    type = "recipe",
    name = "green-waste-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water-green-waste", amount=10}
	},
    results=
    {
      {type="fluid", name="water-saline", amount=2},
      {type="fluid", name="water-purified", amount=7},
    },
    icon = "__angelsrefining__/graphics/icons/water-green-waste-purification.png",
    order = "f[yellow-waste-water-purification]",
	},
	{
    type = "recipe",
    name = "greenyellow-waste-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water-greenyellow-waste", amount=10}
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=2},
      {type="fluid", name="water-purified", amount=7},
	  --{type="item", name="fluorite-ore", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/water-greenyellow-waste-purification.png",
    order = "g[yellow-waste-water-purification]",
	},
--WATER VOID
    {
    type = "recipe",
    name = "angels-water-void-purified",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-purified", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-4.png",
    order = "water-purified"
    },
    {
    type = "recipe",
    name = "angels-water-void-saline",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-saline", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-2.png",
    order = "water-saline"
    },
    {
    type = "recipe",
    name = "angels-water-void-mineralized",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-mineralized", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-3.png",
    order = "water-mineralized"
    },
    {
    type = "recipe",
    name = "angels-water-void-yellow-waste",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-yellow-waste", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-1.png",
    order = "water-yellow-waste"
    },
    {
    type = "recipe",
    name = "angels-water-void-green-waste",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-green-waste", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-6.png",
    order = "water-green-waste"
    },
    {
    type = "recipe",
    name = "angels-water-void-greenyellow-waste",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-greenyellow-waste", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-5.png",
    order = "water-greenyellow-waste"
    },
    {
    type = "recipe",
    name = "angels-water-void-red-waste",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-red-waste", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-7.png",
    order = "water-red-waste"
    },
}
)