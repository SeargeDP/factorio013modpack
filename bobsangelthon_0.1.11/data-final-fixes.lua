require("prototypes.override-functions")
require("prototypes.technology")

if angelsmods.refining then 
  require("prototypes.entities.bobsangelthon-refining-entities")
  require("prototypes.recipes.bobsangelthon-refining-recipes")
end

if angelsmods.processing then 
  require("prototypes.entities.bobsangelthon-processing-entities")
  require("prototypes.recipes.bobsangelthon-processing-recipes")
end

if angelsmods.petrochem then 
  require("prototypes.entities.bobsangelthon-petrochem-entities")
  require("prototypes.recipes.bobsangelthon-petrochem-recipes")
  data.raw["item"]["coal-crushed"].fuel_value = "2MJ"
  data.raw["item"]["solid-coke"].fuel_value = "4MJ"
  data.raw["item"]["solid-carbon"].fuel_value = "6MJ"
  data.raw["item"]["pellet-coke"].fuel_value = "24MJ"
end

if angelsmods.smelting then 
  require("prototypes.entities.bobsangelthon-smelting-entities")
  
  require("prototypes.recipes.smelting.bobsangelthon-smelting-aluminium")
  --require("prototypes.recipes.smelting.bobsangelthon-smelting-chrome")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-cobalt")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-copper")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-gold")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-iron")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-lead")
  --require("prototypes.recipes.smelting.bobsangelthon-smelting-manganese")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-nickel")
  --require("prototypes.recipes.smelting.bobsangelthon-smelting-platinum")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-silicon")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-silver")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-tin")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-titanium")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-tungsten")
  require("prototypes.recipes.smelting.bobsangelthon-smelting-zinc")
  --require("prototypes.recipes.smelting.bobsangelthon-smelting-solder")
  --require("prototypes.recipes.smelting.bobsangelthon-smelting-steel")
	
  require("prototypes.recipes.smelting.bobsangelthon-smelting-plates")
end

if angelsmods.addons.oresilo then 
  require("prototypes.entities.bobsangelthon-oresilo-entities")
end

if angelsmods.addons.pressuretanks then
  require("prototypes.entities.bobsangelthon-pressure-tanks")
end

if angelsmods.addons.warehouses then
  require("prototypes.entities.bobsangelthon-warehouse-entities")
end
