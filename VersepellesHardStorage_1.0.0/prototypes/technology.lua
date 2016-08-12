require("config")

data:extend(
{
	{
		type = "technology",
		name = "inventory-bonus-1",
		icon = Mod_Name .. "/graphics/icons/inventory-tech-bonus.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = inventory_tech_bonus_1,
			},
		},
		prerequisites = {},
		unit =
		{
			count = 20,
			ingredients =
			{
				{"science-pack-1", 1},
			},
			time = 10
		},
		order = "z[hard-storage]-a"
	},
	
	{
		type = "technology",
		name = "inventory-bonus-2",
		icon = Mod_Name .. "/graphics/icons/inventory-tech-bonus.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = inventory_tech_bonus_2,
			},
		},
		prerequisites = {"inventory-bonus-1"},
		unit =
		{
			count = 50,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
			},
			time = 30
		},
		order = "z[hard-storage]-b"
	},
	
	{
		type = "technology",
		name = "inventory-bonus-3",
		icon = Mod_Name .. "/graphics/icons/inventory-tech-bonus.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = inventory_tech_bonus_3,
			},
		},
		prerequisites = {"inventory-bonus-2"},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
			},
			time = 60
		},
		order = "z[hard-storage]-c"
	},
	
	{
		type = "technology",
		name = "inventory-bonus-4",
		icon = Mod_Name .. "/graphics/icons/inventory-tech-bonus.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = inventory_tech_bonus_4,
			},
		},
		prerequisites = {"inventory-bonus-3"},
		unit =
		{
			count = 100,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1},
			},
			time = 60
		},
		order = "z[hard-storage]-d"
	},
})