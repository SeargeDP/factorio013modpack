function pure_water()
	if is_angelsmods() then
		return "water-purified"
	end
	return "water" 
end

data:extend(
{
	{
		type = "recipe",
		name = "fuel-cell-hydrogen",
		category = "crafting-with-fluid",
		enabled = false,
		energy_required = 3,
		ingredients =
		{
		  {type="fluid", name="hydrogen", amount=50},
		  {type="item", name="plastic-bar", amount=1}
		},
		results=
		{
		  {type="item", name="fuel-cell", amount=1},
		},
		icon = "__usefulbyproducts__/graphics/icons/fuel-cell.png",
		subgroup = "fluid-recipes",
		order = "b[solid-fuel-from-heavy-oil]-c[fuel-cell-hydrogen]"
	},
	{
		type = "recipe",
		name = "caustic-oil-processing",
		category = "oil-processing",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
		  {type="fluid", name="crude-oil", amount=10},
		  {type="item", name="sodium-hydroxide", amount=10}
		},
		results=
		{
		  {type="fluid", name="heavy-oil", amount=4},
		  {type="fluid", name="light-oil", amount=4},
		  {type="fluid", name="petroleum-gas", amount=4}
		},
		icon = "__usefulbyproducts__/graphics/icons/caustic-oil-processing.png",
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-c[bob-oil-processing]"
	},
	{
		type = "recipe",
		name = "caustic-heavy-oil-processing",
		category = "oil-processing",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
		  {type="fluid", name="crude-oil", amount=10},
		  {type="item", name="sodium-hydroxide", amount=10}
		},
		results=
		{
		  {type="fluid", name="heavy-oil", amount=6},
		  {type="fluid", name="light-oil", amount=3.5},
		  {type="fluid", name="petroleum-gas", amount=2.5}
		},
		icon = "__usefulbyproducts__/graphics/icons/caustic-heavy-oil-processing.png",
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-c[bob-oil-processing]"
	},
	{
		type = "recipe",
		name = "advanced-caustic-oil-processing",
		category = "oil-processing",
		enabled = false,
		energy_required = 5,
		ingredients =
		{
		  {type="fluid", name="crude-oil", amount=10},
		  {type="fluid", name=pure_water(), amount=10},
		  {type="item", name="sodium-hydroxide", amount=10}
		},
		results=
		{
		  {type="fluid", name="heavy-oil", amount=2.5},
		  {type="fluid", name="light-oil", amount=4},
		  {type="fluid", name="petroleum-gas", amount=6.5}
		},
		icon = "__usefulbyproducts__/graphics/icons/advanced-caustic-oil-processing.png",
		subgroup = "fluid-recipes",
		order = "a[oil-processing]-c[bob-oil-processing]"
	},
}
)