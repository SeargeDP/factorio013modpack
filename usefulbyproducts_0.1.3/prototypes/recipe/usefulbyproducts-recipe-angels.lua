data:extend(
{
	{
		type = "recipe",
		name = "slurry-caustic-filtering",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="fluid", name="slag-slurry", amount=5},
			{type="fluid", name="water-purified", amount=5},
			{type="item", name="filter-ceramic", amount=1},
			{type="item", name="sodium-hydroxide", amount=2}
		},
		results=
		{
			{type="fluid", name="mineral-sludge", amount=6},
			{type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__usefulbyproducts__/graphics/icons/slurry-caustic-filtering.png",
		order = "b [slag-processing-filtering-2]",
	},
	{
		type = "recipe",
		name = "thermal-water-caustic-filtering",
		category = "filtering",
		subgroup = "filtering",
		energy_required = 3,
		enabled = "false",
		ingredients ={
			{type="fluid", name="thermal-water", amount=5},
			{type="item", name="filter-ceramic", amount=1},
			{type="item", name="sodium-hydroxide", amount=2}
		},
		results=
		{
		  {type="fluid", name="mineral-sludge", amount=6},
		  {type="item", name="filter-ceramic-used", amount=1},
		},
		icon = "__usefulbyproducts__/graphics/icons/thermal-water-caustic-filtering.png",
		order = "d [thermal-water-filtering-2]",
	},
}
)