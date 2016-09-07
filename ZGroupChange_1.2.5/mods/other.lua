local allow_changes = z_balance.other

do	--[[gathering]]--
	-- warehousing
	aadd("z-gathering-2",		"storehouse-basic",				"e")
	aadd("z-gathering-2",		"warehouse-basic",				"f")
	
end
do	--[[production]]--
	-- flare stack
	aadd("z-production-0",		"electric-stone-furnace",		"d")
	aadd("z-production-0",		"electric-steel-furnace",		"j")
	
	-- mini machines
	if use_graphics_tunnings then
		if data.raw["assembling-machine"]["mini-assembler-3"] then
			data.raw["assembling-machine"]["mini-assembler-3"].animation = {
				filename = "__ZGroupChange__/graphics/entity/assembling-machine-3-anim.png",
				priority="high",
				width = 142,
				height = 113,
				frame_count = 32,
				line_length = 8,
				shift = {0.84*0.66, -0.1*0.66},
				scale = 0.66
			}
		end
		zgc.set_icon("mini-assembler-1", "__ZGroupChange__/graphics/icons/mini-assembling-machine-1.png")
		zgc.set_icon("mini-assembler-2", "__ZGroupChange__/graphics/icons/mini-assembling-machine-2.png")
		zgc.set_icon("mini-assembler-3", "__ZGroupChange__/graphics/icons/mini-assembling-machine-3.png")
	end
	if z_balance.other_mini then
		aadd("z-production-2",		"mini-furnace",				"b")
		aadd("z-production-4",		"mini-assembler-1",			"a")
		aadd("z-production-4",		"mini-assembler-2",			"b")
		aadd("z-production-4",		"mini-assembler-3",			"c")
		aadd("z-production-6",		"mini-refinery",			"a")
		
		ahide("electric-furnace","mini-furnace")
		ahide("assembling-machine-1","mini-assembler-1")
		ahide("assembling-machine-2","mini-assembler-2")
		ahide("assembling-machine-3","mini-assembler-3")
		ahide("oil-refinery","mini-refinery")
		
	else
		aadd("z-production-2",		"mini-furnace",				"0a")
		aadd("z-production-5",		"mini-assembler-1",			"0a")
		aadd("z-production-5",		"mini-assembler-2",			"0b")
		aadd("z-production-5",		"mini-assembler-3",			"0c")
		aadd("z-production-6",		"mini-refinery",			"0a")
	end
	
	-- flare stack
	aadd("z-production-6",		"vent-stack",					"g")
	aadd("z-production-6",		"flare-stack",					"h")
	
	aadd("z-production-7",		"incinerator",					"g")
	aadd("z-production-7",		"electric-incinerator",			"h")
	
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
	aadd("z-production-9",		"bi_bio_farm",					"a")
	aadd("z-production-9",		"bi-Bio_Garden",				"b")
	aadd("z-production-9",		"bi-cokery",					"c")
	aadd("z-production-9",		"bi-bioreactor",				"d")
	aadd("z-production-9",		"bi-stone-crusher",				"e")
	aadd("z-production-9",	"bi-burner-mining-drill-disassemble","f")
	aadd("z-production-9",	"bi-steel-furnace-disassemble",		"g")
		
	if allow_changes and data.raw.recipe["bob-greenhouse"] and data.raw.recipe["bi_bio_farm"] then
		ahide("bob-greenhouse")
		ahide("bob-basic-greenhouse-cycle")
		ahide("bob-advanced-greenhouse-cycle")
		
		switch_tech("bob-greenhouse")
	end
	
	-- factorissimo
	aadd("z-production-9",		"small-factory",				"h")
	aadd("z-production-9",		"small-power-plant",			"i")
	
	-- tree farm
	aadd("z-production-9",		"tf-field",						"j")
	aadd("z-production-9",		"tf-fieldmk2",					"k")
	
	-- reverse factory
	aadd("z-production-10",		"reverse-factory",				"g")
	
	-- recycle
	aadd("z-production-10",		"recycling-machine-1",			"g")
	aadd("z-production-10",		"recycling-machine-2",			"g")
	aadd("z-production-10",		"recycling-machine-3",			"g")
	
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.name == "recycling-machine" then v.group = "zgc-production" end
	end
	
end
do	--[[resources]]--
	-- bio industries
	radd("z-resources-0",		"bi-cellulose",					"h")
	
	aadd("z-resources-1",		"bi-woodpulp",					"a")
	aadd("z-resources-1",		"bi-ash",						"b")
	aadd("z-resources-1",		"bi-ash-2",						"c")
	aadd("z-resources-1",		"bi-charcoal",					"d")
	aadd("z-resources-1",		"bi-charcoal-2",				"e")
	aadd("z-resources-1",		"bi-coal",						"f")
	aadd("z-resources-1",		"bi-coal-2",					"g")
	aadd("z-resources-1",		"z-coal",						"h")
	aadd("z-resources-1",		"bi-coke-coal",					"i")
	iadd("z-resources-1",		"crushed-stone",				"j")
	aadd("z-resources-1",		"bi-crushed-stone",				"j")
	aadd("z-resources-1",		"carbon",						"k")
	
	aadd("z-resources-8",		"bi-plastic",					"a")
	
	
  if i_exist("bi-woodpulp") then
	if z_balance.add_trees then
		zgc.add_newRessource_min_max("raw-wood", 	"bi-woodpulp",1,3,0.7)
	end
	if z_balance.add_dirt then
		zgc.add_newRessource_min_max("coal", 		"bi-ash",1,2,0.2)
		zgc.add_newRessource_min_max("stone", 		"stone-crushed",1,2,0.1)
	end
  end
