local allow_changes = z_balance.bob

do	--[[gathering]]--
	aadd("z-gathering-0",		"brass-axe",				"c")
	aadd("z-gathering-0",		"cobalt-axe",				"d")
	aadd("z-gathering-0",		"titanium-axe",				"e")
	aadd("z-gathering-0",		"tungsten-axe",				"f")
	aadd("z-gathering-0",		"diamond-axe",				"g")
	
	aadd("z-gathering-3",		"storage-tank-2",			"b")
	aadd("z-gathering-3",		"storage-tank-3",			"c")
	aadd("z-gathering-3",		"storage-tank-4",			"d")
	
  if i_not_exist("5d-mining-drill-speed-1") then
	aadd("z-gathering-4",		"bob-mining-drill-1",		"b")
	aadd("z-gathering-4",		"bob-mining-drill-2",		"c")
	aadd("z-gathering-4",		"bob-mining-drill-3",		"d")
	aadd("z-gathering-4",		"bob-mining-drill-4",		"e")
  else
	aadd("z-gathering-5",		"bob-mining-drill-1",		"a")
	aadd("z-gathering-5",		"bob-mining-drill-2",		"b")
	aadd("z-gathering-5",		"bob-mining-drill-3",		"c")
	aadd("z-gathering-5",		"bob-mining-drill-4",		"d")
  end
	
	aadd("z-gathering-6",		"bob-area-drill-1",			"b")
	aadd("z-gathering-6",		"bob-area-drill-2",			"c")
	aadd("z-gathering-6",		"bob-area-drill-3",			"d")
	aadd("z-gathering-6",		"bob-area-drill-4",			"e")

	aadd("z-gathering-7",		"bob-area-mining-drill-1",	"a")
	aadd("z-gathering-7",		"bob-area-mining-drill-2",	"b")
	aadd("z-gathering-7",		"bob-area-mining-drill-3",	"c")
	aadd("z-gathering-7",		"bob-area-mining-drill-4",	"d")
  
  if allow_changes and i_not_exist("5d-small-pump") then
	aadd("z-gathering-8",		"small-pump-2",				"e")
	aadd("z-gathering-8",		"small-pump-3",				"f")
	aadd("z-gathering-8",		"small-pump-4",				"g")
  elseif allow_changes then
	aadd("z-gathering-8",		"small-pump",				"d")
	aadd("z-gathering-8",		"5d-small-pump",			"e")
	aadd("z-gathering-8",		"5d-small-pump-2",			"f")
	aadd("z-gathering-8",		"void-pump",				"j")
	
	ahide("small-pump-2")
	ahide("small-pump-3")
	ahide("small-pump-4")
	switch_tech("bob-fluid-handling-3")
	switch_tech("bob-fluid-handling-4")
  else
	aadd("z-gathering-10",		"small-pump",				"a")
	aadd("z-gathering-10",		"small-pump-2",				"b")
	aadd("z-gathering-10",		"small-pump-3",				"c")
	aadd("z-gathering-10",		"small-pump-4",				"d")
	aadd("z-gathering-10",		"5d-small-pump",			"e")
	aadd("z-gathering-10",		"5d-small-pump-2",			"f")
	aadd("z-gathering-10",		"void-pump",				"g")
  end
		
	aadd("z-gathering-9",		"water-miner-1",			"a", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("z-gathering-9",		"water-miner-2",			"b", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("z-gathering-9",		"water-miner-3",			"c", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("z-gathering-9",		"water-miner-4",			"d", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("z-gathering-9",		"water-miner-5",			"e", "__ZGroupChange__/graphics/icons/pump_water.png")
	aadd("z-gathering-9",		"pumpjack",					"f", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("z-gathering-9",		"bob-pumpjack-1",			"g", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("z-gathering-9",		"bob-pumpjack-2",			"h", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("z-gathering-9",		"bob-pumpjack-3",			"i", "__ZGroupChange__/graphics/icons/pump_oil.png")
	aadd("z-gathering-9",		"bob-pumpjack-4",			"j", "__ZGroupChange__/graphics/icons/pump_oil.png")
	
	aadd("z-gathering-11",		"water-pump",				"a")
	aadd("z-gathering-11",		"water-pump-1",				"b")
	aadd("z-gathering-11",		"water-pump-2",				"c")
	aadd("z-gathering-11",		"water-pump-3",				"d")
	aadd("z-gathering-11",		"water-pump-4",				"e")
	aadd("z-gathering-11",		"water-pump-5",				"f")
	aadd("z-gathering-11",		"air-pump",					"g")
	aadd("z-gathering-11",		"air-pump-1",				"h")
	aadd("z-gathering-11",		"air-pump-2",				"i")
	aadd("z-gathering-11",		"air-pump-3",				"j")
	aadd("z-gathering-11",		"air-pump-4",				"k")
	aadd("z-gathering-11",		"air-pump-5",				"l")
  
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
	aadd("z-production-0",		"stone-furnace",				"a")
	aadd("z-production-0",		"chemical-boiler",				"b")
	aadd("z-production-0",		"mixing-furnace",				"c")
	aadd("z-production-0",		"steel-furnace",				"d")
	aadd("z-production-0",		"5d-furnace",					"e")
	aadd("z-production-0",		"5d-masher",					"f")
	aadd("z-production-0",		"5d-masher-2",					"g")
	
	aadd("z-production-2",		"electric-furnace",				"c")
	aadd("z-production-2",		"electric-furnace-2",			"d")
	aadd("z-production-2",		"electric-furnace-3",			"e")
	aadd("z-production-2",		"chemical-furnace",				"f", "__ZGroupChange__/graphics/icons/chemical-furnace.png")
	aadd("z-production-2",	"electric-chemical-mixing-furnace",	"g")
	aadd("z-production-2",	"electric-chemical-mixing-furnace-2","h")
	
	aadd("z-production-4",		"assembling-machine-1",			"a", "__ZGroupChange__/graphics/icons/assembling-machine-1.png")
	aadd("z-production-4",		"assembling-machine-2",			"b", "__ZGroupChange__/graphics/icons/assembling-machine-2.png")
	aadd("z-production-4",		"assembling-machine-3",			"c", "__ZGroupChange__/graphics/icons/assembling-machine-3.png")
	aadd("z-production-4",		"assembling-machine-4",			"d", "__ZGroupChange__/graphics/icons/assembling-machine-4.png")
	aadd("z-production-4",		"assembling-machine-5",			"e", "__ZGroupChange__/graphics/icons/assembling-machine-5.png")
	aadd("z-production-4",		"assembling-machine-6",			"f", "__ZGroupChange__/graphics/icons/assembling-machine-6.png")
	
	aadd("z-production-8",		"electrolyser",					"a")
	aadd("z-production-8",		"electrolyser-1",				"b")
	aadd("z-production-8",		"electrolyser-2",				"c")
	aadd("z-production-8",		"electrolyser-3",				"d")
	aadd("z-production-8",		"electrolyser-4",				"e")
	
	aadd("z-production-9",		"bob-greenhouse",				"a")
	
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
	aadd("z-production-6",		"oil-refinery-2",				"b")
	aadd("z-production-6",		"oil-refinery-3",				"c")
	aadd("z-production-6",		"oil-refinery-4",				"c")
	
	aadd("z-production-7",		"chemical-plant-2",				"b")
	aadd("z-production-7",		"chemical-plant-3",				"c")
	aadd("z-production-7",		"chemical-plant-4",				"c")
  elseif not allow_changes then
	aadd("z-production-6",		"oil-refinery-2",				"b")
	aadd("z-production-6",		"oil-refinery-3",				"c")
	aadd("z-production-6",		"oil-refinery-4",				"d")
		
	aadd("z-production-7",		"chemical-plant-2",				"b")
	aadd("z-production-7",		"chemical-plant-3",				"c")
	aadd("z-production-7",		"chemical-plant-4",				"d")
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
	aadd("z-production-2",		"5d-electric-furnace",			"d")
	aadd("z-production-2",		"electric-mixing-furnace",		"e")
  elseif allow_changes then
	ahide("5d-electric-furnace")
	ahide("electric-mixing-furnace")
  else
	aadd("z-production-2",		"5d-electric-furnace",			"d")
	aadd("z-production-2",		"electric-mixing-furnace",		"e")
  end
  
  if not allow_changes then
	aadd("z-production-5",		"electronics-machine-1",		"a")
	aadd("z-production-5",		"electronics-machine-2",		"b")
	aadd("z-production-5",		"electronics-machine-3",		"c")
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

	aadd("z-resources-0",		"raw-wood",					"a")
	aadd("z-resources-0",		"wood",						"b")
	aadd("z-resources-0",		"seedling",					"c")
	aadd("z-resources-0",		"coal",						"e")
	aadd("z-resources-0",		"5d-coal",					"f")
	aadd("z-resources-0",		"stone",					"g")
	aadd("z-resources-0",		"sulfur",					"h")
	aadd("z-resources-0",		"sulfur-2",					"i")
	aadd("z-resources-0",		"gem-ore",					"j")
	aadd("z-resources-0",		"sort-gem-ore",				"k")
	
	aadd("z-resources-3",		"cobalt-ore",				"a")
	aadd("z-resources-3",		"nickel-ore",				"b")
	aadd("z-resources-3",		"quartz",					"c")
	aadd("z-resources-3",		"quartz-ore",				"d")
	aadd("z-resources-3",		"rutile-ore",				"e")
	aadd("z-resources-3",		"silver-ore",				"f")
	aadd("z-resources-3",		"tungsten-ore",				"g")
	
	aadd("z-resources-4",		"iron-ore",					"a")
	aadd("z-resources-4",		"copper-ore",				"b")
	aadd("z-resources-4",		"lead-ore",					"c")
	aadd("z-resources-4",		"tin-ore",					"d")
	aadd("z-resources-4",		"zinc-ore",					"e")
	aadd("z-resources-4",		"bauxite-ore",				"f")
	aadd("z-resources-4",		"gold-ore",					"g")
	
	aadd("z-resources-5",		"5d-iron-dust",				"a")
	aadd("z-resources-5",		"5d-copper-dust",			"b")
	aadd("z-resources-5",		"5d-lead-dust",				"c")
	aadd("z-resources-5",		"5d-tin-dust",				"d")
	aadd("z-resources-5",		"5d-zinc-dust",				"e")
	aadd("z-resources-5",		"5d-aluminium-dust",		"f")
	aadd("z-resources-5",		"5d-gold-dust",				"g")
	
	iadd("z-resources-6",		"plastic-bar",				"a")
	aadd("z-resources-6",		"silicon",					"b")
	aadd("z-resources-6",		"bob-silicon-plate",		"c")
	aadd("z-resources-6",		"resin",					"d")
	aadd("z-resources-6",		"bob-resin-wood",			"e")
	aadd("z-resources-6",		"bob-resin-oil",			"f")
	aadd("z-resources-6",		"rubber",					"g")
	aadd("z-resources-6",		"bob-rubber",				"h")
	aadd("z-resources-6",		"carbon",					"i")
	aadd("z-resources-6",		"glass",					"j")
	aadd("z-resources-6",		"quartz-glass",				"k")
	
	radd("z-resources-9",		"plastic-bar",				"a")
	aadd("z-resources-9",		"salt",						"a")
	aadd("z-resources-9",		"alumina",					"b")
	aadd("z-resources-9",		"cobalt-oxide",				"c")
	iadd("z-resources-9",		"lithium-cobalt-oxide",		"d")
	iadd("z-resources-9",		"silicon-powder",			"d")
	aadd("z-resources-9",		"lead-oxide",				"e")
	aadd("z-resources-9",		"silver-oxide",				"f")
	aadd("z-resources-9",		"tungsten-oxide",			"g")
	
	aadd("z-resources-10",		"calcium-chloride",			"b")
	aadd("z-resources-10",		"lithium-chloride",			"c")
	radd("z-resources-10",		"lithium-cobalt-oxide",		"d")
	radd("z-resources-10",		"silicon-powder",			"e")
	aadd("z-resources-10",		"silicon-wafer",			"f")
	aadd("z-resources-10",		"silicon-carbide",			"g")
	aadd("z-resources-10",		"silicon-nitride",			"h")
	aadd("z-resources-10",		"silver-nitrate",			"i")
	aadd("z-resources-10",		"petroleum-jelly",			"j")
	aadd("z-resources-10",		"lithium-perchlorate",		"k")
	aadd("z-resources-10",		"sodium-hydroxide",			"l")
	
	aadd("z-resources-11",		"ruby-ore",					"a")
	aadd("z-resources-11",		"sapphire-ore",				"b")
	aadd("z-resources-11",		"emerald-ore",				"c")
	aadd("z-resources-11",		"amethyst-ore",				"d")
	aadd("z-resources-11",		"topaz-ore",				"e")
	aadd("z-resources-11",		"diamond-ore",				"f")
	
	aadd("z-resources-12",		"ruby-3",					"a")
	aadd("z-resources-12",		"sapphire-3",				"b")
	aadd("z-resources-12",		"emerald-3",				"c")
	aadd("z-resources-12",		"amethyst-3",				"d")
	aadd("z-resources-12",		"topaz-3",					"e")
	aadd("z-resources-12",		"diamond-3",				"f")
	
	aadd("z-resources-13",		"ruby-4",					"a")
	aadd("z-resources-13",		"sapphire-4",				"b")
	aadd("z-resources-13",		"emerald-4",				"c")
	aadd("z-resources-13",		"amethyst-4",				"d")
	aadd("z-resources-13",		"topaz-4",					"e")
	aadd("z-resources-13",		"diamond-4",				"f")
	
	aadd("z-resources-14",		"ruby-5",					"a")
	aadd("z-resources-14",		"sapphire-5",				"b")
	aadd("z-resources-14",		"emerald-5",				"c")
	aadd("z-resources-14",		"amethyst-5",				"d")
	aadd("z-resources-14",		"topaz-5",					"e")
	aadd("z-resources-14",		"diamond-5",				"f")
	
	if not z_balance.bob_synthetic then
		aadd("z-resources-0",		"synthetic-wood",		"b")
	else
		ahide("synthetic-wood")
		zgc.r_replace_ingredient_in_all("synthetic-wood", "wood")
	end
	
	if z_balance.add_gems then
		zgc.add_newRessource_min_max("gem-ore",	"ruby-3",		1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore", "sapphire-3",	1,1,0.2)
		zgc.add_newRessource_min_max("gem-ore", "emerald-3",	1,1,0.1)
		zgc.add_newRessource_min_max("gem-ore", "amethyst-3",	1,1,0.1)
	end
end
do	--[[plates]]--
	
	aadd("z-plates-6",		"powdered-tungsten",				"h")
	
	aadd("z-plates-7",		"5d-iron-dust",						"a")
	aadd("z-plates-7",		"5d-copper-dust",					"b")
	aadd("z-plates-7",		"5d-lead-dust",						"c")
	aadd("z-plates-7",		"5d-tin-dust",						"d")
	aadd("z-plates-7",		"5d-zinc-dust",						"e")
	aadd("z-plates-7",		"5d-aluminium-dust",				"f")
	aadd("z-plates-7",		"5d-gold-dust",						"g")
		
	aadd("z-plates-9",		"iron-plate",						"a")
	aadd("z-plates-9",		"copper-plate",						"b")
	aadd("z-plates-9",		"lead-plate",						"c")
	aadd("z-plates-9",		"tin-plate",						"d")
	aadd("z-plates-9",		"zinc-plate",						"e")
	aadd("z-plates-9",		"aluminium-plate",					"f")
	aadd("z-plates-9",		"gold-plate",						"g")
	
	aadd("z-plates-10",		"5d-iron-plate",					"a")
	aadd("z-plates-10",		"5d-copper-plate",					"b")
	aadd("z-plates-10",		"5d-lead-plate-2",					"c")
	aadd("z-plates-10",		"5d-tin-plate-2",					"d")
	aadd("z-plates-10",		"5d-zinc-plate-2",					"e")
	aadd("z-plates-10",		"5d-aluminium-plate-2",				"f")
	aadd("z-plates-10",		"5d-gold-plate-2",					"g")
	
	aadd("z-plates-11",		"brass-alloy",						"a")
	aadd("z-plates-11",		"cobalt-oxide-from-copper",			"b")
	aadd("z-plates-11",		"bob-lead-plate",					"c")
	aadd("z-plates-11",		"silver-from-lead",					"d")
	aadd("z-plates-11",		"bob-zinc-plate",					"e")
	aadd("z-plates-11",		"bob-aluminium-plate",				"f")
	aadd("z-plates-11",		"bob-gold-plate",					"g")
	aadd("z-plates-11",		"bronze-alloy",						"h")
	aadd("z-plates-11",		"tungsten-carbide",					"i")
	
	aadd("z-plates-12",		"cobalt-plate",						"a")
	aadd("z-plates-12",		"bob-nickel-plate",					"b")
	aadd("z-plates-12",		"nickel-plate",						"c")
	aadd("z-plates-12",		"silver-plate",						"d")
	aadd("z-plates-12",		"electrum-alloy",					"e")
	aadd("z-plates-12",		"alumina",							"f")
	aadd("z-plates-12",		"lithium",							"g")
	aadd("z-plates-12",		"invar-alloy",						"h")
	aadd("z-plates-12",		"nitinol-alloy",					"i")
	
	aadd("z-plates-13",		"steel-plate",						"a")
	aadd("z-plates-13",		"copper-tungsten-alloy",			"c")
	aadd("z-plates-13",		"bob-tungsten-plate",				"d")
	aadd("z-plates-13",		"tungsten-plate",					"e")
	aadd("z-plates-13",		"titanium-plate",					"f")
	aadd("z-plates-13",		"bob-titanium-plate",				"g")
	aadd("z-plates-13",		"cobalt-steel-alloy",				"h")
	aadd("z-plates-13",		"alien-orange-alloy",				"j")
	aadd("z-plates-13",		"alien-blue-alloy",					"k")
	
	
	if data.raw.recipe["lead-plate"] then ahide("5d-lead-plate") end
	if data.raw.recipe["tin-plate"] then ahide("5d-tin-plate") end
	
	if z_balance.bob_warfare then
		ahide("gunmetal-alloy")
		zgc.t_remove_recipe_unlock("zinc-processing", "gunmetal-alloy")
	else
		aadd("z-plates-15",		"gunmetal-alloy",				"j")
	end
end
do	--[[liquids]]--
	aadd("z-liquids-0",			"empty-canister",				"b")
	aadd("z-liquids-0",			"gas-canister",					"c")
	
	aadd("z-liquids-1",			"bob-oil-processing",			"a")
	aadd("z-liquids-1",			"basic-oil-processing",			"b")
	aadd("z-liquids-1",			"advanced-oil-processing",		"d")
	aadd("z-liquids-1",			"ground-water",					"e")
	
	aadd("z-liquids-2",			"water",						"a")
	aadd("z-liquids-2",			"lithia-water",					"b")
	aadd("z-liquids-2",			"coal-cracking",				"d")
	aadd("z-liquids-2",			"liquid-fuel",					"e")
	aadd("z-liquids-2",			"lubricant",					"f")
	aadd("z-liquids-2",			"bob-liquid-air",				"g")
	
	aadd("z-liquids-5",			"fill-water-barrel",			"a")
	aadd("z-liquids-5",			"fill-lithia-water-barrel",		"b")
	aadd("z-liquids-5",			"fill-crude-oil-barrel",		"ca")
	aadd("z-liquids-5",			"bob-fill-crude-oil-barrel",	"cb")
	aadd("z-liquids-5",			"fill-heavy-oil-barrel",		"d")
	aadd("z-liquids-5",			"fill-light-oil-barrel",		"e")
	aadd("z-liquids-5",			"fill-lubricant-barrel",		"f")
	aadd("z-liquids-5",			"fill-sulfuric-acid-barrel",	"g")
	aadd("z-liquids-5",			"fill-nitric-acid-barrel",		"h")
	
	aadd("z-liquids-6",			"empty-water-barrel",			"a")
	aadd("z-liquids-6",			"empty-lithia-water-barrel",	"b")
	aadd("z-liquids-6",			"empty-crude-oil-barrel",		"ca")
	aadd("z-liquids-6",			"bob-empty-crude-oil-barrel",	"cb")
	aadd("z-liquids-6",			"empty-heavy-oil-barrel",		"d")
	aadd("z-liquids-6",			"empty-light-oil-barrel",		"e")
	aadd("z-liquids-6",			"empty-lubricant-barrel",		"f")
	aadd("z-liquids-6",			"empty-sulfuric-acid-barrel",	"g")
	aadd("z-liquids-6",			"empty-nitric-acid-barrel",		"h")
	
	aadd("z-liquids-7",			"water-barrel",					"a")
	aadd("z-liquids-7",			"lithia-water-barrel",			"b")
	aadd("z-liquids-7",			"crude-oil-barrel",				"c")
	aadd("z-liquids-7",			"heavy-oil-barrel",				"d")
	aadd("z-liquids-7",			"light-oil-barrel",				"e")
	aadd("z-liquids-7",			"lubricant-barrel",				"f")
	aadd("z-liquids-7",			"sulfuric-acid-barrel",			"g")
	aadd("z-liquids-7",			"nitric-acid-barrel",			"h")
	
	aadd("z-liquids-8",			"oxygen-canister",					"a")
	aadd("z-liquids-8",			"hydrogen-canister",				"b")
	aadd("z-liquids-8",			"nitrogen-canister",				"c")
	aadd("z-liquids-8",			"chlorine-canister",				"d")
	aadd("z-liquids-8",			"hydrogen-chloride-canister",		"e")
	aadd("z-liquids-8",			"petroleum-gas-canister",			"f")
	aadd("z-liquids-8",			"liquid-fuel-canister",				"g")
	aadd("z-liquids-8",			"ferric-chloride-canister",			"h")
	
	aadd("z-liquids-9",			"empty-oxygen-canister",			"a")
	aadd("z-liquids-9",			"empty-hydrogen-canister",			"b")
	aadd("z-liquids-9",			"empty-nitrogen-canister",			"c")
	aadd("z-liquids-9",			"empty-chlorine-canister",			"d")
	aadd("z-liquids-9",			"empty-hydrogen-chloride-canister",	"e")
	aadd("z-liquids-9",			"empty-petroleum-gas-canister",		"f")
	aadd("z-liquids-9",			"empty-liquid-fuel-canister",		"g")
	aadd("z-liquids-9",			"empty-ferric-chloride-canister",	"h")
	
end
do	--[[chemistry]]--
	aadd("z-chemistry-0",		"sulfuric-acid",				"a")
	aadd("z-chemistry-0",		"sulfuric-acid-2",				"b")
	aadd("z-chemistry-0",		"nitrogen",						"d")
	aadd("z-chemistry-0",		"nitrogen-dioxide",				"e")
	aadd("z-chemistry-0",		"nitric-acid",					"g")
	aadd("z-chemistry-0",		"tungstic-acid",				"h")
	
	aadd("z-chemistry-1",		"water-electrolysis",			"a")
	aadd("z-chemistry-1",		"salt-water-electrolysis",		"b")
	aadd("z-chemistry-1",		"petroleum-gas-cracking",		"c")
	aadd("z-chemistry-1",		"lithium-water-electrolysis",	"d")
	aadd("z-chemistry-1",		"hydrogen-chloride",			"e")
	
	aadd("z-chemistry-2",		"heavy-oil-cracking",			"a")
	aadd("z-chemistry-2",		"light-oil-cracking",			"b")
	aadd("z-chemistry-2",		"ferric-chloride-solution",		"d")
	
	aadd("z-chemistry-3",		"solid-fuel-from-heavy-oil",	"a")
	aadd("z-chemistry-3",		"solid-fuel-from-light-oil",	"b")
	aadd("z-chemistry-3",		"solid-fuel-from-petroleum-gas","c")
	aadd("z-chemistry-3",		"solid-fuel-from-hydrogen",		"d")
	
	if allow_changes and i_exist("nitroglycerin") then
		data.raw.recipe["nitroglycerin"].ingredients = {}
		data.raw.recipe["nitroglycerin"].ingredients =
		{
			{name="sulfur", amount=12},
			{type="fluid", name="nitric-acid", amount=3},
			{type="fluid", name="light-oil", amount=1},
		}
		aadd("z-chemistry-1",		"nitroglycerin",			"f")
		
		ahide("sulfuric-nitric-acid")
		ahide("glycerol")
		switch_tech("nitroglycerin-processing")
		zgc.t_remove_recipe_unlock("nitroglycerin-processing", "glycerol")
	else
		aadd("z-chemistry-1",		"nitroglycerin",			"f")
		aadd("z-chemistry-1",		"sulfuric-nitric-acid",		"g")
		aadd("z-chemistry-1",		"glycerol",					"h")
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
		aadd("z-automatization-1",	"express-filter-inserter",		"g")
		
		aadd("z-automatization-3",	"express-inserter",				"g")
		aadd("z-automatization-3",	"express-stack-inserter",		"h")
		aadd("z-automatization-3",	"express-stack-filter-inserter","i")
	else
		aadd("z-automatization-0",	"express-inserter",				"d")
		
		aadd("z-automatization-1",	"express-filter-inserter",		"b")
		aadd("z-automatization-1",	"express-stack-filter-inserter","j")
		
		aadd("z-automatization-2",	"stack-filter-inserter",		"h")
		aadd("z-automatization-2",	"express-stack-inserter",		"i")
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
	aadd("z-transport-5",		"valve",						"a")
	
  if allow_changes then
	if i_exist("5d-mk4-transport-belt") then
		ahide("green-transport-belt")
		ahide("green-underground-belt")
		ahide("green-splitter")
		ahide("purple-transport-belt")
		ahide("purple-underground-belt")
		ahide("purple-splitter")
	else
		aadd("z-transport-0",	"green-transport-belt",			"f")
		aadd("z-transport-0",	"purple-transport-belt",		"g")
		
		aadd("z-transport-1",	"green-underground-belt",		"f")
		aadd("z-transport-1",	"purple-underground-belt",		"g")
	
		aadd("z-transport-4",	"green-splitter",				"f")
		aadd("z-transport-4",	"purple-splitter",				"g")
	end
	if i_exist("5d-pipe-mk2") then
		ahide("copper-pipe")
		ahide("steel-pipe")
		ahide("copper-pipe-to-ground")
		ahide("steel-pipe-to-ground")
		zgc.r_replace_ingredient_in_all("copper-pipe", "pipe")
		zgc.r_replace_ingredient_in_all("steel-pipe", "pipe")
	else
		aadd("z-transport-8",	"copper-pipe",					"b")
		aadd("z-transport-8",	"steel-pipe",					"d")
		
		aadd("z-transport-9",	"copper-pipe-to-ground",		"b")
		aadd("z-transport-9",	"steel-pipe-to-ground",			"d")
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
	aadd("z-transport-0",	"green-transport-belt",			"f")
	aadd("z-transport-0",	"purple-transport-belt",		"g")
	
	aadd("z-transport-1",	"green-underground-belt",		"f")
	aadd("z-transport-1",	"purple-underground-belt",		"g")

	aadd("z-transport-4",	"green-splitter",				"f")
	aadd("z-transport-4",	"purple-splitter",				"g")
	
	aadd("z-transport-6",	"stone-pipe",					"a")
	aadd("z-transport-6",	"copper-pipe",					"b")
	aadd("z-transport-6",	"steel-pipe",					"c")
	aadd("z-transport-6",	"bronze-pipe",					"d")
	aadd("z-transport-6",	"plastic-pipe",					"e")
	aadd("z-transport-6",	"brass-pipe",					"f")
	aadd("z-transport-6",	"ceramic-pipe",					"g")
	aadd("z-transport-6",	"titanium-pipe",				"h")
	aadd("z-transport-6",	"tungsten-pipe",				"i")
	
	aadd("z-transport-7",	"stone-pipe-to-ground",			"a")
	aadd("z-transport-7",	"copper-pipe-to-ground",		"b")
	aadd("z-transport-7",	"steel-pipe-to-ground",			"c")
	aadd("z-transport-7",	"bronze-pipe-to-ground",		"d")
	aadd("z-transport-7",	"plastic-pipe-to-ground",		"e")
	aadd("z-transport-7",	"brass-pipe-to-ground",			"f")
	aadd("z-transport-7",	"ceramic-pipe-to-ground",		"g")
	aadd("z-transport-7",	"titanium-pipe-to-ground",		"h")
	aadd("z-transport-7",	"tungsten-pipe-to-ground",		"i")
  end
	
	
	local function set_sprite(pic)
		local pic = pic or "u_line_y"
		return {
			filename = "__ZGroupChange__/graphics/entity/"..pic..".png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		}
	end
	
	if i_exist("green-underground-belt") then
		data.raw["underground-belt"]["green-underground-belt"].underground_sprite = set_sprite("u_line_g") end
	if i_exist("purple-underground-belt") then
		data.raw["underground-belt"]["purple-underground-belt"].underground_sprite = set_sprite("u_line_p") end
	
end
do	--[[logistic]]--
	aadd("z-logistic-1",		"roboport",							"a")
	aadd("z-logistic-1",		"bob-roboport-2",					"b")
	aadd("z-logistic-1",		"bob-roboport-3",					"d", "__ZGroupChange__/graphics/icons/roboport2.png")
	aadd("z-logistic-1",		"bob-roboport-4",					"e", "__ZGroupChange__/graphics/icons/roboport3.png")
	aadd("z-logistic-1",		"bob-logistic-zone-expander",		"f")
	aadd("z-logistic-1",		"bob-logistic-zone-expander-2",		"g")
	aadd("z-logistic-1",		"bob-logistic-zone-expander-3",		"h")
	aadd("z-logistic-1",		"bob-logistic-zone-expander-4",		"i")
	aadd("z-logistic-1",		"bob-logistic-zone-interface",		"j")
	
	aadd("z-logistic-2",		"bob-robo-charge-port",				"a")
	aadd("z-logistic-2",		"bob-robo-charge-port-2",			"b")
	aadd("z-logistic-2",		"bob-robo-charge-port-3",			"c")
	aadd("z-logistic-2",		"bob-robo-charge-port-4",			"d")
	aadd("z-logistic-2",		"bob-robo-charge-port-large",		"e")
	aadd("z-logistic-2",		"bob-robo-charge-port-large-2",		"f")
	aadd("z-logistic-2",		"bob-robo-charge-port-large-3",		"g")
	aadd("z-logistic-2",		"bob-robo-charge-port-large-4",		"h")
	
	aadd("z-logistic-3",		"logistic-robot",					"a")
	aadd("z-logistic-3",		"bob-logistic-robot-2",				"b")
	aadd("z-logistic-3",		"bob-logistic-robot-3",				"c")
	aadd("z-logistic-3",		"bob-logistic-robot-4",				"d")
	aadd("z-logistic-3",		"construction-robot",				"f")
	aadd("z-logistic-3",		"bob-construction-robot-2",			"g")
	aadd("z-logistic-3",		"bob-construction-robot-3",			"h")
	aadd("z-logistic-3",		"bob-construction-robot-4",			"i")
	
	aadd("z-logistic-4",		"logistic-chest-storage",			"a")
	aadd("z-logistic-4",		"logistic-chest-requester",			"b")
	aadd("z-logistic-4",		"logistic-chest-passive-provider",	"c")
	aadd("z-logistic-4",		"logistic-chest-active-provider",	"d")
	aadd("z-logistic-4",		"5d-storage",						"e")
	aadd("z-logistic-4",		"5d-requester",						"f")
	aadd("z-logistic-4",		"5d-passive",						"g")
	aadd("z-logistic-4",		"5d-active",						"h")
	
	aadd("z-logistic-5",		"bob-robochest",					"e")
	aadd("z-logistic-5",		"bob-robochest-2",					"f")
	aadd("z-logistic-5",		"bob-robochest-3",					"g")
	aadd("z-logistic-5",		"bob-robochest-4",					"h")
	
	aadd("z-logistic-8",		"tinned-copper-cable",				"f")
	aadd("z-logistic-8",		"insulated-cable",					"g")
	aadd("z-logistic-8",		"gilded-copper-cable",				"h")
	
	
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
		aadd("z-logistic-4",		"logistic-chest-storage-2",			"e")
		aadd("z-logistic-4",		"logistic-chest-requester-2",		"f")
		aadd("z-logistic-4",		"logistic-chest-passive-provider-2","g")
		aadd("z-logistic-4",		"logistic-chest-active-provider-2",	"h")
	elseif allow_changes then
		ahide("logistic-chest-storage-2")
		ahide("logistic-chest-requester-2")
		ahide("logistic-chest-passive-provider-2")
		ahide("logistic-chest-active-provider-2")
	else
		aadd("z-logistic-7",		"logistic-chest-storage-2",			"e")
		aadd("z-logistic-7",		"logistic-chest-requester-2",		"f")
		aadd("z-logistic-7",		"logistic-chest-passive-provider-2","g")
		aadd("z-logistic-7",		"logistic-chest-active-provider-2",	"h")
	end
	
	if i_not_exist("bob-roboport-2") then
		aadd("z-logistic-1",		"5d-roboport-2",					"b")
		aadd("z-logistic-3",		"5d-logistic-robot-2",				"b")
		aadd("z-logistic-3",		"5d-construction-robot-2",			"g")
	elseif allow_changes then
		ahide("5d-roboport-2")
		ahide("5d-logistic-robot-2")
		ahide("5d-construction-robot-2")
		switch_tech("robots-2")
	else
		aadd("z-logistic-3",		"5d-logistic-robot-2",				"b")
		aadd("z-logistic-3",		"5d-construction-robot-2",			"g")
	end

end
do	--[[energy]]--
	if not allow_changes or i_not_exist("5d-boiler") then
		aadd("z-energy-1",			"boiler-2",					"b")
		aadd("z-energy-1",			"boiler-3",					"c")
		aadd("z-energy-1",			"boiler-4",					"d")
	else
		ahide("boiler-2")
		ahide("boiler-3")
		ahide("boiler-4")
		switch_tech("bob-boiler-1")
		switch_tech("bob-boiler-2")
		switch_tech("bob-boiler-3")
	end
	
	if not allow_changes or i_not_exist("5d-steam-engine-2") then
		aadd("z-energy-2",			"steam-engine-2",			"b")
		aadd("z-energy-2",			"steam-engine-3",			"c")
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
		aadd("z-energy-4",			"solar-panel-2",				"b")
		aadd("z-energy-4",			"solar-panel-3",				"d")
		
		aadd("z-energy-5",			"solar-panel-small",			"a")
		aadd("z-energy-5",			"solar-panel-small-2",			"b")
		aadd("z-energy-5",			"solar-panel-small-3",			"c")
		aadd("z-energy-5",			"solar-panel-large",			"d")
		aadd("z-energy-5",			"solar-panel-large-2",			"e")
		aadd("z-energy-5",			"solar-panel-large-3",			"f")
		if allow_changes then
			ahide("solar-panel-2")
			ahide("solar-panel-3")
		end
	else
		aadd("z-energy-4",			"solar-panel-2",				"b")
		aadd("z-energy-4",			"solar-panel-3",				"d")
		
		aadd("z-energy-5",			"solar-panel-small",			"a")
		aadd("z-energy-5",			"solar-panel-small-2",			"b")
		aadd("z-energy-5",			"solar-panel-small-3",			"c")
		aadd("z-energy-5",			"solar-panel-large",			"g")
		aadd("z-energy-5",			"solar-panel-large-2",			"h")
		aadd("z-energy-5",			"solar-panel-large-3",			"i")
	end
	
	aadd("z-energy-6",			"slow-accumulator",				"a")
	aadd("z-energy-6",			"large-accumulator",			"b")
	aadd("z-energy-6",			"fast-accumulator",				"c")
	aadd("z-energy-6",			"slow-accumulator-2",			"d")
	aadd("z-energy-6",			"large-accumulator-2",			"e")
	aadd("z-energy-6",			"fast-accumulator-2",			"f")
	aadd("z-energy-6",			"slow-accumulator-3",			"g")
	aadd("z-energy-6",			"large-accumulator-3",			"h")
	aadd("z-energy-6",			"fast-accumulator-3",			"i")
	
	aadd("z-energy-7",			"medium-electric-pole-2",		"c")
	aadd("z-energy-7",			"medium-electric-pole-3",		"d")
	aadd("z-energy-7",			"medium-electric-pole-4",		"e")
	
	aadd("z-energy-8",			"big-electric-pole-2",			"b")
	aadd("z-energy-8",			"big-electric-pole-3",			"c")
	aadd("z-energy-8",			"big-electric-pole-4",			"d")
	aadd("z-energy-8",			"substation-2",					"f")
	aadd("z-energy-8",			"substation-3",					"g")
	aadd("z-energy-8",			"substation-4",					"h")
	
end
do	--[[defense]]--
	aadd("z-defense-0",			"reinforced-wall",				"b")
	aadd("z-defense-0",			"gate",							"c")
	aadd("z-defense-0",			"reinforced-gate",				"d")
	
	aadd("z-defense-3",			"flamethrower-turret",			"a")
	aadd("z-defense-3",			"bob-sniper-turret-1",			"b")
	aadd("z-defense-3",			"bob-sniper-turret-2",			"c")
	aadd("z-defense-3",			"bob-sniper-turret-3",			"d")
	
	aadd("z-defense-4",			"gun-turret",					"a")
	aadd("z-defense-4",			"bob-gun-turret-2",				"b")
	aadd("z-defense-4",			"bob-gun-turret-3",				"c")
	aadd("z-defense-4",			"bob-gun-turret-4",				"d")
	aadd("z-defense-4",			"bob-gun-turret-5",				"e")
	
	aadd("z-defense-5",			"laser-turret",					"a")
	aadd("z-defense-5",			"bob-laser-turret-2",			"b")
	aadd("z-defense-5",			"bob-laser-turret-3",			"c")
	aadd("z-defense-5",			"bob-laser-turret-4",			"d")
	aadd("z-defense-5",			"bob-laser-turret-5",			"e")
	
	aadd("z-defense-8",			"radar",						"a")
	aadd("z-defense-8",			"radar-2",						"b")
	aadd("z-defense-8",			"radar-3",						"c")
	aadd("z-defense-8",			"radar-4",						"d")
	aadd("z-defense-8",			"radar-5",						"e")
	
end
do	--[[armor]]--
	aadd("z-armor-0",			"laser-rifle",						"g")
	
	aadd("z-armor-1",			"firearm-magazine",					"a")
	aadd("z-armor-1",			"piercing-rounds-magazine",			"b")
	aadd("z-armor-1",			"shotgun-shell",					"c")
	aadd("z-armor-1",			"piercing-shotgun-shell",			"d")
	aadd("z-armor-1",			"flame-thrower-ammo",				"e")
	aadd("z-armor-1",			"rocket",							"f")
	aadd("z-armor-1",			"explosive-rocket",					"g")
	
	aadd("z-armor-2",			"laser-rifle-battery",				"a")
	aadd("z-armor-2",			"laser-rifle-battery-ruby",			"b")
	aadd("z-armor-2",			"laser-rifle-battery-sapphire",		"c")
	aadd("z-armor-2",			"laser-rifle-battery-emerald",		"d")
	aadd("z-armor-2",			"laser-rifle-battery-amethyst",		"e")
	aadd("z-armor-2",			"laser-rifle-battery-topaz",		"f")
	aadd("z-armor-2",			"laser-rifle-battery-diamond",		"g")
	aadd("z-armor-2",			"laser-rifle-battery-case",			"h")
	
	aadd("z-armor-3",			"grenade",							"a")
	aadd("z-armor-3",			"cluster-grenade",					"b")
	aadd("z-armor-3",			"land-mine",						"c")
	aadd("z-armor-3",			"slowdown-capsule",					"d")
	aadd("z-armor-3",			"poison-capsule",					"e")
	aadd("z-armor-3",			"defender-capsule",					"f")
	aadd("z-armor-3",			"distractor-capsule",				"g")
	aadd("z-armor-3",			"destroyer-capsule",				"h")
	aadd("z-armor-3",			"discharge-defense-remote",			"i")
	
	aadd("z-armor-4",			"light-armor",						"a")
	aadd("z-armor-4",			"heavy-armor",						"b")
	aadd("z-armor-4",			"heavy-armor-2",					"c")
	aadd("z-armor-4",			"heavy-armor-3",					"d")
	aadd("z-armor-4",			"modular-armor",					"e")
	aadd("z-armor-4",			"power-armor",						"f")
	aadd("z-armor-4",			"power-armor-mk2",					"g")
	aadd("z-armor-4",			"bob-power-armor-mk3",				"h")
	aadd("z-armor-4",			"bob-power-armor-mk4",				"i")
	aadd("z-armor-4",			"bob-power-armor-mk5",				"j")
	
	aadd("z-armor-5",			"exoskeleton-equipment",			"a")
	aadd("z-armor-5",			"exoskeleton-equipment-2",			"b")
	aadd("z-armor-5",			"exoskeleton-equipment-3",			"c")
	aadd("z-armor-5",			"night-vision-equipment",			"d")
	aadd("z-armor-5",			"night-vision-equipment-2",			"e")
	aadd("z-armor-5",			"night-vision-equipment-3",			"f")
	aadd("z-armor-5",			"personal-roboport-equipment",		"g")
	
	aadd("z-armor-6",			"solar-panel-equipment",			"a")
	aadd("z-armor-6",			"solar-panel-equipment-2",			"b")
	aadd("z-armor-6",			"solar-panel-equipment-3",			"c")
	aadd("z-armor-6",			"solar-panel-equipment-4",			"d")
	aadd("z-armor-6",			"fusion-reactor-equipment",			"e")
	aadd("z-armor-6",			"fusion-reactor-equipment-2",		"f")
	aadd("z-armor-6",			"fusion-reactor-equipment-3",		"g")
	aadd("z-armor-6",			"fusion-reactor-equipment-4",		"h")
	
	aadd("z-armor-7",			"battery-equipment",				"a")
	aadd("z-armor-7",			"battery-mk2-equipment",			"b")
	aadd("z-armor-7",			"battery-mk3-equipment",			"c")
	aadd("z-armor-7",			"battery-mk4-equipment",			"d")
	aadd("z-armor-7",			"battery-mk5-equipment",			"e")
	aadd("z-armor-7",			"battery-mk6-equipment",			"f")
	
	aadd("z-armor-8",		   "personal-laser-defense-equipment",  "a")
	aadd("z-armor-8",		   "personal-laser-defense-equipment-2","b")
	aadd("z-armor-8",		   "personal-laser-defense-equipment-3","c")
	aadd("z-armor-8",		   "personal-laser-defense-equipment-4","d")
	aadd("z-armor-8",		   "personal-laser-defense-equipment-5","e")
	aadd("z-armor-8",		   "personal-laser-defense-equipment-6","f")
	aadd("z-armor-8",		   "discharge-defense-equipment",		"g")
	
	aadd("z-armor-9",			"energy-shield-equipment",			"a")
	aadd("z-armor-9",			"energy-shield-mk2-equipment",		"b")
	aadd("z-armor-9",			"energy-shield-mk3-equipment",		"c")
	aadd("z-armor-9",			"energy-shield-mk4-equipment",		"d")
	aadd("z-armor-9",			"energy-shield-mk5-equipment",		"e")
	aadd("z-armor-9",			"energy-shield-mk6-equipment",		"f")
	
	if allow_changes then
		ahide("laser-beam-rifle")
		ahide("laser-beam-rifle-ammo")
	else
		aadd("z-armor-0",		"laser-beam-rifle",					"h")
		aadd("z-armor-1",		"laser-beam-rifle-ammo",			"h")
	end
	
end
do	--[[intermediate]]--
	
	aadd("z-intermediate-0",	"science-pack-4",				"d", "__ZGroupChange__/graphics/icons/science-pack4.png")
	aadd("z-intermediate-0",	"alien-science-pack",			"e")
	aadd("z-intermediate-0",	"science-pack-gold",			"f", "__ZGroupChange__/graphics/icons/science-pack-gold.png")
	
	aadd("z-intermediate-1",	"basic-circuit-board",			"a")
	aadd("z-intermediate-1",	"circuit-board",				"c")
	aadd("z-intermediate-1",	"superior-circuit-board",		"e")
	aadd("z-intermediate-1",	"multi-layer-circuit-board",	"g")
	aadd("z-intermediate-1",	"advanced-processing-unit",		"h")
	
	aadd("z-intermediate-2",	"wooden-board",					"a")
	aadd("z-intermediate-2",	"phenolic-board",				"b")
	aadd("z-intermediate-2",	"fibreglass-board",				"c")
	aadd("z-intermediate-2",	"solder-alloy",					"d")
	aadd("z-intermediate-2",	"solder-alloy-lead",			"e")
	aadd("z-intermediate-2",	"solder",						"f")
	aadd("z-intermediate-2",	"basic-electronic-components",	"g")
	aadd("z-intermediate-2",	"electronic-components",		"h")
	aadd("z-intermediate-2",	"intergrated-electronics",		"i")
	aadd("z-intermediate-2",	"processing-electronics",		"j")
	
	aadd("z-intermediate-4",	"steel-gear-wheel",				"e")
	aadd("z-intermediate-4",	"brass-gear-wheel",				"f")
	aadd("z-intermediate-4",	"titanium-gear-wheel",			"g")
	aadd("z-intermediate-4",	"nitinol-gear-wheel",			"h")
	aadd("z-intermediate-4",	"tungsten-gear-wheel",			"i")
	
	aadd("z-intermediate-5",	"steel-bearing-ball",			"a")
	aadd("z-intermediate-5",	"ceramic-bearing-ball",			"b")
	aadd("z-intermediate-5",	"nitinol-bearing-ball",			"c")
	aadd("z-intermediate-5",	"titanium-bearing-ball",		"d")
	aadd("z-intermediate-5",	"steel-bearing",				"e")
	aadd("z-intermediate-5",	"ceramic-bearing",				"f")
	aadd("z-intermediate-5",	"nitinol-bearing",				"g")
	aadd("z-intermediate-5",	"titanium-bearing",				"h")
	
	aadd("z-intermediate-6",	"fish",							"a")
	aadd("z-intermediate-6",	"raw-fish",						"b")
	aadd("z-intermediate-6",	"iron-stick",					"c")
	aadd("z-intermediate-6",	"explosives",					"d")
	aadd("z-intermediate-6",	"grinding-wheel",				"e")
	aadd("z-intermediate-6",	"polishing-wheel",				"f")
	aadd("z-intermediate-6",	"polishing-compound",			"g")
	aadd("z-intermediate-6",	"bob-seedling",					"i")
	aadd("z-intermediate-6",	"bob-basic-greenhouse-cycle",	"j")
	aadd("z-intermediate-6",	"bob-advanced-greenhouse-cycle","k")
	aadd("z-intermediate-6",	"fertiliser",					"l")
	
	aadd("z-intermediate-7",	"battery",						"a")
	aadd("z-intermediate-7",	"lithium-ion-battery",			"b")
	aadd("z-intermediate-7",	"silver-zinc-battery",			"c")
	aadd("z-intermediate-7",	"engine-unit",					"d")
	aadd("z-intermediate-7",	"electric-engine-unit",			"e")
	aadd("z-intermediate-7",	"alien-artifact",				"f")
	aadd("z-intermediate-7",	"small-alien-artifact",			"g")
	
	aadd("z-intermediate-8",	"flying-robot-frame",			"a")
	aadd("z-intermediate-8",	"flying-robot-frame-2",			"b")
	aadd("z-intermediate-8",	"flying-robot-frame-3",			"c")
	aadd("z-intermediate-8",	"flying-robot-frame-4",			"d")
	aadd("z-intermediate-8",	"roboport-chargepad-1",			"e")
	aadd("z-intermediate-8",	"roboport-chargepad-2",			"f")
	aadd("z-intermediate-8",	"roboport-chargepad-3",			"g")
	aadd("z-intermediate-8",	"roboport-chargepad-4",			"h")
	
	aadd("z-intermediate-9",	"roboport-antenna-1",			"a")
	aadd("z-intermediate-9",	"roboport-antenna-2",			"b")
	aadd("z-intermediate-9",	"roboport-antenna-3",			"c")
	aadd("z-intermediate-9",	"roboport-antenna-4",			"d")
	aadd("z-intermediate-9",	"roboport-door-1",				"e")
	aadd("z-intermediate-9",	"roboport-door-2",				"f")
	aadd("z-intermediate-9",	"roboport-door-3",				"g")
	aadd("z-intermediate-9",	"roboport-door-4",				"h")
	
	aadd("z-intermediate-10",	"robot-brain-logistic",			"a")
	aadd("z-intermediate-10",	"robot-brain-logistic-2",		"b")
	aadd("z-intermediate-10",	"robot-brain-logistic-3",		"c")
	aadd("z-intermediate-10",	"robot-brain-logistic-4",		"d")
	aadd("z-intermediate-10",	"robot-brain-construction",		"e")
	aadd("z-intermediate-10",	"robot-brain-construction-2",	"f")
	aadd("z-intermediate-10",	"robot-brain-construction-3",	"g")
	aadd("z-intermediate-10",	"robot-brain-construction-4",	"h")
	
	aadd("z-intermediate-11",	"robot-tool-construction",		"a")
	aadd("z-intermediate-11",	"robot-tool-construction-2",	"b")
	aadd("z-intermediate-11",	"robot-tool-construction-3",	"c")
	aadd("z-intermediate-11",	"robot-tool-construction-4",	"d")
	aadd("z-intermediate-11",	"robot-tool-logistic",			"e")
	aadd("z-intermediate-11",	"robot-tool-logistic-2",		"f")
	aadd("z-intermediate-11",	"robot-tool-logistic-3",		"g")
	aadd("z-intermediate-11",	"robot-tool-logistic-4",		"h")
	
	aadd("z-intermediate-12",	"rocket-silo",					"a")
	aadd("z-intermediate-12",	"low-density-structure",		"b")
	aadd("z-intermediate-12",	"rocket-fuel",					"c")
	aadd("z-intermediate-12",	"rocket-part",					"d")
	aadd("z-intermediate-12",	"rocket-control-unit",			"e")
	aadd("z-intermediate-12",	"satellite",					"f")
	
	if z_balance.bob_synthetic then
		rhide("wooden-board-synthetic")
		rhide("phenolic-board-synthetic")
		ahide("polishing-wheel-synthetic")
		zgc.t_remove_recipe_unlock("polishing", "polishing-wheel-synthetic")
	else
		aadd("z-intermediate-2",	"wooden-board-synthetic",		"a")
		aadd("z-intermediate-2",	"phenolic-board-synthetic",		"b")
		aadd("z-intermediate-2",	"fibreglass-board-synthetic",	"c")
		aadd("z-intermediate-6",	"polishing-wheel",				"f")
		aadd("z-intermediate-6",	"polishing-wheel-synthetic",	"g")
	end
	
end
do	--[[module]]--

	aadd("z-module-0",			"lab-2",					"b")
	aadd("z-module-0",			"lab-alien",				"c")
	
	aadd("z-module-0",			"beacon-2",					"f")
	aadd("z-module-0",			"beacon-3",					"g")
	
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "module-intermediates" then v.group = "zgc-module" end
		if v.group == "bobmodules"			 then v.group = "zgc-module" end
		if v.name  == "god-module"			 then v.order = "f-0g" end
	end
	
	if data.raw["item-subgroup"]["speed-module"] then
		aadd("z-speed-module",		"speed-module",				"a")
		aadd("z-speed-module",		"speed-module-2",			"b")
		aadd("z-speed-module",		"speed-module-3",			"c")
	end
	if data.raw["item-subgroup"]["productivity-module"] then
		aadd("z-productivity-module",	"productivity-module",		"a")
		aadd("z-productivity-module",	"productivity-module-2",	"b")
		aadd("z-productivity-module",	"productivity-module-3",	"c")
	end
	if data.raw["item-subgroup"]["effectivity-module"] then
		aadd("z-effectivity-module",	"effectivity-module",		"a")
		aadd("z-effectivity-module",	"effectivity-module-2",		"b")
		aadd("z-effectivity-module",	"effectivity-module-3",		"c")
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
		aadd("z-weaponry-0",	"rifle",						"a")
		aadd("z-weaponry-0",	"sniper-rifle",					"b")
		aadd("z-weaponry-0",	"poison-mine",					"c")
		aadd("z-weaponry-0",	"slowdown-mine",				"d")
		aadd("z-weaponry-0",	"distractor-mine",				"e")
		aadd("z-weaponry-0",	"poison-mine",					"f")
		aadd("z-weaponry-0",	"defender-robot",				"g")
		aadd("z-weaponry-0",	"distractor-robot",				"h")
		aadd("z-weaponry-0",	"destroyer-robot",				"i")
		aadd("z-weaponry-0",	"bob-laser-robot-capsule",		"j")
		aadd("z-weaponry-0",	"bob-laser-robot",				"k")
		
		aadd("z-weaponry-1",	"cordite",						"a")
		aadd("z-weaponry-1",	"bullet-casing",				"b")
		aadd("z-weaponry-1",	"shotgun-shell-casing",			"c")
		aadd("z-weaponry-3",	"bullet",						"d")
		aadd("z-weaponry-4",	"bullet-projectile",			"e")
		aadd("z-weaponry-1",	"shot",							"f")
		aadd("z-weaponry-1",	"magazine",						"g")
		aadd("z-weaponry-1",	"rocket-body",					"h")
		aadd("z-weaponry-1",	"rocket-warhead",				"i")
		aadd("z-weaponry-1",	"rocket-engine",				"j")
		
		aadd("z-weaponry-2",	"robot-brain-combat",			"a")
		aadd("z-weaponry-2",	"robot-brain-combat-2",			"b")
		aadd("z-weaponry-2",	"robot-brain-combat-3",			"c")
		aadd("z-weaponry-2",	"robot-brain-combat-4",			"d")
		aadd("z-weaponry-2",	"robot-tool-combat",			"e")
		aadd("z-weaponry-2",	"robot-tool-combat-2",			"f")
		aadd("z-weaponry-2",	"robot-tool-combat-3",			"g")
		aadd("z-weaponry-2",	"robot-tool-combat-4",			"h")
		
		aadd("z-weaponry-3",	"ap-bullet",					"b")
		aadd("z-weaponry-3",	"he-bullet",					"c")
		aadd("z-weaponry-3",	"flame-bullet",					"d")
		aadd("z-weaponry-3",	"acid-bullet",					"e")
		aadd("z-weaponry-3",	"poison-bullet",				"f")
		aadd("z-weaponry-3",	"electric-bullet",				"g")
		
		aadd("z-weaponry-4",	"ap-bullet-projectile",			"b")
		aadd("z-weaponry-4",	"he-bullet-projectile",			"c")
		aadd("z-weaponry-4",	"flame-bullet-projectile",		"d")
		aadd("z-weaponry-4",	"acid-bullet-projectile",		"e")
		aadd("z-weaponry-4",	"poison-bullet-projectile",		"f")
		aadd("z-weaponry-4",	"electric-bullet-projectile",	"g")
		
		aadd("z-weaponry-5",	"better-shotgun-shell",			"a")
		aadd("z-weaponry-5",	"shotgun-ap-shell",				"b")
		aadd("z-weaponry-5",	"shotgun-electric-shell",		"c")
		aadd("z-weaponry-5",	"shotgun-explosive-shell",		"d")
		aadd("z-weaponry-5",	"shotgun-flame-shell",			"e")
		aadd("z-weaponry-5",	"shotgun-acid-shell",			"f")
		
		aadd("z-weaponry-6",	"piercing-rocket-warhead",		"g")
		aadd("z-weaponry-6",	"electric-rocket-warhead",		"h")
		aadd("z-weaponry-6",	"explosive-rocket-warhead",		"i")
		aadd("z-weaponry-6",	"poison-rocket-warhead",		"j")
		aadd("z-weaponry-6",	"flame-rocket-warhead",			"k")
		aadd("z-weaponry-6",	"acid-rocket-warhead",			"l")
		
		aadd("z-weaponry-7",	"bullet-magazine",				"a")
		aadd("z-weaponry-7",	"ap-bullet-magazine",			"b")
		aadd("z-weaponry-7",	"he-bullet-magazine",			"c")
		aadd("z-weaponry-7",	"flame-bullet-magazine",		"d")
		aadd("z-weaponry-7",	"acid-bullet-magazine",			"e")
		aadd("z-weaponry-7",	"poison-bullet-magazine",		"f")
		aadd("z-weaponry-7",	"electric-bullet-magazine",		"g")
		
		aadd("z-weaponry-8",	"better-shotgun-shell",			"a")
		aadd("z-weaponry-8",	"shotgun-ap-shell",				"b")
		aadd("z-weaponry-8",	"shotgun-explosive-shell",		"c")
		aadd("z-weaponry-8",	"shotgun-flame-shell",			"d")
		aadd("z-weaponry-8",	"shotgun-acid-shell",			"e")
		aadd("z-weaponry-8",	"shotgun-poison-shell",			"f")
		aadd("z-weaponry-8",	"shotgun-electric-shell",		"g")
		
		aadd("z-weaponry-1",	"bob-rocket",					"a")
		aadd("z-weaponry-9",	"bob-piercing-rocket",			"b")
		aadd("z-weaponry-9",	"bob-explosive-rocket",			"c")
		aadd("z-weaponry-9",	"bob-flame-rocket",				"d")
		aadd("z-weaponry-9",	"bob-acid-rocket",				"e")
		aadd("z-weaponry-9",	"bob-poison-rocket",			"f")
		aadd("z-weaponry-9",	"bob-electric-rocket",			"g")
		
		
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
		aadd("z-trains-0",			"armoured-diesel-locomotive",	"b")
		aadd("z-trains-0",			"diesel-locomotive-2",			"d")
		aadd("z-trains-0",			"diesel-locomotive-3",			"e")
		
		aadd("z-trains-1",			"armoured-cargo-wagon",			"a")
		aadd("z-trains-1",			"cargo-wagon-2",				"d")
		aadd("z-trains-1",			"cargo-wagon-3",				"e")
		
		aadd("z-vehicles-0",		"tank-2",						"c")
		aadd("z-vehicles-0",		"tank-3",						"d")
		aadd("z-vehicles-0",		"bob-robot-tank",				"e")
		
		aadd("z-vehicles-1",		"tank-machine-gun",				"a")
		aadd("z-vehicles-1",		"vehicle-machine-gun",			"b")
		aadd("z-vehicles-1",		"tank-cannon-2",				"c")
		aadd("z-vehicles-1",		"tank-cannon-3",				"d")
		aadd("z-vehicles-1",		"tank-artillery-1",				"e")
		aadd("z-vehicles-1",		"tank-artillery-2",				"f")
		aadd("z-vehicles-1",		"gatling-gun",					"g")
		aadd("z-vehicles-1",		"tank-laser",					"h")
		
		aadd("z-vehicles-2",		"scatter-cannon-shell",			"c")
		aadd("z-vehicles-2",		"poison-artillery-shell",		"d")
		aadd("z-vehicles-2",		"explosive-artillery-shell",	"e")
		aadd("z-vehicles-2",		"distractor-artillery-shell",	"f")
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
	aadd("z-alien-7",			"alien-acid",					"a")
	aadd("z-alien-7",			"alien-explosive",				"b")
	aadd("z-alien-7",			"alien-fire",					"c")
	aadd("z-alien-7",			"alien-poison",					"d")
	
	aadd("z-alien-8",			"alien-acid-barrel",			"a")
	aadd("z-alien-8",			"alien-explosive-barrel",		"b")
	aadd("z-alien-8",			"alien-fire-barrel",			"c")
	aadd("z-alien-8",			"alien-poison-barrel",			"d")
	
	aadd("z-alien-8",			"fill-alien-acid-barrel",		"a")
	aadd("z-alien-8",			"fill-alien-explosive-barrel",	"b")
	aadd("z-alien-8",			"fill-alien-fire-barrel",		"c")
	aadd("z-alien-8",			"fill-alien-poison-barrel",		"d")
	
	aadd("z-alien-9",			"empty-alien-acid-barrel",		"a")
	aadd("z-alien-9",			"empty-alien-explosive-barrel",	"b")
	aadd("z-alien-9",			"empty-alien-fire-barrel",		"c")
	aadd("z-alien-9",			"empty-alien-poison-barrel",	"d")
	
	aadd("z-alien-9",			"alien-acid-in-tanker",			"a")
	aadd("z-alien-9",			"alien-explosive-in-tanker",	"b")
	aadd("z-alien-9",			"alien-fire-in-tanker",			"c")
	aadd("z-alien-9",			"alien-poison-in-tanker",		"d")
end
