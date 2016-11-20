local allow_changes = z_balance.dim

do	--[[gathering]]--
	aadd("z-gathering-0",		"5d-repair-pack-2",				"j")
	
	aadd("z-gathering-1",		"5d-iron-chest-mk2",			"d")
	aadd("z-gathering-1",		"5d-iron-chest-mk2-2",			"e")
	aadd("z-gathering-1",		"5d-iron-chest-mk3",			"f")
	aadd("z-gathering-1",		"5d-iron-chest-mk2-3",			"g")
	
	aadd("z-gathering-3",		"5d-storage-tank",				"b")
	
	aadd("z-gathering-4",		"5d-mining-drill-speed-1",		"b")
	aadd("z-gathering-4",		"5d-mining-drill-speed-2",		"c")
	aadd("z-gathering-4",		"5d-mining-drill-speed-3",		"d")
	
	aadd("z-gathering-6",		"5d-mining-drill-range-1",		"b")
	aadd("z-gathering-6",		"5d-mining-drill-range-2",		"c")
	aadd("z-gathering-6",		"5d-mining-drill-range-3",		"d")
	
	aadd("z-gathering-8",		"5d-offshore-pump",				"b")
	aadd("z-gathering-8",		"5d-offshore-pump-2",			"c")
	aadd("z-gathering-8",		"5d-pumpjack-2",				"f")
	aadd("z-gathering-8",		"5d-pumpjack-3",				"g")
	
	aadd("z-gathering-10",		"5d-small-pump",				"b")
	aadd("z-gathering-10",		"5d-small-pump-2",				"c")
	
	if use_graphics_tunnings then
		zgc.set_icon("5d-repair-pack-2","__ZGroupChange__/graphics/icons/repairpack-2.png")
	end
	
end
do	--[[production]]--
	aadd("z-production-0",		"5d-masher",				"b")
	aadd("z-production-0",		"5d-masher-2",				"c")
	
	aadd("z-production-2",		"5d-furnace",				"a")
	aadd("z-production-2",		"electric-furnace",			"b")
	aadd("z-production-2",		"5d-electric-furnace",		"c")
	
	aadd("z-production-4",		"assembling-machine-1",		"a")
	aadd("z-production-4",		"assembling-machine-2",		"b")
	aadd("z-production-4",		"assembling-machine-3",		"c")
	aadd("z-production-4",		"5d-assembling-machine-4",	"d")
	aadd("z-production-4",		"5d-assembling-machine-5",	"e")
	
	aadd("z-production-6",		"5d-oil-refinery-2",		"e")
	aadd("z-production-6",		"5d-oil-refinery-3",		"f")
	
	aadd("z-production-7",		"5d-chemical-plant-2",		"e")
	aadd("z-production-7",		"5d-chemical-plant-3",		"f")
	
	
	if use_graphics_tunnings then
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
	end

	if use_graphics_tunnings then
		zgc.set_icon("assembling-machine-1", "__ZGroupChange__/graphics/icons/assembling-machine-1.png")
		zgc.set_icon("assembling-machine-2", "__ZGroupChange__/graphics/icons/assembling-machine-2.png")
		zgc.set_icon("assembling-machine-3", "__ZGroupChange__/graphics/icons/assembling-machine-3.png")
		zgc.set_icon("5d-assembling-machine-4", "__ZGroupChange__/graphics/icons/assembling-machine-4.png")
		zgc.set_icon("5d-assembling-machine-5", "__ZGroupChange__/graphics/icons/assembling-machine-5.png")
	end
	
