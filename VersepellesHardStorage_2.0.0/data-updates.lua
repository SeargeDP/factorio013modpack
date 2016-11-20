require("config")

data.raw["player"]["player"].inventory_size = starting_inventory_size

if data.raw["container"]["wooden-chest"] then data.raw["container"]["wooden-chest"].inventory_size = wooden_chest_size end
if data.raw["container"]["iron-chest"] then data.raw["container"]["iron-chest"].inventory_size = iron_chest_size end
if data.raw["container"]["steel-chest"] then data.raw["container"]["steel-chest"].inventory_size = steel_chest_size end
if data.raw["logistic-container"]["logistic-chest-passive-provider"] then data.raw["logistic-container"]["logistic-chest-passive-provider"].inventory_size = logistic_chest_size end
if data.raw["logistic-container"]["logistic-chest-storage"] then data.raw["logistic-container"]["logistic-chest-storage"].inventory_size = logistic_chest_size end
if data.raw["logistic-container"]["logistic-chest-requester"] then data.raw["logistic-container"]["logistic-chest-requester"].inventory_size = logistic_chest_size end
if data.raw["cargo-wagon"]["cargo-wagon"] then data.raw["cargo-wagon"]["cargo-wagon"].inventory_size = cargo_wagon_size end
if data.raw["car"]["car"] then data.raw["car"]["car"].inventory_size = car_and_tank_size end
if data.raw["car"]["tank"] then data.raw["car"]["tank"].inventory_size = car_and_tank_size end

table.insert(data.raw["technology"]["steel-processing"].effects, {type = "unlock-recipe", recipe = "basic-repository"})
