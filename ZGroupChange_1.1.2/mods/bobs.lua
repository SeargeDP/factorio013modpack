local allow_changes = z_balance.bob

do	--[[gathering]]--
	aadd("gathering-0",		"brass-axe",				"c")
	aadd("gathering-0",		"cobalt-axe",				"d")
	aadd("gathering-0",		"titanium-axe",				"e")
	aadd("gathering-0",		"tungsten-axe",				"f")
	aadd("gathering-0",		"diamond-axe",				"g")
	
	aadd("gathering-3",		"storage-tank-2",			"b")
	aadd("gathering-3",		"storage-tank-3",			"c")
	aadd("gathering-3",		"storage-tank-4",			"d")
	
  if i_not_exist("5d-mining-drill-speed-1") then
	aadd("gathering-4",		"bob-mining-drill-1",		"b")
	aadd("gathering-4",		"bob-mining-drill-2",		"c")
	aadd("gathering-4",		"bob-mining-drill-3",		"d")
	aadd("gathering-4",		"bob-mining-drill-4",		"e")
  else
	aadd("gathering-5",		"bob-mining-drill-1",		"a")
	aadd("gathering-5",		"bob-mining-drill-2",		"b")
	aadd("gathering-5",		"bob-mining-drill-3",		"c")
	aadd("gathering-5",		"bob-mining-drill-4",		"d")
  end
	
	aadd("gathering-6",		"bob-area-drill-1",			"b")
	aadd("gathering-6",		"bob-area-drill-2",			"c")
	aadd("gathering-6",		"bob-area-drill-3",			"d")
	aadd("gathering-6",		"bob-area-drill-4",			"e")

	aadd("gathering-7",		"bob-area-mining-drill-1",	"a")
	aadd("gathering-7",		"bob-area-mining-drill-2",	"b")
	aadd("gathering-7",		"bob-area-mining-drill-3",	"c")
	aadd("gathering-7",		"bob-area-mining-drill-4",	"d")
  
  if allow_changes and i_not_exist("5d-small-pump") then
	aadd("gathering-8",		"small-pump-2",				"e")
	aadd("gathering-8",		"small-pump-3",				"f")
	aadd("gathering-8",		"small-pump-4",				"g")
  elseif allow_changes then
	aadd("gathering-8",		"small-pump",				"d")
	aadd("gathering-8",		"5d-small-pump",			"e")
	aadd("gathering-8",		"5d-small-pump-2",			"f")
	aadd("gathering-8",		"void-pump",				"j")
	
	ahide("small-pump-2")
	ahide("small-pump-3")
	ahide("small-pump-4")
	switch_tech("bob-fluid-handling-3")
	switch_tech("bob-fluid-handling-4")
  else
	aadd("gathering-10",		"small-pump",				"a")
	aadd("gathering-10",		"small-pump-2",				"b")
	aadd("gathering-10",		"small-pump-3",				"c")
	aadd("gathering-10",		"small-pump-4",				"d")
	aadd("gathering-10",		"5d-small-pump",			"e")
	aadd("gathering-10",		"5d-small-pump-2",			"f")
	aadd("gathering-10",		"void-pump",				"g")
  end
		
	aadd("gathering-9",		"water-miner-1",			"a", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("gathering-9",		"water-miner-2",			"b", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("gathering-9",		"water-miner-3",			"c", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("gathering-9",		"water-miner-4",			"d", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("gathering-9",		"water-miner-5",			"e", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("gathering-9",		"pumpjack",					"f", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("gathering-9",		"bob-pumpjack-1",			"g", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("gathering-9",		"bob-pumpjack-2",			"h", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("gathering-9",		"bob-pumpjack-3",			"i", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("gathering-9",		"bob-pumpjack-4",			"j", "__ZGroupChange__/graphics/icons/pump_oil.png")
	
	aadd("gathering-11",		"water-pump",				"a")
	aadd("gathering-11",		"water-pump-1",				"b")
	aadd("gathering-11",		"water-pump-2",				"c")
	aadd("gathering-11",		"water-pump-3",				"d")
	aadd("gathering-11",		"water-pump-4",				"e")
	aadd("gathering-11",		"water-pump-5",				"f")
	aadd("gathering-11",		"air-pump",					"g")
	aadd("gathering-11",		"air-pump-1",				"h")
	aadd("gathering-11",		"air-pump-2",				"i")
	aadd("gathering-11",		"air-pump-3",				"j")
	aadd("gathering-11",		"air-pump-4",				"k")
	aadd("gathering-11",		"air-pump-5",				"l")
  
  if allow_changes then
	ahide("bob-area-drill-1")
	ahide("bob-area-drill-2")
	ahide("bob-area-drill-3")
	ahide("bob-area-drill-4")
	ahide("bob-mining-drill-1")
	ahide("bob-mining-drill-2")
	ahide("bob-mining-drill-3")
	ahide("bob-mining-drill-4")
	ahide("bob-area-mining-drill-1")
	ahide("bob-area-mining-drill-2")
	ahide("bob-area-mining-drill-3")
	ahide("bob-area-mining-drill-4")
	
	ahide("5d-storage-tank")
	ahide("5d-pumpjack-2")
	ahide("5d-pumpjack-3")
	
	switch_tech("bob-drills-1")
	switch_tech("bob-drills-2")
	switch_tech("bob-drills-3")
	switch_tech("bob-drills-4")
	switch_tech("bob-area-drills-1")
	switch_tech("bob-area-drills-2")
	switch_tech("bob-area-drills-3")
	switch_tech("bob-area-drills-4")
	
	switch_tech("fluid-handling-2")
	switch_tech("advanced-oil-processing-2")
	
	zgc.t_add_recipe_unlock("bob-fluid-handling-2", "storage-tank-2")
	zgc.t_add_recipe_unlock("bob-fluid-handling-3", "storage-tank-3")
	zgc.t_add_recipe_unlock("bob-fluid-handling-4", "storage-tank-4")
  end
  
end
do	--[[production]]--
	aadd("production-0",		"stone-furnace",				"a")
	aadd("production-0",		"chemical-boiler",				"b")
	aadd("production-0",		"mixing-furnace",				"c")
	aadd("production-0",		"steel-furnace",				"d")
	aadd("production-0",		"5d-furnace",					"e")
	aadd("production-0",		"5d-masher",					"f")
	aadd("production-0",		"5d-masher-2",					"g")
	
	aadd("production-2",		"electric-furnace",				"c")
	aadd("production-2",		"electric-furnace-2",			"d")
	aadd("production-2",		"electric-furnace-3",			"e")
	aadd("production-2",		"chemical-furnace",				"f", "__ZGroupChange__/graphics/icons/chemical-furnace.png")
	aadd("production-2",	"electric-chemical-mixing-furnace",	"g")
	aadd("production-2",	"electric-chemical-mixing-furnace-2","h")
	
	aadd("production-4",		"assembling-machine-1",			"a", "__ZGroupChange__/graphics/icons/assembling-machine-1.png")
	aadd("production-4",		"assembling-machine-2",			"b", "__ZGroupChange__/graphics/icons/assembling-machine-2.png")
	aadd("production-4",		"assembling-machine-3",			"c", "__ZGroupChange__/graphics/icons/assembling-machine-3.png")
	aadd("production-4",		"assembling-machine-4",			"d", "__ZGroupChange__/graphics/icons/assembling-machine-4.png")
	aadd("production-4",		"assembling-machine-5",			"e", "__ZGroupChange__/graphics/icons/assembling-machine-5.png")
	aadd("production-4",		"assembling-machine-6",			"f", "__ZGroupChange__/graphics/icons/assembling-machine-6.png")
	
	aadd("production-8",		"electrolyser",					"a")
	aadd("production-8",		"electrolyser-1",				"b")
	aadd("production-8",		"electrolyser-2",				"c")
	aadd("production-8",		"electrolyser-3",				"d")
	aadd("production-8",		"electrolyser-4",				"e")
	
	aadd("production-9",		"bob-greenhouse",				"a")
	
	if data.raw["assembling-machine"]["assembling-machine-3"] then
		data.raw["assembling-machine"]["assembling-machine-3"].animation = {
			filename = "__ZGroupChange__/graphics/entity/assembling-machine-3-anim.png",
			priority="high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.1}
		}
	end
	if data.raw["assembling-machine"]["assembling-machine-4"] then
		data.raw["assembling-machine"]["assembling-machine-4"].animation = {
			filename = "__ZGroupChange__/graphics/entity/assembling-machine-4-anim.png",
			priority="high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.1}
		}
	end
	if data.raw["assembling-machine"]["assembling-machine-5"] then
		data.raw["assembling-machine"]["assembling-machine-5"].animation = {
			filename = "__ZGroupChange__/graphics/entity/assembling-machine-5-anim.png",
			priority="high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.1}
		}
	end
	if data.raw["assembling-machine"]["assembling-machine-6"] then
		data.raw["assembling-machine"]["assembling-machine-6"].animation = {
			filename = "__ZGroupChange__/graphics/entity/assembling-machine-6-anim.png",
			priority="high",
			width = 142,
			height = 113,
			frame_count = 32,
			line_length = 8,
			shift = {0.84, -0.1}
		}
	end
	if data.raw["assembling-machine"]["chemical-furnace"] then
		data.raw["assembling-machine"]["chemical-furnace"].animation.filename = "__ZGroupChange__/graphics/entity/electric-chemical-furnace.png"
	end
	
  if i_not_exist("5d-chemical-plant-2") then
	aadd("production-6",		"oil-refinery-2",				"b")
	aadd("production-6",		"oil-refinery-3",				"c")
	aadd("production-6",		"oil-refinery-4",				"c")
	
	aadd("production-7",		"chemical-plant-2",				"b")
	aadd("production-7",		"chemical-plant-3",				"c")
	aadd("production-7",		"chemical-plant-4",				"c")
  elseif not allow_changes then
	aadd("production-6",		"oil-refinery-2",				"b")
	aadd("production-6",		"oil-refinery-3",				"c")
	aadd("production-6",		"oil-refinery-4",				"d")
		
	aadd("production-7",		"chemical-plant-2",				"b")
	aadd("production-7",		"chemical-plant-3",				"c")
	aadd("production-7",		"chemical-plant-4",				"d")
  else
	ahide("oil-refinery-2")
	ahide("oil-refinery-3")
	ahide("oil-refinery-4")
	ahide("chemical-plant-2")
	ahide("chemical-plant-3")
	ahide("chemical-plant-4")
	
	switch_tech("oil-processing-4")
	switch_tech("chemical-plant-4")
	
	zgc.t_add_recipe_unlock("chemical-plant-2", "5d-chemical-plant-2")
	zgc.t_add_recipe_unlock("chemical-plant-3", "5d-chemical-plant-3")
	zgc.t_add_recipe_unlock("oil-processing-2", "5d-oil-refinery-2")
	zgc.t_add_recipe_unlock("oil-processing-3", "5d-oil-refinery-3")
	
	zgc.t_remove_recipe_unlock("chemical-plant-2", "chemical-plant-2")
	zgc.t_remove_recipe_unlock("chemical-plant-3", "chemical-plant-3")
	zgc.t_remove_recipe_unlock("oil-processing-2", "oil-refinery-2")
	zgc.t_remove_recipe_unlock("oil-processing-3", "oil-refinery-3")
  end
	
	
  if i_not_exist("electric-furnace-2") then
	aadd("production-2",		"5d-electric-furnace",			"d")
	aadd("production-2",		"electric-mixing-furnace",		"e")
  elseif allow_changes then
	ahide("5d-electric-furnace")
	ahide("electric-mixing-furnace")
  else
	aadd("production-2",		"5d-electric-furnace",			"d")
	aadd("production-2",		"electric-mixing-furnace",		"e")
  end
  
  if not allow_changes then
	aadd("production-5",		"electronics-machine-1",		"a")
	aadd("production-5",		"electronics-machine-2",		"b")
	aadd("production-5",		"electronics-machine-3",		"c")
  else
	ahide("electronics-machine-1")
	ahide("electronics-machine-2")
	ahide("electronics-machine-3")
	
	switch_tech("electronics-machine-1")
	switch_tech("electronics-machine-2")
	switch_tech("electronics-machine-3")
  end
  
end
do	--[[resources]]--

	aadd("resources-0",		"raw-wood",					"a")
	aadd("resources-0",		"wood",						"b")
	aadd("resources-0",		"seedling",					"c")
	aadd("resources-0",		"coal",						"e")
	aadd("resources-0",		"5d-coal",					"f")
	aadd("resources-0",		"stone",					"g")
	aadd("resources-0",		"sulfur",					"h")
	aadd("resources-0",		"sulfur-2",					"i")
	aadd("resources-0",		"gem-ore",					"j")
	aadd("resources-0",		"sort-gem-ore",				"k")
	
	aadd("resources-3",		"cobalt-ore",				"a")
	aadd("resources-3",		"nickel-ore",				"b")
	aadd("resources-3",		"quartz",					"c")
	aadd("resources-3",		"quartz-ore",				"d")
	aadd("resources-3",		"rutile-ore",				"e")
	aadd("resources-3",		"silver-ore",				"f")
	aadd("resources-3",		"tungsten-ore",				"g")
	
	aadd("resources-4",		"iron-ore",					"a")
	aadd("resources-4",		"copper-ore",				"b")
	aadd("resources-4",		"lead-ore",					"c")
	aadd("resources-4",		"tin-ore",					"d")
	aadd("resources-4",		"zinc-ore",					"e")
	aadd("resources-4",		"bauxite-ore",				"f")
	aadd("resources-4",		"gold-ore",					"g")
	
	aadd("resources-5",		"5d-iron-dust",				"a")
	aadd("resources-5",		"5d-copper-dust",			"b")
	aadd("resources-5",		"5d-lead-dust",				"c")
	aadd("resources-5",		"5d-tin-dust",				"d")
	aadd("resources-5",		"5d-zinc-dust",				"e")
	aadd("resources-5",		"5d-aluminium-dust",		"f")
	aadd("resources-5",		"5d-gold-dust",				"g")
	
	iadd("resources-6",		"plastic-bar",				"a")
	aadd("resources-6",		"silicon",					"b")
	aadd("resources-6",		"bob-silicon-plate",		"c")
	aadd("resources-6",		"resin",					"d")
	aadd("resources-6",		"bob-resin-wood",			"e")
	aadd("resources-6",		"bob-resin-oil",			"f")
	aadd("resources-6",		"rubber",					"g")
	aadd("resources-6",		"bob-rubber",				"h")
	aadd("resources-6",		"carbon",					"i")
	aadd("resources-6",		"glass",					"j")
	aadd("resources-6",		"quartz-glass",				"k")
	
	radd("resources-9",		"plastic-bar",				"a")
	aadd("resources-9",		"salt",						"a")
	aadd("resources-9",		"alumina",					"b")
	aadd("resources-9",		"cobalt-oxide",				"c")
	iadd("resources-9",		"lithium-cobalt-oxide",		"d")
	iadd("resources-9",		"silicon-powder",			"d")
	aadd("resources-9",		"lead-oxide",				"e")
	aadd("resources-9",		"silver-oxide",				"f")
	aadd("resources-9",		"tungsten-oxide",			"g")
	
	aadd("resources-10",		"calcium-chloride",			"b")
	aadd("resources-10",		"lithium-chloride",			"c")
	radd("resources-10",		"lithium-cobalt-oxide",		"d")
	radd("resources-10",		"silicon-powder",			"e")
	aadd("resources-10",		"silicon-wafer",			"f")
	aadd("resources-10",		"silicon-carbide",			"g")
	aadd("resources-10",		"silicon-nitride",			"h")
	aadd("resources-10",		"silver-nitrate",			"i")
	aadd("resources-10",		"petroleum-jelly",			"j")
	aadd("resources-10",		"lithium-perchlorate",		"k")
	aadd("resources-10",		"sodium-hydroxide",			"l")
	
	aadd("resources-11",		"ruby-ore",					"a")
	aadd("resources-11",		"sapphire-ore",				"b")
	aadd("resources-11",		"emerald-ore",				"c")
	aadd("resources-11",		"amethyst-ore",				"d")
	aadd("resources-11",		"topaz-ore",				"e")
	aadd("resources-11",		"diamond-ore",				"f")
	
	aadd("resources-12",		"ruby-3",					"a")
	aadd("resources-12",		"sapphire-3",				"b")
	aadd("resources-12",		"emerald-3",				"c")
	aadd("resources-12",		"amethyst-3",				"d")
	aadd("resources-12",		"topaz-3",					"e")
	aadd("resources-12",		"diamond-3",				"f")
	
	aadd("resources-13",		"ruby-4",					"a")
	aadd("resources-13",		"sapphire-4",				"b")
	aadd("resources-13",		"emerald-4",				"c")
	aadd("resources-13",		"amethyst-4",				"d")
	aadd("resources-13",		"topaz-4",					"e")
	aadd("resources-13",		"diamond-4",				"f")
	
	aadd("resources-14",		"ruby-5",					"a")
	aadd("resources-14",		"sapphire-5",				"b")
	aadd("resources-14",		"emerald-5",				"c")
	aadd("resources-14",		"amethyst-5",				"d")
	aadd("resources-14",		"topaz-5",					"e")
	aadd("resources-14",		"diamond-5",				"f")
	
	if not z_balance.bob_synthetic then
		aadd("resources-0",		"synthetic-wood",		"b")
	else
		ahide("synthetic-wood")
		zgc.r_replace_ingredient_in_all("synthetic-wood", "wood")
	end
	
	if z_balance.mining then
		zgc.add_newRessource_min_max("gem-ore",	"ruby-3",		1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore", "sapphire-3",	1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore", "emerald-3",	1,1,0.1)
		zgc.add_newRessource_min_max("gem-ore", "amethyst-3",	1,1,0.1)
	end
end
do	--[[plates]]--
	
	aadd("plates-6",		"powdered-tungsten",				"h")
	
	aadd("plates-7",		"5d-iron-dust",						"a")
	aadd("plates-7",		"5d-copper-dust",					"b")
	aadd("plates-7",		"5d-lead-dust",						"c")
	aadd("plates-7",		"5d-tin-dust",						"d")
	aadd("plates-7",		"5d-zinc-dust",						"e")
	aadd("plates-7",		"5d-aluminium-dust",				"f")
	aadd("plates-7",		"5d-gold-dust",						"g")
		
	aadd("plates-9",		"iron-plate",						"a")
	aadd("plates-9",		"copper-plate",						"b")
	aadd("plates-9",		"lead-plate",						"c")
	aadd("plates-9",		"tin-plate",						"d")
	aadd("plates-9",		"zinc-plate",						"e")
	aadd("plates-9",		"aluminium-plate",					"f")
	aadd("plates-9",		"gold-plate",						"g")
	
	aadd("plates-10",		"5d-iron-plate",					"a")
	aadd("plates-10",		"5d-copper-plate",					"b")
	aadd("plates-10",		"5d-lead-plate-2",					"c")
	aadd("plates-10",		"5d-tin-plate-2",					"d")
	aadd("plates-10",		"5d-zinc-plate-2",					"e")
	aadd("plates-10",		"5d-aluminium-plate-2",				"f")
	aadd("plates-10",		"5d-gold-plate-2",					"g")
	
	aadd("plates-11",		"brass-alloy",						"a")
	aadd("plates-11",		"cobalt-oxide-from-copper",			"b")
	aadd("plates-11",		"bob-lead-plate",					"c")
	aadd("plates-11",		"silver-from-lead",					"d")
	aadd("plates-11",		"bob-zinc-plate",					"e")
	aadd("plates-11",		"bob-aluminium-plate",				"f")
	aadd("plates-11",		"bob-gold-plate",					"g")
	aadd("plates-11",		"bronze-alloy",						"h")
	aadd("plates-11",		"tungsten-carbide",					"i")
	
	aadd("plates-12",		"cobalt-plate",						"a")
	aadd("plates-12",		"bob-nickel-plate",					"b")
	aadd("plates-12",		"nickel-plate",						"c")
	aadd("plates-12",		"silver-plate",						"d")
	aadd("plates-12",		"electrum-alloy",					"e")
	aadd("plates-12",		"alumina",							"f")
	aadd("plates-12",		"lithium",							"g")
	aadd("plates-12",		"invar-alloy",						"h")
	aadd("plates-12",		"nitinol-alloy",					"i")
	
	aadd("plates-13",		"steel-plate",						"a")
	aadd("plates-13",		"copper-tungsten-alloy",			"c")
	aadd("plates-13",		"bob-tungsten-plate",				"d")
	aadd("plates-13",		"tungsten-plate",					"e")
	aadd("plates-13",		"titanium-plate",					"f")
	aadd("plates-13",		"bob-titanium-plate",				"g")
	aadd("plates-13",		"cobalt-steel-alloy",				"h")
	aadd("plates-13",		"alien-orange-alloy",				"j")
	aadd("plates-13",		"alien-blue-alloy",					"k")
	
	
	if data.raw.recipe["lead-plate"] then ahide("5d-lead-plate") end
	if data.raw.recipe["tin-plate"] then ahide("5d-tin-plate") end
	
	if z_balance.bob_warfare then
		ahide("gunmetal-alloy")
		zgc.t_remove_recipe_unlock("zinc-processing", "gunmetal-alloy")
	else
		aadd("plates-15",		"gunmetal-alloy",				"j")
	end
end
do	--[[liquids]]--
	aadd("liquids-0",			"empty-canister",				"b")
	aadd("liquids-0",			"gas-canister",					"c")
	
	aadd("liquids-1",			"bob-oil-processing",			"a")
	aadd("liquids-1",			"basic-oil-processing",			"b")
	aadd("liquids-1",			"advanced-oil-processing",		"d")
	aadd("liquids-1",			"ground-water",					"e")
	
	aadd("liquids-2",			"water",						"a")
	aadd("liquids-2",			"lithia-water",					"b")
	aadd("liquids-2",			"coal-cracking",				"d")
	aadd("liquids-2",			"liquid-fuel",					"e")
	aadd("liquids-2",			"lubricant",					"f")
	aadd("liquids-2",			"bob-liquid-air",				"g")
	
	aadd("liquids-5",			"fill-water-barrel",			"a")
	aadd("liquids-5",			"fill-lithia-water-barrel",		"b")
	aadd("liquids-5",			"fill-crude-oil-barrel",		"ca")
	aadd("liquids-5",			"bob-fill-crude-oil-barrel",	"cb")
	aadd("liquids-5",			"fill-heavy-oil-barrel",		"d")
	aadd("liquids-5",			"fill-light-oil-barrel",		"e")
	aadd("liquids-5",			"fill-lubricant-barrel",		"f")
	aadd("liquids-5",			"fill-sulfuric-acid-barrel",	"g")
	aadd("liquids-5",			"fill-nitric-acid-barrel",		"h")
	
	aadd("liquids-6",			"empty-water-barrel",			"a")
	aadd("liquids-6",			"empty-lithia-water-barrel",	"b")
	aadd("liquids-6",			"empty-crude-oil-barrel",		"ca")
	aadd("liquids-6",			"bob-empty-crude-oil-barrel",	"cb")
	aadd("liquids-6",			"empty-heavy-oil-barrel",		"d")
	aadd("liquids-6",			"empty-light-oil-barrel",		"e")
	aadd("liquids-6",			"empty-lubricant-barrel",		"f")
	aadd("liquids-6",			"empty-sulfuric-acid-barrel",	"g")
	aadd("liquids-6",			"empty-nitric-acid-barrel",		"h")
	
	aadd("liquids-7",			"water-barrel",					"a")
	aadd("liquids-7",			"lithia-water-barrel",			"b")
	aadd("liquids-7",			"crude-oil-barrel",				"c")
	aadd("liquids-7",			"heavy-oil-barrel",				"d")
	aadd("liquids-7",			"light-oil-barrel",				"e")
	aadd("liquids-7",			"lubricant-barrel",				"f")
	aadd("liquids-7",			"sulfuric-acid-barrel",			"g")
	aadd("liquids-7",			"nitric-acid-barrel",			"h")
	
	aadd("liquids-8",			"oxygen-canister",					"a")
	aadd("liquids-8",			"hydrogen-canister",				"b")
	aadd("liquids-8",			"nitrogen-canister",				"c")
	aadd("liquids-8",			"chlorine-canister",				"d")
	aadd("liquids-8",			"hydrogen-chloride-canister",		"e")
	aadd("liquids-8",			"petroleum-gas-canister",			"f")
	aadd("liquids-8",			"liquid-fuel-canister",				"g")
	aadd("liquids-8",			"ferric-chloride-canister",			"h")
	
	aadd("liquids-9",			"empty-oxygen-canister",			"a")
	aadd("liquids-9",			"empty-hydrogen-canister",			"b")
	aadd("liquids-9",			"empty-nitrogen-canister",			"c")
	aadd("liquids-9",			"empty-chlorine-canister",			"d")
	aadd("liquids-9",			"empty-hydrogen-chloride-canister",	"e")
	aadd("liquids-9",			"empty-petroleum-gas-canister",		"f")
	aadd("liquids-9",			"empty-liquid-fuel-canister",		"g")
	aadd("liquids-9",			"empty-ferric-chloride-canister",	"h")
	
end
do	--[[chemistry]]--
	aadd("chemistry-0",		"sulfuric-acid",				"a")
	aadd("chemistry-0",		"sulfuric-acid-2",				"b")
	aadd("chemistry-0",		"nitrogen",						"d")
	aadd("chemistry-0",		"nitrogen-dioxide",				"e")
	aadd("chemistry-0",		"nitric-acid",					"g")
	aadd("chemistry-0",		"tungstic-acid",				"h")
	
	aadd("chemistry-1",		"water-electrolysis",			"a")
	aadd("chemistry-1",		"salt-water-electrolysis",		"b")
	aadd("chemistry-1",		"petroleum-gas-cracking",		"c")
	aadd("chemistry-1",		"lithium-water-electrolysis",	"d")
	aadd("chemistry-1",		"hydrogen-chloride",			"e")
	
	aadd("chemistry-2",		"heavy-oil-cracking",			"a")
	aadd("chemistry-2",		"light-oil-cracking",			"b")
	aadd("chemistry-2",		"ferric-chloride-solution",		"d")
	
	aadd("chemistry-3",		"solid-fuel-from-heavy-oil",	"a")
	aadd("chemistry-3",		"solid-fuel-from-light-oil",	"b")
	aadd("chemistry-3",		"solid-fuel-from-petroleum-gas","c")
	aadd("chemistry-3",		"solid-fuel-from-hydrogen",		"d")
	
	if allow_changes and i_exist("nitroglycerin") then
		data.raw.recipe["nitroglycerin"].ingredients = {}
		data.raw.recipe["nitroglycerin"].ingredients =
		{
			{name="sulfur", amount=12},
			{type="fluid", name="nitric-acid", amount=3},
			{type="fluid", name="light-oil", amount=1},
		}
		aadd("chemistry-1",		"nitroglycerin",			"f")
		
		ahide("sulfuric-nitric-acid")
		ahide("glycerol")
		switch_tech("nitroglycerin-processing")
		zgc.t_remove_recipe_unlock("nitroglycerin-processing", "glycerol")
	else
		aadd("chemistry-1",		"nitroglycerin",			"f")
		aadd("chemistry-1",		"sulfuric-nitric-acid",		"g")
		aadd("chemistry-1",		"glycerol",					"h")
	end
	
	if z_balance.bob_warfare then
		ahide("nitroglycerin")
		ahide("sulfuric-nitric-acid")
		ahide("glycerol")
		switch_tech("nitroglycerin-processing")
		zgc.t_remove_recipe_unlock("nitroglycerin-processing", "glycerol")
	end
	
end
do	--[[automatization]]--
  if bobmods and bobmods.logistics then
	if i_exist("5d-basic-inserter-left-90d") then
		aadd("automatization-1",	"express-filter-inserter",		"g")
		
		aadd("automatization-3",	"express-inserter",				"g")
		aadd("automatization-3",	"express-stack-inserter",		"h")
		aadd("automatization-3",	"express-stack-filter-inserter","i")
	else
		aadd("automatization-0",	"express-inserter",				"d")
		
		aadd("automatization-1",	"express-filter-inserter",		"b")
		aadd("automatization-1",	"express-stack-filter-inserter","j")
		
		aadd("automatization-2",	"stack-filter-inserter",		"h")
		aadd("automatization-2",	"express-stack-inserter",		"i")
	end
  end
  
  if z_balance.bob_inserters then
	ahide("long-handed-inserter","inserter")
	ahide("5d-inserter-speed1-range3","inserter")
	ahide("5d-inserter-speed1-range1-close","inserter")
	ahide("5d-inserter-speed1-range2-close","inserter")
	ahide("5d-inserter-speed1-range3-close","inserter")
	ahide("5d-inserter-speed2-range2","fast-inserter")
	ahide("5d-inserter-speed2-range3","fast-inserter")
	ahide("5d-inserter-speed2-range1-close","fast-inserter")
	ahide("5d-inserter-speed2-range2-close","fast-inserter")
	ahide("5d-inserter-speed2-range3-close","fast-inserter")
	ahide("5d-inserter-speed3-range1","express-inserter")
	ahide("5d-inserter-speed3-range2","express-inserter")
	ahide("5d-inserter-speed3-range3","express-inserter")
	ahide("5d-inserter-speed3-range1-close","express-inserter")
	ahide("5d-inserter-speed3-range2-close","express-inserter")
	ahide("5d-inserter-speed3-range3-close","express-inserter")
	ahide("5d-basic-inserter-left-90d","inserter")
	ahide("5d-basic-inserter-right-90d","inserter")
	ahide("5d-basic-inserter-left-90d-close","inserter")
	ahide("5d-basic-inserter-right-90d-close","inserter")
	ahide("5d-fast-inserter-left-90d","fast-inserter")
	ahide("5d-fast-inserter-right-90d","fast-inserter")
	ahide("5d-fast-inserter-left-90d-close","fast-inserter")
	ahide("5d-fast-inserter-right-90d-close","fast-inserter")
	ahide("5d-extreme-inserter-left-90d","express-inserter")
	ahide("5d-extreme-inserter-right-90d","express-inserter")
	ahide("5d-extreme-inserter-left-90d-close","express-inserter")
	ahide("5d-extreme-inserter-right-90d-close","express-inserter")
	ahide("5d-inserter-smart-speed2-range1-close","filter-inserter")
	ahide("5d-inserter-smart-speed2-range2","filter-inserter")
	ahide("5d-inserter-smart-speed2-range2-close","filter-inserter")
	ahide("5d-inserter-smart-speed3-range1","express-filter-inserter")
	ahide("5d-inserter-smart-speed3-range1-close","express-filter-inserter")
	
	switch_tech("inserters")
	switch_tech("inserters-2")
	switch_tech("inserters-3")
	switch_tech("close")
	switch_tech("close-2")
	switch_tech("close-3")
	switch_tech("side-inserters")
	switch_tech("side-inserters-2")
	switch_tech("side-inserters-3")
	switch_tech("smart-inserters")
  end

end
do	--[[transport]]--
	aadd("transport-5",		"valve",						"a")
	
  if allow_changes then
	if i_exist("5d-mk4-transport-belt") then
		ahide("green-transport-belt")
		ahide("green-underground-belt")
		ahide("green-splitter")
		ahide("purple-transport-belt")
		ahide("purple-underground-belt")
		ahide("purple-splitter")
	else
		aadd("transport-0",	"green-transport-belt",			"f")
		aadd("transport-0",	"purple-transport-belt",		"g")
		
		aadd("transport-1",	"green-underground-belt",		"f")
		aadd("transport-1",	"purple-underground-belt",		"g")
	
		aadd("transport-4",	"green-splitter",				"f")
		aadd("transport-4",	"purple-splitter",				"g")
	end
	if i_exist("5d-pipe-mk2") then
		ahide("copper-pipe")
		ahide("steel-pipe")
		ahide("copper-pipe-to-ground")
		ahide("steel-pipe-to-ground")
		zgc.r_replace_ingredient_in_all("copper-pipe", "pipe")
		zgc.r_replace_ingredient_in_all("steel-pipe", "pipe")
	else
		aadd("transport-8",	"copper-pipe",					"b")
		aadd("transport-8",	"steel-pipe",					"d")
		
		aadd("transport-9",	"copper-pipe-to-ground",		"b")
		aadd("transport-9",	"steel-pipe-to-ground",			"d")
	end
	
	ahide("stone-pipe")
	ahide("bronze-pipe")
	ahide("plastic-pipe")
	ahide("brass-pipe")
	ahide("ceramic-pipe")
	ahide("titanium-pipe")
	ahide("tungsten-pipe")
	ahide("stone-pipe-to-ground")
	ahide("bronze-pipe-to-ground")
	ahide("plastic-pipe-to-ground")
	ahide("brass-pipe-to-ground")
	ahide("ceramic-pipe-to-ground")
	ahide("titanium-pipe-to-ground")
	ahide("tungsten-pipe-to-ground")
	
	switch_tech("bob-logistics-4")
	switch_tech("bob-logistics-5")
	
	zgc.r_replace_ingredient_in_all("bronze-pipe", "pipe")

	if i_exist("5d-pipe-mk2") then
		zgc.r_replace_ingredient_in_all("steel-pipe", "5d-pipe-mk2")
		zgc.r_replace_ingredient_in_all("plastic-pipe", "5d-pipe-mk2")
		zgc.r_replace_ingredient_in_all("brass-pipe", "5d-pipe-mk2")
		zgc.r_replace_ingredient_in_all("ceramic-pipe", "5d-pipe-mk3")
		zgc.r_replace_ingredient_in_all("titanium-pipe", "5d-pipe-mk3")
		zgc.r_replace_ingredient_in_all("tungsten-pipe", "5d-pipe-mk3")
	else
		zgc.r_replace_ingredient_in_all("plastic-pipe", "copper-pipe")
		zgc.r_replace_ingredient_in_all("brass-pipe", "copper-pipe")
		zgc.r_replace_ingredient_in_all("ceramic-pipe", "steel-pipe")
		zgc.r_replace_ingredient_in_all("titanium-pipe", "steel-pipe")
		zgc.r_replace_ingredient_in_all("tungsten-pipe", "steel-pipe")
	end
  else
	aadd("transport-0",	"green-transport-belt",			"f")
	aadd("transport-0",	"purple-transport-belt",		"g")
	
	aadd("transport-1",	"green-underground-belt",		"f")
	aadd("transport-1",	"purple-underground-belt",		"g")

	aadd("transport-4",	"green-splitter",				"f")
	aadd("transport-4",	"purple-splitter",				"g")
	
	aadd("transport-6",	"stone-pipe",					"a")
	aadd("transport-6",	"copper-pipe",					"b")
	aadd("transport-6",	"steel-pipe",					"c")
	aadd("transport-6",	"bronze-pipe",					"d")
	aadd("transport-6",	"plastic-pipe",					"e")
	aadd("transport-6",	"brass-pipe",					"f")
	aadd("transport-6",	"ceramic-pipe",					"g")
	aadd("transport-6",	"titanium-pipe",				"h")
	aadd("transport-6",	"tungsten-pipe",				"i")
	
	aadd("transport-7",	"stone-pipe-to-ground",			"a")
	aadd("transport-7",	"copper-pipe-to-ground",		"b")
	aadd("transport-7",	"steel-pipe-to-ground",			"c")
	aadd("transport-7",	"bronze-pipe-to-ground",		"d")
	aadd("transport-7",	"plastic-pipe-to-ground",		"e")
	aadd("transport-7",	"brass-pipe-to-ground",			"f")
	aadd("transport-7",	"ceramic-pipe-to-ground",		"g")
	aadd("transport-7",	"titanium-pipe-to-ground",		"h")
	aadd("transport-7",	"tungsten-pipe-to-ground",		"i")
  end
	
end
do	--[[logistic]]--
	aadd("logistic-1",		"roboport",							"a")
	aadd("logistic-1",		"bob-roboport-2",					"b")
	aadd("logistic-1",		"bob-roboport-3",					"d", "__ZGroupChange__/graphics/icons/roboport2.png")
	aadd("logistic-1",		"bob-roboport-4",					"e", "__ZGroupChange__/graphics/icons/roboport3.png")
	aadd("logistic-1",		"bob-logistic-zone-expander",		"f")
	aadd("logistic-1",		"bob-logistic-zone-expander-2",		"g")
	aadd("logistic-1",		"bob-logistic-zone-expander-3",		"h")
	aadd("logistic-1",		"bob-logistic-zone-expander-4",		"i")
	aadd("logistic-1",		"bob-logistic-zone-interface",		"j")
	
	aadd("logistic-2",		"bob-robo-charge-port",				"a")
	aadd("logistic-2",		"bob-robo-charge-port-2",			"b")
	aadd("logistic-2",		"bob-robo-charge-port-3",			"c")
	aadd("logistic-2",		"bob-robo-charge-port-4",			"d")
	aadd("logistic-2",		"bob-robo-charge-port-large",		"e")
	aadd("logistic-2",		"bob-robo-charge-port-large-2",		"f")
	aadd("logistic-2",		"bob-robo-charge-port-large-3",		"g")
	aadd("logistic-2",		"bob-robo-charge-port-large-4",		"h")
	
	aadd("logistic-3",		"logistic-robot",					"a")
	aadd("logistic-3",		"bob-logistic-robot-2",				"b")
	aadd("logistic-3",		"bob-logistic-robot-3",				"c")
	aadd("logistic-3",		"bob-logistic-robot-4",				"d")
	aadd("logistic-3",		"construction-robot",				"f")
	aadd("logistic-3",		"bob-construction-robot-2",			"g")
	aadd("logistic-3",		"bob-construction-robot-3",			"h")
	aadd("logistic-3",		"bob-construction-robot-4",			"i")
	
	aadd("logistic-4",		"logistic-chest-storage",			"a")
	aadd("logistic-4",		"logistic-chest-requester",			"b")
	aadd("logistic-4",		"logistic-chest-passive-provider",	"c")
	aadd("logistic-4",		"logistic-chest-active-provider",	"d")
	aadd("logistic-4",		"5d-storage",						"e")
	aadd("logistic-4",		"5d-requester",						"f")
	aadd("logistic-4",		"5d-passive",						"g")
	aadd("logistic-4",		"5d-active",						"h")
	
	aadd("logistic-5",		"bob-robochest",					"e")
	aadd("logistic-5",		"bob-robochest-2",					"f")
	aadd("logistic-5",		"bob-robochest-3",					"g")
	aadd("logistic-5",		"bob-robochest-4",					"h")
	
	aadd("logistic-8",		"tinned-copper-cable",				"f")
	aadd("logistic-8",		"insulated-cable",					"g")
	aadd("logistic-8",		"gilded-copper-cable",				"h")
	
	
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].base.filename = "__ZGroupChange__/graphics/entity/roboport2-base.png"
	end
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].base_patch.filename = "__ZGroupChange__/graphics/entity/roboport2-base-patch.png"
	end
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].base_animation.filename = "__ZGroupChange__/graphics/entity/roboport2-base-animation.png"
	end
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].door_animation_up.filename = "__ZGroupChange__/graphics/entity/roboport2-door-up.png"
	end
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].door_animation_down.filename = "__ZGroupChange__/graphics/entity/roboport2-door-down.png"
	end
	if data.raw["roboport"]["bob-roboport-3"] then
		data.raw["roboport"]["bob-roboport-3"].recharging_animation.filename = "__ZGroupChange__/graphics/entity/roboport2-recharging.png"
	end
	if data.raw["roboport"]["bob-roboport-4"] then
		data.raw["roboport"]["bob-roboport-4"].base.filename = "__ZGroupChange__/graphics/entity/roboport3-base.png"
	end
	if data.raw["roboport"]["bob-roboport-4"] then
		data.raw["roboport"]["bob-roboport-4"].base_patch.filename = "__ZGroupChange__/graphics/entity/roboport3-base-patch.png"
	end
	
	if i_not_exist("5d-storage") then
		aadd("logistic-4",		"logistic-chest-storage-2",			"e")
		aadd("logistic-4",		"logistic-chest-requester-2",		"f")
		aadd("logistic-4",		"logistic-chest-passive-provider-2","g")
		aadd("logistic-4",		"logistic-chest-active-provider-2",	"h")
	elseif allow_changes then
		ahide("logistic-chest-storage-2")
		ahide("logistic-chest-requester-2")
		ahide("logistic-chest-passive-provider-2")
		ahide("logistic-chest-active-provider-2")
	else
		aadd("logistic-7",		"logistic-chest-storage-2",			"e")
		aadd("logistic-7",		"logistic-chest-requester-2",		"f")
		aadd("logistic-7",		"logistic-chest-passive-provider-2","g")
		aadd("logistic-7",		"logistic-chest-active-provider-2",	"h")
	end
	
	if i_not_exist("bob-roboport-2") then
		aadd("logistic-1",		"5d-roboport-2",					"b")
		aadd("logistic-3",		"5d-logistic-robot-2",				"b")
		aadd("logistic-3",		"5d-construction-robot-2",			"g")
	elseif allow_changes then
		ahide("5d-roboport-2")
		ahide("5d-logistic-robot-2")
		ahide("5d-construction-robot-2")
		switch_tech("robots-2")
	else
		aadd("logistic-3",		"5d-logistic-robot-2",				"b")
		aadd("logistic-3",		"5d-construction-robot-2",			"g")
	end

end
do	--[[energy]]--
	if not allow_changes or i_not_exist("5d-boiler") then
		aadd("energy-1",			"boiler-2",					"b")
		aadd("energy-1",			"boiler-3",					"c")
		aadd("energy-1",			"boiler-4",					"d")
	else
		ahide("boiler-2")
		ahide("boiler-3")
		ahide("boiler-4")
		switch_tech("bob-boiler-1")
		switch_tech("bob-boiler-2")
		switch_tech("bob-boiler-3")
	end
	
	if not allow_changes or i_not_exist("5d-steam-engine-2") then
		aadd("energy-2",			"steam-engine-2",			"b")
		aadd("energy-2",			"steam-engine-3",			"c")
	else
		ahide("steam-engine-2")
		ahide("steam-engine-3")
		switch_tech("steam-engine-generator-1")
		switch_tech("steam-engine-generator-2")
	end
	
	if allow_changes
	and i_not_exist("5d-basic-accumulator-2")
	and i_not_exist("y-accumulator-m")
	and i_exist("slow-accumulator") then
		ahide("accumulator")
	end
	
	if i_exist("5d-solar-panel-2") or i_exist("y_alien_solar") then
		aadd("energy-4",			"solar-panel-2",				"b")
		aadd("energy-4",			"solar-panel-3",				"d")
		
		aadd("energy-5",			"solar-panel-small",			"a")
		aadd("energy-5",			"solar-panel-small-2",			"b")
		aadd("energy-5",			"solar-panel-small-3",			"c")
		aadd("energy-5",			"solar-panel-large",			"d")
		aadd("energy-5",			"solar-panel-large-2",			"e")
		aadd("energy-5",			"solar-panel-large-3",			"f")
		if allow_changes then
			ahide("solar-panel-2")
			ahide("solar-panel-3")
		end
	else
		aadd("energy-4",			"solar-panel-2",				"b")
		aadd("energy-4",			"solar-panel-3",				"d")
		
		aadd("energy-5",			"solar-panel-small",			"a")
		aadd("energy-5",			"solar-panel-small-2",			"b")
		aadd("energy-5",			"solar-panel-small-3",			"c")
		aadd("energy-5",			"solar-panel-large",			"g")
		aadd("energy-5",			"solar-panel-large-2",			"h")
		aadd("energy-5",			"solar-panel-large-3",			"i")
	end
	
	aadd("energy-6",			"slow-accumulator",				"a")
	aadd("energy-6",			"large-accumulator",			"b")
	aadd("energy-6",			"fast-accumulator",				"c")
	aadd("energy-6",			"slow-accumulator-2",			"d")
	aadd("energy-6",			"large-accumulator-2",			"e")
	aadd("energy-6",			"fast-accumulator-2",			"f")
	aadd("energy-6",			"slow-accumulator-3",			"g")
	aadd("energy-6",			"large-accumulator-3",			"h")
	aadd("energy-6",			"fast-accumulator-3",			"i")
	
	aadd("energy-7",			"medium-electric-pole-2",		"c")
	aadd("energy-7",			"medium-electric-pole-3",		"d")
	aadd("energy-7",			"medium-electric-pole-4",		"e")
	
	aadd("energy-8",			"big-electric-pole-2",			"b")
	aadd("energy-8",			"big-electric-pole-3",			"c")
	aadd("energy-8",			"big-electric-pole-4",			"d")
	aadd("energy-8",			"substation-2",					"f")
	aadd("energy-8",			"substation-3",					"g")
	aadd("energy-8",			"substation-4",					"h")
	
end
do	--[[defense]]--
	aadd("defense-0",			"reinforced-wall",				"b")
	aadd("defense-0",			"gate",							"c")
	aadd("defense-0",			"reinforced-gate",				"d")
	
	aadd("defense-3",			"flamethrower-turret",			"a")
	aadd("defense-3",			"bob-sniper-turret-1",			"b")
	aadd("defense-3",			"bob-sniper-turret-2",			"c")
	aadd("defense-3",			"bob-sniper-turret-3",			"d")
	
	aadd("defense-4",			"gun-turret",					"a")
	aadd("defense-4",			"bob-gun-turret-2",				"b")
	aadd("defense-4",			"bob-gun-turret-3",				"c")
	aadd("defense-4",			"bob-gun-turret-4",				"d")
	aadd("defense-4",			"bob-gun-turret-5",				"e")
	
	aadd("defense-5",			"laser-turret",					"a")
	aadd("defense-5",			"bob-laser-turret-2",			"b")
	aadd("defense-5",			"bob-laser-turret-3",			"c")
	aadd("defense-5",			"bob-laser-turret-4",			"d")
	aadd("defense-5",			"bob-laser-turret-5",			"e")
	
	aadd("defense-8",			"radar",						"a")
	aadd("defense-8",			"radar-2",						"b")
	aadd("defense-8",			"radar-3",						"c")
	aadd("defense-8",			"radar-4",						"d")
	aadd("defense-8",			"radar-5",						"e")
	
end
do	--[[armor]]--
	aadd("armor-0",			"laser-rifle",						"g")
	
	aadd("armor-1",			"firearm-magazine",					"a")
	aadd("armor-1",			"piercing-rounds-magazine",			"b")
	aadd("armor-1",			"shotgun-shell",					"c")
	aadd("armor-1",			"piercing-shotgun-shell",			"d")
	aadd("armor-1",			"flame-thrower-ammo",				"e")
	aadd("armor-1",			"rocket",							"f")
	aadd("armor-1",			"explosive-rocket",					"g")
	
	aadd("armor-2",			"laser-rifle-battery",				"a")
	aadd("armor-2",			"laser-rifle-battery-ruby",			"b")
	aadd("armor-2",			"laser-rifle-battery-sapphire",		"c")
	aadd("armor-2",			"laser-rifle-battery-emerald",		"d")
	aadd("armor-2",			"laser-rifle-battery-amethyst",		"e")
	aadd("armor-2",			"laser-rifle-battery-topaz",		"f")
	aadd("armor-2",			"laser-rifle-battery-diamond",		"g")
	aadd("armor-2",			"laser-rifle-battery-case",			"h")
	
	aadd("armor-3",			"grenade",							"a")
	aadd("armor-3",			"cluster-grenade",					"b")
	aadd("armor-3",			"land-mine",						"c")
	aadd("armor-3",			"slowdown-capsule",					"d")
	aadd("armor-3",			"poison-capsule",					"e")
	aadd("armor-3",			"defender-capsule",					"f")
	aadd("armor-3",			"distractor-capsule",				"g")
	aadd("armor-3",			"destroyer-capsule",				"h")
	aadd("armor-3",			"discharge-defense-remote",			"i")
	
	aadd("armor-4",			"light-armor",						"a")
	aadd("armor-4",			"heavy-armor",						"b")
	aadd("armor-4",			"heavy-armor-2",					"c")
	aadd("armor-4",			"heavy-armor-3",					"d")
	aadd("armor-4",			"modular-armor",					"e")
	aadd("armor-4",			"power-armor",						"f")
	aadd("armor-4",			"power-armor-mk2",					"g")
	aadd("armor-4",			"bob-power-armor-mk3",				"h")
	aadd("armor-4",			"bob-power-armor-mk4",				"i")
	aadd("armor-4",			"bob-power-armor-mk5",				"j")
	
	aadd("armor-5",			"exoskeleton-equipment",			"a")
	aadd("armor-5",			"exoskeleton-equipment-2",			"b")
	aadd("armor-5",			"exoskeleton-equipment-3",			"c")
	aadd("armor-5",			"night-vision-equipment",			"d")
	aadd("armor-5",			"night-vision-equipment-2",			"e")
	aadd("armor-5",			"night-vision-equipment-3",			"f")
	aadd("armor-5",			"personal-roboport-equipment",		"g")
	
	aadd("armor-6",			"solar-panel-equipment",			"a")
	aadd("armor-6",			"solar-panel-equipment-2",			"b")
	aadd("armor-6",			"solar-panel-equipment-3",			"c")
	aadd("armor-6",			"solar-panel-equipment-4",			"d")
	aadd("armor-6",			"fusion-reactor-equipment",			"e")
	aadd("armor-6",			"fusion-reactor-equipment-2",		"f")
	aadd("armor-6",			"fusion-reactor-equipment-3",		"g")
	aadd("armor-6",			"fusion-reactor-equipment-4",		"h")
	
	aadd("armor-7",			"battery-equipment",				"a")
	aadd("armor-7",			"battery-mk2-equipment",			"b")
	aadd("armor-7",			"battery-mk3-equipment",			"c")
	aadd("armor-7",			"battery-mk4-equipment",			"d")
	aadd("armor-7",			"battery-mk5-equipment",			"e")
	aadd("armor-7",			"battery-mk6-equipment",			"f")
	
	aadd("armor-8",		   "personal-laser-defense-equipment",  "a")
	aadd("armor-8",		   "personal-laser-defense-equipment-2","b")
	aadd("armor-8",		   "personal-laser-defense-equipment-3","c")
	aadd("armor-8",		   "personal-laser-defense-equipment-4","d")
	aadd("armor-8",		   "personal-laser-defense-equipment-5","e")
	aadd("armor-8",		   "personal-laser-defense-equipment-6","f")
	aadd("armor-8",		   "discharge-defense-equipment",		"g")
	
	aadd("armor-9",			"energy-shield-equipment",			"a")
	aadd("armor-9",			"energy-shield-mk2-equipment",		"b")
	aadd("armor-9",			"energy-shield-mk3-equipment",		"c")
	aadd("armor-9",			"energy-shield-mk4-equipment",		"d")
	aadd("armor-9",			"energy-shield-mk5-equipment",		"e")
	aadd("armor-9",			"energy-shield-mk6-equipment",		"f")
	
	if allow_changes then
		ahide("laser-beam-rifle")
		ahide("laser-beam-rifle-ammo")
	else
		aadd("armor-0",		"laser-beam-rifle",					"h")
		aadd("armor-1",		"laser-beam-rifle-ammo",			"h")
	end
	
end
do	--[[intermediate]]--
	
	aadd("intermediate-0",	"science-pack-4",				"d", "__ZGroupChange__/graphics/icons/science-pack4.png")
	aadd("intermediate-0",	"alien-science-pack",			"e")
	aadd("intermediate-0",	"science-pack-gold",			"f", "__ZGroupChange__/graphics/icons/science-pack-gold.png")
	
	aadd("intermediate-1",	"basic-circuit-board",			"a")
	aadd("intermediate-1",	"circuit-board",				"c")
	aadd("intermediate-1",	"superior-circuit-board",		"e")
	aadd("intermediate-1",	"multi-layer-circuit-board",	"g")
	aadd("intermediate-1",	"advanced-processing-unit",		"h")
	
	aadd("intermediate-2",	"wooden-board",					"a")
	aadd("intermediate-2",	"phenolic-board",				"b")
	aadd("intermediate-2",	"fibreglass-board",				"c")
	aadd("intermediate-2",	"solder-alloy",					"d")
	aadd("intermediate-2",	"solder-alloy-lead",			"e")
	aadd("intermediate-2",	"solder",						"f")
	aadd("intermediate-2",	"basic-electronic-components",	"g")
	aadd("intermediate-2",	"electronic-components",		"h")
	aadd("intermediate-2",	"intergrated-electronics",		"i")
	aadd("intermediate-2",	"processing-electronics",		"j")
	
	aadd("intermediate-4",	"steel-gear-wheel",				"e")
	aadd("intermediate-4",	"brass-gear-wheel",				"f")
	aadd("intermediate-4",	"titanium-gear-wheel",			"g")
	aadd("intermediate-4",	"nitinol-gear-wheel",			"h")
	aadd("intermediate-4",	"tungsten-gear-wheel",			"i")
	
	aadd("intermediate-5",	"steel-bearing-ball",			"a")
	aadd("intermediate-5",	"ceramic-bearing-ball",			"b")
	aadd("intermediate-5",	"nitinol-bearing-ball",			"c")
	aadd("intermediate-5",	"titanium-bearing-ball",		"d")
	aadd("intermediate-5",	"steel-bearing",				"e")
	aadd("intermediate-5",	"ceramic-bearing",				"f")
	aadd("intermediate-5",	"nitinol-bearing",				"g")
	aadd("intermediate-5",	"titanium-bearing",				"h")
	
	aadd("intermediate-6",	"fish",							"a")
	aadd("intermediate-6",	"raw-fish",						"b")
	aadd("intermediate-6",	"iron-stick",					"c")
	aadd("intermediate-6",	"explosives",					"d")
	aadd("intermediate-6",	"grinding-wheel",				"e")
	aadd("intermediate-6",	"polishing-wheel",				"f")
	aadd("intermediate-6",	"polishing-compound",			"g")
	aadd("intermediate-6",	"bob-seedling",					"i")
	aadd("intermediate-6",	"bob-basic-greenhouse-cycle",	"j")
	aadd("intermediate-6",	"bob-advanced-greenhouse-cycle","k")
	aadd("intermediate-6",	"fertiliser",					"l")
	
	aadd("intermediate-7",	"battery",						"a")
	aadd("intermediate-7",	"lithium-ion-battery",			"b")
	aadd("intermediate-7",	"silver-zinc-battery",			"c")
	aadd("intermediate-7",	"engine-unit",					"d")
	aadd("intermediate-7",	"electric-engine-unit",			"e")
	aadd("intermediate-7",	"alien-artifact",				"f")
	aadd("intermediate-7",	"small-alien-artifact",			"g")
	
	aadd("intermediate-8",	"flying-robot-frame",			"a")
	aadd("intermediate-8",	"flying-robot-frame-2",			"b")
	aadd("intermediate-8",	"flying-robot-frame-3",			"c")
	aadd("intermediate-8",	"flying-robot-frame-4",			"d")
	aadd("intermediate-8",	"roboport-chargepad-1",			"e")
	aadd("intermediate-8",	"roboport-chargepad-2",			"f")
	aadd("intermediate-8",	"roboport-chargepad-3",			"g")
	aadd("intermediate-8",	"roboport-chargepad-4",			"h")
	
	aadd("intermediate-9",	"roboport-antenna-1",			"a")
	aadd("intermediate-9",	"roboport-antenna-2",			"b")
	aadd("intermediate-9",	"roboport-antenna-3",			"c")
	aadd("intermediate-9",	"roboport-antenna-4",			"d")
	aadd("intermediate-9",	"roboport-door-1",				"e")
	aadd("intermediate-9",	"roboport-door-2",				"f")
	aadd("intermediate-9",	"roboport-door-3",				"g")
	aadd("intermediate-9",	"roboport-door-4",				"h")
	
	aadd("intermediate-10",	"robot-brain-logistic",			"a")
	aadd("intermediate-10",	"robot-brain-logistic-2",		"b")
	aadd("intermediate-10",	"robot-brain-logistic-3",		"c")
	aadd("intermediate-10",	"robot-brain-logistic-4",		"d")
	aadd("intermediate-10",	"robot-brain-construction",		"e")
	aadd("intermediate-10",	"robot-brain-construction-2",	"f")
	aadd("intermediate-10",	"robot-brain-construction-3",	"g")
	aadd("intermediate-10",	"robot-brain-construction-4",	"h")
	
	aadd("intermediate-11",	"robot-tool-construction",		"a")
	aadd("intermediate-11",	"robot-tool-construction-2",	"b")
	aadd("intermediate-11",	"robot-tool-construction-3",	"c")
	aadd("intermediate-11",	"robot-tool-construction-4",	"d")
	aadd("intermediate-11",	"robot-tool-logistic",			"e")
	aadd("intermediate-11",	"robot-tool-logistic-2",		"f")
	aadd("intermediate-11",	"robot-tool-logistic-3",		"g")
	aadd("intermediate-11",	"robot-tool-logistic-4",		"h")
	
	aadd("intermediate-12",	"rocket-silo",					"a")
	aadd("intermediate-12",	"low-density-structure",		"b")
	aadd("intermediate-12",	"rocket-fuel",					"c")
	aadd("intermediate-12",	"rocket-part",					"d")
	aadd("intermediate-12",	"rocket-control-unit",			"e")
	aadd("intermediate-12",	"satellite",					"f")
	
	if z_balance.bob_synthetic then
		rhide("wooden-board-synthetic")
		rhide("phenolic-board-synthetic")
		ahide("polishing-wheel-synthetic")
		zgc.t_remove_recipe_unlock("polishing", "polishing-wheel-synthetic")
	else
		aadd("intermediate-2",	"wooden-board-synthetic",		"a")
		aadd("intermediate-2",	"phenolic-board-synthetic",		"b")
		aadd("intermediate-2",	"fibreglass-board-synthetic",	"c")
		aadd("intermediate-6",	"polishing-wheel",				"f")
		aadd("intermediate-6",	"polishing-wheel-synthetic",	"g")
	end
	
end
do	--[[module]]--

	aadd("module-0",			"lab-2",					"b")
	aadd("module-0",			"lab-alien",				"c")
	
	aadd("module-0",			"beacon-2",					"f")
	aadd("module-0",			"beacon-3",					"g")
	
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "module-intermediates" then v.group = "zgc-module" end
		if v.group == "bobmodules"			 then v.group = "zgc-module" end
		if v.name  == "god-module"			 then v.order = "f-0g" end
	end
	
	if data.raw["item-subgroup"]["speed-module"] then
		aadd("speed-module",		"speed-module",				"a")
		aadd("speed-module",		"speed-module-2",			"b")
		aadd("speed-module",		"speed-module-3",			"c")
	end
	if data.raw["item-subgroup"]["productivity-module"] then
		aadd("productivity-module",	"productivity-module",		"a")
		aadd("productivity-module",	"productivity-module-2",	"b")
		aadd("productivity-module",	"productivity-module-3",	"c")
	end
	if data.raw["item-subgroup"]["effectivity-module"] then
		aadd("effectivity-module",	"effectivity-module",		"a")
		aadd("effectivity-module",	"effectivity-module-2",		"b")
		aadd("effectivity-module",	"effectivity-module-3",		"c")
	end
	
	if allow_changes and i_exist("module-contact") then
		ahide("5d-speed-module-4")
		ahide("5d-speed-module-5")
		ahide("5d-productivity-module-4")
		ahide("5d-productivity-module-5")
		ahide("5d-effectivity-module-4")
		ahide("5d-effectivity-module-5")
		ahide("5d-pollution-module-1")
		ahide("5d-pollution-module-2")
		ahide("5d-pollution-module-3")
		ahide("5d-pollution-module-4")
		ahide("5d-pollution-module-5")
		ahide("5d-speed-effectivity-4")
		ahide("5d-speed-pollution-4")
		ahide("5d-speed-productivity-4")
		ahide("5d-pollution-effectivity-4")
		ahide("5d-pollution-productivity-4")
		ahide("5d-effectivity-productivity-4")
		ahide("5d-speed-effectivity-5")
		ahide("5d-speed-pollution-5")
		ahide("5d-speed-productivity-5")
		ahide("5d-pollution-effectivity-5")
		ahide("5d-pollution-productivity-5")
		ahide("5d-effectivity-productivity-5")
	
		ahide("module-case","solder")
	end
	
end
do	--[[weaponry]]--
	if not z_balance.bob_warfare then
		aadd("weaponry-0",	"rifle",						"a")
		aadd("weaponry-0",	"sniper-rifle",					"b")
		aadd("weaponry-0",	"poison-mine",					"c")
		aadd("weaponry-0",	"slowdown-mine",				"d")
		aadd("weaponry-0",	"distractor-mine",				"e")
		aadd("weaponry-0",	"poison-mine",					"f")
		aadd("weaponry-0",	"defender-robot",				"g")
		aadd("weaponry-0",	"distractor-robot",				"h")
		aadd("weaponry-0",	"destroyer-robot",				"i")
		aadd("weaponry-0",	"bob-laser-robot-capsule",		"j")
		aadd("weaponry-0",	"bob-laser-robot",				"k")
		
		aadd("weaponry-1",	"cordite",						"a")
		aadd("weaponry-1",	"bullet-casing",				"b")
		aadd("weaponry-1",	"shotgun-shell-casing",			"c")
		aadd("weaponry-3",	"bullet",						"d")
		aadd("weaponry-4",	"bullet-projectile",			"e")
		aadd("weaponry-1",	"shot",							"f")
		aadd("weaponry-1",	"magazine",						"g")
		aadd("weaponry-1",	"rocket-body",					"h")
		aadd("weaponry-1",	"rocket-warhead",				"i")
		aadd("weaponry-1",	"rocket-engine",				"j")
		
		aadd("weaponry-2",	"robot-brain-combat",			"a")
		aadd("weaponry-2",	"robot-brain-combat-2",			"b")
		aadd("weaponry-2",	"robot-brain-combat-3",			"c")
		aadd("weaponry-2",	"robot-brain-combat-4",			"d")
		aadd("weaponry-2",	"robot-tool-combat",			"e")
		aadd("weaponry-2",	"robot-tool-combat-2",			"f")
		aadd("weaponry-2",	"robot-tool-combat-3",			"g")
		aadd("weaponry-2",	"robot-tool-combat-4",			"h")
		
		aadd("weaponry-3",	"ap-bullet",					"b")
		aadd("weaponry-3",	"he-bullet",					"c")
		aadd("weaponry-3",	"flame-bullet",					"d")
		aadd("weaponry-3",	"acid-bullet",					"e")
		aadd("weaponry-3",	"poison-bullet",				"f")
		aadd("weaponry-3",	"electric-bullet",				"g")
		
		aadd("weaponry-4",	"ap-bullet-projectile",			"b")
		aadd("weaponry-4",	"he-bullet-projectile",			"c")
		aadd("weaponry-4",	"flame-bullet-projectile",		"d")
		aadd("weaponry-4",	"acid-bullet-projectile",		"e")
		aadd("weaponry-4",	"poison-bullet-projectile",		"f")
		aadd("weaponry-4",	"electric-bullet-projectile",	"g")
		
		aadd("weaponry-5",	"better-shotgun-shell",			"a")
		aadd("weaponry-5",	"shotgun-ap-shell",				"b")
		aadd("weaponry-5",	"shotgun-electric-shell",		"c")
		aadd("weaponry-5",	"shotgun-explosive-shell",		"d")
		aadd("weaponry-5",	"shotgun-flame-shell",			"e")
		aadd("weaponry-5",	"shotgun-acid-shell",			"f")
		
		aadd("weaponry-6",	"piercing-rocket-warhead",		"g")
		aadd("weaponry-6",	"electric-rocket-warhead",		"h")
		aadd("weaponry-6",	"explosive-rocket-warhead",		"i")
		aadd("weaponry-6",	"poison-rocket-warhead",		"j")
		aadd("weaponry-6",	"flame-rocket-warhead",			"k")
		aadd("weaponry-6",	"acid-rocket-warhead",			"l")
		
		aadd("weaponry-7",	"bullet-magazine",				"a")
		aadd("weaponry-7",	"ap-bullet-magazine",			"b")
		aadd("weaponry-7",	"he-bullet-magazine",			"c")
		aadd("weaponry-7",	"flame-bullet-magazine",		"d")
		aadd("weaponry-7",	"acid-bullet-magazine",			"e")
		aadd("weaponry-7",	"poison-bullet-magazine",		"f")
		aadd("weaponry-7",	"electric-bullet-magazine",		"g")
		
		aadd("weaponry-8",	"better-shotgun-shell",			"a")
		aadd("weaponry-8",	"shotgun-ap-shell",				"b")
		aadd("weaponry-8",	"shotgun-explosive-shell",		"c")
		aadd("weaponry-8",	"shotgun-flame-shell",			"d")
		aadd("weaponry-8",	"shotgun-acid-shell",			"e")
		aadd("weaponry-8",	"shotgun-poison-shell",			"f")
		aadd("weaponry-8",	"shotgun-electric-shell",		"g")
		
		aadd("weaponry-1",	"bob-rocket",					"a")
		aadd("weaponry-9",	"bob-piercing-rocket",			"b")
		aadd("weaponry-9",	"bob-explosive-rocket",			"c")
		aadd("weaponry-9",	"bob-flame-rocket",				"d")
		aadd("weaponry-9",	"bob-acid-rocket",				"e")
		aadd("weaponry-9",	"bob-poison-rocket",			"f")
		aadd("weaponry-9",	"bob-electric-rocket",			"g")
		
		
		if i_exist("cordite") then
			data.raw.recipe["cordite"].ingredients = {}
			data.raw.recipe["cordite"].ingredients =
			{
				{name="raw-wood", amount=4},
				{type="fluid", name="nitroglycerin", amount=1},
				{type="fluid", name="heavy-oil", amount=1},
			}
			ahide("petroleum-jelly")
			ahide("gun-cotton-synthetic")
			ahide("gun-cotton")
			zgc.t_remove_recipe_unlock("cordite-processing", "petroleum-jelly")
			zgc.t_remove_recipe_unlock("cordite-processing", "gun-cotton")
			zgc.t_remove_recipe_unlock("cordite-processing", "gun-cotton-synthetic")
		else
			switch_tech("cordite-processing")
		end
	else
		ahide("petroleum-jelly")
		ahide("gun-cotton")
		ahide("gun-cotton-synthetic")
		ahide("cordite")
		ahide("poison-mine")
		ahide("slowdown-mine")
		ahide("distractor-mine")
		ahide("bullet-magazine")
		ahide("ap-bullet-magazine")
		ahide("he-bullet-magazine")
		ahide("flame-bullet-magazine")
		ahide("acid-bullet-magazine")
		ahide("poison-bullet-magazine")
		ahide("electric-bullet-magazine")
		ahide("better-shotgun-shell")
		ahide("shotgun-ap-shell")
		ahide("shotgun-electric-shell")
		ahide("shotgun-explosive-shell")
		ahide("shotgun-flame-shell")
		ahide("shotgun-acid-shell")
		ahide("shotgun-poison-shell")
		ahide("bob-rocket")
		ahide("rocket-body")
		ahide("rocket-engine")
		ahide("rocket-warhead")
		ahide("bob-piercing-rocket")
		ahide("piercing-rocket-warhead")
		ahide("electric-rocket-warhead")
		ahide("bob-electric-rocket")
		ahide("bob-explosive-rocket")
		ahide("explosive-rocket-warhead")
		ahide("bob-acid-rocket")
		ahide("acid-rocket-warhead")
		ahide("bob-flame-rocket")
		ahide("flame-rocket-warhead")
		ahide("bob-poison-rocket")
		ahide("poison-rocket-warhead")
		ahide("rifle")
		ahide("sniper-rifle")
		ahide("poison-mine")
		ahide("defender-robot")
		ahide("distractor-robot")
		ahide("destroyer-robot")
		ahide("bob-laser-robot-capsule")
		ahide("bob-laser-robot")
		ahide("robot-brain-combat")
		ahide("robot-brain-combat-2")
		ahide("robot-brain-combat-3")
		ahide("robot-brain-combat-4")
		ahide("robot-tool-combat")
		ahide("robot-tool-combat-2")
		ahide("robot-tool-combat-3")
		ahide("robot-tool-combat-4")
		ahide("bullet-casing")
		ahide("shotgun-shell-casing")
		ahide("magazine")
		ahide("shot")
		ahide("bullet-projectile")
		ahide("ap-bullet-projectile")
		ahide("he-bullet-projectile")
		ahide("flame-bullet-projectile")
		ahide("acid-bullet-projectile")
		ahide("poison-bullet-projectile")
		ahide("electric-bullet-projectile")
		ahide("bullet")
		ahide("ap-bullet")
		ahide("he-bullet")
		ahide("flame-bullet")
		ahide("acid-bullet")
		ahide("poison-bullet")
		ahide("electric-bullet")
		ahide("bullet-magazine")
		ahide("ap-bullet-magazine")
		ahide("electric-bullet-magazine")
		ahide("he-bullet-magazine")
		ahide("flame-bullet-magazine")
		ahide("acid-bullet-magazine")
		ahide("poison-bullet-magazine")
		
		switch_tech("poison-mine")
		switch_tech("slowdown-mine")
		switch_tech("distractor-mine")
		switch_tech("nitroglycerin-processing")
		switch_tech("cordite-processing")
		switch_tech("bob-bullets")
		switch_tech("bob-ap-bullets")
		switch_tech("bob-electric-bullets")
		switch_tech("bob-he-bullets")
		switch_tech("bob-flame-bullets")
		switch_tech("bob-acid-bullets")
		switch_tech("bob-poison-bullets")
		switch_tech("bob-shotgun-shells")
		switch_tech("bob-shotgun-ap-shells")
		switch_tech("bob-shotgun-electric-shells")
		switch_tech("bob-shotgun-explosive-shells")
		switch_tech("bob-shotgun-flame-shells")
		switch_tech("bob-shotgun-acid-shells")
		switch_tech("bob-shotgun-poison-shells")
		switch_tech("bob-rocket")
		switch_tech("bob-piercing-rocket")
		switch_tech("bob-electric-rocket")
		switch_tech("bob-explosive-rocket")
		switch_tech("bob-acid-rocket")
		switch_tech("bob-flame-rocket")
		switch_tech("bob-poison-rocket")
		switch_tech("combat-robotics-4")
		
		zgc.t_remove_recipe_unlock("combat-robotics", "defender-robot")
		zgc.t_remove_recipe_unlock("combat-robotics", "robot-brain-combat")
		zgc.t_remove_recipe_unlock("combat-robotics", "robot-tool-combat")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "distractor-robot")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "robot-brain-combat-2")
		zgc.t_remove_recipe_unlock("combat-robotics-2", "robot-tool-combat-2")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "destroyer-robot")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "robot-brain-combat-3")
		zgc.t_remove_recipe_unlock("combat-robotics-3", "robot-tool-combat-3")
	end
	
