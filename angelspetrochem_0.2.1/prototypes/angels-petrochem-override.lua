OV = require "prototypes.override-functions"

--CONFIG OPTIONs   
if angelsmods.petrochem.hideconverter then
   data.raw["recipe"]["converter-sulfuric-acid"].hidden = "true"
   data.raw["recipe"]["converter-angels-sulfuric-acid"].hidden = "true"
   --data.raw["recipe"]["liquid-lubricant"].hidden = "true"
   data.raw["recipe"]["liquid-heavy-oil"].hidden = "true"
   data.raw["recipe"]["liquid-light-oil"].hidden = "true"
   data.raw["recipe"]["liquid-petroleum-gas"].hidden = "true"
   if bobmods.plates then
      data.raw["recipe"]["converter-bob-chlorine"].hidden = "true"
      data.raw["recipe"]["converter-angels-chlorine"].hidden = "true"
      data.raw["recipe"]["converter-bob-oxygen"].hidden = "true"
      data.raw["recipe"]["converter-angels-oxygen"].hidden = "true"
      data.raw["recipe"]["converter-bob-hydrogen"].hidden = "true"
      data.raw["recipe"]["converter-angels-hydrogen"].hidden = "true"
      data.raw["recipe"]["converter-bob-hydrogen-chloride"].hidden = "true"
      data.raw["recipe"]["converter-angels-hydrogen-chloride"].hidden = "true"
      data.raw["recipe"]["converter-bob-nitrogen"].hidden = "true"
      data.raw["recipe"]["converter-angels-nitrogen"].hidden = "true"
      data.raw["recipe"]["converter-bob-sulfur-dioxide"].hidden = "true"
      data.raw["recipe"]["converter-angels-sulfur-dioxide"].hidden = "true"
   end
end

--OVERRIDE FOR BASE
   data.raw["resource"]["crude-oil"]["minable"].results={{type = "fluid", name = "liquid-multi-phase-oil", amount_min = 1, amount_max = 1, probability = 1}}
   data.raw["item"]["sulfur"].icon = "__angelspetrochem__/graphics/icons/solid-sulfur.png"
   table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying")

   OV.global_replace_item("heavy-oil", "liquid-naphtha")
   OV.global_replace_item("light-oil", "liquid-fuel-oil")
   --OV.global_replace_item("lubricant", "liquid-mineral-oil")
   OV.disable_recipe("lubricant")
   OV.global_replace_item("petroleum-gas", "gas-methane")
   OV.global_replace_item("sulfuric-acid", "liquid-sulfuric-acid")
   OV.global_replace_icon("__base__/graphics/icons/fluid/sulfuric-acid.png", "__angelspetrochem__/graphics/icons/liquid-sulfuric-acid.png")
   
   OV.remove_input("rocket-fuel", "solid-fuel")
   OV.set_input("rocket-fuel", "gas-hydrazine", "fluid", 40)
   OV.set_input("rocket-fuel", "gas-dimethylhydrazine", "fluid", 40)   
   data.raw["recipe"]["rocket-fuel"].category = "chemistry"
   
--OVERRIDE FOR ANGELS REFINING
if angelsmods.refining then
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant"].crafting_categories,"liquifying")
	table.insert(data.raw["assembling-machine"]["advanced-chemical-plant-2"].crafting_categories,"liquifying")
	OV.set_special_recipe_override("carbon-separation-1", { category = "liquifying" })
	OV.set_special_recipe_override("carbon-separation-2", { category = "liquifying" })

	OV.remove_unlock("slag-processing-1", "liquifier")
	OV.add_unlock("basic-chemistry", "liquifier")
	OV.remove_unlock("slag-processing-2", "liquifier-2")
	OV.add_unlock("angels-advanced-chemistry-1", "liquifier-2")
	OV.add_unlock("angels-advanced-chemistry-2", "liquifier-3")
	OV.add_unlock("angels-advanced-chemistry-3", "liquifier-4")
	data.raw["recipe"]["liquifier"].subgroup = "petrochem-electrolyser"
	data.raw["recipe"]["liquifier"].order = "e"
	data.raw["recipe"]["liquifier-2"].subgroup = "petrochem-electrolyser"
	data.raw["recipe"]["liquifier-2"].order = "f"
	data.raw["recipe"]["liquifier-3"].subgroup = "petrochem-electrolyser"
	data.raw["recipe"]["liquifier-3"].order = "g"
	data.raw["recipe"]["liquifier-4"].subgroup = "petrochem-electrolyser"
	data.raw["recipe"]["liquifier-4"].order = "h"
	--ACID OVERRIDE FOR REFINING
	if angelsmods.petrochem.enableacids then
		OV.remove_input("angelsore2-crystal", "liquid-sulfuric-acid")     
		OV.set_input("angelsore2-crystal", "liquid-hydrofluoric-acid", "fluid", 0.5)
		OV.remove_input("angelsore4-crystal", "liquid-sulfuric-acid")     
		OV.set_input("angelsore4-crystal", "liquid-hydrochloric-acid", "fluid", 0.5)
		OV.remove_input("angelsore5-crystal", "liquid-sulfuric-acid")     
		OV.set_input("angelsore5-crystal", "liquid-nitric-acid", "fluid", 0.5)
	end
end

