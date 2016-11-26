if not angelsmods then angelsmods = {} end
if not angelsmods.smelting then angelsmods.smelting = {} end
if not bobmods then bobmods = {false} end

angelsmods.smelting.enablesmelting = true

if angelsmods.smelting.enablesmelting then
	require("prototypes.angels-smelting-category")

	require("prototypes.buildings.induction-furnace")
	require("prototypes.buildings.blast-furnace")
	require("prototypes.buildings.casting-machine")
	require("prototypes.buildings.ore-processing-machine")
	require("prototypes.buildings.pellet-press")
	require("prototypes.buildings.sintering-oven")
	require("prototypes.buildings.strand-casting-machine")
	
	require("prototypes.items.angels-ores")
	require("prototypes.items.angels-aluminium")
	--require("prototypes.items.angels-chrome")
	require("prototypes.items.angels-cobalt")
	require("prototypes.items.angels-copper")
	require("prototypes.items.angels-gold")
	require("prototypes.items.angels-iron")
	require("prototypes.items.angels-lead")
	require("prototypes.items.angels-manganese")
	require("prototypes.items.angels-nickel")
	--require("prototypes.items.angels-platinum")
	require("prototypes.items.angels-silicon")
	require("prototypes.items.angels-silver")
	require("prototypes.items.angels-tin")
	require("prototypes.items.angels-titanium")
	require("prototypes.items.angels-tungsten")
	require("prototypes.items.angels-zinc")
	--require("prototypes.items.angels-solder")
	--require("prototypes.items.angels-steel")

	require("prototypes.recipes.angels-smelting-aluminium")
	--require("prototypes.recipes.angels-smelting-chrome")
	require("prototypes.recipes.angels-smelting-cobalt")
	require("prototypes.recipes.angels-smelting-copper")
	require("prototypes.recipes.angels-smelting-gold")
	require("prototypes.recipes.angels-smelting-iron")
	require("prototypes.recipes.angels-smelting-lead")
	--require("prototypes.recipes.angels-smelting-manganese")
	require("prototypes.recipes.angels-smelting-nickel")
	--require("prototypes.recipes.angels-smelting-platinum")
	require("prototypes.recipes.angels-smelting-silicon")
	require("prototypes.recipes.angels-smelting-silver")
	require("prototypes.recipes.angels-smelting-tin")
	require("prototypes.recipes.angels-smelting-titanium")
	require("prototypes.recipes.angels-smelting-tungsten")
	require("prototypes.recipes.angels-smelting-zinc")
	--require("prototypes.recipes.angels-smelting-solder")
	--require("prototypes.recipes.angels-smelting-steel")
	
	require("prototypes.recipes.angels-smelting-plates")	
	
	require("prototypes.recipes.bob-smelting-entity")
	
	require("prototypes.technology.bob-smelting-technology")
end