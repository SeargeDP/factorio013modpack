local allow_changes = z_balance.youki

do	--[[gathering]]--
	aadd("z-gathering-0",		"y_quantrinum_hammer",			"h")
	aadd("z-gathering-0",		"y-repair-durotal",				"k")
	aadd("z-gathering-0",		"y-repair-krakon",				"l")
	aadd("z-gathering-0",		"y_repair_quantrinum",			"n")
	
  if not allow_changes then
	aadd("z-gathering-0",		"y-axe-duro",					"h")
	aadd("z-gathering-0",		"y-axe-durotal-recipe",			"h")
	if z_balance.youki_tech then
		zgc.add_recipe_to_tech("yuoki_industries-3", "y-axe-durotal-recipe")
	end
  else
	ahide("brass-axe", "mining-tool")
	ahide("cobalt-axe", "mining-tool")
	ahide("tungsten-axe", "mining-tool")
	ahide("y-axe-duro", "mining-tool")
	ahide("y-axe-durotal-recipe")
  end
	
	aadd("z-gathering-2",		"y_sc11",						"a")
	aadd("z-gathering-2",		"y_c11",						"a")
	aadd("z-gathering-2",		"y_c22",						"b")
	aadd("z-gathering-2",		"y_cg33",						"c")
	aadd("z-gathering-2",		"y_sc44",						"d")
	
	aadd("z-gathering-3",		"5d-storage-tank",				"e")
	aadd("z-gathering-3",		"y_buffer_station",				"f")
	aadd("z-gathering-3",		"y-tank-4500",					"h")
	aadd("z-gathering-3",		"y-tank-24k",					"j")
	
  if not allow_changes then
	aadd("z-gathering-3",		"y-tank-1000",					"g")
	aadd("z-gathering-3",		"y-tank-8000",					"i")
	if z_balance.youki_tech then
		zgc.add_recipe_to_tech("yuoki_liquids-2", "y-tank-1000")
		zgc.add_recipe_to_tech("yuoki_liquids-3", "y-tank-8000")
	end
  else
	ahide("y-tank-1000", "5d-storage-tank")
	ahide("y-tank-8000", "y-tank-1000")
	ahide("storage-tank-2", "storage-tank")
	ahide("storage-tank-3", "storage-tank")
	ahide("storage-tank-4", "storage-tank")
	zgc.t_add_recipe_unlock("bob-fluid-handling-2", "5d-storage-tank")
  end
	
	aadd("z-gathering-4",		"y-mining-drill",				"e")
	
	aadd("z-gathering-6",		"y-mining-drill-e2",			"e")
	
  if i_exist("water-miner-1") then
	if allow_changes and z_balance.bob then
		aadd("z-gathering-9",	"y-water-gen",					"a")
		aadd("z-gathering-9",	"y-water-gen-e",				"b")
		aadd("z-gathering-9",	"y-water-gen-recipe-e",			"b")
		aadd("z-gathering-9",	"water-miner-1",				"c")
		
		ahide("water-miner-2")
		ahide("water-miner-3")
		ahide("water-miner-4")
		ahide("water-miner-5")
		switch_tech("water-miner-2")
		switch_tech("water-miner-3")
		switch_tech("water-miner-4")
		switch_tech("water-miner-5")
	else
		aadd("z-gathering-8",	"y-water-gen",					"h")
		iadd("z-gathering-8",	"y-water-gen-e",				"i")
		radd("z-gathering-8",	"y-water-gen-recipe-e",			"i")
	end
  end
	
  if i_not_exist("5d-mining-drill-speed-1") or i_exist("bob-area-mining-drill-1") then
	aadd("z-gathering-7",		"y-underground-drill",			"e")
  else
	aadd("z-gathering-6",		"y-underground-drill",			"f")
  end
	
end
do	--[[production]]--
	aadd("z-production-3",			"y-crusher",				"a")
	aadd("z-production-3",			"y_crusher2",				"b")
	aadd("z-production-3",			"y-dirtwasher",				"c")
	aadd("z-production-3",			"y-heat-form-press",		"d")
	aadd("z-production-3",			"y_formpress2",				"e")
	aadd("z-production-3",			"y_maintance_workshop",		"f")
	
	aadd("z-production-5",			"y_smelter",				"d")
	aadd("z-production-5",			"y_charger",				"e")
	aadd("z-production-5",			"y-atomic-quantum-composer","f")
	aadd("z-production-5",			"y-alien-infuser",			"g")
	
end
do	--[[resources]]--
	aadd("z-resources-3",		"y-res1",						"h")
	aadd("z-resources-3",		"y-res2",						"i")
	
  if z_balance.add_trees then
	zgc.add_newRessource_min_max("raw-wood",	"y_organic_dust",1,4,0.5)
  end
  if z_balance.add_dirt then
	zgc.add_newRessource_min_max("coal", 		"y-dirt",1,2,0.3		,"y-coal-dust",1,2,0.2)
	zgc.add_newRessource_min_max("stone",		"y-dirt",1,2,0.3)
	zgc.add_newRessource_min_max("iron-ore",	"y-dirt",1,2,0.2)
	zgc.add_newRessource_min_max("copper-ore",	"y-dirt",1,2,0.2)
	zgc.add_newRessource_min_max("lead-ore",	"y-dirt",1,1,0.2,		"y-toxic-dust",1,2,0.2)
	zgc.add_newRessource_min_max("tin-ore",		"y-dirt",1,2,0.2)
	zgc.add_newRessource_min_max("zinc-ore",	"y-dirt",1,2,0.2,		"y-toxic-dust",1,1,0.2)
	zgc.add_newRessource_min_max("bauxite-ore",	"y-dirt",1,1,0.3)
	zgc.add_newRessource_min_max("cobalt-ore",	"y-dirt",1,2,0.2)
	zgc.add_newRessource_min_max("nickel-ore",	"y-dirt",1,1,0.2,		"y-toxic-dust",1,1,0.2)
	zgc.add_newRessource_min_max("rutile-ore",	"y-dirt",1,2,0.2,		"y-toxic-dust",1,2,0.2)
	zgc.add_newRessource_min_max("silver-ore",	"y-dirt",1,1,0.2)
	zgc.add_newRessource_min_max("tungsten-ore","y-dirt",1,2,0.2,		"y-toxic-dust",1,2,0.2)
	zgc.add_newRessource_min_max("sulfur",		"y-toxic-dust",1,2,0.3)
	zgc.add_newRessource_min_max("y-res1",		"y-toxic-dust",1,2,0.2)
	zgc.add_newRessource_min_max("y-res2",		"y-toxic-dust",1,2,0.2)
  end
  if z_balance.add_dust then
	zgc.add_newRessource_min_max("y-res1",		"y-crush-yres1",1,1,0.2)
	zgc.add_newRessource_min_max("y-res2",		"y-crush-yres2",1,1,0.2)
  end
