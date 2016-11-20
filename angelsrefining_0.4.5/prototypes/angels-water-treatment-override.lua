if angelsmods.refining then
	--INSERT PURIFIED WATER REFINING
	--REFINING
	OV.remove_input("angelsore1-chunk", "water")
	OV.set_input("angelsore1-chunk", "water-purified", "fluid", 5)
	OV.remove_input("angelsore2-chunk", "water")
	OV.set_input("angelsore2-chunk", "water-purified", "fluid", 5)	
	OV.remove_input("angelsore3-chunk", "water")
	OV.set_input("angelsore3-chunk", "water-purified", "fluid", 5)	
	OV.remove_input("angelsore4-chunk", "water")
	OV.set_input("angelsore4-chunk", "water-purified", "fluid", 5)	
	OV.remove_input("angelsore5-chunk", "water")
	OV.set_input("angelsore5-chunk", "water-purified", "fluid", 5)	
	OV.remove_input("angelsore6-chunk", "water")
	OV.set_input("angelsore6-chunk", "water-purified", "fluid", 5)	
	
	--SLAG PROCESSING
	OV.remove_input("slag-processing-filtering-1", "water")
	OV.set_input("slag-processing-filtering-1", "water-purified", "fluid", 5)
	OV.remove_input("slag-processing-filtering-2", "water")
	OV.set_input("slag-processing-filtering-2", "water-purified", "fluid", 5)	
	OV.set_output("slag-processing-filtering-1", "water-yellow-waste", "fluid", 5)	
	OV.set_output("slag-processing-filtering-2", "water-yellow-waste", "fluid", 5)		
	
	--CRYSTAL SLURRY
	OV.remove_input("crystal-slurry-filtering-1", "water")
	OV.set_input("crystal-slurry-filtering-1", "water-purified", "fluid", 5)
	OV.remove_input("crystal-slurry-filtering-2", "water")
	OV.set_input("crystal-slurry-filtering-2", "water-purified", "fluid", 5)	
	OV.set_output("crystal-slurry-filtering-1", "water-yellow-waste", "fluid", 5)	
	OV.set_output("crystal-slurry-filtering-2", "water-yellow-waste", "fluid", 5)	
	
	--CRYSTAL SLURRY
	OV.remove_input("crystal-slurry-filtering-conversion-1", "water")
	OV.set_input("crystal-slurry-filtering-conversion-1", "water-mineralized", "fluid", 5)
	OV.remove_input("crystal-slurry-filtering-conversion-2", "water")
	OV.set_input("crystal-slurry-filtering-conversion-2", "water-mineralized", "fluid", 5)	
	OV.set_output("crystal-slurry-filtering-conversion-1", "water-yellow-waste", "fluid", 5)	
	OV.set_output("crystal-slurry-filtering-conversion-2", "water-yellow-waste", "fluid", 5)		
	
	if angelsmods.petrochem then
		--PETROCHEM INSERT WATER RESOURCES REFINING RECIPES
		if angelsmods.petrochem.enableacids then
			OV.remove_output("angelsore1-chunk", "sulfur")	
			OV.set_output("angelsore1-chunk", "water-yellow-waste", "fluid", 5)
			OV.remove_output("angelsore2-chunk", "sulfur")	
			OV.set_output("angelsore2-chunk", "water-greenyellow-waste", "fluid", 5)	
			OV.remove_output("angelsore3-chunk", "sulfur")	
			OV.set_output("angelsore3-chunk", "water-yellow-waste", "fluid", 5)	
			OV.remove_output("angelsore4-chunk", "sulfur")	
			OV.set_output("angelsore4-chunk", "water-green-waste", "fluid", 5)	
			OV.remove_output("angelsore5-chunk", "sulfur")	
			OV.set_output("angelsore5-chunk", "water-red-waste", "fluid", 5)	
			OV.remove_output("angelsore6-chunk", "sulfur")	
			OV.set_output("angelsore6-chunk", "water-yellow-waste", "fluid", 5)	
			
			OV.add_unlock("water-treatment", "green-waste-water-purification")
			OV.add_unlock("water-treatment", "greenyellow-waste-water-purification")
			OV.set_output("greenyellow-waste-water-purification", "fluorite-ore", "item", 1)
			OV.add_unlock("water-treatment", "red-waste-water-purification")	
			
			OV.add_unlock("water-treatment", "angels-water-void-green-waste")	
			OV.add_unlock("water-treatment", "angels-water-void-greenyellow-waste")	
			OV.add_unlock("water-treatment", "angels-water-void-red-waste")	
		else
			OV.remove_output("angelsore1-chunk", "sulfur")	
			OV.set_output("angelsore1-chunk", "water-yellow-waste", "fluid", 5)
			OV.remove_output("angelsore2-chunk", "sulfur")	
			OV.set_output("angelsore2-chunk", "water-yellow-waste", "fluid", 5)	
			OV.remove_output("angelsore3-chunk", "sulfur")	
			OV.set_output("angelsore3-chunk", "water-yellow-waste", "fluid", 5)	
			OV.remove_output("angelsore4-chunk", "sulfur")	
			OV.set_output("angelsore4-chunk", "water-yellow-waste", "fluid", 5)	
			OV.remove_output("angelsore5-chunk", "sulfur")	
			OV.set_output("angelsore5-chunk", "water-yellow-waste", "fluid", 5)	
			OV.remove_output("angelsore6-chunk", "sulfur")	
			OV.set_output("angelsore6-chunk", "water-yellow-waste", "fluid", 5)			
		end
	else
		--REFINING INSERT WATER RESOUCES REFINING RECIPES
		--FLOATATION
		OV.remove_output("angelsore1-chunk", "sulfur")	
		OV.set_output("angelsore1-chunk", "water-yellow-waste", "fluid", 5)
		OV.remove_output("angelsore2-chunk", "sulfur")	
		OV.set_output("angelsore2-chunk", "water-yellow-waste", "fluid", 5)	
		OV.remove_output("angelsore3-chunk", "sulfur")	
		OV.set_output("angelsore3-chunk", "water-yellow-waste", "fluid", 5)	
		OV.remove_output("angelsore4-chunk", "sulfur")	
		OV.set_output("angelsore4-chunk", "water-yellow-waste", "fluid", 5)	
		OV.remove_output("angelsore5-chunk", "sulfur")	
		OV.set_output("angelsore5-chunk", "water-yellow-waste", "fluid", 5)	
		OV.remove_output("angelsore6-chunk", "sulfur")	
		OV.set_output("angelsore6-chunk", "water-yellow-waste", "fluid", 5)		
		
		if bobmods.plates then
		data:extend(
		{
		  {
			type = "recipe",
			name = "salt-water-electrolysis-2",
			category = "electrolysis",
			enabled = "false",
			energy_required = 1,
			ingredients =
			{
			  {type="fluid", name="water-saline", amount=4}
			},
			results=
			{
			  {type="item", name="sodium-hydroxide", amount=1},
			  {type="fluid", name="chlorine", amount=2},
			  {type="fluid", name="hydrogen", amount=2},
			},
			icon = "__angelsrefining__/graphics/icons/electrolysis-salt-water.png",
			subgroup = "bob-fluid-electrolysis",
			order = "b[fluid-chemistry]-b[salt-water-electrolysis]"
		  },
		}
		)
		
		OV.add_unlock("water-treatment", "salt-water-electrolysis-2")
		end
		
		if angelsmods.smelting then
			OV.remove_input("angelsore8-chunk", "water")
			OV.set_input("angelsore8-chunk", "water-purified", "fluid", 5)
			--data.raw["recipe"]["angelsore8-chunk"].ingredients[2]={type="fluid", name="water-purified", amount=5}
			OV.set_output("angelsore8-chunk", "water-yellow-waste", "fluid", 5)
			--data.raw["recipe"]["angelsore8-chunk"].results[2]={type = "fluid", name = "water-yellow-waste", amount=5}
		end
	end
	
	--GENERAL OVERRIDE FOR BOBS
	if bobmods.plates then
	--Change icon for bobs lithia water	
		data.raw["fluid"]["lithia-water"].icon = "__angelsrefining__/graphics/icons/water-lithia.png"
		
	--insert water resources to bob recipes
		OV.remove_input("water-electrolysis", "water")
		OV.set_input("water-electrolysis", "water-purified", "fluid", 1)
		OV.remove_input("nitric-acid", "water")
		OV.set_input("nitric-acid", "water-purified", "fluid", 2)		
		OV.remove_input("sulfuric-acid-2", "water")
		OV.set_input("sulfuric-acid-2", "water-purified", "fluid", 5)	
		OV.remove_input("petroleum-gas-cracking", "water")
		OV.set_input("petroleum-gas-cracking", "water-purified", "fluid", 1)
		OV.remove_input("coal-cracking", "water")
		OV.set_input("coal-cracking", "water-purified", "fluid", 1.5)	
		OV.remove_input("lithium-water-electrolysis", "water")
		OV.set_input("lithium-water-electrolysis", "water-purified", "fluid", 2)	
		OV.remove_input("explosives", "water")
		OV.set_input("explosives", "water-purified", "fluid", 1)
		OV.remove_input("sulfur", "water")
		OV.set_input("sulfur", "water-purified", "fluid", 3)
		OV.remove_input("sulfuric-acid", "water")
		OV.set_input("sulfuric-acid", "water-purified", "fluid", 10)
		OV.remove_input("heavy-oil-cracking", "water")
		OV.set_input("heavy-oil-cracking", "water-purified", "fluid", 3)
		OV.remove_input("light-oil-cracking", "water")
		OV.set_input("light-oil-cracking", "water-purified", "fluid", 3)
		OV.remove_input("advanced-oil-processing", "water")
		OV.set_input("advanced-oil-processing", "water-purified", "fluid", 5)	
		
		--data.raw["recipe"]["water-electrolysis"].ingredients[1]={type="fluid", name="water-purified", amount=1}
		--data.raw["recipe"]["nitric-acid"].ingredients[1]={type="fluid", name="water-purified", amount=2}
		--data.raw["recipe"]["sulfuric-acid-2"].ingredients[1]={type="fluid", name="water-purified", amount=5}
		--data.raw["recipe"]["petroleum-gas-cracking"].ingredients[1]={type="fluid", name="water-purified", amount=1}
		--data.raw["recipe"]["coal-cracking"].ingredients[2]={type="fluid", name="water-purified", amount=1.5}
		--data.raw["recipe"]["lithium-water-electrolysis"].ingredients[2]={type="fluid", name="water-purified", amount=2}

		--data.raw["recipe"]["explosives"].ingredients[3]={type="fluid", name="water-purified", amount=1}
		--data.raw["recipe"]["sulfur"].ingredients[1]={type="fluid", name="water-purified", amount=3}
		--data.raw["recipe"]["sulfuric-acid"].ingredients[3]={type="fluid", name="water-purified", amount=10}
		--data.raw["recipe"]["heavy-oil-cracking"].ingredients[1]={type="fluid", name="water-purified", amount=3}
		--data.raw["recipe"]["light-oil-cracking"].ingredients[1]={type="fluid", name="water-purified", amount=3}
		--data.raw["recipe"]["advanced-oil-processing"].ingredients[1]={type="fluid", name="water-purified", amount=5}
		
		data:extend(
		{
		  {
			type = "recipe",
			name = "water-thermal-lithia",
			category = "water-treatment",
			subgroup = "water-treatment",
			enabled = "false",
			energy_required = 1,
			ingredients =
			{
			  {type="fluid", name="thermal-water", amount=10}
			},
			results=
			{
			  {type="fluid", name="lithia-water", amount=4},
			  {type="fluid", name="water-purified", amount=6},
			},
			icon = "__angelsrefining__/graphics/icons/water-thermal-lithia.png",
			order = "g[water-thermal-lithia]"
		  },
		}
		)
		
		OV.add_unlock("water-treatment", "angels-water-void-saline")
		OV.add_unlock("water-treatment", "water-thermal-lithia")
		OV.add_unlock("water-treatment", "water-mineralized")
	end

	--GENERAL OVERRIDE FOR YUOKI
	if data.raw.item["y-res1"] then
		data:extend({
			{
			type = "recipe",
			name = "yellow-waste-water-purification-yi",
			category = "water-treatment",
			subgroup = "water-treatment",
			energy_required = 1,
			enabled = "false",
			ingredients ={
			{type="fluid", name="water-yellow-waste", amount=10}
			},
			results=
			{
			  {type="fluid", name="y-con_water", amount=2},
			  {type="fluid", name="water-purified", amount=7},
			  {type="item", name="sulfur", amount=1},
			},
			icon = "__angelsrefining__/graphics/icons/water-yellow-waste-purification-yi.png",
			order = "a[yellow-waste-water-purification-yi]",
			},
		})
		OV.add_unlock("water-treatment", "yellow-waste-water-purification-yi")
	end
end