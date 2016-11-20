data:extend(
	{
		---------------------------------------------------------------------------------
		{
			type = "recipe-category",
			name = "water-well-production"
		},
		---------------------------------------------------------------------------------
		{
			type = "recipe",
			name = "water-well-pump",
			enabled = false,
			energy_required = 20,
			ingredients =
			{
				{"steel-plate", 16},
				{"iron-gear-wheel", 12},
				{"electronic-circuit", 8},
				{"pipe", 12},
			},
			result = "water-well-pump"
		},
		---------------------------------------------------------------------------------
		{
			type = "recipe",
			name = "water-well-flow",
			enabled = true,
			hidden = true,
			energy_required = 1, 
			category = "water-well-production",
			ingredients =
			{
			},
			results=
			{
				{type="fluid", name="water", amount=100},
			},
		},
	}
)

table.insert( data.raw["technology"]["steel-processing"].effects, { type = "unlock-recipe", recipe = "water-well-pump"	} )