end
do	--[[plates]]--
	aadd("z-plates-9",			"y-refined-iron",				"h", "__ZGroupChange__/graphics/icons/pure-iron.png")
	aadd("z-plates-9",			"y-refined-copper",				"i", "__ZGroupChange__/graphics/icons/pure-copper.png")
	
	aadd("z-plates-10",			"y_hps_pureiron_recipe",		"h", "__ZGroupChange__/graphics/icons/heat-iron.png")
	aadd("z-plates-10",			"y_hps_purecopper_recipe",		"i", "__ZGroupChange__/graphics/icons/heat-copper.png")
	
	aadd("z-plates-15",			"y_hps_steel_recipe",			"ab", "__ZGroupChange__/graphics/icons/heat-steel.png")
	
end
do	--[[liquids]]--
	if allow_changes and data.raw.fluid["lithia-water"] and i_exist("y-water-gen") then
		data:extend({
			{
				type="recipe-category",
				name="z-watergen-recipe" 
			},
			{
				type = "recipe",
				name = "z-lithia-water",
				icon = "__ZGroupChange__/graphics/icons/lithia-water.png",
				category = "z-watergen-recipe",
				energy_required = 5,
				enabled = true,
				ingredients = {
					{"y_organic_dust",7}
				},
				results = {{type="fluid",name="lithia-water",amount=140}},
				main_product = "lithia-water",
				hidden = false,
				subgroup = "z-liquids-2",
				order = "b"
			},
		})
		table.insert(data.raw["assembling-machine"]["y-water-gen"].crafting_categories,"z-watergen-recipe")
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_liquids", "z-lithia-water")
		end
	end
		
	aadd("z-liquids-2",			"y-water-gen-fluid-recipe",		"a")
	aadd("z-liquids-2",			"z-lithia-water",				"b")
	aadd("z-liquids-0",			"liquid-air",					"f")
	aadd("z-liquids-2",			"bob-liquid-air",				"g")
	
	aadd("z-liquids-4",			"y-con_water",					"k", "__ZGroupChange__/graphics/icons/y-con-water.png")
	aadd("z-liquids-4",			"y-liquid-uc2",					"l")
	
end
do	--[[chemistry]]--	
	radd("z-chemistry-0",		"y-sulfuric-acid-recipe",		"a")
	aadd("z-chemistry-4",		"y_coal2liquid",				"a")
	aadd("z-chemistry-4",		"y_ft_recipe",					"b")
	aadd("z-chemistry-4",		"y_rawsyngas1_recipe",			"c")
	aadd("z-chemistry-4",		"y_rawsyngas2_recipe",			"d")
	aadd("z-chemistry-4",		"y_refinehydrogen_recipe",		"e")
	aadd("z-chemistry-9",		"y_hydrogen",					"p")
	aadd("z-chemistry-9",		"y_syngas_clean",				"q")
	aadd("z-chemistry-9",		"y_syngas_raw",					"r")
	
end
do	--[[automatization]]--
  if z_balance.bob_inserters then
	ahide("y-inserter-s4","inserter")
	ahide("y-inserter-fast", "fast-inserter")
	ahide("y-inserter-smart","filter-inserter")
	ahide("y-inserter-smart-long","filter-inserter")
	ahide("y_inserter_smart_LL","filter-inserter")
	ahide("y_inserter_smart_RR","filter-inserter")
	ahide("y_inserter_diagonal","inserter")
	ahide("y_inserter_smart_leftR2","filter-inserter")
	ahide("y_inserter_smart_rightR2","filter-inserter")
	ahide("y_inserter_evade_shortL","inserter")
	ahide("y_inserter_evade_shortR","inserter")
  else
	aadd("z-automatization-0",	"y-inserter-fast",				"i")
	aadd("z-automatization-0",	"y-inserter-s4",				"j")
	
	aadd("z-automatization-1",	"y-inserter-smart",				"i")
	aadd("z-automatization-1",	"y-inserter-smart-long",		"j")
	
	aadd("z-automatization-2",	"y_inserter_diagonal",			"j")
	
	aadd("z-automatization-4",	"y_inserter_smart_LL",			"h")
	aadd("z-automatization-4",	"y_inserter_smart_leftR2",		"i")
	aadd("z-automatization-4",	"y_inserter_evade_shortL",		"j")
	
	aadd("z-automatization-5",	"y_inserter_smart_RR",			"h")
	aadd("z-automatization-5",	"y_inserter_smart_rightR2",		"i")
	aadd("z-automatization-5",	"y_inserter_evade_shortR",		"j")
	
	if z_balance.youki_tech then
		zgc.add_recipe_to_tech("yuoki_industries", "y-inserter-fast")
		zgc.add_recipe_to_tech("yuoki_industries", "y-inserter-smart")
		
		zgc.add_recipe_to_tech("yuoki_industries-2", "y-inserter-s4")
		zgc.add_recipe_to_tech("yuoki_industries-2", "y-inserter-smart-long")
		zgc.add_recipe_to_tech("yuoki_industries-2", "y_inserter_smart_LL")
		zgc.add_recipe_to_tech("yuoki_industries-2", "y_inserter_smart_leftR2")
		zgc.add_recipe_to_tech("yuoki_industries-2", "y_inserter_evade_shortL")
		
		zgc.add_recipe_to_tech("yuoki_industries-3", "y_inserter_diagonal")
		zgc.add_recipe_to_tech("yuoki_industries-3", "y_inserter_smart_RR")
		zgc.add_recipe_to_tech("yuoki_industries-3", "y_inserter_smart_rightR2")
		zgc.add_recipe_to_tech("yuoki_industries-3", "y_inserter_evade_shortR")
	end
  end

