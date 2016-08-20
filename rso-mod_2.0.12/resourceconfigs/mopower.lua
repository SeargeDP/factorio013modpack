function fillMopowerConfig()
	
	config["uranium-ore"] = {
		type="resource-ore",
		
		allotment=30,
		spawns_per_region={min=1, max=1},
		richness=4000,
		size={min=10, max=16},
		min_amount = 125,
		
		multi_resource_chance=0.30,
		multi_resource={
			["copper-ore"] = 3,
			["iron-ore"] = 3,
			["coal"] = 6,
			["stone"] = 6,
			["uranium-ore"] = 3,
		}
	}
	
	config["iron-ore"].multi_resource["uranium-ore"] = 2
	config["copper-ore"].multi_resource["uranium-ore"] = 2
	config["coal"].multi_resource["uranium-ore"] = 2
	config["stone"].multi_resource["uranium-ore"] = 2
end