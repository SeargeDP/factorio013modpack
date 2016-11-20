--INITIALIZE
if not angelsmods then angelsmods = {} end
if not angelsmods.petrochem then angelsmods.petrochem = {} end
if not bobmods then bobmods = {false} end

--TRIGGER CHECKS
if angelsmods.petrochem.convertertrigger then
	angelsmods.petrochem.hideconverter = false
	else
	angelsmods.petrochem.hideconverter = true
end

if angelsmods.petrochem.acidtrigger then
	angelsmods.petrochem.enableacids = false
	else
	angelsmods.petrochem.enableacids = true
end

--LOAD PROTOTYPES	
require("prototypes.petrochem-category")

require("prototypes.buildings.pipes-overlay")
require("prototypes.buildings.advanced-chemical-plant")
require("prototypes.buildings.gas-refinery")
require("prototypes.buildings.flare-stack")
require("prototypes.buildings.steam-cracker")
require("prototypes.buildings.separator")
require("prototypes.buildings.electrolyser")
require("prototypes.buildings.air-filter")
require("prototypes.buildings.valves")
require("prototypes.buildings.storage-tanks")

require("prototypes.buildings.fluid-splitter")

require("prototypes.items.petrochem-basics")
require("prototypes.items.petrochem-carbons")
require("prototypes.items.petrochem-chlorine")
require("prototypes.items.petrochem-nitrogen")
require("prototypes.items.petrochem-raws")
require("prototypes.items.petrochem-solids")
require("prototypes.items.petrochem-sulfur")
require("prototypes.items.petrochem-barrels")

require("prototypes.recipes.petrochem-basics")
require("prototypes.recipes.petrochem-carbons")
require("prototypes.recipes.petrochem-nitrogen")
require("prototypes.recipes.petrochem-solids")
require("prototypes.recipes.petrochem-sulfur")
require("prototypes.recipes.petrochem-chlorine")

require("prototypes.recipes.petrochem-barrels-raws")

require("prototypes.recipes.petrochem-entity")

require("prototypes.recipes.petrochem-converter")
require("prototypes.recipes.petrochem-splitter")

require("prototypes.recipes.petrochem-void")

require("prototypes.technology.bob-technology")