end
do	--[[transport]]--
	aadd("z-transport-5",		"y_flowcheck_10",				"g")
	
	if not z_balance.youki_pipe then
		aadd("z-transport-5",	"y-valve-direction-buffer",		"h")
		
		aadd("z-transport-13",	"y-pipe-v",						"a")
		aadd("z-transport-13",	"y-pipe-h",						"b")
		aadd("z-transport-13",	"y-pipe-hc",					"c")
		aadd("z-transport-13",	"y-pipe-ec",					"d")
		aadd("z-transport-13",	"y-pipe-to-ground-hc",			"e")
		aadd("z-transport-13",	"y-pipe-to-ground-ec",			"f")
		
		if z_balance.youki_tech then
			zgc.add_recipe_to_tech("yuoki_liquids", "y-pipe-v")
			zgc.add_recipe_to_tech("yuoki_liquids", "y-pipe-h")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_flowcheck_10_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-pipe-hc")
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-pipe-ec")
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-pipe-to-ground-hc")
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-pipe-to-ground-ec")
		end
	else
		ahide("y-pipe-h", "pipe")
		ahide("y-pipe-v", "pipe")
		ahide("y-pipe-hc", "5d-pipe-mk2")
		ahide("y-pipe-to-ground-hc", "5d-pipe-mk2")
		ahide("y-pipe-ec", "5d-pipe-mk3")
		ahide("y-pipe-to-ground-ec", "5d-pipe-mk3")
		ahide("y-valve-direction-buffer", "valve")
	end
end
do	--[[logistic]]--
	aadd("z-logistic-1",		"yi_roboport",					"c")
	
	aadd("z-logistic-3",		"yi_logistic-robot",			"e")
	aadd("z-logistic-3",		"yi_construction-robot",		"j")
	
	aadd("z-logistic-5",		"y-rare-chest-log",				"a")
	aadd("z-logistic-5",		"y-rare-m1bunker-log",			"b")
	aadd("z-logistic-5",		"y_pc22",						"c")
	aadd("z-logistic-5",		"y_rc22",						"d")
end
do	--[[energy]]--
	aadd("z-energy-0",			"y-wooden-brikett",				"a")
	aadd("z-energy-0",			"y-coal-brikett",				"b")
	aadd("z-energy-0",			"solid-fuel",					"c")
	aadd("z-energy-0",			"y-mixed-fuel",					"d")
	aadd("z-energy-0",			"y-coaldust-mixing-recipe",		"d")
	aadd("z-energy-0",			"y-mixed-fuel-loaded",			"e")
	aadd("z-energy-0",			"y-mixfuel-load-recipe",		"e")
	aadd("z-energy-0",			"y-wooden-brikett-packed",		"g")
	aadd("z-energy-0",			"y-coal-stack",					"h")
	aadd("z-energy-0",			"y-infused-mud",				"i")
	aadd("z-energy-0",			"y-fuel-cell-c",				"j")
	aadd("z-energy-0",			"y-sgtrade-ic1-recipe",			"j")
	
	aadd("z-energy-1",			"y-boiler-t2",					"g")
	aadd("z-energy-1",			"y-boiler-t3",					"h")
	aadd("z-energy-1",			"y-boiler-iv",					"i")
	aadd("z-energy-1",			"y-obninsk-reactor",			"j")
	
	aadd("z-energy-2",			"y-notfall-generator-s2",		"f")
	aadd("z-energy-2",			"y-steam-turbine",				"g")
	aadd("z-energy-2",			"y-steam-turbine-mk3",			"h")
	aadd("z-energy-2",			"y-obninsk-turbine",			"i")
	aadd("z-energy-2",			"y-meg-s",						"j")
	aadd("z-energy-2",			"y-beg",						"k")
	aadd("z-energy-2",			"y-heg",						"l")
	
	aadd("z-energy-3",			"y-accumulator-m",				"c")
	aadd("z-energy-3",			"y-accumulator-m-t2",			"d")
	aadd("z-energy-3",			"y-accumulator-mt2-recipe",		"d")
	aadd("z-energy-3",			"y-accumulator-b",				"e")
	aadd("z-energy-3",			"y-accumulator-b-t2",			"f")
	aadd("z-energy-3",			"y-accumulator-bt2-recipe",		"f")
	aadd("z-energy-3",			"y-accumulator-b-tx",			"g")
	aadd("z-energy-3",			"y-accumulator-btx-recipe",		"g")
	aadd("z-energy-3",			"y-accumulator-crystal-m",		"h")
	aadd("z-energy-3",			"y-ups-flywheel-b",				"i")
	aadd("z-energy-3",			"y_compensator_25",				"j")
	
	aadd("z-energy-4",			"y-stirling-solar-dish",		"g")
	aadd("z-energy-4",			"y-solar-dish-recipe",			"h")
	aadd("z-energy-4",			"y_alien_solar",				"i")
	aadd("z-energy-4",			"y_alien_solar2",				"j")
	
	aadd("z-energy-7",			"y-substation-m",				"g")
	aadd("z-energy-7",			"y-substation-h",				"h")
	
  if not allow_changes then
	aadd("z-energy-3",			"y-seg",						"b")
	aadd("z-energy-3",			"y-seg-p",						"b")
	
	if z_balance.youki_tech then
		zgc.add_recipe_to_tech("yuoki_energy", "y-seg-recipe")
		zgc.add_recipe_to_tech("yuoki_energy", "y-seg-p-recipe")
	end
			
	aadd("z-energy-3",			"y-notfall-generator-s1",		"z")
	
	aadd("z-energy-4",			"y-accumulator-s",				"z")
	aadd("z-energy-4",			"y-accumulator-s-t2",			"z")
	aadd("z-energy-4",			"yi_obelisk_A3_5X",				"z")
  else
	ahide("5d-basic-accumulator-3")
	ahide("y-notfall-generator-s1")
	ahide("y-seg")
	ahide("y-seg-p")
	ahide("y-accumulator-s")
	ahide("y-accumulator-s-t2")
	ahide("yi_obelisk_A3_5X")
	
	switch_tech("electric-energy-accumulators-3")
	switch_tech("engine-3")
  end
  