end
do	--[[liquids]]--
	-- bergius process
	aadd("z-liquids-1",			"bergius-process",				"c")
	aadd("z-liquids-2",			"coal-liquefaction",			"c")
	
	-- bio industries
  if i_exist("bi-liquid-air") then
	aadd("z-liquids-0",			"liquid-air",					"f")
	aadd("z-liquids-0",			"bob-liquid-air",				"e")
	aadd("z-liquids-0",			"bi-liquid-air",				"g")
  end
	aadd("z-liquids-1",			"bi-Fuel_Conversion",			"g")
	radd("z-liquids-1",			"bi-biomass-0",					"h")
	aadd("z-liquids-1",			"bi-Bio_Fuel",					"i")
	radd("z-liquids-2",			"bi-Clean_Air",					"h")
	radd("z-liquids-2",			"bi-Clean_Air2",				"i")
	
	-- natural evolution
	aadd("z-liquids-1",			"NE_nutrient-solution",			"j")
	aadd("z-liquids-1",			"NE_basic-alien-nutrientant",	"j")
	aadd("z-liquids-2",			"NE_enhanced-nutrient-solution","j")
	aadd("z-liquids-2",			"NE_enhanced-alien-nutrientant","j")
	aadd("z-liquids-2",			"NE_alien-revitalization",		"l")
	
	-- n-tech chemistry
	aadd("z-liquids-1",	"basic-desulphurized-oil-processing",	"e")
	aadd("z-liquids-1",	"advanced-desulphurized-oil-processing","f")
	
	aadd("z-liquids-2",		"crude-oil-desulphurization",		"e")
	aadd("z-liquids-2",		"water-purification",				"a")
	
	aadd("z-liquids-5",		"petroleum-gas-barrel",				"i")
	aadd("z-liquids-5",		"fill-petroleum-gas-barrel",		"i")
	aadd("z-liquids-5",		"methanol-barrel",					"j")
	aadd("z-liquids-5",		"fill-methanol-barrel",				"j")
	aadd("z-liquids-5",		"disulfuric-acid-barrel",			"k")
	aadd("z-liquids-5",		"fill-disulfuric-acid-barrel",		"k")
	aadd("z-liquids-5",		"methylhydrazine-barrel",			"l")
	aadd("z-liquids-5",		"fill-methylhydrazine-barrel",		"l")
	aadd("z-liquids-5",		"dimethylhydrazine-barrel",			"m")
	aadd("z-liquids-5",		"fill-dimethylhydrazine-barrel",	"m")
	
	aadd("z-liquids-6",		"empty-petroleum-gas-barrel",		"i")
	aadd("z-liquids-6",		"empty-methanol-barrel",			"j")
	aadd("z-liquids-6",		"empty-disulfuric-acid-barrel",		"k")
	aadd("z-liquids-6",		"empty-methylhydrazine-barrel",		"l")
	aadd("z-liquids-6",		"empty-dimethylhydrazine-barrel",	"m")
	
	-- rail tanker
	iadd("z-liquids-9",		"crude-oil",						"d")
	iadd("z-liquids-9",		"heavy-oil",						"e")
	iadd("z-liquids-9",		"light-oil",						"f")
	iadd("z-liquids-9",		"bi-biomass",						"n")
	iadd("z-liquids-9",		"water-purified",					"p")
	iadd("z-liquids-9",		"water-floatation-waste",			"r")
	iadd("z-liquids-9",		"water-saline",						"s")
	iadd("z-liquids-9",		"crystal-seedling",					"t")
	iadd("z-liquids-9",		"crystal-matrix",					"u")
	iadd("z-liquids-9",		"crystal-slurry",					"v")
	iadd("z-liquids-9",		"thermal-water",					"w")
	iadd("z-liquids-9",		"mineral-sludge",					"x")
	iadd("z-liquids-9",		"slag-slurry",						"y")
	iadd("z-liquids-9",		"liquefied-coal",					"z")
	iadd("z-liquids-9",		"liquid-air-in-tanker",				"a")
	iadd("z-liquids-9",		"water-in-tanker",					"b")
	iadd("z-liquids-9",		"lithia-water-in-tanker",			"c")
	iadd("z-liquids-9",		"crude-oil-in-tanker",				"d")
	iadd("z-liquids-9",		"heavy-oil-in-tanker",				"e")
	iadd("z-liquids-9",		"light-oil-in-tanker",				"f")
	iadd("z-liquids-9",		"lubricant-in-tanker",				"g")
	iadd("z-liquids-9",		"liquid-fuel-in-tanker",			"h")
	iadd("z-liquids-9",		"ferric-chloride-solution-in-tanker","i")
	iadd("z-liquids-9",		"alien-goo-in-tanker",				"j")
	iadd("z-liquids-9",		"y-con_water-in-tanker",			"k", "__ZGroupChange__/graphics/icons/y-con-water.png")
	iadd("z-liquids-9",		"y-liquid-uc2-in-tanker",			"l")
	iadd("z-liquids-9",		"bi-Bio_Fuel-in-tanker",			"m")
	iadd("z-liquids-9",		"bi-biomass-in-tanker",				"n")
	iadd("z-liquids-9",		"bi-liquid-co2-in-tanker",			"o")
	iadd("z-liquids-9",		"water-purified-in-tanker",			"p")
	iadd("z-liquids-9",		"water-mineralized-in-tanker",		"q")
	iadd("z-liquids-9",		"water-floatation-waste-in-tanker",	"r")
	iadd("z-liquids-9",		"water-saline-in-tanker",			"s")
	iadd("z-liquids-9",		"crystal-seedling-in-tanker",		"t")
	iadd("z-liquids-9",		"crystal-matrix-in-tanker",			"u")
	iadd("z-liquids-9",		"crystal-slurry-in-tanker",			"v")
	iadd("z-liquids-9",		"thermal-water-in-tanker",			"w")
	iadd("z-liquids-9",		"mineral-sludge-in-tanker",			"x")
	iadd("z-liquids-9",		"slag-slurry-in-tanker",			"y")	
	iadd("z-liquids-9",		"liquefied-coal-in-tanker",			"z")
	
	ihide("liquid-chlor-methane-in-tanker")
	
	-- natural evolution
	iadd("z-liquids-10",	"NE_alien_toxin")
	iadd("z-liquids-10",	"NE_alien_toxin-in-tanker")
	iadd("z-liquids-10",	"NE_nutrient-solution-in-tanker")
	iadd("z-liquids-10",	"NE_basic-alien-nutrientant-in-tanker")
	iadd("z-liquids-10",	"NE_enhanced-nutrient-solution-in-tanker")
	iadd("z-liquids-10",	"NE_enhanced-alien-nutrientant-in-tanker")
	iadd("z-liquids-10",	"NE_alien-revitalization-in-tanker")
	iadd("z-liquids-10",	"NE_revitalization-solition-in-tanker")
	