end
do	--[[resources]]--
	aadd("z-resources-0",		"raw-wood",						"a")
	aadd("z-resources-0",		"wood",							"b")
	aadd("z-resources-0",		"coal",							"c")
	aadd("z-resources-0",		"stone",						"e")
	aadd("z-resources-0",		"sulfur",						"f")
	
	aadd("z-resources-3",		"lead-ore",						"e")
	aadd("z-resources-3",		"tin-ore",						"f")
	aadd("z-resources-3",		"zinc-ore",						"g")
	aadd("z-resources-3",		"bauxite-ore",					"h")
	aadd("z-resources-3",		"gold-ore",						"i")
	
	aadd("z-resources-4",		"5d-iron-dust",					"a")
	aadd("z-resources-4",		"5d-copper-dust",				"b")
	aadd("z-resources-4",		"5d-lead-dust",					"c")
	aadd("z-resources-4",		"5d-tin-dust",					"d")
	aadd("z-resources-4",		"5d-zinc-dust",					"e")
	aadd("z-resources-4",		"5d-aluminium-dust",			"f")
	aadd("z-resources-4",		"5d-gold-dust",					"g")
	
	if z_balance.add_dust then
		zgc.add_newRessource_min_max("iron-ore",	"5d-iron-dust",		1,2,0.2)
		zgc.add_newRessource_min_max("copper-ore",	"5d-copper-dust",	1,2,0.2)
		zgc.add_newRessource_min_max("lead-ore",	"5d-lead-dust",		1,1,0.2)
		zgc.add_newRessource_min_max("tin-ore",		"5d-tin-dust",		1,1,0.2)
		zgc.add_newRessource_min_max("zinc-ore",	"5d-zinc-dust",		1,2,0.1)
		zgc.add_newRessource_min_max("bauxite-ore",	"5d-aluminium-dust",1,2,0.1)
		zgc.add_newRessource_min_max("gold-ore",	"5d-gold-dust",		1,1,0.1)
	end
end
do	--[[plates]]--
	aadd("z-plates-0",			"lead-plate",				"c")
	aadd("z-plates-0",			"5d-tin-plate",				"d")
	aadd("z-plates-0",			"zinc-plate",				"e")
	aadd("z-plates-0",			"aluminium-plate",			"f")
	aadd("z-plates-0",			"gold-plate",				"g")
	
	aadd("z-plates-1",			"5d-iron-plate",			"a")
	aadd("z-plates-1",			"5d-copper-plate",			"b")
	aadd("z-plates-1",			"5d-lead-plate-2",			"c")
	aadd("z-plates-1",			"5d-tin-plate-2",			"d")
	aadd("z-plates-1",			"5d-zinc-plate-2",			"e")
	aadd("z-plates-1",			"5d-aluminium-plate-2",		"f")
	aadd("z-plates-1",			"5d-gold-plate-2",			"g")
	
	aadd("z-plates-2",			"steel-plate",				"c")
	
end
do	--[[automatization]]--
  if i_exist("5d-basic-inserter-left-90d") then
	aadd("z-automatization-0",	"burner-inserter",				"a")--
	aadd("z-automatization-0",	"inserter",						"b")--
	aadd("z-automatization-0",	"long-handed-inserter",			"c")--
	aadd("z-automatization-0",	"5d-inserter-speed1-range3",			"d")
	aadd("z-automatization-0",	"5d-inserter-speed1-range1-close",		"e")
	aadd("z-automatization-0",	"5d-inserter-speed1-range2-close",		"f")
	aadd("z-automatization-0",	"5d-inserter-speed1-range3-close",		"g")
	
	aadd("z-automatization-1",	"filter-inserter",				"a")--
	aadd("z-automatization-1",	"5d-inserter-smart-speed2-range2",		"b")
	aadd("z-automatization-1",	"5d-inserter-smart-speed3-range1",		"c")
	aadd("z-automatization-1",	"5d-inserter-smart-speed2-range1-close","d")
	aadd("z-automatization-1",	"5d-inserter-smart-speed2-range2-close","e")
	aadd("z-automatization-1",	"5d-inserter-smart-speed3-range1-close","f")
	
	
	aadd("z-automatization-2",	"fast-inserter",				"a")--
	aadd("z-automatization-2",	"5d-inserter-speed2-range2",			"b")
	aadd("z-automatization-2",	"5d-inserter-speed2-range3",			"c")
	aadd("z-automatization-2",	"5d-inserter-speed2-range1-close",		"d")
	aadd("z-automatization-2",	"5d-inserter-speed2-range2-close",		"e")
	aadd("z-automatization-2",	"5d-inserter-speed2-range3-close",		"f")
	aadd("z-automatization-2",	"stack-inserter",				"g")--
	aadd("z-automatization-2",	"stack-filter-inserter",		"h")--
	
	aadd("z-automatization-3",	"5d-inserter-speed3-range1",			"a")
	aadd("z-automatization-3",	"5d-inserter-speed3-range2",			"b")
	aadd("z-automatization-3",	"5d-inserter-speed3-range3",			"c")
	aadd("z-automatization-3",	"5d-inserter-speed3-range1-close",		"d")
	aadd("z-automatization-3",	"5d-inserter-speed3-range2-close",		"e")
	aadd("z-automatization-3",	"5d-inserter-speed3-range3-close",		"f")
	
	aadd("z-automatization-4",	"5d-basic-inserter-left-90d",			"a")
	aadd("z-automatization-4",	"5d-fast-inserter-left-90d",			"b")
	aadd("z-automatization-4",	"5d-extreme-inserter-left-90d",			"c")
	aadd("z-automatization-4",	"5d-basic-inserter-left-90d-close",		"d")
	aadd("z-automatization-4",	"5d-fast-inserter-left-90d-close",		"e")
	aadd("z-automatization-4",	"5d-extreme-inserter-left-90d-close",	"f")
	                                                           
	aadd("z-automatization-5",	"5d-basic-inserter-right-90d",			"a")
	aadd("z-automatization-5",	"5d-fast-inserter-right-90d",			"b")
	aadd("z-automatization-5",	"5d-extreme-inserter-right-90d",		"c")
	aadd("z-automatization-5",	"5d-basic-inserter-right-90d-close",	"d")
	aadd("z-automatization-5",	"5d-fast-inserter-right-90d-close",		"e")
	aadd("z-automatization-5",	"5d-extreme-inserter-right-90d-close",	"f")
  end
	