end
do	--[[defense]]--
	aadd("z-defense-1",			"y-mud-wall",					"a")
	aadd("z-defense-1",			"y-rare-wall-basic",			"b")
	aadd("z-defense-1",			"y-rare-wall-adv",				"c")
	aadd("z-defense-1",			"y_wall22_hardic",				"d")
	aadd("z-defense-1",			"y-wall-forcefield",			"e")
	
	aadd("z-defense-6",			"y_turret_flame",				"a")
	aadd("z-defense-6",			"y_turret_plasma",				"b")
	aadd("z-defense-6",			"y-laser-def-s4",				"c")
	aadd("z-defense-6",			"y_laser_onhwall_recipe",		"c")
	aadd("z-defense-6",			"y_turret_gun2f12",				"d")
	aadd("z-defense-6",			"y-gun-turret-mk2-recipe",		"d")
	aadd("z-defense-6",			"y_turret_gun1f12",				"e")
	aadd("z-defense-6",			"y-gun-turret-mk3-recipe",		"e")
	aadd("z-defense-6",			"y_turret_laser22f12",			"f")
	aadd("z-defense-6",			"y_laser_mk1_recipe",			"f")
	aadd("z-defense-6",			"y-weapon-ztt",					"g")
	
	aadd("z-defense-7",			"y-bullet-case",				"a")
	aadd("z-defense-7",			"y_ammo_case",					"b")
	aadd("z-defense-7",			"y-ammo-hohlspitz",				"c")
	aadd("z-defense-7",			"y-ammo-krakon",				"d")
	aadd("z-defense-7",			"y-ammo-explosiv",				"e")
	aadd("z-defense-7",			"y-ammo-biggun",				"f")
	aadd("z-defense-7",			"y-ammo-poison",				"g")
	aadd("z-defense-7",			"y-ammo-acid-2",				"h")
	aadd("z-defense-7",			"y-ammo-acid-medium-recipe",	"h")
	aadd("z-defense-7",			"y_ammo_flame",					"i")
	aadd("z-defense-7",			"y_ammo_plasma",				"j")
	
	aadd("z-defense-8",			"yi_radar",						"d")
	
	if allow_changes and i_exist("yi_radar") then
		ahide("radar-4")
		ahide("radar-5")
		switch_tech("radars-3")
		switch_tech("radars-4")
	else
		aadd("z-defense-8",		"yi_radar",						"g")
	end
end
do	--[[intermediate]]--
	aadd("z-intermediate-7",	"y-battery-single-use1",		"d")
	aadd("z-intermediate-7",	"y-battery-single-use2",		"e")
	aadd("z-intermediate-7",	"y-battery-single-use3",		"f")
	aadd("z-intermediate-7",	"y-battery-singleuse1-recipe",	"d")
	aadd("z-intermediate-7",	"y-battery-singleuse2-recipe",	"e")
	aadd("z-intermediate-7",	"engine-unit",					"g")
	aadd("z-intermediate-7",	"electric-engine-unit",			"h")
	
end
do	--[[parts]]--
	if i_exist("y-dirt") then zgc.add_main_group("parts") end
	
	aadd("z-parts-1",			"y-dirt",						"a")
	aadd("z-parts-1",			"y-digfdirt-recipe",			"a")
	aadd("z-parts-1",			"y-digfdirt2-recipe",			"b")
	aadd("z-parts-1",			"y-coal-dust",					"c")
	aadd("z-parts-1",			"y-crush-yres1",				"d")
	aadd("z-parts-1",			"y-crush-unicomp-raw-recipe",	"d")
	aadd("z-parts-1",			"y-crush-yres2",				"e")
	aadd("z-parts-1",			"y-crush-fuel-raw-recipe",		"e")
	aadd("z-parts-1",			"y-filtering-dust-recipe",		"f")
	aadd("z-parts-1",			"y-crush-blue_whead-recipe",	"g")
	aadd("z-parts-1",			"y-crush-green_whead-recipe",	"h")
	aadd("z-parts-1",			"y-richdust",					"i")
	aadd("z-parts-1",			"y-mixing-rich-recipe",			"i")

	aadd("z-parts-2",			"y-c_mud",						"a")
	aadd("z-parts-2",			"y-release-cwater",				"a")
	aadd("z-parts-2",			"y-wash-special-recipe",		"b")
	aadd("z-parts-2",			"y-toxic-dust",					"c")
	aadd("z-parts-2",			"y-dry_mud",					"d")
	aadd("z-parts-2",			"y-pressed_dry_mud-recipe",		"d")
	aadd("z-parts-2",			"y_slag_granulate",				"e")
	aadd("z-parts-2",			"y-slag",						"f")
	aadd("z-parts-2",			"y-unicomp-raw",				"g")
	aadd("z-parts-2",			"y-unicomp-a2",					"h")
	aadd("z-parts-2",			"y-press-richdust-recipe",		"h")
	aadd("z-parts-2",			"y-orange-stuff",				"i")
	aadd("z-parts-2",			"y-smelt-richdust-recipe",		"i")
	aadd("z-parts-2",			"y-crystal2",					"j")
	aadd("z-parts-2",			"y-raw-fuelnium",				"k")
	
	aadd("z-parts-3",			"y-pure-iron",					"a")
	aadd("z-parts-3",			"y_pure_iron_wtool_recipe",		"b")
	aadd("z-parts-3",			"y-pure-copper",				"c")
	aadd("z-parts-3",			"y_pure_copper_wtool_recipe",	"d")
	aadd("z-parts-3",			"y-refined-yres1",				"e")
	aadd("z-parts-3",			"y-smelt-crush-res1-recipe",	"e")
	aadd("z-parts-3",			"y-refined-yres2",				"f")
	aadd("z-parts-3",			"y-smelt-crush-res2-recipe",	"f")
	aadd("z-parts-3",			"y_slag_brick",					"g")
	aadd("z-parts-3",			"y_slag_brick_recipe",			"g")
	aadd("z-parts-3",			"y_slag_brick_burn_recipe",		"h")
	aadd("z-parts-3",			"y-wash-dirt-recipe",			"i")
	
	aadd("z-parts-4",			"y_drillhead",					"a")
	aadd("z-parts-4",			"y_drillhead_broken",			"b")
	aadd("z-parts-4",			"y_drillhead_repair_recipe",	"c")
	aadd("z-parts-4",			"y_toolhead",					"d")
	aadd("z-parts-4",			"y_toolhead_broken",			"e")
	aadd("z-parts-4",			"y_toolhead_repair_recipe",		"f")
	aadd("z-parts-4",			"y_block_cold",					"g")
	aadd("z-parts-4",			"y_block_heat",					"h")
	
	aadd("z-parts-5",			"y-heat-pipe",					"a")
	aadd("z-parts-5",			"y-bluegear",					"b")
	aadd("z-parts-5",			"y_structure_element",			"c")
	aadd("z-parts-5",			"y_structure_vessel",			"d")
	aadd("z-parts-5",			"y_blocked_capa",				"f")
	aadd("z-parts-5",			"y-basic-t1-mf",				"g")
	aadd("z-parts-5",			"y-basic-st1-mf-recipe",		"g")
	aadd("z-parts-5",			"y-basic-t2-mf",				"h")
	aadd("z-parts-5",			"y-basic-st2-mf-recipe",		"h")
	
	aadd("z-parts-6",			"y-conductive-wire-1",			"a")
	aadd("z-parts-6",			"y-conductive-coil-1",			"b")
	aadd("z-parts-6",			"yi_magnetron",					"c")
	aadd("z-parts-6",			"y_dotzetron",					"d")
	aadd("z-parts-6",			"y_chip_plate",					"e")
	aadd("z-parts-6",			"y-chip-1",						"f")
	aadd("z-parts-6",			"y-chip1-recipe",				"f")
	aadd("z-parts-6",			"y-chip-2",						"g")
	aadd("z-parts-6",			"y-chip2-recipe",				"g")
	
	aadd("z-parts-7",			"y_organic_dust",				"a")
	aadd("z-parts-7",			"y_granulate_wood_recipe",		"a")
	aadd("z-parts-5",			"y_gauge",						"b")
	aadd("z-parts-5",			"y_gauge_analog_recipe",		"b")
	aadd("z-parts-7",			"y_catalyst_base",				"c")
	aadd("z-parts-7",			"y_usedcatalyst",				"d")
	aadd("z-parts-7",			"y_catalyst_bp",				"e")
	aadd("z-parts-7",			"y_catalyst_ft",				"f")
	aadd("z-parts-7",			"y_regcatbp_recipe",			"g")
	aadd("z-parts-7",			"y_regcatft_recipe",			"h")
	
	aadd("z-parts-8",			"y-fuel-reactor",				"b")
	aadd("z-parts-8",			"y-infused-uca2",				"c")
	aadd("z-parts-8",			"y_crystal2_combined",			"d")
	aadd("z-parts-8",			"y_data_crystal_recipe",		"d")
	aadd("z-parts-8",			"y-crystal-cnd",				"e")
	aadd("z-parts-8",			"y-quantrinum",					"f")
	aadd("z-parts-8",			"y_quantrinum_infused",			"g")
	aadd("z-parts-8",			"y_quantrinum_infusion_recipe",	"g")
	