end
do	--[[chemistry]]--
	-- bio industries
	aadd("z-chemistry-2",	"air-cracking",						"d")
	aadd("z-chemistry-2",	"carbon-dioxide",					"e")
	aadd("z-chemistry-2",	"ammonia",							"f")
	
	aadd("z-chemistry-3",	"solid-fuel-from-methylhydrazine",	"e")
	
	aadd("z-chemistry-7",	"hydrogen-sulfide",					"a")
	aadd("z-chemistry-7",	"sulfur-dioxide-from-hydrogen-sulfide","b")
	aadd("z-chemistry-7",	"sulfur-from-sulfur-dioxide",		"c")
	aadd("z-chemistry-7",	"sulfur-dioxide",					"d")
	aadd("z-chemistry-7",	"sulfur-trioxide",					"e")
	aadd("z-chemistry-7",	"disulfuric-acid",					"f")
	aadd("z-chemistry-7",	"sulfuric-acid-from-disulfuric-acid","g")
	
	aadd("z-chemistry-8",	"methanol",							"a")
	aadd("z-chemistry-8",	"methylamine",						"b")
	aadd("z-chemistry-8",	"dimethylamine",					"c")
	aadd("z-chemistry-8",	"methylhydrazine",					"d")
	aadd("z-chemistry-8",	"dimethylhydrazine",				"e")
	aadd("z-chemistry-8",	"dinitrogen-tetroxide",				"f")
	aadd("z-chemistry-8",	"dinitrogen-tetroxide-container",	"g")
	
	-- bio industries
	aadd("z-chemistry-0",	"bi-nitrogen",						"e")
	aadd("z-chemistry-4",	"bi-liquid-co2",					"f")
	iadd("z-chemistry-9",	"bi-cellulose",						"p")
	
	-- rail tanker
	iadd("z-chemistry-9",	"oxygen",							"a")
	iadd("z-chemistry-9",	"chlorine",							"b")
	iadd("z-chemistry-9",	"hydrogen",							"c")
	iadd("z-chemistry-9",	"petroleum-gas",					"e")
	iadd("z-chemistry-9",	"sulfur-dioxide",					"i")
	iadd("z-chemistry-9",	"sulfuric-acid",					"k")
	iadd("z-chemistry-9",	"oxygen-in-tanker",					"a")
	iadd("z-chemistry-9",	"chlorine-in-tanker",				"b")
	iadd("z-chemistry-9",	"hydrogen-in-tanker",				"c")
	iadd("z-chemistry-9",	"nitrogen-in-tanker",				"d")
	iadd("z-chemistry-9",	"petroleum-gas-in-tanker",			"e")
	iadd("z-chemistry-9",	"hydrogen-chloride-in-tanker",		"f")
	iadd("z-chemistry-9",	"nitrogen-dioxide-in-tanker",		"h")
	iadd("z-chemistry-9",	"sulfur-dioxide-in-tanker",			"i")
	iadd("z-chemistry-9",	"nitric-acid-in-tanker",			"j")
	iadd("z-chemistry-9",	"sulfuric-acid-in-tanker",			"k")
	iadd("z-chemistry-9",	"tungstic-acid-in-tanker",			"l")
	iadd("z-chemistry-9",	"sulfuric-nitric-acid-in-tanker",	"m")
	iadd("z-chemistry-9",	"nitroglycerin-in-tanker",			"n")
	iadd("z-chemistry-9",	"glycerol-in-tanker",				"o")
	iadd("z-chemistry-9",	"y_hydrogen-in-tanker",				"q")
	iadd("z-chemistry-9",	"y_syngas_clean-in-tanker",			"r")
	iadd("z-chemistry-9",	"y_syngas_raw-in-tanker",			"s")
		
