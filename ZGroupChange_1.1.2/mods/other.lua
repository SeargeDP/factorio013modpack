local allow_changes = z_balance.other

do	--[[gathering]]--
	-- warehousing
	aadd("gathering-2",		"storehouse-basic",				"e")
	aadd("gathering-2",		"warehouse-basic",				"f")
	
end
do	--[[production]]--
	-- flare stack
	aadd("production-6",		"vent-stack",					"g")
	aadd("production-6",		"flare-stack",					"h")
	
	aadd("production-7",		"incinerator",					"g")
	aadd("production-7",		"electric-incinerator",			"h")
	
	if allow_changes and data.raw.recipe["vent-stack"] then
		data.raw.recipe["vent-stack"].enabled = "false"
		data.raw.recipe["vent-stack"].hidden = "false"
		data.raw.recipe["flare-stack"].enabled = "false"
		data.raw.recipe["flare-stack"].hidden = "false"
		data.raw.recipe["incinerator"].enabled = "false"
		data.raw.recipe["incinerator"].hidden = "false"
		data.raw.recipe["electric-incinerator"].enabled = "false"
		data.raw.recipe["electric-incinerator"].hidden = "false"
		zgc.t_add_recipe_unlock("oil-processing", "vent-stack")
		zgc.t_add_recipe_unlock("oil-processing", "flare-stack")
		zgc.t_add_recipe_unlock("oil-processing-2", "incinerator")
		zgc.t_add_recipe_unlock("oil-processing-2", "electric-incinerator")
	end
	
	-- bio industries
	aadd("production-9",		"bi_bio_farm",					"a")
	aadd("production-9",		"bi-Bio_Garden",				"b")
	aadd("production-9",		"bi-cokery",					"c")
	aadd("production-9",		"bi-bioreactor",				"d")
	aadd("production-9",		"bi-stone-crusher",				"e")
	aadd("production-9",	"bi-burner-mining-drill-disassemble","f")
	aadd("production-9",	"bi-steel-furnace-disassemble",		"g")
		
	if allow_changes and data.raw.recipe["bob-greenhouse"] and data.raw.recipe["bi_bio_farm"] then
		ahide("bob-greenhouse")
		ahide("bob-basic-greenhouse-cycle")
		ahide("bob-advanced-greenhouse-cycle")
		
		switch_tech("bob-greenhouse")
	end
	
	-- factorissimo
	aadd("production-9",		"small-factory",				"h")
	aadd("production-9",		"small-power-plant",			"i")
	
end
do	--[[resources]]--
	-- bio industries
	aadd("resources-1",		"bi-woodpulp",					"a")
	aadd("resources-1",		"bi-ash",						"b")
	aadd("resources-1",		"bi-ash-2",						"c")
	aadd("resources-1",		"bi-charcoal",					"d")
	aadd("resources-1",		"bi-charcoal-2",				"e")
	aadd("resources-1",		"bi-coal",						"f")
	aadd("resources-1",		"bi-coal-2",					"g")
	aadd("resources-1",		"z-coal",						"h")
	aadd("resources-1",		"bi-coke-coal",					"i")
	iadd("resources-1",		"crushed-stone",				"j")
	aadd("resources-1",		"bi-crushed-stone",				"j")
	aadd("resources-1",		"carbon",						"k")
	
	radd("resources-9",		"bi-platic",					"a")
	
	if z_balance.mining and i_exist("bi-woodpulp") then
		zgc.add_newRessource_min_max("raw-wood", 	"bi-woodpulp",1,3,0.7)
		zgc.add_newRessource_min_max("coal", 		"bi-ash",1,2,0.2)
		zgc.add_newRessource_min_max("stone", 		"stone-crushed",1,2,0.1)
	end