end
do	--[[transport]]--
	aadd("z-transport-0",		"5d-mk4-transport-belt",				"d")
	aadd("z-transport-0",		"5d-mk5-transport-belt",				"e")
	
	aadd("z-transport-1",		"5d-mk4-transport-belt-to-ground",		"d")
	aadd("z-transport-1",		"5d-mk5-transport-belt-to-ground",		"e")
	
	aadd("z-transport-2",		"5d-mk1-transport-belt-to-ground-30",	"a")
	aadd("z-transport-2",		"5d-mk2-transport-belt-to-ground-30",	"b")
	aadd("z-transport-2",		"5d-mk3-transport-belt-to-ground-30",	"c")
	aadd("z-transport-2",		"5d-mk4-transport-belt-to-ground-30",	"d")
	aadd("z-transport-2",		"5d-mk5-transport-belt-to-ground-30",	"e")
	
	aadd("z-transport-3",		"5d-mk1-transport-belt-to-ground-50",	"a")
	aadd("z-transport-3",		"5d-mk2-transport-belt-to-ground-50",	"b")
	aadd("z-transport-3",		"5d-mk3-transport-belt-to-ground-50",	"c")
	aadd("z-transport-3",		"5d-mk4-transport-belt-to-ground-50",	"d")
	aadd("z-transport-3",		"5d-mk5-transport-belt-to-ground-50",	"e")
	
	aadd("z-transport-4",		"5d-mk4-splitter",						"d")
	aadd("z-transport-4",		"5d-mk5-splitter",						"e")
	
	aadd("z-transport-9",		"5d-pipe-mk2",							"b")
	aadd("z-transport-9",		"5d-pipe-mk3",							"c")
	
	aadd("z-transport-10",		"5d-pipe-to-ground-mk2",				"b")
	aadd("z-transport-10",		"5d-pipe-to-ground-mk3",				"c")
	
	aadd("z-transport-11",		"5d-pipe-to-ground-mk1-30",				"a")
	aadd("z-transport-11",		"5d-pipe-to-ground-mk2-30",				"b")
	aadd("z-transport-11",		"5d-pipe-to-ground-mk3-30",				"c")
	
	aadd("z-transport-12",		"5d-pipe-to-ground-mk1-50",				"a")
	aadd("z-transport-12",		"5d-pipe-to-ground-mk2-50",				"b")
	aadd("z-transport-12",		"5d-pipe-to-ground-mk3-50",				"c")
	
	if use_graphics_tunnings then
		local function set_sprite(pic,mk)
			local pic = pic or "u_line_y"
			local mk = mk or ""
			return {
				filename = "__ZGroupChange__/graphics/entity/"..pic..mk..".png",
				priority = "high",
				width = 64,
				height = 64,
				x = 64,
				scale = 0.5
			}
		end
		
		if i_exist("5d-mk4-transport-belt-to-ground") then
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].underground_sprite = set_sprite("u_line_g")
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
		end
		if i_exist("5d-mk5-transport-belt-to-ground") then
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].underground_sprite = set_sprite("u_line_w")
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
		end
			
		if i_exist("5d-mk1-transport-belt-to-ground-30") then
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-30"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-30"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-30"].underground_sprite = set_sprite("u_line_y","_3") end
		if i_exist("5d-mk2-transport-belt-to-ground-30") then
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-30"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-30"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-30"].underground_sprite = set_sprite("u_line_r","_3") end
		if i_exist("5d-mk3-transport-belt-to-ground-30") then
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-30"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-30"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-30"].underground_sprite = set_sprite("u_line_b","_3") end
		if i_exist("5d-mk4-transport-belt-to-ground-30") then
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].underground_sprite = set_sprite("u_line_g","_3")
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-30"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
		end
		if i_exist("5d-mk5-transport-belt-to-ground-30") then
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].underground_sprite = set_sprite("u_line_w","_3")
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-30"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
		end
			
		if i_exist("5d-mk1-transport-belt-to-ground-50") then
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-50"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-50"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk1-transport-belt-to-ground-50"].underground_sprite = set_sprite("u_line_y","_5") end
		if i_exist("5d-mk2-transport-belt-to-ground-50") then
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-50"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-50"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk2-transport-belt-to-ground-50"].underground_sprite = set_sprite("u_line_r","_5") end
		if i_exist("5d-mk3-transport-belt-to-ground-50") then
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-50"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-50"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk3-transport-belt-to-ground-50"].underground_sprite = set_sprite("u_line_b","_5") end
		if i_exist("5d-mk4-transport-belt-to-ground-50") then
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].underground_sprite = set_sprite("u_line_g","_5")
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
			data.raw["underground-belt"]["5d-mk4-transport-belt-to-ground-50"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_4.png"
		end
		if i_exist("5d-mk5-transport-belt-to-ground-50") then
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].collision_box = {{-0.4, -0.4}, {0.4, 0.4}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].selection_box = {{-0.5, -0.5}, {0.5, 0.5}}
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].underground_sprite = set_sprite("u_line_w","_5")
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].structure.direction_in.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
			data.raw["underground-belt"]["5d-mk5-transport-belt-to-ground-50"].structure.direction_out.sheet.filename = "__ZGroupChange__/graphics/entity/5d_gr_5.png"
		end

		if i_exist("5d-pipe-to-ground-mk2") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2"].underground_sprite = set_sprite("u_pipe","_3")
		end
		if i_exist("5d-pipe-to-ground-mk3") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3"].underground_sprite = set_sprite("u_pipe","_5")
		end
		
		if i_exist("5d-pipe-to-ground-mk1-30") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk1-30"].underground_sprite = set_sprite("u_pipe","_1")
		end
		if i_exist("5d-pipe-to-ground-mk2-30") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2-30"].underground_sprite = set_sprite("u_pipe","_3")
		end
		if i_exist("5d-pipe-to-ground-mk3-30") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3-30"].underground_sprite = set_sprite("u_pipe","_5")
		end
		
		if i_exist("5d-pipe-to-ground-mk1-50") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk1-50"].underground_sprite = set_sprite("u_pipe","_1")
		end
		if i_exist("5d-pipe-to-ground-mk2-50") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk2-50"].underground_sprite = set_sprite("u_pipe","_3")
		end
		if i_exist("5d-pipe-to-ground-mk3-50") then
			data.raw["pipe-to-ground"]["5d-pipe-to-ground-mk3-50"].underground_sprite = set_sprite("u_pipe","_5")
		end
	end
	
	if i_exist("5d-mk4-splitter") then
		data.raw.recipe["fast-transport-belt"].ingredients = {}
		data.raw.recipe["fast-transport-belt"].ingredients = {
			{"iron-gear-wheel", 5},
			{"transport-belt", 1}
		}
		data.raw.recipe["underground-belt"].ingredients = {}
		data.raw.recipe["underground-belt"].ingredients = {
			{"iron-plate", 10},
			{"transport-belt", 5}
		}
		data.raw.recipe["fast-underground-belt"].ingredients = {}
		data.raw.recipe["fast-underground-belt"].ingredients = {
			{"iron-gear-wheel", 20},
			{"fast-transport-belt", 5}
		}data.raw.recipe["splitter"].ingredients = {}
		data.raw.recipe["splitter"].ingredients = {
			{"electronic-circuit", 5},
			{"iron-plate", 5},
			{"transport-belt", 4}
		}
		data.raw.recipe["fast-splitter"].ingredients = {}
		data.raw.recipe["fast-splitter"].ingredients = {
			{"electronic-circuit", 5},
			{"iron-gear-wheel", 5},
			{"fast-transport-belt", 4}
		}
		if i_exist("5d-tin-gear-wheel") then
			data.raw.recipe["express-underground-belt"].ingredients = {}
			data.raw.recipe["express-underground-belt"].ingredients = {
				{"5d-tin-gear-wheel", 20},
				{"express-transport-belt", 5}
			}
			data.raw.recipe["5d-mk4-transport-belt-to-ground"].ingredients = {}
			data.raw.recipe["5d-mk4-transport-belt-to-ground"].ingredients = {
				{"5d-zinc-gear-wheel", 20},
				{"5d-mk4-transport-belt", 5}
			}
			data.raw.recipe["5d-mk5-transport-belt-to-ground"].ingredients = {}
			data.raw.recipe["5d-mk5-transport-belt-to-ground"].ingredients = {
				{"5d-aluminium-gear-wheel", 20},
				{"5d-mk5-transport-belt", 5}
			}
			data.raw.recipe["express-splitter"].ingredients = {}
			data.raw.recipe["express-splitter"].ingredients = {
				{"advanced-circuit", 5},
				{"5d-tin-gear-wheel", 5},
				{"express-transport-belt", 4},
				{type="fluid", name="lubricant", amount=4}
			}
			data.raw.recipe["5d-mk4-splitter"].ingredients = {}
			data.raw.recipe["5d-mk4-splitter"].category = "crafting-with-fluid"
			data.raw.recipe["5d-mk4-splitter"].ingredients = {
				{"advanced-circuit", 5},
				{"5d-zinc-gear-wheel", 5},
				{"5d-mk4-transport-belt", 4},
				{type="fluid", name="lubricant", amount=2}
			}
			data.raw.recipe["5d-mk5-splitter"].ingredients = {}
			data.raw.recipe["5d-mk5-splitter"].category = "crafting-with-fluid"
			data.raw.recipe["5d-mk5-splitter"].ingredients = {
				{"advanced-circuit", 5},
				{"5d-aluminium-gear-wheel", 5},
				{"5d-mk5-transport-belt", 4},
				{type="fluid", name="lubricant", amount=2}
			}
		end
		
	end
	
