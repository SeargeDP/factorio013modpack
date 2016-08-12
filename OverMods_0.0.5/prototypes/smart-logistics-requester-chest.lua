require("prototypes.smart-logistics-requester-chest.entity")
require("prototypes.smart-logistics-requester-chest.item")
require("prototypes.smart-logistics-requester-chest.recipe") 

table.insert(data.raw["technology"]["automated-construction"].effects,{type="unlock-recipe",recipe="smart-logistics-requester-chest"})
