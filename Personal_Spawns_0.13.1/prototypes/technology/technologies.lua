
data:extend({
	{
		type = "technology",
		name = "personal-spawns-technology",
		icon = "__Personal_Spawns__/graphics/icons/PersonalSpawnMarkerIcon.png",
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "personal-spawn-marker-recipe"
			}
		},
		prerequisites = {"electronics", "advanced-electronics"},
		unit = 
		{
			count = 50,
			ingredients = 
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1}
			},
			time = 20
		}
	}
})