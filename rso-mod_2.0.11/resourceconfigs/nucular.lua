function fillNucularConfig()
	
	config["uranium-ore"] = {
		type="resource-ore",
		
		allotment=40,
		spawns_per_region={min=1, max=1},
		richness=6000,
		size={min=12, max=18},
		min_amount = 250,
		
		starting={richness=3000, size=12, probability=1},
	}
end