end
do	--[[liquids]]--
	-- bergius process
	aadd("liquids-1",			"bergius-process",				"c")
	aadd("liquids-2",			"coal-liquefaction",			"c")
	
	-- bio industries
	aadd("liquids-1",			"bi-Fuel_Conversion",			"e")
	radd("liquids-1",			"bi-biomass-0",					"f")
	aadd("liquids-1",			"bi-Bio_Fuel",					"g")
	radd("liquids-2",			"bi-Clean_Air",					"h")
	radd("liquids-2",			"bi-Clean_Air2",				"i")
  if i_exist("bi-liquid-air") then
	aadd("liquids-0",			"liquid-air",					"f")
	aadd("liquids-0",			"bob-liquid-air",				"e")
	aadd("liquids-0",			"bi-liquid-air",				"g")
  end
	
	-- rail tanker
	iadd("liquids-9",		"crude-oil",						"d")
	iadd("liquids-9",		"heavy-oil",						"e")
	iadd("liquids-9",		"light-oil",						"f")
	iadd("liquids-9",		"bi-biomass",						"n")
	iadd("liquids-9",		"water-purified",					"p")
	iadd("liquids-9",		"water-floatation-waste",			"r")
	iadd("liquids-9",		"water-saline",						"s")
	iadd("liquids-9",		"crystal-seedling",					"t")
	iadd("liquids-9",		"crystal-matrix",					"u")
	iadd("liquids-9",		"crystal-slurry",					"v")
	iadd("liquids-9",		"thermal-water",					"w")
	iadd("liquids-9",		"mineral-sludge",					"x")
	iadd("liquids-9",		"slag-slurry",						"y")
	iadd("liquids-9",		"liquefied-coal",					"z")
	iadd("liquids-9",		"liquid-air-in-tanker",				"a")
	iadd("liquids-9",		"water-in-tanker",					"b")
	iadd("liquids-9",		"lithia-water-in-tanker",			"c")
	iadd("liquids-9",		"crude-oil-in-tanker",				"d")
	iadd("liquids-9",		"heavy-oil-in-tanker",				"e")
	iadd("liquids-9",		"light-oil-in-tanker",				"f")
	iadd("liquids-9",		"lubricant-in-tanker",				"g")
	iadd("liquids-9",		"liquid-fuel-in-tanker",			"h")
	iadd("liquids-9",		"ferric-chloride-solution-in-tanker","i")
	iadd("liquids-9",		"alien-goo-in-tanker",				"j")
	iadd("liquids-9",		"y-con_water-in-tanker",			"k", "__ZGroupChange__/graphics/icons/y-con-water.png")
	iadd("liquids-9",		"y-liquid-uc2-in-tanker",			"l")
	iadd("liquids-9",		"bi-Bio_Fuel-in-tanker",			"m")
	iadd("liquids-9",		"bi-biomass-in-tanker",				"n")
	iadd("liquids-9",		"bi-liquid-co2-in-tanker",			"o")
	iadd("liquids-9",		"water-purified-in-tanker",			"p")
	iadd("liquids-9",		"water-mineralized-in-tanker",		"q")
	iadd("liquids-9",		"water-floatation-waste-in-tanker",	"r")
	iadd("liquids-9",		"water-saline-in-tanker",			"s")
	iadd("liquids-9",		"crystal-seedling-in-tanker",		"t")
	iadd("liquids-9",		"crystal-matrix-in-tanker",			"u")
	iadd("liquids-9",		"crystal-slurry-in-tanker",			"v")
	iadd("liquids-9",		"thermal-water-in-tanker",			"w")
	iadd("liquids-9",		"mineral-sludge-in-tanker",			"x")
	iadd("liquids-9",		"slag-slurry-in-tanker",			"y")
	iadd("liquids-9",		"liquefied-coal-in-tanker",			"z")
	
	ihide("liquid-chlor-methane-in-tanker")
	
