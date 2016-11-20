data:extend(
{
--SULFURIC ACID
	{
    type = "recipe",
    name = "converter-sulfuric-acid",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="liquid-sulfuric-acid", amount=5}
	},
    results=
    {
		{type="fluid", name="sulfuric-acid", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-sulfuric-acid",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="sulfuric-acid", amount=5}
	},
    results=
    {
		{type="fluid", name="liquid-sulfuric-acid", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	--OIL OUTPUT
	-- {
    -- type = "recipe",
    -- name = "liquid-lubricant",
    -- category = "angels-converter",
	-- subgroup = "angels-converter",
    -- energy_required = 1,
	-- enabled = "true",
	-- hidden = "false",
    -- ingredients ={
		-- {type="fluid", name="liquid-mineral-oil", amount=5},
	-- },
    -- results=
    -- {
		-- {type="fluid", name="lubricant", amount=5},
    -- },
    -- icon = "__base__/graphics/icons/fluid/lubricant.png",
    -- order = "a[liquid-lubricant]",
	-- },
	{
    type = "recipe",
    name = "liquid-heavy-oil",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 1,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="liquid-naphtha", amount=5},
	},
    results=
    {
		{type="fluid", name="heavy-oil", amount=5},
    },
    --icon = "__base__/graphics/icons/fluid/heavy-oil.png",
    order = "b[liquid-heavy-oil]",
	},
	{
    type = "recipe",
    name = "liquid-light-oil",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 1,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="liquid-fuel-oil", amount=5},
	},
    results=
    {
		{type="fluid", name="light-oil", amount=5},
    },
    --icon = "__base__/graphics/icons/fluid/light-oil.png",
    order = "c[liquid-light-oil]",
	},
	{
    type = "recipe",
    name = "liquid-petroleum-gas",
    category = "angels-converter",
	subgroup = "angels-converter",	
	--subgroup = "petrochem-oil-output",
    energy_required = 1,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-methane", amount=5},
	},
    results=
    {
		{type="fluid", name="petroleum-gas", amount=5},
    },
    --icon = "__base__/graphics/icons/fluid/petroleum-gas.png",
    order = "d[liquid-petroleum-gas]",
	},
}
)

if bobmods.plates then

data:extend(
{
--CHLORINE
	{
    type = "recipe",
    name = "converter-bob-chlorine",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-chlorine", amount=5}
	},
    results=
    {
		{type="fluid", name="chlorine", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-chlorine",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="chlorine", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
--OXYGEN
	{
    type = "recipe",
    name = "converter-bob-oxygen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-oxygen", amount=5}
	},
    results=
    {
		{type="fluid", name="oxygen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-oxygen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="oxygen", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-oxygen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
--HYDROGEN
	{
    type = "recipe",
    name = "converter-bob-hydrogen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-hydrogen", amount=5}
	},
    results=
    {
		{type="fluid", name="hydrogen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-hydrogen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="hydrogen", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-hydrogen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
--HYDROGEN CHLORIDE
	{
    type = "recipe",
    name = "converter-bob-hydrogen-chloride",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-hydrogen-chloride", amount=5}
	},
    results=
    {
		{type="fluid", name="hydrogen-chloride", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-hydrogen-chloride",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="hydrogen-chloride", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-hydrogen-chloride", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
--NITROGEN
	{
    type = "recipe",
    name = "converter-bob-nitrogen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-nitrogen", amount=5}
	},
    results=
    {
		{type="fluid", name="nitrogen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-nitrogen",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="nitrogen", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-nitrogen", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
--SULFUR DIOXIDE
	{
    type = "recipe",
    name = "converter-bob-sulfur-dioxide",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="gas-sulfur-dioxide", amount=5}
	},
    results=
    {
		{type="fluid", name="sulfur-dioxide", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
	{
    type = "recipe",
    name = "converter-angels-sulfur-dioxide",
    category = "angels-converter",
	subgroup = "angels-converter",
    energy_required = 0.5,
	enabled = "true",
	hidden = "false",
    ingredients ={
		{type="fluid", name="sulfur-dioxide", amount=5}
	},
    results=
    {
		{type="fluid", name="gas-sulfur-dioxide", amount=5},
    },
    --icon = "__angelspetrochem__/graphics/icons/valve-converter.png",
    order = "a",
	},
}
)
end