end
do	--[[automatization]]--
	-- burner filter inserter
	aadd("z-automatization-1",	"burner-filter-inserter",	"a")
	
	-- natural evolution
	aadd("z-automatization-2",	"combat-inserter", 			"a")
	
end
do	--[[transport]]--
	-- belt sorter
	aadd("z-transport-0",			"belt-sorter",				"h")
	
	-- smart splitter
	aadd("z-transport-1",			"smartsplitter",			"h")
	
	-- compound splitter
	aadd("z-transport-2",	"compound-splitter-priority-totem",	"f")
	aadd("z-transport-2",	"cs-express-transport-belt",		"g")
	aadd("z-transport-2",	"compound-splitter-round-robin-totem","h")
	
	aadd("z-transport-3",	"compound-splitter-endcap",			"f")
	aadd("z-transport-3",	"compound-splitter-lane",			"g")
	aadd("z-transport-3",	"compound-splitter-buffer",			"h")
	
	-- hacked splitter
	if i_exist("hacked-splitter") then
		aadd("z-transport-5",	"hacked-splitter",				"a")
		aadd("z-transport-5",	"hacked-fast-splitter",			"b")
		aadd("z-transport-5",	"hacked-express-splitter",		"c")
		aadd("z-transport-5",	"hacked-green-splitter",		"f")
		aadd("z-transport-5",	"hacked-purple-splitter",		"g")
	end
	
	-- flow control
	if allow_changes and i_exist("pipe-elbow") and (i_exist("5d-pipe-mk2") or i_exist("copper-pipe")) then
		
		local new_pipes = {}
		local pipe_type = "storage-tank"
		
		if data.raw["pipe-to-ground"]["pipe-straight"] then pipe_type = "pipe-to-ground" end
		
		new_pipes["pipe-copper-straight"] = {
			item = table.deepcopy(data.raw.item["pipe-straight"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-straight"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-straight"])
		}
		new_pipes["pipe-copper-junction"] = {
			item = table.deepcopy(data.raw.item["pipe-junction"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-junction"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-junction"])
		}
		new_pipes["pipe-copper-elbow"] = {
			item = table.deepcopy(data.raw.item["pipe-elbow"]),
			recipe = table.deepcopy(data.raw.recipe["pipe-elbow"]),
			entity = table.deepcopy(data.raw[pipe_type]["pipe-elbow"])
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
  if pipe_type == "storage-tank" then
	do -- entity.pictures.picture.sheet.filename
		new_pipes[n.cs].entity.pictures.picture.sheet.filename = pic2..n.pcs
		new_pipes[n.cj].entity.pictures.picture.sheet.filename = pic2..n.pcj
		new_pipes[n.ce].entity.pictures.picture.sheet.filename = pic2..n.pce
		new_pipes[n.ss].entity.pictures.picture.sheet.filename = pic2..n.pss
		new_pipes[n.sj].entity.pictures.picture.sheet.filename = pic2..n.psj
		new_pipes[n.se].entity.pictures.picture.sheet.filename = pic2..n.pse
	end
  else
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
		data.raw[pipe_type]["pipe-straight"].minable.result = "pipe-straight"
		data.raw[pipe_type]["pipe-junction"].minable.result = "pipe-junction"
		data.raw[pipe_type]["pipe-elbow"].minable.result = "pipe-elbow"
		
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-straight")
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-junction")
		zgc.t_add_recipe_unlock("logistics-2", "pipe-copper-elbow")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-straight")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-junction")
		zgc.t_add_recipe_unlock("logistics-3", "pipe-steel-elbow")
	end
	if i_exist("pipe-elbow") then ahide("valve") end
	
	aadd("z-transport-6",			"check-valve",				"b")
	aadd("z-transport-6",			"overflow-valve",			"c")
	aadd("z-transport-6",			"express-pump",				"d")
	
  if i_not_exist("5d-pipe-mk2") and i_not_exist("copper-pipe") then
	aadd("z-transport-9",			"pipe-straight",			"d")
	aadd("z-transport-9",			"pipe-junction",			"e")
	aadd("z-transport-9",			"pipe-elbow",				"f")
  elseif allow_changes and i_exist("copper-pipe") and i_not_exist("5d-pipe-mk2") then
	aadd("z-transport-11",			"pipe-straight",			"a")
	aadd("z-transport-11",			"pipe-copper-straight",		"b")
	aadd("z-transport-11",			"pipe-steel-straight",		"c")
	aadd("z-transport-12",			"pipe-junction",			"a")
	aadd("z-transport-12",			"pipe-copper-junction",		"b")
	aadd("z-transport-12",			"pipe-steel-junction",		"c")
	aadd("z-transport-13",			"pipe-elbow",				"a")
	aadd("z-transport-13",			"pipe-copper-elbow",		"b")
	aadd("z-transport-13",			"pipe-steel-elbow",			"c")
  elseif allow_changes then
	aadd("z-transport-10",			"pipe-straight",			"d")
	aadd("z-transport-10",			"pipe-copper-straight",		"e")
	aadd("z-transport-10",			"pipe-steel-straight",		"f")
	aadd("z-transport-11",			"pipe-junction",			"d")
	aadd("z-transport-11",			"pipe-copper-junction",		"e")
	aadd("z-transport-11",			"pipe-steel-junction",		"f")
	aadd("z-transport-12",			"pipe-elbow",				"d")
	aadd("z-transport-12",			"pipe-copper-elbow",		"e")
	aadd("z-transport-12",			"pipe-steel-elbow",			"f")
  else
	aadd("z-transport-9",			"pipe-straight",			"d")
	aadd("z-transport-9",			"pipe-junction",			"e")
	aadd("z-transport-9",			"pipe-elbow",				"f")
  end
	
	if use_graphics_tunnings and i_exist("small-pump-4") or i_exist("5d-small-pump") then
		zgc.set_icon("small-pump","__base__/graphics/icons/small-pump.png")
	end
	
	zgc.t_add_recipe_unlock("logistics", "pipe-straight")
	zgc.t_add_recipe_unlock("logistics", "pipe-junction")
	zgc.t_add_recipe_unlock("logistics", "pipe-elbow")
	
