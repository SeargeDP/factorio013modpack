if not angelsmods then angelsmods = {} end
if not angelsmods.processing then angelsmods.processing = {} end
if not bobmods then bobmods = {false} end

require("config")

require("prototypes.bio-processing-category")
--require("prototypes.catalysts-category")

require("prototypes.buildings.algae-farm")

require("prototypes.items.bio-processing-algae-blue")
require("prototypes.items.bio-processing-algae-green")
require("prototypes.items.bio-processing-algae-red")
require("prototypes.items.bio-processing-alien")
require("prototypes.items.bio-processing-paste")
--require("prototypes.items.catalysts-item")

require("prototypes.recipes.bio-processing-algae-blue")
require("prototypes.recipes.bio-processing-algae-green")
require("prototypes.recipes.bio-processing-algae-red")
require("prototypes.recipes.bio-processing-alien")
require("prototypes.recipes.bio-processing-entity")
--require("prototypes.recipes.catalysts")

require("prototypes.technology.bio-processing-technology")