end
do	--[[logistic]]--
	aadd("z-logistic-1",		"5d-roboport-2",					"b")
	
	aadd("z-logistic-1",		"5d-roboport-2",					"b")
	aadd("z-logistic-1",		"5d-logistic-robot-2",				"d")
	aadd("z-logistic-1",		"5d-construction-robot-2",			"f")
	
	aadd("z-logistic-3",		"5d-storage",						"a")
	aadd("z-logistic-3",		"5d-requester",						"b")
	aadd("z-logistic-3",		"5d-passive",						"c")
	aadd("z-logistic-3",		"5d-active",						"d")
	
	aadd("z-logistic-8",		"5d-aluminium-wire",				"d")
	aadd("z-logistic-8",		"5d-gold-wire",						"e")
	
	if use_graphics_tunnings then
		zgc.set_icon("5d-roboport-2", "__ZGroupChange__/graphics/icons/roboport2.png")
		
		if data.raw["roboport"]["5d-roboport-2"] then
			data.raw["roboport"]["5d-roboport-2"].base = {
				filename = "__ZGroupChange__/graphics/entity/roboport2-base.png",
				width = 143,
				height = 135,
				shift = {0.5,0.25}
			}
			data.raw["roboport"]["5d-roboport-2"].base_patch = {
				filename = "__ZGroupChange__/graphics/entity/roboport2-base-patch.png",
				priority = "medium",
				width = 69,
				height = 50,
				frame_count = 1,
				shift = {0.03125,0.203125}
			}
			data.raw["roboport"]["5d-roboport-2"].door_animation_up = {
				filename = "__ZGroupChange__/graphics/entity/roboport2-door-up.png",
				priority = "medium",
				width = 52,
				height = 20,
				frame_count = 16,
				shift = {0.015625,-0.890625}
			}
			data.raw["roboport"]["5d-roboport-2"].door_animation_down =  {
				filename = "__ZGroupChange__/graphics/entity/roboport2-door-down.png",
				priority = "medium",
				width = 52,
				height = 22,
				frame_count = 16,
				shift = {0.015625,-0.234375}
			}
			data.raw["roboport"]["5d-roboport-2"].recharging_animation = {
				filename = "__ZGroupChange__/graphics/entity/roboport2-recharging.png",
				priority = "high",
				width = 37,
				height = 35,
				frame_count = 16,
				scale = 1.5,
				animation_speed = 0.5
			}
		end
	end
	if data.raw.recipe["5d-active"] and data.raw.recipe["5d-requester"] then
		data:extend({
			{
				type = "technology",
				name = "logistic-system-2",
				icon = "__base__/graphics/technology/logistic-system.png",
				effects =
				{
					{
						type = "unlock-recipe",
						recipe = "5d-active"
					},
					{
						type = "unlock-recipe",
						recipe = "5d-requester"
					}
				},
				prerequisites = { "logistic-system"},
				unit = {
					count = 150,
					ingredients =
					{
						{"science-pack-1", 1},
						{"science-pack-2", 1},
						{"science-pack-3", 1}
					},
					time = 30
				},
				order = "c-k-d",
			},
		})
	end