end
do	--[[logistic]]--
	-- upgrade planer
	aadd("z-logistic-0",			"upgrade-builder",			"d")
	
	-- yarm
	aadd("z-logistic-0",			"resource-monitor",			"e")
	
	-- warehousing
	aadd("z-logistic-6",		"storehouse-requester",			"a")
	aadd("z-logistic-6",		"storehouse-passive-provider",	"b")
	aadd("z-logistic-6",		"storehouse-active-provider",	"c")
	aadd("z-logistic-6",		"storehouse-storage",			"d")
	aadd("z-logistic-6",		"warehouse-storage",			"e")
	aadd("z-logistic-6",		"warehouse-requester",			"f")
	aadd("z-logistic-6",		"warehouse-passive-provider",	"g")
	aadd("z-logistic-6",		"warehouse-active-provider",	"h")
	
	-- nixie tubes
	aadd("z-logistic-9",			"nixie-tube",				"e")
	aadd("z-logistic-9",			"nixie-tube-alpha",			"f")
	aadd("z-logistic-9",			"nixie-tube-small",			"g")
	
	-- time tools
	aadd("z-logistic-9",			"clock-combinator",			"h")
	
	-- smart display
	aadd("z-logistic-9",			"smart-display-visible",	"i")
end
do	--[[energy]]--
	-- bio industries
	aadd("z-energy-4",			"bi_bio_Solar_Farm",			"j")
	aadd("z-energy-7",			"bi-big-wooden-pole",			"a")
	
	-- tesseract
	aadd("z-energy-7",			"tesseract",					"j")
	
	-- factorissimo
	aadd("z-energy-9",			"factory-power-provider",		"a")
	aadd("z-energy-9",			"factory-power-receiver",		"b")
	aadd("z-energy-9",			"factory-power-distributor",	"c")
	
end
do	--[[module]]--
	-- science cost tweaker
	aadd("z-module-0",			"sct-lab-1",					"ab")
	aadd("z-module-0",			"sct-lab-2",					"ac")
	aadd("z-module-0",			"sct-lab-3",					"ad")
	aadd("z-module-0",			"sct-lab-4",					"ae")
	
	-- bio industries
	aadd("z-module-0",			"lab-module",					"d")
