game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
	if game.item_prototypes["sodium-hydroxide"] then
		if force.technologies["slag-processing-1"].researched then
			force.recipes["liquifier"].enabled = true
			force.recipes["angelsore7-crushed-mix-processing"].enabled = true
			force.recipes["angelsore7-chunk-mix-processing"].enabled = true
		end
		if force.technologies["slag-processing-2"].researched then
			force.recipes["liquifier-2"].enabled = true
			force.recipes["angelsore7-crystal-mix-processing"].enabled = true
			force.recipes["angelsore7-pure-mix-processing"].enabled = true
			force.recipes["crystal-slurry-filtering-2"].enabled = true
			force.recipes["crystal-slurry-filtering-conversion-2"].enabled = true
		end
		if force.technologies["advanced-ore-refining-1"].researched then
			force.recipes["angelsore7-crushed"].enabled = true
			force.recipes["angelsore7-crushed-processing"].enabled = true
			force.recipes["angelsore7-crushed-mix"].enabled = true
		end
		if force.technologies["advanced-ore-refining-2"].researched then
			force.recipes["angelsore7-chunk"].enabled = true
			force.recipes["angelsore7-chunk-processing"].enabled = true
			force.recipes["angelsore7-chunk-mix"].enabled = true
		end
		if force.technologies["advanced-ore-refining-3"].researched then
			force.recipes["angelsore7-crystal"].enabled = true
			force.recipes["angelsore7-crystal-processing"].enabled = true
			force.recipes["angelsore7-crystal-mix"].enabled = true
		end
		if force.technologies["advanced-ore-refining-4"].researched then
			force.recipes["angelsore7-pure"].enabled = true
			force.recipes["angelsore7-pure-processing"].enabled = true
			force.recipes["angelsore7-pure-mix"].enabled = true
		end
		if force.technologies["water-treatment"].researched then
			force.recipes["water-mineralized"].enabled = true
			force.recipes["water-thermal-lithia"].enabled = true
		end
	end
end