function fillHardCraftingConfig()

	config["rich-copper-ore"] = {
		type="resource-ore",
		
		allotment=50,
		spawns_per_region={min=1, max=1},
		richness=10000,
		size={min=10, max=15},
		min_amount=500,

		starting={richness=5000, size=25, probability=1},
	}
	
	if game.entity_prototypes["rich-iron-ore"] then
		config["rich-iron-ore"] = {
			type="resource-ore",
			
			allotment=50,
			spawns_per_region={min=1, max=1},
			richness=10000,
			size={min=10, max=15},
			min_amount = 500,
			
			starting={richness=5000, size=25, probability=1},
		}
	end
	
end