end
do	--[[energy]]--
	aadd("z-energy-1",			"5d-boiler",					"e")
	aadd("z-energy-1",			"5d-boiler-2",					"f")
	
	aadd("z-energy-2",			"5d-steam-engine-2",			"d")
	aadd("z-energy-2",			"5d-steam-engine-3",			"e")
	
	aadd("z-energy-3",			"5d-basic-accumulator-2",		"b")
	aadd("z-energy-3",			"5d-basic-accumulator-3",		"c")
	
	aadd("z-energy-4",			"5d-solar-panel-2",				"c")
	aadd("z-energy-4",			"5d-solar-panel-3",				"e")
	
	aadd("z-energy-7",			"5d-electric-pole-4",			"f")
	
	aadd("z-energy-8",			"5d-electric-pole-5",			"i")
	aadd("z-energy-8",			"5d-electric-pole-6",			"j")
	
end
do	--[[defense]]--
	aadd("z-defense-0",			"5d-metal-wall",				"c")
	aadd("z-defense-0",			"5d-gate",						"f")
	
	if i_exist("bob-gun-turret-2") then
		aadd("z-defense-4",		"5d-gun-turret-small",			"b")
		aadd("z-defense-4",		"5d-gun-turret-big",			"c")
		
		aadd("z-defense-5",		"5d-laser-turret-small",		"b")
		aadd("z-defense-5",		"5d-laser-turret-big",			"c")
	end
	
