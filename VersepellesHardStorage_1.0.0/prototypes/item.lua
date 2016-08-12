require("config")

local item
local name

-- Wooden Crate
name = "wooden-crate"
item = util.table.deepcopy(data.raw["item"]["wooden-chest"])
item.name = name
item.icon = Mod_Name .. "/graphics/icons/" .. name .. ".png"
item.place_result = name
item.fuel_value = "32MJ"
item.order = "a[items]-c[steel-chest]-b"
data:extend({item})

-- Basic Repository
name = "basic-repository"
item = util.table.deepcopy(data.raw["item"]["steel-chest"])
item.name = name
item.icon = Mod_Name .. "/graphics/icons/" .. name .. ".png"
item.place_result = name
item.order = "a[items]-c[steel-chest]-c"
data:extend({item})