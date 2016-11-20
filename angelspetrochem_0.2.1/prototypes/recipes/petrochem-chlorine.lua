data:extend(
{
--CHLORINE
	{
    type = "recipe",
    name = "water-saline-separation",
    category = "petrochem-electrolyser",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="water-saline", amount=10}
	},
    results=
    {
		{type="fluid", name="gas-chlorine", amount=4},
		{type="fluid", name="gas-hydrogen", amount=6},
		{type="item", name="solid-sodium-hydroxide", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/raw-separation-5.png",
    order = "a[water-separation]",
	},
	{
    type = "recipe",
    name = "gas-chlor-methane",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-chlorine", amount=6},
		{type="fluid", name="gas-methane", amount=4},
	},
    results=
    {
        {type="fluid", name="gas-chlor-methane", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-16.png",
    order = "c[gas-chlor-methane]",
	},
	{
    type = "recipe",
    name = "gas-hydrogen-chloride",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="fluid", name="gas-chlorine", amount=5},
		{type="fluid", name="gas-hydrogen", amount=5},
	},
    results=
    {
        {type="fluid", name="gas-hydrogen-chloride", amount=10},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-15.png",
    order = "b[gas-hydrogen-chloride]",
	},
	{
    type = "recipe",
    name = "liquid-hydrochloric-acid",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-hydrogen-chloride", amount=10},
		{type="fluid", name="water-purified", amount=5},
	},
    results=
    {
        {type="fluid", name="liquid-hydrochloric-acid", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-21.png",
    order = "b[liquid-hydrochloric-acid]",
	},
	{
    type = "recipe",
    name = "gas-allylchlorid",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-propene", amount=10},
		{type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
        {type="fluid", name="gas-allylchlorid", amount=5},
        {type="fluid", name="gas-hydrogen-chloride", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-23.png",
    order = "d[gas-allylchlorid]",
	},
	{
    type = "recipe",
    name = "gas-epichlorhydrin",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-allylchlorid", amount=10},
		{type="fluid", name="liquid-hydrochloric-acid", amount=5},
		{type="item", name="solid-sodium-hydroxide", amount=5},
	},
    results=
    {
        {type="fluid", name="gas-epichlorhydrin", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-24.png",
    order = "e[gas-epichlorhydrin]",
	},
	{
    type = "recipe",
    name = "gas-glycerol",
    category = "chemistry",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="fluid", name="gas-epichlorhydrin", amount=10},
		{type="fluid", name="water-purified", amount=5},
	},
    results=
    {
        {type="fluid", name="gas-glycerol", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-25.png",
    order = "f[gas-glycerol]",
	},
	{
    type = "recipe",
    name = "solid-sodium-chlorate",
    category = "liquifying",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-hydroxide", amount=5},
		{type="fluid", name="gas-hydrogen-chloride", amount=5},
	},
    results=
    {
        {type="item", name="solid-sodium-chlorate", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-chlorate.png",
    order = "g[solid-sodium-chlorate]",
	},
	{
    type = "recipe",
    name = "solid-sodium-perchlorate",
    category = "liquifying",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-chlorate", amount=5},
		{type="fluid", name="water-purified", amount=5},
        {type="item", name="catalyst-metal-blue", amount=1},
	},
    results=
    {
        {type="item", name="solid-sodium-perchlorate", amount=5},
        {type="item", name="catalyst-metal-carrier", amount=1},
    },
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-perchlorate.png",
    order = "h[solid-sodium-perchlorate]",
	},
	{
    type = "recipe",
    name = "liquid-perchloric-acid",
    category = "liquifying",
	subgroup = "petrochem-chlorine",
    energy_required = 2,
	enabled = "false",
    ingredients ={
        {type="item", name="solid-sodium-chlorate", amount=2},
		{type="fluid", name="liquid-hydrochloric-acid", amount=5},
	},
    results=
    {
        {type="fluid", name="liquid-perchloric-acid", amount=5},
    },
    icon = "__angelspetrochem__/graphics/icons/inter-chemistry-33.png",
    order = "i[liquid-perchloric-acid]",
	},		
}
)