end
do	--[[intermediate]]--
	aadd("z-intermediate-1",		"5d-gold-circuit",				"i")
	
	aadd("z-intermediate-4",		"iron-gear-wheel",				"a")
	aadd("z-intermediate-4",		"5d-tin-gear-wheel",			"b")
	aadd("z-intermediate-4",		"5d-zinc-gear-wheel",			"c")
	aadd("z-intermediate-4",		"5d-aluminium-gear-wheel",		"d")
	
	if allow_changes and data.raw.recipe["5d-gold-circuit"] then
		data.raw.recipe["5d-gold-circuit"].ingredients =
		{
			{"advanced-circuit", 2},
			{"5d-tin-plate", 5},
			{"5d-gold-wire", 4},
		}
		zgc.add_recipe_to_tech("advanced-electronics", "5d-gold-circuit")
	end
end
do	--[[module]]--
	aadd("z-module-0",			"5d-welder",					"i")
	
	aadd("z-module-4",			"5d-speed-module-4",			"d")
	aadd("z-module-4",			"5d-speed-module-5",			"e")
	
	aadd("z-module-5",			"5d-productivity-module-4",		"d")
	aadd("z-module-5",			"5d-productivity-module-5",		"e")
	
	aadd("z-module-6",			"5d-effectivity-module-4",		"d")
	aadd("z-module-6",			"5d-effectivity-module-5",		"e")
	
	aadd("z-module-7",			"5d-pollution-module-1",		"a")
	aadd("z-module-7",			"5d-pollution-module-2",		"b")
	aadd("z-module-7",			"5d-pollution-module-3",		"c")
	aadd("z-module-7",			"5d-pollution-module-4",		"d")
	aadd("z-module-7",			"5d-pollution-module-5",		"e")
	
	aadd("z-module-8",			"5d-speed-effectivity-4",		"a")
	aadd("z-module-8",			"5d-speed-pollution-4",			"b")
	aadd("z-module-8",			"5d-speed-productivity-4",		"c")
	aadd("z-module-8",			"5d-pollution-effectivity-4",	"d")
	aadd("z-module-8",			"5d-pollution-productivity-4",	"e")
	aadd("z-module-8",			"5d-effectivity-productivity-4","f")
	
	aadd("z-module-9",			"5d-speed-effectivity-5",		"a")
	aadd("z-module-9",			"5d-speed-pollution-5",			"b")
	aadd("z-module-9",			"5d-speed-productivity-5",		"c")
	aadd("z-module-9",			"5d-pollution-effectivity-5",	"d")
	aadd("z-module-9",			"5d-pollution-productivity-5",	"e")
	aadd("z-module-9",			"5d-effectivity-productivity-5","f")
	
	if data.raw.module["5d-effectivity-productivity-5"] then
		local lim = data.raw.module["5d-effectivity-productivity-5"].limitation
		local lmk = data.raw.module["5d-effectivity-productivity-5"].limitation_message_key
		data.raw.module["5d-speed-productivity-4"].limitation = lim
		data.raw.module["5d-speed-productivity-4"].limitation_message_key = lmk
		data.raw.module["5d-effectivity-productivity-4"].limitation = lim
		data.raw.module["5d-effectivity-productivity-4"].limitation_message_key = lmk
		data.raw.module["5d-pollution-productivity-4"].limitation = lim
		data.raw.module["5d-pollution-productivity-4"].limitation_message_key = lmk
	end