end
do	--[[defense]]--
	-- natural evolution
	aadd("z-defense-0",			"ne-living-wall",				"h")
	aadd("z-defense-0",			"ne-living-wall-refresh",		"i")
	aadd("z-defense-0",			"ne-living-wall-exhausted",		"j")
	
	-- bio industries
	aadd("z-defense-2",			"bi-wooden-fence",				"a")
	aadd("z-defense-2",			"Bio_Cannon",					"b")
	aadd("z-defense-2",			"Bio_Cannon_Area",				"c")
	aadd("z-defense-2",			"Bio_Cannon_Basic_Ammo",		"d")
	aadd("z-defense-2",			"Bio_Cannon_Poison_Ammo",		"e")
	aadd("z-defense-2",			"Bio_Cannon_Bio_Ammo",			"f")
	
	-- force field
	aadd("z-defense-2",			"forcefield-emitter",			"f")
	aadd("z-defense-2",			"forcefield-tool",				"g")
	
	-- ion cannon
	aadd("z-defense-2",			"orbital-ion-cannon",			"h")
	aadd("z-defense-2",			"ion-cannon-targeter",			"i")
	aadd("z-defense-8",			"auto-targeter",				"g")
	
end
do	--[[intermediate]]--
	-- science cost tweaker
	aadd("z-intermediate-3",		"sct-bm4-plating",       	"01")
	aadd("z-intermediate-3",		"sct-bm4-injector",      	"02")
	aadd("z-intermediate-3",		"sct-bm4-supercoils",    	"03")
	aadd("z-intermediate-3",		"sct-bm4-capbank",       	"04")
	aadd("z-intermediate-3",		"sct-t1-ironcore",       	"05")
	aadd("z-intermediate-3",		"sct-t1-magnet-coils",   	"06")
	aadd("z-intermediate-3",		"sct-t2-reaction-nodes", 	"07")
	aadd("z-intermediate-3",		"sct-t2-instruments",    	"08")
	aadd("z-intermediate-3",		"sct-t2-microcircuits",  	"09")
	aadd("z-intermediate-3",		"sct-t2-micro-wafer",    	"10")
	aadd("z-intermediate-3",		"sct-t2-wafer-stamp",    	"11")
	aadd("z-intermediate-3",		"sct-t3-flash-fuel",     	"12")
	aadd("z-intermediate-3",		"sct-t3-laser-foci",     	"13")
	aadd("z-intermediate-3",		"sct-t3-laser-emitter",  	"14")
	aadd("z-intermediate-3",		"sct-t3-femto-lasers",   	"15")
	aadd("z-intermediate-3",		"sct-t3-atomic-sensors", 	"16")
	aadd("z-intermediate-3",		"sct-t4-bioprocessor",   	"17")
	aadd("z-intermediate-3",		"sct-t4-overclocker",    	"18")
	aadd("z-intermediate-3",		"sct-bm4-part1",         	"19")
	aadd("z-intermediate-3",		"sct-bm4-part1a",        	"20")
	aadd("z-intermediate-3",		"sct-bm4-part1b",        	"21")
	aadd("z-intermediate-3",		"sct-bm4-part1c",        	"22")
	aadd("z-intermediate-3",		"sct-bm4-part2",         	"23")
	aadd("z-intermediate-3",		"sct-bm4-part2a",        	"24")
	aadd("z-intermediate-3",		"sct-bm4-part2b",        	"25")
	aadd("z-intermediate-3",		"sct-bm4-part2c",        	"26")
	aadd("z-intermediate-3",		"sct-bm4-part3",         	"27")
	aadd("z-intermediate-3",		"sct-bm4-part3a",        	"28")
	aadd("z-intermediate-3",		"sct-bm4-part3b",        	"29")
	aadd("z-intermediate-3",		"sct-bm4-part3c",        	"30")
	aadd("z-intermediate-3",		"sct-bm4-part3d",        	"31")
	aadd("z-intermediate-3",		"sct-bm4-part4",         	"32")
	aadd("z-intermediate-3",		"sct-bm4-part4a",        	"33")
	aadd("z-intermediate-3",		"sct-bm4-part4b",        	"34")
	aadd("z-intermediate-3",		"sct-bm4-part4c",        	"35")
	aadd("z-intermediate-3",		"sct-bm4-part4d",        	"36")
	aadd("z-intermediate-3",		"sct-bm4-part5",         	"37")
	aadd("z-intermediate-3",		"sct-bm4-part5a",        	"38")
	aadd("z-intermediate-3",		"sct-bm4-part5b",        	"39")
	aadd("z-intermediate-3",		"sct-bm4-part5c",        	"40")
	aadd("z-intermediate-3",		"sct-bm4-part5d",        	"41")
	
	-- bio industries
	aadd("z-intermediate-6",		"bi-seedling",				"h")
	aadd("z-intermediate-6",		"fertiliser",				"i")
	aadd("z-intermediate-6",		"bi-fertiliser",			"i")
	aadd("z-intermediate-6",		"bi-fertiliser-2",			"j")
	aadd("z-intermediate-6",		"bi-adv-fertiliser",		"k")
	
	if allow_changes and i_exist("bi_bio_farm") then
		if i_exist("bob-seedling") then
			rhide("bi-seedling")
		else rhide("bob-seedling") end
		ahide("bob-fertiliser")
		switch_tech("bob-fertiliser")
	end
	
	-- tree farm
	aadd("z-intermediate-6",		"tf-germling",				"l")
	aadd("z-intermediate-6",		"tf-coral-seed",			"m")
	