end
do	--[[youki]]--
	if i_exist("y-dirt") then zgc.add_main_group("youki") end
	
	aadd("z-youki-0",			"y-atomic-constructor",			"a")
	aadd("z-youki-0",			"y-fame-gen",					"b")
	aadd("z-youki-0",			"y-stargate",					"c")
	
	aadd("z-youki-1",			"y-ac-wood2uc-recipe",			"a")
	aadd("z-youki-1",			"y-ac-coal2uc-recipe",			"b")
	aadd("z-youki-1",			"y-ac-stone2uc-recipe",			"c")
	aadd("z-youki-1",			"y-ac-copper2uc-recipe",		"d")
	aadd("z-youki-1",			"y-ac-iron2uc-recipe",			"e")
	aadd("z-youki-1",			"y-ac-uc42uc-recipe",			"f")
	aadd("z-youki-1",			"y-ac-fuel2uc-recipe",			"g")
	aadd("z-youki-1",			"y-uc2liquid-recipe",			"h")
	
	aadd("z-youki-2",			"y-ac-mud2uc-recipe",			"a")
	aadd("z-youki-2",			"y-ac-toxic2uc-recipe",			"b")
	aadd("z-youki-2",			"y-ac-slag2uc-recipe",			"c")
	aadd("z-youki-2",			"y-ac-crystal2uc-recipe",		"d")
	aadd("z-youki-2",			"y-heavyoil2uc-recipe",			"e")
	aadd("z-youki-2",			"y-lightoil2uc-recipe",			"f")
	aadd("z-youki-2",			"y-lubricant2uc-recipe",		"g")
	aadd("z-youki-2",			"y-petroleum-recipe",			"h")
	aadd("z-youki-2",			"y-battery-rip1-recipe",		"i", "__ZGroupChange__/graphics/icons/battery2unicom.png")
	aadd("z-youki-2",			"y_alien_artis1_recipe",		"j", "__ZGroupChange__/graphics/icons/artifact2unicom.png")
	
	aadd("z-youki-3",			"y-ac-uc2wood-recipe",			"a")
	aadd("z-youki-3",			"y-ac-uc2coal-recipe",			"b")
	aadd("z-youki-3",			"y-ac-uc2stone-recipe",			"c")
	aadd("z-youki-3",			"y-ac-uc2copper-recipe",		"d")
	aadd("z-youki-3",			"y-ac-uc2iron-recipe",			"e")
	aadd("z-youki-3",			"y-ac-uc2uc4-recipe",			"f")
	aadd("z-youki-3",			"y-ac-uc2fuel-recipe",			"g")
	aadd("z-youki-3",			"y-liquid2uc-recipe",			"h")
	
	aadd("z-youki-4",			"y-ac-uc2plastic-recipe",		"a")
	aadd("z-youki-4",			"y_uc2catalyst",				"b")
	aadd("z-youki-4",			"y-uc2crudeoil-recipe",			"c")
	aadd("z-youki-4",			"y-battery-rip2-recipe",		"d", "__ZGroupChange__/graphics/icons/unicom2battery.png")
	aadd("z-youki-4",			"y_alien_artis2_recipe",		"e", "__ZGroupChange__/graphics/icons/unicom2artifact.png")
	
	aadd("z-youki-5",			"y_exchange_a1_recipe",			"a")
	aadd("z-youki-5",			"y_exchange_a4_recipe",			"b")
	aadd("z-youki-5",			"y_exchange_a2_recipe",			"c")
	aadd("z-youki-5",			"y_exchange_a3_recipe",			"d")
	
	aadd("z-youki-6",			"y_exchange_b1_recipe",			"a")
	aadd("z-youki-6",			"y_exchange_b4_recipe",			"b")
	aadd("z-youki-6",			"y_exchange_b2_recipe",			"c")
	aadd("z-youki-6",			"y_exchange_b3_recipe",			"d")
	
	aadd("z-youki-7",			"yi_slayerfame_recipe",			"a")
	aadd("z-youki-7",			"y-fame",						"b")
	aadd("z-youki-7",			"y_fame_tech_recipe",			"b")
	aadd("z-youki-7",			"y_greensign",					"c")
	aadd("z-youki-7",			"y_greensign_ulti-recipe",		"c")
	aadd("z-youki-7",			"ye_science_blue",				"d")
	aadd("z-youki-7",			"ye_science_blue_recipe",		"d")
	aadd("z-youki-7",			"ypfw_trader_sign",				"e")
	aadd("z-youki-7",			"y_rwtechsign",					"f")
	
	aadd("z-youki-8",			"ye_green_ultimate",			"a")
	aadd("z-youki-8",			"ye_science_ultimate",			"b")
	aadd("z-youki-8",			"y_trade_ultimate",				"c")
	aadd("z-youki-8",			"y_mc_e2_mining_drill",			"d")
	aadd("z-youki-8",			"y_mc_underground_drill",		"e")
	aadd("z-youki-8",			"y_mc_dirtwasher",				"f")
	aadd("z-youki-8",			"y_steam_turbine_mc",			"g")
	aadd("z-youki-8",			"y_obninsk_mc",					"h")
	