end
do	--[[trains-vehicles]]--
	if not z_balance.bob_transport then
		aadd("trains-0",			"armoured-diesel-locomotive",	"b")
		aadd("trains-0",			"diesel-locomotive-2",			"d")
		aadd("trains-0",			"diesel-locomotive-3",			"e")
		
		aadd("trains-1",			"armoured-cargo-wagon",			"a")
		aadd("trains-1",			"cargo-wagon-2",				"d")
		aadd("trains-1",			"cargo-wagon-3",				"e")
		
		aadd("vehicles-0",		"tank-2",						"c")
		aadd("vehicles-0",		"tank-3",						"d")
		aadd("vehicles-0",		"bob-robot-tank",				"e")
		
		aadd("vehicles-1",		"tank-machine-gun",				"a")
		aadd("vehicles-1",		"vehicle-machine-gun",			"b")
		aadd("vehicles-1",		"tank-cannon-2",				"c")
		aadd("vehicles-1",		"tank-cannon-3",				"d")
		aadd("vehicles-1",		"tank-artillery-1",				"e")
		aadd("vehicles-1",		"tank-artillery-2",				"f")
		aadd("vehicles-1",		"gatling-gun",					"g")
		aadd("vehicles-1",		"tank-laser",					"h")
		
		aadd("vehicles-2",		"scatter-cannon-shell",			"c")
		aadd("vehicles-2",		"poison-artillery-shell",		"d")
		aadd("vehicles-2",		"explosive-artillery-shell",	"e")
		aadd("vehicles-2",		"distractor-artillery-shell",	"f")
	else
		ahide("gatling-gun")
		ahide("tank-laser")
		ahide("tank-2")
		ahide("tank-3")
		ahide("bob-robot-tank")
		ahide("tank-cannon-2")
		ahide("tank-cannon-3")
		ahide("tank-artillery-1")
		ahide("tank-artillery-2")
		ahide("scatter-cannon-shell")
		ahide("poison-artillery-shell")
		ahide("explosive-artillery-shell")
		ahide("distractor-artillery-shell")
		
		switch_tech("tanks-2")
		switch_tech("tanks-3")
		switch_tech("bob-robot-tanks")
		
		switch_tech("bob-tank-artillery-damage-1")
		switch_tech("bob-tank-artillery-damage-2")
		switch_tech("bob-tank-artillery-damage-3")
		switch_tech("bob-tank-artillery-damage-4")
		switch_tech("bob-tank-artillery-damage-5")
		switch_tech("bob-tank-artillery-damage-6")
		switch_tech("bob-tank-artillery-speed-1")
		switch_tech("bob-tank-artillery-speed-2")
		switch_tech("bob-tank-artillery-speed-3")
		switch_tech("bob-tank-artillery-speed-4")
		switch_tech("bob-tank-artillery-speed-5")
		switch_tech("bob-tank-artillery-speed-6")
	end
	
	ahide("combat-robot-dispenser-equipment")