end
do	--[[chemistry]]--
	-- bio industries
	aadd("chemistry-0",		"bi-nitrogen",					"e")
	radd("chemistry-1",		"bi-cellulose",					"e")
	iadd("chemistry-9",		"bi-cellulose",					"p")
	aadd("chemistry-9",		"bi-liquid-co2",				"f")
	
	-- rail tanker
	iadd("chemistry-9",	"oxygen",							"a")
	iadd("chemistry-9",	"chlorine",							"b")
	iadd("chemistry-9",	"hydrogen",							"c")
	iadd("chemistry-9",	"petroleum-gas",					"e")
	iadd("chemistry-9",	"sulfur-dioxide",					"i")
	iadd("chemistry-9",	"sulfuric-acid",					"k")
	iadd("chemistry-9",	"oxygen-in-tanker",					"a")
	iadd("chemistry-9",	"chlorine-in-tanker",				"b")
	iadd("chemistry-9",	"hydrogen-in-tanker",				"c")
	iadd("chemistry-9",	"nitrogen-in-tanker",				"d")
	iadd("chemistry-9",	"petroleum-gas-in-tanker",			"e")
	iadd("chemistry-9",	"hydrogen-chloride-in-tanker",		"f")
	iadd("chemistry-9",	"nitrogen-dioxide-in-tanker",		"h")
	iadd("chemistry-9",	"sulfur-dioxide-in-tanker",			"i")
	iadd("chemistry-9",	"nitric-acid-in-tanker",			"j")
	iadd("chemistry-9",	"sulfuric-acid-in-tanker",			"k")
	iadd("chemistry-9",	"tungstic-acid-in-tanker",			"l")
	iadd("chemistry-9",	"sulfuric-nitric-acid-in-tanker",	"m")
	iadd("chemistry-9",	"nitroglycerin-in-tanker",			"n")
	iadd("chemistry-9",	"glycerol-in-tanker",				"o")
	iadd("chemistry-9",	"y_hydrogen-in-tanker",				"q")
	iadd("chemistry-9",	"y_syngas_clean-in-tanker",			"r")
	iadd("chemistry-9",	"y_syngas_raw-in-tanker",			"s")
		
