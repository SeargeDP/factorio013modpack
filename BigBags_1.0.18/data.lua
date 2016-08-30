require("config")

		-- vanilla player data :
		-- inventory_size = 60,
		-- build_distance = 6,
		-- drop_item_distance = 6,
		-- reach_distance = 6,
		-- item_pickup_distance = 1,
		-- reach_resource_distance = 2.7,
		-- loot_pickup_distance = 2,
		
---------------------------------------------------------------------
local func_techno
		
local function add_techno_level(name,n1,n,add_ingrs)
	local techno = func_techno(n,n-n1)
	
	techno.type = "technology"
	techno.upgrade = true
	
	if n > 1 then
		techno.name = name .. "-" .. n
		if n == 2 then
			techno.prerequisites = {name}
		else
		techno.prerequisites = {name .. "-" .. (n-1)}
		end
	else
		techno.name = name
	end
	
	if add_ingrs then
		if n >= 1 then
			table.insert(techno.unit.ingredients,{"science-pack-1", 1})
		end
		if n >= 2 then
			table.insert(techno.unit.ingredients,{"science-pack-2", 1})
		end
		if n >= 3 then
			table.insert(techno.unit.ingredients,{"science-pack-3", 1})
		end
		if n >= 4 then
			table.insert(techno.unit.ingredients,{"alien-science-pack", 1})
		end
	end
	
	data:extend({techno})
end

local function add_technos(name,n1,n2,add_ingrs)
	for n=n1,n2 do
		add_techno_level(name,n1,n,add_ingrs)
	end
end

---------------------------------------------------------------------
-- inventory

func_techno = function(n,inc)
	return {
		icon = "__BigBags__/graphics/inventory.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-inventory-slots-bonus",
				modifier = (n < 4) and 30 or 20
				-- modifier = 20
			}
		},
		unit =
		{
			count = 100+50*inc,
			ingredients = {},
			time = 20+5*inc
		},
		order = "c-k-l..n",
	}
end

add_technos("inventory-size",1,5,true)

---------------------------------------------------------------------
-- toolbelt

data.raw.technology["toolbelt"].upgrade = true

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/toolbelt.png",
		effects =
		{
			{
				type = "num-quick-bars",
				modifier = 1
			}
		},
		unit =
		{
			count = 200+50*inc,
			ingredients = {},
			time = 35+5*inc
		},
		order = "c-k-m..n"
	}
end

add_technos("toolbelt",2,3,true)

---------------------------------------------------------------------
-- pickstick

func_techno = function(n,inc)
	return {
		icon = "__BigBags__/graphics/pickstick.png",
		icon_size = 128,
		effects =
		{
			{
				type = "character-build-distance",
				modifier = 12*n
			},
			{
				type = "character-item-drop-distance",
				modifier = 12*n
			},
			{
				type = "character-reach-distance",
				modifier = 12*n
			},
			-- {
				-- type = "character-item-pickup-distance",
				-- modifier = 12*n
			-- },
			{
				type = "character-resource-reach-distance",
				modifier = 12*n
			},
			{
				type = "character-loot-pickup-distance",
				modifier = 0.5
			},
		},
		unit =
		{
			count = 100+50*inc,
			ingredients = {},
			time = 30 + 10*inc
		},
		order = "c-k-n"..n,
	}
end

add_technos("pickstick",1,5,true)

---------------------------------------------------------------------
-- character-logistic-slots

-- correction of vanilla cost
data.raw.technology["character-logistic-slots-5"].unit.count = 200

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/character-logistic-slots.png",
		effects =
		{
			{
				type = "character-logistic-slots",
				modifier = 5,
			}
		},
		unit =
		{
			count = 250+50*inc,
			ingredients =
			{
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1},
			},
			time = 30 + 5*inc,
		},
		order = "c-k-e-f"..n
	}
end

add_technos("character-logistic-slots",6,9,false)

---------------------------------------------------------------------
-- character-logistic-trash-slots

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/character-logistic-trash-slots.png",
		effects =
		{
			{
				type = "character-logistic-trash-slots",
				modifier = 5
			}
		},
		prerequisites = {"character-logistic-trash-slots-2"},
		unit =
		{
			count = 200+100*inc,
			ingredients = {},
			time = 35 + 5*inc,
		},
		order = "c-k-f-e"..n
	}
end

add_technos("character-logistic-trash-slots",3,4,true)

---------------------------------------------------------------------
-- worker-robots-storage

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/worker-robots-storage.png",
		effects = {
			{
				type = "worker-robot-storage",
				modifier = "1"
			}
		},
		unit = {
			count = 500+inc*100,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1},
			},
			time = 60
		},
		order = "c-k-g-d"..n
	}
end

add_technos("worker-robots-storage",4,8,false)

---------------------------------------------------------------------
-- worker-robots-speed

func_techno = function(n,inc)
	return {
		icon = "__base__/graphics/technology/worker-robots-speed.png",
		effects = {
			{
				type = "worker-robot-speed",
				modifier = "0.8"
			}
		},
		unit = {
			count = 650+50*inc,
			ingredients = {
				{"science-pack-1", 1},
				{"science-pack-2", 1},
				{"science-pack-3", 1},
				{"alien-science-pack", 1},
			},
			time = 60,
		},
		order = "c-k-f-f"..n
	}
end

add_technos("worker-robots-speed",6,8,false)