end
do	--[[module]]--
	aadd("z-module-0",			"yi_beacon",					"h")
	
	aadd("z-module-1",			"y-speed-module-1",				"a")
	aadd("z-module-1",			"y_modul_blue1-recipe",			"a")
	aadd("z-module-1",			"y-speed-module-2",				"b")
	aadd("z-module-1",			"y_modul_blue2-recipe",			"b")
	aadd("z-module-1",			"y-green-module-1",				"c")
	aadd("z-module-1",			"y_modul_green1_recipe",		"c")
	aadd("z-module-1",			"y-green-module-2",				"d")
	aadd("z-module-1",			"y_modul_green2_recipe",		"d")
	aadd("z-module-1",			"y_modul_green_op",				"e")
	
	aadd("z-module-2",			"y_modul_red1",					"a")
	aadd("z-module-2",			"y_modul_red2",					"b")
	aadd("z-module-2",			"y-pink-module-1",				"c")
	aadd("z-module-2",			"y-pink-module-2",				"d")
	aadd("z-module-2",			"y-pink-module-3",				"e")
	
end
do	--[[decorative]]--
	aadd("z-decorative-2",		"y_lamp_red",					"c")
	aadd("z-decorative-2",		"y_lamp_green",					"d")
	aadd("z-decorative-2",		"y_lamp_blue",					"e")
	aadd("z-decorative-2",		"y_lamp_yellow",				"f")
	aadd("z-decorative-2",		"y-tinylamp",					"g")
	aadd("z-decorative-2",		"y-powerlamp",					"h")
	aadd("z-decorative-2",		"y-lamp-alien",					"i")
	
	aadd("z-decorative-4",		"y_tile_slagfilled",			"a")
	aadd("z-decorative-4",		"y_tile_slagpattern",			"e")
	aadd("z-decorative-4",		"y_tile_slagbricks",			"g")
	
	aadd("z-decorative-6",		"yi_bug1",						"i")
	aadd("z-decorative-6",		"yi-monument1",					"j")
	
end
do	--[[other]]--
	aadd("z-other-2",		"y-small-stirling-engine",			"c")
	
