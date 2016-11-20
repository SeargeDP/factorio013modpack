require("config")

local ent
local name

-- Wooden Crate
name = "wooden-crate"
ent = util.table.deepcopy(data.raw["container"]["wooden-chest"])
ent.name = name
ent.minable.result = name
ent.corpse = "medium-remnants"
ent.collision_box = {{-0.75, -0.75}, {0.75, 0.75}}
ent.selection_box = {{-1, -1}, {1, 1}}
ent.icon = Mod_Name .. "/graphics/icons/" .. name .. ".png"
ent.picture = 
	{
	  filename = Mod_Name .. "/graphics/entity/" .. name .. "/" .. name .. ".png",
	  width = 83,
	  height = 59,
	  shift = {0.5, 0.0}
	}
ent.inventory_size = wooden_crate_size
data:extend({ent})

-- Basic Repository
name = "basic-repository"
ent = util.table.deepcopy(data.raw["container"]["steel-chest"])
ent.name = name
ent.minable.result = name
ent.corpse = "big-remnants"
ent.collision_box = {{-1.4, -1.4}, {1.4, 1.4}}
ent.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
ent.icon = Mod_Name .. "/graphics/icons/" .. name .. ".png"
ent.picture = 
	{
	  filename = Mod_Name .. "/graphics/entity/" .. name .. "/" .. name .. ".png",
	  width = 156,
	  height = 127,
	  shift = {0.95, 0.2}
	}
ent.inventory_size = basic_repository_size
data:extend({ent})