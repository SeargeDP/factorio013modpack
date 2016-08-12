if not angelsmods then angelsmods = {} end
if not angelsmods.processing then angelsmods.processing = {} end
if not bobmods then bobmods = {false} end

require("config")

if angelsmods.processing.enableoreprocessing then
	require("prototypes.ore-processing-category")
	require("prototypes.items.vanilla-ore-processing-item")
	require("prototypes.recipes.vanilla-ore-processing")
	if bobmods.ores then 
		require("prototypes.items.bob-ore-processing-item")
		require("prototypes.recipes.bob-ore-processing")
		require("prototypes.technology.bob-ore-processing-technology")
		require("prototypes.recipes.bob-ore-processing-entity")
		else
		require("prototypes.technology.vanilla-ore-processing-technology")
		require("prototypes.recipes.vanilla-ore-processing-entity")
	end

	require("prototypes.buildings.blast-furnace")
	require("prototypes.buildings.ore-processing-plant")
	
	
	if angelsmods.processing.enablebioprocessing then
		if bobmods.ores then
			require("prototypes.bio-processing-category")
			require("prototypes.buildings.bio-processing-plant")

			require("prototypes.recipes.bio-processing")
			require("prototypes.recipes.bio-processing-entity")
			require("prototypes.items.bio-processing-item")
	
			require("prototypes.technology.bio-processing-technology")
		end 
		if angelsmods.processing.enablecatalysts then
			require("prototypes.catalysts-category")
			
			require("prototypes.items.catalysts-item")
			require("prototypes.recipes.catalysts")
			require("prototypes.technology.catalysts-technology")
		end
	end
end

