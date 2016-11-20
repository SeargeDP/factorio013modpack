
--- If DyTech add these recipies.
data:extend({
	
	
		--- Resin from Rubber Seed
	{
		type = "recipe",
		name = "bi-resin",
		category = "biofarm-mod-dummy",
		enabled = false,
		energy_required = 400,
		ingredients =
		{
		  {type="item", name="rubber-seed", amount=20},     
		  {type="fluid", name="water", amount=100},
		},
		result_count = 60,
		result = "resin"
	},
	
		--- Raw Wood from Water & fertiliser
	{
    type = "recipe",
    name = "bi-resin_Mk2",
    category = "biofarm-mod-dummy",
    enabled = false,
    energy_required = 300,
	ingredients =
    {
      {type="item", name="rubber-seed", amount=30},     
	  {type="item", name="fertiliser", amount=10},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 90,
    result = "resin"
	},
	
		
		--- Raw Wood from fertiliser & NE_enhanced-nutrient-solution (Natural Evolution Mod)
	{
    type = "recipe",
    name = "bi-resin_Mk3",
    category = "biofarm-mod-dummy",
    enabled = false,
    energy_required = 100,
	ingredients =
    {
      {type="item", name="rubber-seed", amount=25},     
      {type="fluid", name="water", amount=100},
	  --{type="item", name="bi-adv-fertiliser", amount=5},     -- Will be added if you have Natural Evolution Buildings Mod installed.
    },
    result_count = 75,
    result = "resin"
	},
	
		
		--- Sulfer wood from Rubber Seed
	{
		type = "recipe",
		name = "bi-sulfur-wood",
		category = "biofarm-mod-dummy",
		enabled = false,
		energy_required = 400,
		ingredients =
		{
		  {type="item", name="sulfur-seed", amount=20},     
		  {type="fluid", name="water", amount=100},
		},
		result_count = 80,
		result = "sulfur-wood"
	},
	
		--- Raw Wood from Water & fertiliser
	{
    type = "recipe",
    name = "bi-sulfur-wood_Mk2",
    category = "biofarm-mod-dummy",
    enabled = false,
    energy_required = 150,
	ingredients =
    {
      {type="item", name="sulfur-seed", amount=15},     
	  {type="item", name="fertiliser", amount=5},     
      {type="fluid", name="water", amount=100},
    },
    result_count = 60,
    result = "sulfur-wood"
	},
	
		
		--- Raw Wood from fertiliser & NE_enhanced-nutrient-solution (Natural Evolution Mod)
	{
    type = "recipe",
    name = "bi-sulfur-wood_Mk3",
    category = "biofarm-mod-dummy",
    enabled = false,
    energy_required = 100,
	ingredients =
    {
      {type="item", name="sulfur-seed", amount=25},     
      {type="fluid", name="water", amount=100},
	  --{type="item", name="bi-adv-fertiliser", amount=5},     -- Will be added if you have Natural Evolution Buildings Mod installed.
    },
    result_count = 100,
    result = "sulfur-wood"
	},
	
	
  })