end
do	--[[trains-vehicles]]--
	-- bio industries
	aadd("z-trains-3",			"bi-rail-wood",					"b")
	aadd("z-trains-3",			"bi-straight-rail-wood",		"b")
	
	-- tankwerkz
	aadd("z-vehicles-1",		"hydra-tank",					"f")
	aadd("z-vehicles-1",		"light-tank",					"g")
	aadd("z-vehicles-1",		"flame-tank",					"h")
	aadd("z-vehicles-1",		"heavy-tank",					"i")
	
	aadd("z-vehicles-5",		"hiex-cannon-shell",			"a")
	aadd("z-vehicles-5",		"ap-cannon-shell",				"c")
	aadd("z-vehicles-5",		"heavy-mg-ammo",				"d")
	aadd("z-vehicles-5",		"hydra-rocket",					"e")
	aadd("z-vehicles-5",		"tank-flame-thrower-ammo",		"f")
	aadd("z-vehicles-5",		"heavy-mg",						"g")
	aadd("z-vehicles-5",		"hydra-rocket-launcher",		"h")
	aadd("z-vehicles-5",		"flame-tank-flame-thrower",		"i")
	
	-- aircraft
	aadd("z-vehicles-2",		"cargo-plane",					"d")
	aadd("z-vehicles-2",		"flying-fortress",				"e")
	aadd("z-vehicles-2",		"gunship",						"f")
	aadd("z-vehicles-2",		"jet",							"g")
	
	aadd("z-vehicles-5",		"high-explosive-cannon-shell",	"b")
end
do	--[[armor]]--
	-- bio industries
	aadd("z-armor-1",			"Biological-bullet-magazine",	"bb")
	
	-- afraid of dark
	aadd("z-armor-5",			"perfect-night-glasses",		"g")
	
	-- teleportation
	aadd("z-armor-5",			"teleportation-portal",			"h")
	aadd("z-armor-5",			"teleportation-equipment",		"i")
	aadd("z-armor-5",			"teleportation-beacon",			"j")
	
end
do	--[[weaponry]]--
	-- explosive termites
	aadd("z-weaponry-0",		"explosive-termites",			"l")
	aadd("z-weaponry-0",		"alien-explosive-termites",		"m")
	
end
do	--[[decorative]]--
	-- landfill
	aadd("z-decorative-0",		"water-bomb",					"a")
	aadd("z-decorative-0",		"water-be-gone",				"a")
	
	-- color coding
	aadd("z-decorative-1",		"fire-hazard-concrete",			"j")
	
	-- afraid of dark
	aadd("z-decorative-4",		"balloon-light",				"j")
	
	aadd("z-decorative-2",		"concrete-red",					"a")
	aadd("z-decorative-2",		"concrete-orange",				"b")
	aadd("z-decorative-2",		"concrete-yellow",				"c")
	aadd("z-decorative-2",		"concrete-green",				"d")
	aadd("z-decorative-2",		"concrete-cyan",				"e")
	aadd("z-decorative-2",		"concrete-blue",				"f")
	aadd("z-decorative-2",		"concrete-purple",				"g")
	aadd("z-decorative-2",		"concrete-magenta",				"h")
	aadd("z-decorative-2",		"concrete-white",				"i")
	aadd("z-decorative-2",		"concrete-black",				"j")
	
	aadd("z-decorative-3",		"small-lamp-red",				"a")
	aadd("z-decorative-3",		"small-lamp-orange",			"b")
	aadd("z-decorative-3",		"small-lamp-yellow",			"c")
	aadd("z-decorative-3",		"small-lamp-green",				"d")
	aadd("z-decorative-3",		"small-lamp-cyan",				"e")
	aadd("z-decorative-3",		"small-lamp-blue",				"f")
	aadd("z-decorative-3",		"small-lamp-purple",			"g")
	aadd("z-decorative-3",		"small-lamp-magenta",			"h")
	aadd("z-decorative-3",		"small-lamp-white",				"i")
	aadd("z-decorative-3",		"small-lamp-black",				"j")
	
	-- concrete lamppost
	aadd("z-decorative-8",		"concrete-lamp",				"i")
	aadd("z-decorative-8",		"concrete-lamppost",			"j")
	
end
do	--[[alien]]--
	-- natural evolution
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "Natural-Evolution" then v.group = "zgc-alien" end
	end
	
	if i_exist("attractor-on") then
		aadd("biters",				"attractor-on",				"z")
		aadd("spitters",			"attractor-off",			"z")
		aadd("Natural-Evolution",	"Building_Materials",		"0 a")
	end
	
