require("prototypes.collector-grounditems.entity")
require("prototypes.collector-grounditems.item")
require("prototypes.collector-grounditems.recipe") 

table.insert(data.raw["technology"]["automated-construction"].effects,{type="unlock-recipe",recipe="collector-grounditems"})