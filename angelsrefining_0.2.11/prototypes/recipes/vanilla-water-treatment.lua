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
      {type="fluid", name="water-purified", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/water-purification.png",
    order = "a[water-purification]",
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
      {type="fluid", name="water-purified", amount=7},
	  {type="item", name="sulfur", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/water-floatation-waste-purification.png",
    order = "a[floatation-waste-water-purification]",
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
data.raw["recipe"]["angelsore1-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore2-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore3-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore4-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore5-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
data.raw["recipe"]["angelsore6-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}

data.raw["recipe"]["angelsore1-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore2-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore3-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore4-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore5-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
data.raw["recipe"]["angelsore6-chunk"].results[2]={type = "fluid", name = "water-floatation-waste", amount=5}
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