end
do	--[[TECH]]--
	local s_pack = "alien-science-pack"
	if data.raw.tool["science-pack-4"] then s_pack = "science-pack-4" end
	data:extend({
		{
			type = "technology",
			name = "yuoki_technology",
			icon = "__ZGroupChange__/graphics/icons/tech/yi_research.png",
			unit = {
				count = 15,
				time = 30,
				ingredients = {
					{"science-pack-1",1}
				}
			},
			order = "y-0"
		},
		{
			type = "technology",
			name = "yuoki_industries",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-ind-icon.png",
			prerequisites = {"yuoki_technology"},
			effects = {},
			unit = {
				count = 25,
				time = 30,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			order = "y-1[a]"
		},
		{
			type = "technology",
			name = "yuoki_energy",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-energy.png",
			prerequisites = {"yuoki_technology"},
			effects = {},
			unit = {
				count = 25,
				time = 30,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			order = "y-1[b]"
		},
		{
			type = "technology",
			name = "yuoki_liquids",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-liquids.png",
			prerequisites = {"yuoki_technology"},
			effects = {},
			unit = {
				count = 25,
				time = 30,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			order = "y-1[c]"
		},
		{
			type = "technology",
			name = "yuoki_def",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-def.png",
			prerequisites = {"yuoki_industries"},
			effects = {},
			unit = {
				count = 25,
				time = 30,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			order = "y-1[d]"
		},
		{
			type = "technology",
			name = "yuoki_atomics",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-atomics-icon.png",
			prerequisites = {"yuoki_industries", "yuoki_energy", "yuoki_liquids"},
			effects = {},
			unit = {
				count = 50,
				time = 120,
				ingredients = {
					{"science-pack-1",4},
					{"science-pack-2",3},
					{"science-pack-3",2},
					{s_pack,1}
				}
			},
			order = "y-1[e]"
		}
	})
	data:extend({
		{
			type = "technology",
			name = "yuoki_industries-2",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-ind-icon.png",
			prerequisites = {"yuoki_industries"},
			effects = {},
			unit = {
				count = 25,
				time = 45,
				ingredients = {
					{"science-pack-1",3},
					{"science-pack-2",2},
					{"science-pack-3",1}
				}
			},
			enabled = false,
			order = "y-2[a]"
		},
		{
			type = "technology",
			name = "yuoki_industries-3",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-ind-icon.png",
			prerequisites = {"yuoki_industries-2"},
			effects = {},
			unit = {
				count = 50,
				time = 60,
				ingredients = {
					{"science-pack-1",3},
					{"science-pack-2",2},
					{"science-pack-3",1}
				}
			},
			enabled = false,
			order = "y-3[a]"
		},
		{
			type = "technology",
			name = "yuoki_industries-4",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-ind-icon.png",
			prerequisites = {"yuoki_industries-3"},
			effects = {},
			unit = {
				count = 75,
				time = 90,
				ingredients = {
					{"science-pack-1",4},
					{"science-pack-2",3},
					{"science-pack-3",2},
					{s_pack,1}
				}
			},
			enabled = false,
			order = "y-4[a]"
		},
		{
			type = "technology",
			name = "yuoki_energy-2",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-energy.png",
			prerequisites = {"yuoki_energy"},
			effects = {},
			unit = {
				count = 50,
				time = 45,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			enabled = false,
			order = "y-2[b]"
		},
		{
			type = "technology",
			name = "yuoki_energy-3",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-energy.png",
			prerequisites = {"yuoki_energy-2"},
			effects = {},
			unit = {
				count = 75,
				time = 60,
				ingredients = {
					{"science-pack-1",3},
					{"science-pack-2",2},
					{"science-pack-3",1}
				}
			},
			enabled = false,
			order = "y-3[b]"
		},
		{
			type = "technology",
			name = "yuoki_liquids-2",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-liquids.png",
			prerequisites = {"yuoki_liquids"},
			effects = {},
			unit = {
				count = 50,
				time = 45,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			enabled = false,
			order = "y-2[c]"
		},
		{
			type = "technology",
			name = "yuoki_liquids-3",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-liquids.png",
			prerequisites = {"yuoki_liquids-2"},
			effects = {},
			unit = {
				count = 75,
				time = 60,
				ingredients = {
					{"science-pack-1",3},
					{"science-pack-2",2},
					{"science-pack-3",1}
				}
			},
			enabled = false,
			order = "y-3[c]"
		},
		{
			type = "technology",
			name = "yuoki_def-2",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-def.png",
			prerequisites = {"yuoki_def","yuoki_industries-2"},
			effects = {},
			unit = {
				count = 50,
				time = 45,
				ingredients = {
					{"science-pack-1",2},
					{"science-pack-2",1}
				}
			},
			enabled = false,
			order = "y-2[d]"
		},
		{
			type = "technology",
			name = "yuoki_def-3",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-def.png",
			prerequisites = {"yuoki_def-2","yuoki_industries-3"},
			effects = {},
			unit = {
				count = 75,
				time = 60,
				ingredients = {
					{"science-pack-1",3},
					{"science-pack-2",2},
					{"science-pack-3",1}
				}
			},
			enabled = false,
			order = "y-3[d]"
		},
		{
			type = "technology",
			name = "yuoki_atomics-2",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-atomics-icon.png",
			prerequisites = {"yuoki_industries-2","yuoki_energy-2","yuoki_liquids-2","yuoki_atomics"},
			effects = {},
			unit = {
				count = 75,
				time = 150,
				ingredients = {
					{"science-pack-1",4},
					{"science-pack-2",3},
					{"science-pack-3",2},
					{s_pack,1}
				}
			},
			enabled = false,
			order = "y-2[e]"
		},
		{
			type = "technology",
			name = "yuoki_atomics-3",
			icon = "__ZGroupChange__/graphics/icons/tech/yuoki-atomics-icon.png",
			prerequisites = {"yuoki_industries-3","yuoki_energy-3","yuoki_atomics-2"},
			effects = {},
			unit = {
				count = 100,
				time = 180,
				ingredients = {
					{"science-pack-1",4},
					{"science-pack-2",3},
					{"science-pack-3",2},
					{s_pack,1}
				}
			},
			enabled = false,
			order = "y-3[e]"
		}
	})
	
	if z_balance.youki_tech and i_exist("y-dirt") then
		-- yuoki_technology
		-- yuoki_industries-4
		-- yuoki_energy-3
		-- yuoki_liquids-3
		-- yuoki_def-3
		-- yuoki_atomics-3
		do	--# gathering
			zgc.add_recipe_to_tech("yuoki_industries", "y-mining-drill-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-underground-drill-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-dirtwasher-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_c11_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-mining-drill-e2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_c22_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_cg33_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-repair-durotal-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_mc_dirtwasher_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_mc_e2_mining_drill_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_mc_underground_drill_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_sc44_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y-repair-krakon-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_quantrinum_hammer_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids", "y-water-gen-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y-water-gen-fluid-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "z-lithia-water")
			zgc.add_recipe_to_tech("yuoki_liquids", "y-tank-4500-recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_buffer_station")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-water-gen-recipe-e")
			zgc.add_recipe_to_tech("yuoki_liquids-3", "y-tank-24k")
			
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y_repair_quantrinum-recipe")
		end
		do	--# production
			zgc.add_recipe_to_tech("yuoki_industries", "y-crusher-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_smelter_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_crusher2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-heat-form-press-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_charger_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_formpress2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-atomic-quantum-composer-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_maintance_workshop_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y-alien-infuser-recipe")
		end
		do	--# plates
			zgc.add_recipe_to_tech("yuoki_industries", "y-refined-iron")
			zgc.add_recipe_to_tech("yuoki_industries", "y-refined-copper")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_hps_pureiron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_hps_purecopper_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_hps_steel_recipe")
		end
		do	--# chemistry
			zgc.add_recipe_to_tech("yuoki_liquids", "y_coal2liquid")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_ft_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_rawsyngas1_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_rawsyngas2_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_refinehydrogen_recipe")
		end
		do	--# automatization
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-inserter-s4-recipe")
		end
		do	--# transport
			zgc.add_recipe_to_tech("yuoki_liquids", "y_flowcheck_10_recipe")
		end
		do	--# logistic
			zgc.add_recipe_to_tech("yuoki_industries-2", "yi_roboport_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "yi_logistic-robot_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "yi_construction-robot_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-rare-chest-log-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-rare-m1bunker-log-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_pc22_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_rc22_recipe")
		end
		do	--# energy
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_obninsk_mc_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_steam_turbine_mc_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy", "y-substation-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-accumulator-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-accumulator-mt2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-notfall-generator-s2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-steam-turbine-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-boiler-t2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-boiler-t3-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-boiler-iv-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-meg-s-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-solar-dish-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-wooden-brikett-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-coal-brikett-recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y-coaldust-mixing-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-substation-h-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-accumulator-b-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-accumulator-bt2-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-ups-flywheel-b-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-obninsk-turbine-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-obninsk-reactor-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-beg-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y_alien_solar_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-mixfuel-load-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-wooden-brikett-packed-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-coal-stack-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-infused-mud-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3", "y-accumulator-btx-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3", "y-accumulator-crystal-m-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3", "y_compensator_25_recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3", "y-heg-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3", "y_alien_solar2_recipe")
			
		end
		do	--# defense
			zgc.add_recipe_to_tech("yuoki_def", "y-mud-wall-recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y-rare-wall-basic-recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y_turret_flame_recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y-gun-turret-mk2-recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y-bullet-case-recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y_ammo_case_recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y_ammo_flame_recipe")
			zgc.add_recipe_to_tech("yuoki_def", "y-ammo-hohlspitz-recipe")
			
			zgc.add_recipe_to_tech("yuoki_def-2", "y-rare-wall-adv-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y_turret_plasma_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y-gun-turret-mk3-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y_laser_mk1_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "yi_radar_recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y-ammo-krakon-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y-ammo-biggun-recipe")
			zgc.add_recipe_to_tech("yuoki_def-2", "y_ammo_plasma_recipe")
			
			zgc.add_recipe_to_tech("yuoki_def-3", "y_wall22_hardic_recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y-wall-forcefield-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y_laser_onhwall_recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y-weapon-ztt-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y-ammo-explosiv-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y-ammo-poison-recipe")
			zgc.add_recipe_to_tech("yuoki_def-3", "y-ammo-acid-medium-recipe")
		end
		do	--# parts
			zgc.add_recipe_to_tech("yuoki_industries", "y-heat-pipe-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-bluegear-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_structure_element_recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_structure_vessel_recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_dotzetron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_chip_plate_recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y_gauge_analog_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_drillhead_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_toolhead_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-basic-st1-mf-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-conductive-wire-1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "yi_magnetron_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-chip1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-basic-st2-mf-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-conductive-coil-1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-chip2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_blocked_capa_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_drillhead_repair_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_toolhead_repair_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries", "y-crush-unicomp-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-crush-fuel-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-smelt-crush-res1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-unicomp-raw-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-pure-iron-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-pure-copper-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-digfdirt-recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-release-cwater")
			zgc.add_recipe_to_tech("yuoki_industries", "y-wash-dirt-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-filtering-dust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-smelt-crush-res2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-mixing-rich-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-smelt-richdust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_block_cold_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_block_heat_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-quantrinum-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_data_crystal_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-crystal-cnd-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-digfdirt2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-press-richdust-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-pressed_dry_mud-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_slag_granulate_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_slag_brick_recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_pure_iron_wtool_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_pure_copper_wtool_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-crush-blue_whead-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-crush-green_whead-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_quantrinum_infusion_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-wash-special-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_slag_brick_burn_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-raw-fuelnium-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy", "y-coaldust-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3", "y-fuel-reactor-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-3", "y-infused-uca2-recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids", "y_granulate_wood_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_catalyst_bp_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_catalyst_ft_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_regcatbp_recipe")
			zgc.add_recipe_to_tech("yuoki_liquids", "y_regcatft_recipe")
			
			zgc.add_recipe_to_tech("yuoki_liquids-2", "y-sulfuric-acid-recipe")
		end
		do	--# intermediate
			zgc.add_recipe_to_tech("yuoki_industries", "y_blocked_capa_recipe")
			zgc.add_recipe_to_tech("yuoki_industries", "y-battery-singleuse1-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-battery-singleuse2-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-battery-single-use3-recipe")
		end
		do	--# youki
			zgc.add_recipe_to_tech("yuoki_atomics", "y-atomic-constructor-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-wood2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-coal2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-stone2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-copper2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-iron2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc42uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-fuel2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-uc2liquid-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2wood-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2coal-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2stone-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2copper-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2iron-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2uc4-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-ac-uc2fuel-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y-liquid2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_a1_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_a4_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_a2_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_a3_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_b1_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_b4_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_b2_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "y_exchange_b3_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics", "yi_slayerfame_recipe")
			
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y_fame_tech_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-ac-mud2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-ac-toxic2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-ac-slag2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-ac-crystal2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-heavyoil2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-lightoil2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-lubricant2uc-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-petroleum-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-battery-rip1-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y_alien_artis1_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-ac-uc2plastic-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y_uc2catalyst")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-uc2crudeoil-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y-battery-rip2-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-2", "y_alien_artis2_recipe")
			
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y-stargate-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y-fame-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y_greensign_ulti-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "ye_science_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "ypfw_trader_sign")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y_rwtechsign")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y-fame-gen-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y-sgtrade-ic1-recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "ye_green_ultimate_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "ye_science_ultimate_recipe")
			zgc.add_recipe_to_tech("yuoki_atomics-3", "y_trade_ultimate_recipe")
		end
		do	--# module
			zgc.add_recipe_to_tech("yuoki_industries-2", "yi_beacon_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_modul_blue1-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_modul_blue2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_modul_green1_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_modul_green2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y-pink-module-1-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_modul_red1_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_modul_red2_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-pink-module-2-recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y-pink-module-3-recipe")
			
			zgc.add_recipe_to_tech("yuoki_industries-4", "y_modul_green_op_recipe")
		end
		do	--# decorative
			zgc.add_recipe_to_tech("yuoki_industries", "y_tile_slagfilled_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-2", "y_tile_slagpattern_recipe")
			zgc.add_recipe_to_tech("yuoki_industries-3", "y_tile_slagbricks_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy", "y_lamp_red_recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y_lamp_green_recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y_lamp_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "y_lamp_yellow_recipe")
			zgc.add_recipe_to_tech("yuoki_energy", "yi_bug1_recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-tinylamp-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-powerlamp-recipe")
			zgc.add_recipe_to_tech("yuoki_energy-2", "y-lamp-alien-recipe")
			
			zgc.add_recipe_to_tech("yuoki_energy-3", "yi-monument1-recipe")
		end
		
	end
end
