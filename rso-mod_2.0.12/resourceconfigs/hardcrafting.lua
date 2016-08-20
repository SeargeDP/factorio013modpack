function fillHardCraftingConfig()

	config["rich-copper-ore"] = {
		type="resource-ore",
		
		allotment=5,
		spawns_per_region={min=1, max=1},
		richness=10000,
		size={min=10, max=15},
		min_amount=500,

		starting={richness=5000, size=25, probability=1},
	}
end