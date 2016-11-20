data:extend(
{
--BASIC CHEMISTRY
	{
    type = "recipe",
    name = "dirt-water-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water", amount=10}
		--{type="item", name="angels-electrode", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=3},
		{type="fluid", name="gas-hydrogen", amount=4},
		{type="item", name="slag", amount=1}
		--{type="item", name="angels-electrode-used", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
    order = "a[water-separation]",
	},
	{
    type = "recipe",
    name = "water-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water-purified", amount=10}
		--{type="item", name="angels-electrode", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=4},
		{type="fluid", name="gas-hydrogen", amount=6},
		--{type="item", name="angels-electrode-used", amount=1}
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-4.png",
    order = "a[water-separation]",
	},
	{
    type = "recipe",
    name = "water-synthesis",
    category = "chemistry",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-oxygen", amount=6},
		{type="fluid", name="gas-hydrogen", amount=9},
	},
    results=
    {
		{type="fluid", name="water-purified", amount=10}
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-27.png",
    order = "a[water-synthesis]",
	},
	{
    type = "recipe",
    name = "carbon-separation-1",
    category = "liquifying",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-carbon", amount=1},
		{type="fluid", name="water-purified", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-carbon-monoxide", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-7.png",
    order = "b[carbon-separation-1]",
	},
	{
    type = "recipe",
    name = "carbon-separation-2",
    category = "liquifying",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=1}
	},
    results=
    {
		{type="fluid", name="gas-carbon-dioxide", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-6.png",
    order = "d[carbon-separation-2]",
	},
	{
    type = "recipe",
    name = "solid-calcium-chloride",
    category = "chemistry",
	subgroup = "petrochem-basics",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="stone-crushed", amount=6},
		{type="fluid", name="gas-hydrogen-chloride", amount=3},
	},
    results=
    {
        {type="item", name="solid-calcium-chloride", amount=3},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-calcium-chloride.png",
    order = "e[solid-calcium-chloride]",
	},
--COAL CRACKING
	{
    type = "recipe",
    name = "coal-cracking-1",	--Gasification
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
	},
    results=
    {
		{type="fluid", name="gas-hydrogen-sulfide", amount=5},
		{type="fluid", name="gas-benzene", amount=3},
		{type="fluid", name="gas-methane", amount=7},
		{type="item", name="solid-coke", amount=6},			--COKE
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-1.png",
    order = "e[coal-cracking-1]",
	},
	{
    type = "recipe",
    name = "coal-cracking-2",	--Bergius-Process
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
		{type="fluid", name="gas-hydrogen", amount=5},
        {type="item", name="catalyst-metal-red", amount=1},		--Fe
	},
    results=
    {
		{type="fluid", name="liquid-naphtha", amount=6},
		{type="fluid", name="liquid-ngl", amount=3},
		{type="fluid", name="liquid-mineral-oil", amount=2},
		{type="item", name="solid-coke", amount=6},			--COKE
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-2.png",
    order = "f[coal-cracking-2]",
	},
	{
    type = "recipe",
    name = "coal-cracking-3", --Fischer-Tropsch Ammonia and Methanol feed
    category = "advanced-chemistry",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=5},
		{type="fluid", name="water-purified", amount=5},
		{type="fluid", name="gas-oxygen", amount=5},
	},
    results=
    {
		{type="fluid", name="gas-synthesis", amount=10},
		{type="fluid", name="gas-carbon-dioxide", amount=2},
		{type="fluid", name="gas-hydrogen-sulfide", amount=3},
		-- {type="fluid", name="gas-hydrogen", amount=1},
		-- {type="fluid", name="gas-methane", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-cracking-3.png",
    order = "g[coal-cracking-3]",
	},
	{
    type = "recipe",
    name = "coke-purification",
    category = "liquifying",
	subgroup = "petrochem-coal",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=1},	
		{type="fluid", name="gas-carbon-dioxide", amount=1},
	},
    results=
    {
		{type="item", name="solid-carbon", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-carbon.png",
    order = "a[coke-purification]",
	},
	{
    type = "recipe",
    name = "coal-crushed",
    category = "ore-sorting-t1",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="coal", amount=1},	
	},
    results=
    {
		{type="item", name="coal-crushed", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/coal-crushed.png",
    order = "b[coal-crushed]",
	},
	{
    type = "recipe",
    name = "solid-coke",
    category = "smelting",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="coal-crushed", amount=2},	
	},
    results=
    {
		{type="item", name="solid-coke", amount=2},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    order = "ca[coal-crushed]",
	},
	{
    type = "recipe",
    name = "solid-coke-sulfur",
    category = "liquifying",
	subgroup = "petrochem-coal",
    energy_required = 4,
	enabled = "false",
    ingredients ={
		{type="item", name="coal-crushed", amount=2},
		{type="fluid", name="water-purified", amount=5},
	},
    results=
    {
		{type="item", name="solid-coke", amount=2},
		{type="fluid", name="water-yellow-waste", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-coke.png",
    order = "cb[solid-coke-sulfur]",
	},
	{
    type = "recipe",
    name = "pellet-coke",
    category = "crafting",
	subgroup = "petrochem-coal",
    energy_required = 1,
	enabled = "false",
    ingredients ={
		{type="item", name="solid-coke", amount=5},	
	},
    results=
    {
		{type="item", name="pellet-coke", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/pellet-coke.png",
    order = "d[pellet-coke]",
	},
}
)