--OVERRIDE FOR BOBs
if bobmods.plates then
   OV.global_replace_item("carbon", "solid-carbon")
   OV.global_replace_item("chlorine", "gas-chlorine")
   OV.global_replace_item("hydrogen", "gas-hydrogen")
   OV.global_replace_item("hydrogen-chloride", "gas-hydrogen-chloride")
   OV.global_replace_item("nitric-acid", "liquid-nitric-acid")
   OV.global_replace_item("nitrogen", "gas-nitrogen")
   --OV.global_replace_icon("__bobplates__/graphics/icons/nitrogen.png", "__angelspetrochem__/graphics/icons/gas-nitrogen.png")
   OV.global_replace_item("nitrogen-dioxide", "gas-nitrogen-dioxide")
   --OV.global_replace_icon("__bobplates__/graphics/icons/nitrogen-dioxide.png", "__angelspetrochem__/graphics/icons/gas-nitrogen-dioxide.png")
   OV.global_replace_item("oxygen", "gas-oxygen")
   OV.global_replace_item("sodium-hydroxide", "solid-sodium-hydroxide")
   OV.global_replace_item("sulfur-dioxide", "gas-sulfur-dioxide")
   OV.global_replace_item("liquid-air", "gas-compressed-air")
   
   OV.global_replace_item("solid-resin-1", "resin")
   OV.global_replace_item("solid-resin-2", "resin")
   OV.global_replace_item("calcium-chloride", "solid-calcium-chloride")
   OV.set_output("solid-resin-2", "resin", "item", 2)
   OV.remove_output("solid-resin-2", "gas-ammonia")
   OV.remove_output("solid-resin-2", "gas-carbon-dioxide")
   OV.global_replace_item("solid-rubber", "rubber")
   OV.set_output("solid-rubber", "rubber", "item", 2)

   OV.set_output("lithium-water-electrolysis", "gas-hydrogen", "fluid", 2)

   OV.remove_input("petroleum-jelly", "liquid-naphtha")
   OV.set_input("petroleum-jelly", "gas-residual", "fluid", 2)

   OV.replace_item("polishing-compound", "liquid-fuel-oil", "liquid-mineral-oil")

   OV.remove_unlock("chemical-processing-1", "carbon")
   
   --plastic
   OV.global_replace_item("solid-plastic-1", "plastic-bar")
   OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-1.png", "__base__/graphics/icons/plastic-bar.png")
   OV.global_replace_item("solid-plastic-2", "plastic-bar")
   OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-2.png", "__base__/graphics/icons/plastic-bar.png")
   OV.global_replace_item("solid-plastic-3", "plastic-bar")
   OV.global_replace_icon("__angelspetrochem__/graphics/icons/solid-plastic-3.png", "__base__/graphics/icons/plastic-bar.png")
   OV.set_output("solid-plastic-2", "plastic-bar", "item", 2)
   OV.set_output("solid-plastic-3", "plastic-bar", "item", 3)
   
   --remove techs
   --water electrolysis
   OV.disable_recipe("water-electrolysis")
   OV.disable_recipe("salt-water-electrolysis")
   OV.disable_recipe("salt")
   OV.remove_unlock("chemical-processing-2", "hydrogen-chloride")
   OV.remove_unlock("chemical-processing-2", "solid-fuel-from-hydrogen")

   --air-compressor-1
   OV.remove_unlock("air-compressor-1", "bob-liquid-air")
   
   --nitrogen processing
   OV.global_replace_technology("nitrogen-processing", "angels-nitrogen-processing-2")
   OV.remove_prereq("ceramics", "nitrogen-processing")
   OV.add_prereq("ceramics", "angels-nitrogen-processing-1")

   --sulfur processing
   OV.global_replace_technology("sulfur-processing", "angels-sulfur-processing-1")

   --nitroglycerin-processing
   OV.remove_unlock("nitroglycerin-processing", "glycerol")
   OV.add_prereq("nitroglycerin-processing", "chlorine-processing-2")
   
   --plastics
   OV.remove_unlock("plastics", "plastic-bar")
   
   --oil processing
   OV.global_replace_technology("oil-processing", "angels-oil-processing")

   --OV.add_unlock("angels-oil-processing", "lubricant")
   OV.add_unlock("angels-oil-processing", "liquid-fuel")

   --OV.disable_technology("advanced-oil-processing")
   --OV.remove_unlock("advanced-oil-processing", "heavy-oil-cracking")
   --OV.remove_unlock("advanced-oil-processing", "light-oil-cracking")
   OV.global_replace_technology("advanced-oil-processing", "angels-advanced-oil-processing")
   OV.disable_technology("oil-processing-2")
   OV.disable_technology("oil-processing-3")
   OV.disable_technology("oil-processing-4")
end 
if bobmods.greenhouse then
   OV.set_input("bob-fertiliser", "gas-urea", "fluid", 2)
   OV.remove_input("bob-fertiliser", "gas-methane")
   OV.remove_input("bob-fertiliser", "gas-nitrogen")
   OV.remove_prereq("bob-fertiliser", "nitrogen-processing")
   OV.add_prereq("bob-fertiliser", "angels-nitrogen-processing-1")
end
if bobmods.electronics then
   OV.global_replace_item("electronic-circuit", "basic-circuit-board")
end
if bobmods.warfare then
   OV.global_replace_item("glycerol", "gas-glycerol")

   OV.replace_item("gun-cotton", "liquid-sulfuric-acid", "liquid-nitric-acid")
   OV.replace_item("gun-cotton-synthetic", "liquid-sulfuric-acid", "liquid-nitric-acid")
end
   
-- EXECUTE OVERRIDEs
OV.execute()