end
do	--[[alien]]--
	aadd("alien-7",			"alien-acid",					"a")
	aadd("alien-7",			"alien-explosive",				"b")
	aadd("alien-7",			"alien-fire",					"c")
	aadd("alien-7",			"alien-poison",					"d")
	
	aadd("alien-8",			"alien-acid-barrel",			"a")
	aadd("alien-8",			"alien-explosive-barrel",		"b")
	aadd("alien-8",			"alien-fire-barrel",			"c")
	aadd("alien-8",			"alien-poison-barrel",			"d")
	
	aadd("alien-8",			"fill-alien-acid-barrel",		"a")
	aadd("alien-8",			"fill-alien-explosive-barrel",	"b")
	aadd("alien-8",			"fill-alien-fire-barrel",		"c")
	aadd("alien-8",			"fill-alien-poison-barrel",		"d")
	
	aadd("alien-9",			"empty-alien-acid-barrel",		"a")
	aadd("alien-9",			"empty-alien-explosive-barrel",	"b")
	aadd("alien-9",			"empty-alien-fire-barrel",		"c")
	aadd("alien-9",			"empty-alien-poison-barrel",	"d")
	
	aadd("alien-9",			"alien-acid-in-tanker",			"a")
	aadd("alien-9",			"alien-explosive-in-tanker",	"b")
	aadd("alien-9",			"alien-fire-in-tanker",			"c")
	aadd("alien-9",			"alien-poison-in-tanker",		"d")
end
