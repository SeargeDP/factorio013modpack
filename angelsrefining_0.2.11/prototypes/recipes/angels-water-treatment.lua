data:extend(
{
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
    order = "f[water-purification]",
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
    order = "i[thermal-water-purification]",
	},
	{
    type = "recipe",
    name = "floatation-waste-water-purification",
    category = "water-treatment",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
	{type="fluid", name="water-floatation-waste", amount=10}
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=2},
      {type="fluid", name="water-purified", amount=7},
	  {type="item", name="sulfur", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/water-floatation-waste-purification.png",
    order = "e[floatation-waste-water-purification]",
	},
	{
    type = "recipe",
    name = "water-mineralized",
    category = "liquifying",
	subgroup = "water-treatment",
    energy_required = 1,
	enabled = "false",
    ingredients ={
      {type="fluid", name="water-purified", amount=10},
	  {type="item", name="stone-crushed", amount=5},
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
    order = "f[water-water-mineralized]",
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
    name = "angels-water-void-floatation-waste",
    category = "angels-water-void",
    enabled = "false",
    hidden = "true",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-floatation-waste", amount=2}
    },
    results=
    {
      {type="item", name="water-void", amount=1, probability=0},
    },
    subgroup = "angels-void",
    icon = "__angelsrefining__/graphics/icons/clarifier-void-1.png",
    order = "water-floatation-waste"
    },
}
)

if angelsmods.refining then
--insert water resources to refining recipes
data.raw["recipe"]["angelsore1-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore2-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore3-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore4-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore5-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore6-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore7-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}

data.raw["recipe"]["angelsore1-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore2-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore3-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore4-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore5-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore6-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore7-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}

data.raw["recipe"]["slag-processing-filtering-1"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["slag-processing-filtering-2"].ingredients[2]={type="fluid", name="water-purified", amount=5}
table.insert(data.raw["recipe"]["slag-processing-filtering-1"].results,{type = "fluid", name = "water-floatation-waste", amount=5})
table.insert(data.raw["recipe"]["slag-processing-filtering-2"].results,{type = "fluid", name = "water-floatation-waste", amount=5})

data.raw["recipe"]["crystal-slurry-filtering-1"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["crystal-slurry-filtering-2"].ingredients[2]={type="fluid", name="water-purified", amount=5}
table.insert(data.raw["recipe"]["crystal-slurry-filtering-1"].results,{type = "fluid", name = "water-floatation-waste", amount=5})
table.insert(data.raw["recipe"]["crystal-slurry-filtering-2"].results,{type = "fluid", name = "water-floatation-waste", amount=5})

data.raw["recipe"]["crystal-slurry-filtering-conversion-1"].ingredients[2]={type="fluid", name="water-mineralized", amount=5}
data.raw["recipe"]["crystal-slurry-filtering-conversion-2"].ingredients[2]={type="fluid", name="water-mineralized", amount=5}
table.insert(data.raw["recipe"]["crystal-slurry-filtering-conversion-1"].results,{type = "fluid", name = "water-floatation-waste", amount=5})
table.insert(data.raw["recipe"]["crystal-slurry-filtering-conversion-2"].results,{type = "fluid", name = "water-floatation-waste", amount=5})

	if angelsmods.smelting then
		data.raw["recipe"]["angelsore8-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}

		data.raw["recipe"]["angelsore8-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
	end
end

if bobmods.plates then
data:extend(
{
  {
    type = "recipe",
    name = "salt-water-electrolysis-2",
    category = "electrolysis",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="water-saline", amount=4}
    },
    results=
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="fluid", name="chlorine", amount=1},
      {type="fluid", name="hydrogen", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/electrolysis-salt-water.png",
    subgroup = "bob-fluid-electrolysis",
    order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
  },
  {
    type = "recipe",
    name = "water-thermal-lithia",
    category = "water-treatment",
	subgroup = "water-treatment",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name="thermal-water", amount=10}
    },
    results=
    {
      {type="fluid", name="lithia-water", amount=4},
      {type="fluid", name="water-purified", amount=6},
    },
    icon = "__angelsrefining__/graphics/icons/water-thermal-lithia.png",
    order = "g[water-thermal-lithia]"
  },
}
)
end
--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
	data:extend({
		{
		type = "recipe",
		name = "floatation-waste-water-purification-yi",
		category = "water-treatment",
		subgroup = "water-treatment",
		energy_required = 1,
		enabled = "false",
		ingredients ={
		{type="fluid", name="water-floatation-waste", amount=10}
		},
		results=
		{
		  {type="fluid", name="y-con_water", amount=2},
		  {type="fluid", name="water-purified", amount=7},
		  {type="item", name="sulfur", amount=1},
		},
		icon = "__angelsrefining__/graphics/icons/water-floatation-waste-purification-yi.png",
		order = "a[floatation-waste-water-purification-yi]",
		},
	})
end