end
do	--[[trains-vehicles]]--
	aadd("z-vehicles-1",		"5d-artillery",					"a")
	aadd("z-vehicles-1",		"5d-tank",						"b")
	
	aadd("z-vehicles-2",		"5d-truck",						"a")
	aadd("z-vehicles-2",		"5d-boat",						"b")
	aadd("z-vehicles-2",		"5d-air-plane",					"c")
	
	aadd("z-vehicles-3",		"artillery-shell",				"d")
	aadd("z-vehicles-3",		"5d-tank-machine-gun",			"d")
end
do	--[[decorative]]--
	aadd("z-decorative-1",			"concrete",					"a")
	aadd("z-decorative-1",			"5d-concrete-a",			"b")
	aadd("z-decorative-1",			"5d-concrete-b",			"c")
	aadd("z-decorative-1",			"5d-concrete-b2",			"d")
	aadd("z-decorative-1",			"5d-concrete-m",			"e")
	aadd("z-decorative-1",			"5d-concrete-r",			"f")
	aadd("z-decorative-1",			"5d-concrete-v",			"g")
	aadd("z-decorative-1",			"hazard-concrete",			"h")
	
	aadd("z-decorative-4",			"5d-lamp",					"b")
	
	aadd("z-decorative-8",			"5d-banner-1",				"a")
	aadd("z-decorative-8",			"5d-banner-2",				"b")
	aadd("z-decorative-8",			"5d-banner-3",				"c")
	aadd("z-decorative-8",			"5d-obelisk",				"d")
	aadd("z-decorative-8",			"5d-statue",				"e")
	
	for _,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "decoration" and (v.name == "decoration-letter" or v.name == "decoration-arrow") then
			v.group = "zgc-decorative"
			v.order = 7
		end
	end
	
end
