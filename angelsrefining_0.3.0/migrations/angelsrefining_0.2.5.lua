game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

	if game.item_prototypes["sodium-hydroxide"] then
		if force.technologies["slag-processing-1"].researched then
			force.recipes["slag-processing-bob-1"].enabled = true
			force.recipes["slag-processing-bob-2"].enabled = true
			force.recipes["slag-processing-bob-3"].enabled = true
			if game.item_prototypes["y-res1"] then
				force.recipes["slag-processing-yi"].enabled = true
			end
			if game.item_prototypes["uraninite"] then
				force.recipes["slag-processing-up"].enabled = true
			end
			if game.item_prototypes["uranium-ore"] then
				force.recipes["slag-processing-nuc"].enabled = true
			end
		end
		
		if force.technologies["slag-processing-2"].researched then
			force.recipes["slag-processing-bob-4"].enabled = true
			force.recipes["slag-processing-bob-5"].enabled = true
			force.recipes["slag-processing-bob-6"].enabled = true
		end
		
		if force.technologies["advanced-ore-refining-2"].researched then
			if game.item_prototypes["y-res1"] then
				force.recipes["angelsore-chunk-mix-yi1-processing"].enabled = true
				force.recipes["angelsore-chunk-mix-yi2-processing"].enabled = true
			end
		end
		if force.technologies["advanced-ore-refining-3"].researched then
			if game.item_prototypes["uraninite"] then
				force.recipes["angelsore-crystal-mix-up1-processing"].enabled = true
				force.recipes["angelsore-crystal-mix-up2-processing"].enabled = true
			end
			if game.item_prototypes["uranium-ore"] then
				force.recipes["angelsore-crystal-mix-nuc-processing"].enabled = true
			end
		end
	else
		if force.technologies["slag-processing-1"].researched then
			force.recipes["slag-processing-vanilla-1"].enabled = true
			if game.item_prototypes["y-res1"] then
				force.recipes["slag-processing-yi"].enabled = true
			end
			if game.item_prototypes["uraninite"] then
				force.recipes["slag-processing-up"].enabled = true
			end
			if game.item_prototypes["uranium-ore"] then
				force.recipes["slag-processing-nuc"].enabled = true
			end
		end
		
		if force.technologies["advanced-ore-refining-2"].researched then
			if game.item_prototypes["y-res1"] then
				force.recipes["angelsore-chunk-mix-yi1-processing"].enabled = true
				force.recipes["angelsore-chunk-mix-yi2-processing"].enabled = true
			end
		end
		if force.technologies["advanced-ore-refining-3"].researched then
			if game.item_prototypes["uraninite"] then
				force.recipes["angelsore-crystal-mix-up1-processing"].enabled = true
				force.recipes["angelsore-crystal-mix-up2-processing"].enabled = true
			end
			if game.item_prototypes["uranium-ore"] then
				force.recipes["angelsore-crystal-mix-nuc-processing"].enabled = true
			end
		end
	end
end