end
do	--[[transport]]--
	-- belt sorter
	aadd("transport-0",			"belt-sorter",				"h")
	
	-- smart splitter
	aadd("transport-1",			"smartsplitter",			"h")
	
	-- flow control
	if allow_changes and i_exist("pipe-elbow") and (i_exist("5d-pipe-mk2") or i_exist("copper-pipe")) then
		local new_pipes = {}
		new_pipes["pipe-copper-straight"] = {
			item = table.deepcopy(data.raw.item["pipe-straight"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-straight"]),
			entity = table.deepcopy(data.raw["pipe-to-ground"]["pipe-straight"])
		}
		new_pipes["pipe-copper-junction"] = {
			item = table.deepcopy(data.raw.item["pipe-junction"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-junction"]),
			entity = table.deepcopy(data.raw["pipe-to-ground"]["pipe-junction"])
		}
		new_pipes["pipe-copper-elbow"] = {
			item = table.deepcopy(data.raw.item["pipe-elbow"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-elbow"]),
			entity = table.deepcopy(data.raw["pipe-to-ground"]["pipe-elbow"])
		}
		new_pipes["pipe-steel-straight"] = table.deepcopy(new_pipes["pipe-copper-straight"])
		new_pipes["pipe-steel-junction"] = table.deepcopy(new_pipes["pipe-copper-junction"])
		new_pipes["pipe-steel-elbow"] = table.deepcopy(new_pipes["pipe-copper-elbow"])
		
		local pic1 = "__ZGroupChange__/graphics/icons/pipe-"
		local pic2 = "__ZGroupChange__/graphics/entity/pipe-"
		local n = {cs="pipe-copper-straight",cj="pipe-copper-junction",ce="pipe-copper-elbow",ss="pipe-steel-straight",sj="pipe-steel-junction",se="pipe-steel-elbow",pcs="copper-straight.png",pcj="copper-junction.png",pce="copper-elbow.png",pss="steel-straight.png",psj="steel-junction.png",pse="steel-elbow.png"}
	do -- entity.name / recipe.name / item.name
		new_pipes[n.cs].entity.name = n.cs
		new_pipes[n.cj].entity.name = n.cj
		new_pipes[n.ce].entity.name = n.ce
		new_pipes[n.ss].entity.name = n.ss
		new_pipes[n.sj].entity.name = n.sj
		new_pipes[n.se].entity.name = n.se
		new_pipes[n.cs].recipe.name = n.cs
		new_pipes[n.cj].recipe.name = n.cj
		new_pipes[n.ce].recipe.name = n.ce
		new_pipes[n.ss].recipe.name = n.ss
		new_pipes[n.sj].recipe.name = n.sj
		new_pipes[n.se].recipe.name = n.se
		new_pipes[n.cs].item.name = n.cs
		new_pipes[n.cj].item.name = n.cj
		new_pipes[n.ce].item.name = n.ce
		new_pipes[n.ss].item.name = n.ss
		new_pipes[n.sj].item.name = n.sj
		new_pipes[n.se].item.name = n.se
	end
	do -- entity.icon / item.icon
		new_pipes[n.cs].entity.icon = pic1..n.pcs
		new_pipes[n.cj].entity.icon = pic1..n.pcj
		new_pipes[n.ce].entity.icon = pic1..n.pce
		new_pipes[n.ss].entity.icon = pic1..n.pss
		new_pipes[n.sj].entity.icon = pic1..n.psj
		new_pipes[n.se].entity.icon = pic1..n.pse
		new_pipes[n.cs].item.icon = pic1..n.pcs
		new_pipes[n.cj].item.icon = pic1..n.pcj
		new_pipes[n.ce].item.icon = pic1..n.pce
		new_pipes[n.ss].item.icon = pic1..n.pss
		new_pipes[n.sj].item.icon = pic1..n.psj
		new_pipes[n.se].item.icon = pic1..n.pse
	end
	do -- entity.pictures.up.filename
		new_pipes[n.cs].entity.pictures.up.filename = pic2..n.pcs
		new_pipes[n.cj].entity.pictures.up.filename = pic2..n.pcj
		new_pipes[n.ce].entity.pictures.up.filename = pic2..n.pce
		new_pipes[n.ss].entity.pictures.up.filename = pic2..n.pss
		new_pipes[n.sj].entity.pictures.up.filename = pic2..n.psj
		new_pipes[n.se].entity.pictures.up.filename = pic2..n.pse
	end
	do -- entity.pictures.left.filename
		new_pipes[n.cs].entity.pictures.left.filename = pic2..n.pcs
		new_pipes[n.cj].entity.pictures.left.filename = pic2..n.pcj
		new_pipes[n.ce].entity.pictures.left.filename = pic2..n.pce
		new_pipes[n.ss].entity.pictures.left.filename = pic2..n.pss
		new_pipes[n.sj].entity.pictures.left.filename = pic2..n.psj
		new_pipes[n.se].entity.pictures.left.filename = pic2..n.pse
	end
	do -- entity.pictures.down.filename
		new_pipes[n.cs].entity.pictures.down.filename = pic2..n.pcs
		new_pipes[n.cj].entity.pictures.down.filename = pic2..n.pcj
		new_pipes[n.ce].entity.pictures.down.filename = pic2..n.pce
		new_pipes[n.ss].entity.pictures.down.filename = pic2..n.pss
		new_pipes[n.sj].entity.pictures.down.filename = pic2..n.psj
		new_pipes[n.se].entity.pictures.down.filename = pic2..n.pse
	end
	do -- entity.pictures.right.filename
		new_pipes[n.cs].entity.pictures.right.filename = pic2..n.pcs
		new_pipes[n.cj].entity.pictures.right.filename = pic2..n.pcj
		new_pipes[n.ce].entity.pictures.right.filename = pic2..n.pce
		new_pipes[n.ss].entity.pictures.right.filename = pic2..n.pss
		new_pipes[n.sj].entity.pictures.right.filename = pic2..n.psj
		new_pipes[n.se].entity.pictures.right.filename = pic2..n.pse
	end
	do -- entity.minable.result
		new_pipes[n.cs].entity.minable.result = n.cs
		new_pipes[n.cj].entity.minable.result = n.cj
		new_pipes[n.ce].entity.minable.result = n.ce
		new_pipes[n.ss].entity.minable.result = n.ss
		new_pipes[n.sj].entity.minable.result = n.sj
		new_pipes[n.se].entity.minable.result = n.se
	end
	do -- entity.fluid_box.base_area
		new_pipes[n.cs].entity.fluid_box.base_area = 3
		new_pipes[n.cj].entity.fluid_box.base_area = 3
		new_pipes[n.ce].entity.fluid_box.base_area = 3
		new_pipes[n.ss].entity.fluid_box.base_area = 5
		new_pipes[n.sj].entity.fluid_box.base_area = 5
		new_pipes[n.se].entity.fluid_box.base_area = 5
	end
	do -- recipe.ingredients
		new_pipes[n.cs].recipe.ingredients = {{"copper-plate",1}}
		new_pipes[n.cj].recipe.ingredients = {{"copper-plate",1}}
		new_pipes[n.ce].recipe.ingredients = {{"copper-plate",1}}
		new_pipes[n.ss].recipe.ingredients = {{"steel-plate",1}}
		new_pipes[n.sj].recipe.ingredients = {{"steel-plate",1}}
		new_pipes[n.se].recipe.ingredients = {{"steel-plate",1}}
	end
	do -- recipe.result
		new_pipes[n.cs].recipe.result = n.cs
		new_pipes[n.cj].recipe.result = n.cj
		new_pipes[n.ce].recipe.result = n.ce
		new_pipes[n.ss].recipe.result = n.ss
		new_pipes[n.sj].recipe.result = n.sj
		new_pipes[n.se].recipe.result = n.se
	end
	do -- recipe.enabled
		new_pipes[n.cs].recipe.enabled = "false"
		new_pipes[n.cj].recipe.enabled = "false"
		new_pipes[n.ce].recipe.enabled = "false"
		new_pipes[n.ss].recipe.enabled = "false"
		new_pipes[n.sj].recipe.enabled = "false"
		new_pipes[n.se].recipe.enabled = "false"
	end
	do -- recipe.hidden
		new_pipes[n.cs].recipe.hidden = "false"
		new_pipes[n.cj].recipe.hidden = "false"
		new_pipes[n.ce].recipe.hidden = "false"
		new_pipes[n.ss].recipe.hidden = "false"
		new_pipes[n.sj].recipe.hidden = "false"
		new_pipes[n.se].recipe.hidden = "false"
	end
	do -- item.place_result
		new_pipes[n.cs].item.place_result = n.cs
		new_pipes[n.cj].item.place_result = n.cj
		new_pipes[n.ce].item.place_result = n.ce
		new_pipes[n.ss].item.place_result = n.ss
		new_pipes[n.sj].item.place_result = n.sj
		new_pipes[n.se].item.place_result = n.se
	end

		for k,v in pairs(new_pipes) do data:extend({v.entity,v.recipe,v.item}) end
		data.raw["pipe-to-ground"]["pipe-straight"].minable.result = "pipe-straight"
		data.raw["pipe-to-ground"]["pipe-junction"].minable.result = "pipe-junction"
		data.raw["pipe-to-ground"]["pipe-elbow"].minable.result = "pipe-elbow"
		
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-straight")
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-junction")
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-elbow")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-straight")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-junction")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-elbow")
	end
	if i_exist("pipe-elbow") then ahide("valve") end
	
	aadd("transport-5",			"check-valve",				"b")
	aadd("transport-5",			"overflow-valve",			"c")
	aadd("transport-5",			"express-pump",				"d")
	
  if i_not_exist("5d-pipe-mk2") and i_not_exist("copper-pipe") then
	aadd("transport-8",			"pipe-straight",			"d")
	aadd("transport-8",			"pipe-junction",			"e")
	aadd("transport-8",			"pipe-elbow",				"f")
  elseif allow_changes and i_exist("copper-pipe") and i_not_exist("5d-pipe-mk2") then
	aadd("transport-10",			"pipe-straight",			"a")
	aadd("transport-10",			"pipe-copper-straight",		"b")
	aadd("transport-10",			"pipe-steel-straight",		"c")
	aadd("transport-11",			"pipe-junction",			"a")
	aadd("transport-11",			"pipe-copper-junction",		"b")
	aadd("transport-11",			"pipe-steel-junction",		"c")
	aadd("transport-12",			"pipe-elbow",				"a")
	aadd("transport-12",			"pipe-copper-elbow",		"b")
	aadd("transport-12",			"pipe-steel-elbow",			"c")
  elseif allow_changes then
	aadd("transport-9",			"pipe-straight",			"d")
	aadd("transport-9",			"pipe-copper-straight",		"e")
	aadd("transport-9",			"pipe-steel-straight",		"f")
	aadd("transport-10",			"pipe-junction",			"d")
	aadd("transport-10",			"pipe-copper-junction",		"e")
	aadd("transport-10",			"pipe-steel-junction",		"f")
	aadd("transport-11",			"pipe-elbow",				"d")
	aadd("transport-11",			"pipe-copper-elbow",		"e")
	aadd("transport-11",			"pipe-steel-elbow",			"f")
  else
	aadd("transport-8",			"pipe-straight",			"d")
	aadd("transport-8",			"pipe-junction",			"e")
	aadd("transport-8",			"pipe-elbow",				"f")
  end
	
	if i_exist("small-pump-4") or i_exist("5d-small-pump") then
		zgc.set_icon("small-pump","__base__/graphics/icons/small-pump.png")
	end
	
	zgc.t_add_recipe_unlock("logistics", "pipe-straight")
	zgc.t_add_recipe_unlock("logistics", "pipe-junction")
	zgc.t_add_recipe_unlock("logistics", "pipe-elbow")
	
end
do	--[[logistic]]--
	-- upgrade planer
	aadd("logistic-0",			"upgrade-builder",			"d")
	
	-- yarm
	aadd("logistic-0",			"resource-monitor",			"e")
	aadd("logistic-0",			"trading-chest-buy",		"g")
	aadd("logistic-0",			"trading-chest-sell",		"h")
	
	-- warehousing
	aadd("logistic-6",		"storehouse-requester",			"a")
	aadd("logistic-6",		"storehouse-passive-provider",	"b")
	aadd("logistic-6",		"storehouse-active-provider",	"c")
	aadd("logistic-6",		"storehouse-storage",			"d")
	aadd("logistic-6",		"warehouse-storage",			"e")
	aadd("logistic-6",		"warehouse-requester",			"f")
	aadd("logistic-6",		"warehouse-passive-provider",	"g")
	aadd("logistic-6",		"warehouse-active-provider",	"h")
	
	-- nixie tubes
	aadd("logistic-9",			"nixie-tube",				"e")
	aadd("logistic-9",			"nixie-tube-alpha",			"f")
	aadd("logistic-9",			"nixie-tube-small",			"g")
	
	-- time tools
	aadd("logistic-9",			"clock-combinator",			"h")
	
	-- smart display
	aadd("logistic-9",			"smart-display-visible",	"i")
end
do	--[[energy]]--
	-- bio industries
	aadd("energy-4",			"bi_bio_Solar_Farm",			"j")
	aadd("energy-7",			"bi-big-wooden-pole",			"a")
	
	-- factorissimo
	aadd("energy-9",			"factory-power-provider",		"a")
	aadd("energy-9",			"factory-power-receiver",		"b")
	aadd("energy-9",			"factory-power-distributor",	"c")
	
end
do	--[[module]]--
	-- bio industries
	aadd("module-0",			"lab-module",					"d")
end
do	--[[defense]]--
	-- bio industries
	aadd("defense-2",			"bi-wooden-fence",				"a")
	aadd("defense-2",			"Bio_Cannon",					"b")
	aadd("defense-2",			"Bio_Cannon_Area",				"c")
	aadd("defense-2",			"Bio_Cannon_Basic_Ammo",		"d")
	aadd("defense-2",			"Bio_Cannon_Poison_Ammo",		"e")
end
do	--[[intermediate]]--
	-- bio industries
	aadd("intermediate-6",		"bi-seedling",				"h")
	aadd("intermediate-6",		"fertiliser",				"i")
	aadd("intermediate-6",		"bi-fertiliser",			"i")
	aadd("intermediate-6",		"bi-fertiliser-2",			"j")
	aadd("intermediate-6",		"bi-adv-fertiliser",		"k")
	
	if allow_changes and i_exist("bi_bio_farm") then
		ahide("bob-seedling")
		ahide("bob-fertiliser")
		switch_tech("bob-fertiliser")
	end
end
do	--[[trains-vehicles]]--
	-- bio industries
	aadd("trains-14",			"bi-rail-wood",					"b")
	aadd("trains-14",			"bi-straight-rail-wood",		"b")
end
do	--[[decorative]]--
	-- landfill
	aadd("decorative-0",		"water-bomb",					"a")
	aadd("decorative-0",		"water-be-gone",				"a")
end
do	--[[atom]]--
	-- uranium power
	ihide("yellowcake-in-tanker")
	ihide("pressurised-water-in-tanker")
	ihide("fluorine-gas-in-tanker")
	ihide("uraninite-slurry-in-tanker")
	ihide("superheated-steam-in-tanker")
	ihide("low-pressure-steam-in-tanker")
	ihide("uranium-hexafluoride-in-tanker")
	ihide("uranium-hexafluoride-01-in-tanker")
	ihide("uranium-hexafluoride-02-in-tanker")
	ihide("uranium-hexafluoride-03-in-tanker")
	ihide("uranium-hexafluoride-04-in-tanker")
	ihide("uranium-hexafluoride-05-in-tanker")
	ihide("uranium-hexafluoride-06-in-tanker")
	ihide("uranium-hexafluoride-07-in-tanker")
	ihide("uranium-hexafluoride-08-in-tanker")
	ihide("uranium-hexafluoride-09-in-tanker")
	ihide("uranium-hexafluoride-10-in-tanker")
end
do	--[[other]]--
	-- test mode
	aadd("other-0",			"mjollnir",						"a")
	aadd("other-0",			"tm-solar-panel",				"b")
	aadd("other-0",			"tm-electric-pole",				"c")
	
	-- spawn belt
	aadd("other-1",			"spawn-belt",					"a")
	aadd("other-1",			"void-belt",					"b")
	
	-- black market
	aadd("other-2",			"ucoin",						"a")
	
	if allow_changes and z_balance.other and data.raw.recipe["spawn-belt"] then
		data.raw.recipe["spawn-belt"].enabled = "false"
		data.raw.recipe["spawn-belt"].hidden = "false"
		data.raw.recipe["void-belt"].enabled = "false"
		data.raw.recipe["void-belt"].hidden = "false"
		zgc.t_add_recipe_unlock("logistics-3", "spawn-belt")
		zgc.t_add_recipe_unlock("logistics-3", "void-belt")
	end
	
	if data.raw["item-group"]["signals"] then data.raw["item-group"]["signals"].icon = "__ZGroupChange__/graphics/icons/cat/signals.png" end
end
