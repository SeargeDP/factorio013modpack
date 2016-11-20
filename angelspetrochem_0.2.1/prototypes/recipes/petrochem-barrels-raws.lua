data:extend(
{
--FILL BARRELS
	--RAWS
	{
    type = "recipe",
    name = "fill-gas-natural-1-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-natural-1", amount=25},
		{type="item", name="empty-barrel", amount=1},
	},
    results=
    {
		{type="item", name="gas-natural-1-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-natural-1-barrel-fill.png",
	order = "a[angels-fill-gas-natural-1]",
	},
	{
    type = "recipe",
    name = "fill-liquid-multi-phase-oil-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-multi-phase-oil", amount=25},
		{type="item", name="empty-barrel", amount=1},
	},
    results=
    {
		{type="item", name="liquid-multi-phase-oil-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/liquid-multi-phase-oil-barrel-fill.png",
	order = "c[angels-fill-liquid-multi-phase-oil]",
	},
	{
    type = "recipe",
    name = "fill-gas-raw-1-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-raw-1", amount=25},
		{type="item", name="empty-barrel", amount=1},
	},
    results=
    {
		{type="item", name="gas-raw-1-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-raw-1-barrel-fill.png",
	order = "e[angels-fill-gas-raw-1]",
	},
	{
    type = "recipe",
    name = "fill-liquid-condensates-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="fluid", name="liquid-condensates", amount=25},
		{type="item", name="empty-barrel", amount=1},
	},
    results=
    {
		{type="item", name="liquid-condensates-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/liquid-condensates-barrel-fill.png",
	order = "g[angels-fill-liquid-condensates]",
	},
	{
    type = "recipe",
    name = "fill-gas-acid-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-acid", amount=25},
		{type="item", name="empty-barrel", amount=1},
	},
    results=
    {
		{type="item", name="gas-acid-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-acid-barrel-fill.png",
	order = "i[angels-fill-gas-acid]",
	},
--EMPTY BARRELS
	--RAWS
	{
    type = "recipe",
    name = "empty-gas-natural-1-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="item", name="gas-natural-1-barrel", amount=1},
	},
    results=
    {
		{type="fluid", name="gas-natural-1", amount=25},
		{type="item", name="empty-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-natural-1.png",
	order = "b[angels-empty-gas-natural-1]",
	},
	{
    type = "recipe",
    name = "empty-liquid-multi-phase-oil-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="item", name="liquid-multi-phase-oil-barrel", amount=1},
	},
    results=
    {
		{type="fluid", name="liquid-multi-phase-oil", amount=25},
		{type="item", name="empty-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/liquid-multi-phase-oil.png",
	order = "d[angels-empty-liquid-multi-phase-oil]",
	},
	{
    type = "recipe",
    name = "empty-gas-raw-1-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="item", name="gas-raw-1-barrel", amount=1},
	},
    results=
    {
		{type="fluid", name="gas-raw-1", amount=25},
		{type="item", name="empty-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-raw-1.png",
	order = "f[angels-empty-gas-raw-1]",
	},
	{
    type = "recipe",
    name = "empty-liquid-condensates-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="item", name="liquid-condensates-barrel", amount=1},
	},
    results=
    {
		{type="fluid", name="liquid-condensates", amount=25},
		{type="item", name="empty-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/liquid-condensates.png",
	order = "h[angels-fill-gas-raw-1]",
	},
	{
    type = "recipe",
    name = "empty-gas-acid-barrel",
    category = "crafting-with-fluid",
	subgroup = "angels-barrels",
    energy_required = 0.5,
	enabled = "false",
    ingredients ={
		{type="item", name="gas-acid-barrel", amount=1},
	},
    results=
    {
		{type="fluid", name="gas-acid", amount=25},
		{type="item", name="empty-barrel", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/gas-acid.png",
	order = "j[angels-empty-gas-acid]",
	},

}
)