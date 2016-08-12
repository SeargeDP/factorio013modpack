if not angelsmods then angelsmods = {} end
if not angelsmods.refining then angelsmods.refining = {} end
if not angelsmods.ores then angelsmods.ores = {} end
if not bobmods then bobmods = {false} end

if angelsmods.ores.angelsoretrigger then
angelsmods.ores.enableangelsores = false
else
angelsmods.ores.enableangelsores = true
end

angelsmods.refining.enableorerefining = true
angelsmods.refining.enablewatertreatment  = true

if angelsmods.refining.enableorerefining then
	require("prototypes.ore-refining-category")
		
	require("prototypes.buildings.pipes-overlay")
	require("prototypes.buildings.ore-crusher")
	require("prototypes.buildings.ore-sorting-facility")
	require("prototypes.buildings.ore-floatation-cell")
	require("prototypes.buildings.ore-leaching-plant")
	require("prototypes.buildings.ore-refinery")
	require("prototypes.buildings.crystallizer")
	require("prototypes.buildings.filtration-unit")
	require("prototypes.buildings.liquifier")
	require("prototypes.buildings.thermal-extractor")
	
	require("prototypes.items.angels-ores-item")
	require("prototypes.items.angels-ores-refining")
	require("prototypes.items.angels-ores-extra")
	
	require("prototypes.recipes.angels-refining-intermediate")
	-- if angelsmods.smelting then
		-- require("prototypes.recipes.angels-refining-output")
		-- require("prototypes.recipes.angels-refining-entity")
		
		-- require("prototypes.technology.angels-technology")
	-- else 
	if bobmods.plates then
			require("prototypes.recipes.bob-refining-output")
			require("prototypes.recipes.bob-refining-entity")
			
			require("prototypes.technology.bob-technology")
		else
			require("prototypes.items.vanilla-refining-item")
					
			require("prototypes.recipes.vanilla-refining-output")
			require("prototypes.recipes.vanilla-refining-entity")
			
			require("prototypes.technology.vanilla-technology")
		end
	--end
	
	if angelsmods.refining.enablewatertreatment then
		require("prototypes.water-treatment-category")
		require("prototypes.buildings.hydro-plant")
		require("prototypes.buildings.clarifier")
		require("prototypes.items.water-treatment-item")
		require("prototypes.technology.water-treatment-technology")
		if angelsmods.smelting or bobmods.plates then
				require("prototypes.recipes.angels-water-treatment")
				if angelsmods.smelting then
				require("prototypes.recipes.angels-water-treatment-entity")
				else
				require("prototypes.recipes.bob-water-treatment-entity")
				end
		else
			require("prototypes.recipes.vanilla-water-treatment-entity")
			require("prototypes.recipes.vanilla-water-treatment")
		end
	end
end