end
do	--[[atom]]--
	
	-- uranium power
	if i_exist("uranium-hexafluoride") then
		
		aadd("uranium-energy-conversion",	"nuclear-fission-reactor-3-by-3",	"g")
		aadd("uranium-energy-conversion",	"nuclear-fission-reactor-5-by-5",	"h")
		
		aadd("uranium-ammo",				"nuclear-fission-reactor-chest-9",	"g")
		aadd("uranium-ammo",				"nuclear-fission-reactor-chest-25",	"h")

		zgc.add_main_group("atom")
		for _,v in pairs(data.raw["item-subgroup"]) do
			if v.group == "uranium" then v.group = "zgc-atom" end
		end
	end
	
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
	aadd("z-other-0",			"mjollnir",						"a")
	aadd("z-other-0",			"tm-solar-panel",				"b")
	aadd("z-other-0",			"tm-electric-pole",				"c")
	
	-- magnet
	aadd("z-other-0",			"magnet",						"d")
	
	-- spawn belt
	aadd("z-other-1",			"spawn-belt",					"a")
	aadd("z-other-1",			"void-belt",					"b")
	
	-- belt sorter
	aadd("z-other-1",			"belt-sorter-everythingelse",	"c")
	
	if allow_changes and z_balance.other and data.raw.recipe["spawn-belt"] then
		data.raw.recipe["spawn-belt"].enabled = "false"
		data.raw.recipe["spawn-belt"].hidden = "false"
		data.raw.recipe["void-belt"].enabled = "false"
		data.raw.recipe["void-belt"].hidden = "false"
		zgc.t_add_recipe_unlock("logistics-3", "spawn-belt")
		zgc.t_add_recipe_unlock("logistics-3", "void-belt")
	end
	
	-- black market
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "black-market-group" then v.group = "zgc-other" end
	end
	aadd("z-other-2",			"ucoin",						"a")
	
	-- signals
	if data.raw["item-group"]["signals"] then data.raw["item-group"]["signals"].icon = "__ZGroupChange__/graphics/icons/cat/signals.png" end
	
	-- recycle	
	local m = {
	  __index = function (data)
		if groups_supported and not groups_supported["zgc-alien"] then 
			groups_supported["zgc-alien"]			= "__ZGroupChange__/graphics/icons/cat/r/r_alien.png"
			groups_supported["zgc-armor"]			= "__ZGroupChange__/graphics/icons/cat/r/r_armor.png"
			groups_supported["zgc-atom"]			= "__ZGroupChange__/graphics/icons/cat/r/r_atom.png"
			groups_supported["zgc-automatization"]	= "__ZGroupChange__/graphics/icons/cat/r/r_automatization.png"
			groups_supported["zgc-chemistry"]		= "__ZGroupChange__/graphics/icons/cat/r/r_chemistry.png"
			groups_supported["zgc-decorative"]		= "__ZGroupChange__/graphics/icons/cat/r/r_decorative.png"
			groups_supported["zgc-defense"]			= "__ZGroupChange__/graphics/icons/cat/r/r_defense.png"
			groups_supported["zgc-energy"]			= "__ZGroupChange__/graphics/icons/cat/r/r_energy.png"
			groups_supported["zgc-engines"]			= "__ZGroupChange__/graphics/icons/cat/r/r_engines.png"
			groups_supported["zgc-gathering"]		= "__ZGroupChange__/graphics/icons/cat/r/r_gathering.png"
			groups_supported["zgc-intermediate"]	= "__ZGroupChange__/graphics/icons/cat/r/r_intermediate.png"
			groups_supported["zgc-liquids"]			= "__ZGroupChange__/graphics/icons/cat/r/r_liquids.png"
			groups_supported["zgc-logistic"]		= "__ZGroupChange__/graphics/icons/cat/r/r_logistic.png"
			groups_supported["zgc-module"]			= "__ZGroupChange__/graphics/icons/cat/r/r_module.png"
			groups_supported["zgc-other"]			= "__ZGroupChange__/graphics/icons/cat/r/r_other.png"
			groups_supported["zgc-parts"]			= "__ZGroupChange__/graphics/icons/cat/r/r_parts.png"
			groups_supported["zgc-plates"]			= "__ZGroupChange__/graphics/icons/cat/r/r_plates.png"
			groups_supported["zgc-production"]		= "__ZGroupChange__/graphics/icons/cat/r/r_production.png"
			groups_supported["zgc-refining"]		= "__ZGroupChange__/graphics/icons/cat/r/r_refining.png"
			groups_supported["zgc-resources"]		= "__ZGroupChange__/graphics/icons/cat/r/r_resources.png"
			groups_supported["zgc-trains-vehicles"]	= "__ZGroupChange__/graphics/icons/cat/r/r_trains-vehicles.png"
			groups_supported["zgc-transport"]		= "__ZGroupChange__/graphics/icons/cat/r/r_transport.png"
			groups_supported["zgc-weaponry"]		= "__ZGroupChange__/graphics/icons/cat/r/r_weaponry.png"
			groups_supported["zgc-youki"]			= "__ZGroupChange__/graphics/icons/cat/r/r_youki.png"
		end
		return data
	  end
	}
	if not dry411smods then dry411smods = {} end
	setmetatable(dry411smods, m)
	
end


