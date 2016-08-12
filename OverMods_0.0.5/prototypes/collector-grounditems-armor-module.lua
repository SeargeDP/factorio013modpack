require("prototypes.collector-grounditems-armor-module.equipment")
require("prototypes.collector-grounditems-armor-module.item")
require("prototypes.collector-grounditems-armor-module.recipe")

table.insert(data.raw["technology"]["personal-roboport-equipment"].effects,{type="unlock-recipe",recipe="collector-grounditems-armor-module"})
