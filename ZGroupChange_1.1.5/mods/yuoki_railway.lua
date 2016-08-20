local allow_changes = z_balance.youki_rail

do	--[[transport]]--
	aadd("z-transport-5",		"y_loco_access-pipe-in",		"e")
	aadd("z-transport-5",		"y_loco_access-pipe-out",		"f")
end
do	--[[energy]]--
	aadd("z-energy-0",			"yir_fuel_energy",				"g")
	
	ahide("yir_fuel_coks")
	ahide("yir_fuel_diesel")
end
do	--[[trains-vehicles]]--
	
	aadd("z-trains-0",			"yir_factory_loco",				"a")
	aadd("z-trains-0",			"yir_factory_wagon",			"b") -- production
	aadd("z-trains-0",			"yir_factory_material",			"c")
	aadd("z-trains-0",			"yir_factory_tiles",			"d")
	aadd("z-trains-0",			"yir_factory_stuff",			"e")
	aadd("z-trains-0",			"yir_coin",						"f")
	aadd("z-trains-0",			"yir_coins_gen1",				"g")
	
	aadd("z-trains-1",			"yir_frame_loco_steam",			"a")
	aadd("z-trains-1",			"yir_frame_loco_diesel",		"b") -- parts
	aadd("z-trains-1",			"yir_frame_loco_future",		"c")
	aadd("z-trains-1",			"yir_frame_waggon",				"d")
	aadd("z-trains-1",			"yir_radsatz_locos",			"e")
	aadd("z-trains-1",			"yir_radsatz_waggon",			"f")
	
	aadd("z-trains-2",			"yir_color_white",				"a")
	aadd("z-trains-2",			"yir_color_black",				"b") -- colors
	aadd("z-trains-2",			"yir_color_red",				"c")
	aadd("z-trains-2",			"yir_color_green",				"d")
	aadd("z-trains-2",			"yir_color_blue",				"e")
	
	aadd("z-trains-3",			"armoured-diesel-locomotive",	"a")
	aadd("z-trains-3",			"diesel-locomotive",			"b") -- vanila loco
	aadd("z-trains-3",			"diesel-locomotive-2",			"c")
	aadd("z-trains-3",			"diesel-locomotive-3",			"d")
	aadd("z-trains-3",			"farl",							"e")
	
	aadd("z-trains-4",			"armoured-cargo-wagon",			"a")
	aadd("z-trains-4",			"cargo-wagon",					"b") -- vanila wagon
	aadd("z-trains-4",			"cargo-wagon-2",				"c")
	aadd("z-trains-4",			"cargo-wagon-3",				"d")
	aadd("z-trains-4",			"rail-tanker",					"e")
	
	aadd("z-trains-5",			"y_loco_ses_std",				"a")
	aadd("z-trains-5",			"y_loco_ses_red",				"b") -- loco 1
	aadd("z-trains-5",			"yir_loco_sel_blue",			"c")
	aadd("z-trains-5",			"y_loco_fs_steam_green",		"d")
	aadd("z-trains-5",			"y_wagon_tender_black",			"e")
	aadd("z-trains-5",			"y_wagon_tender_green",			"f")
	aadd("z-trains-5",			"yir_loco_del_mk1400",			"g")
	aadd("z-trains-5",			"y_loco_emd3000_white",			"h")
	aadd("z-trains-5",			"yir_loco_del_bluegray",		"i")
	aadd("z-trains-5",			"yir_loco_de_bluegray_recipe",	"i")
	
	aadd("z-trains-6",			"y_loco_emd1500black",			"a")
	aadd("z-trains-6",			"y_loco_emd1500black_v2",		"b") -- loco 2
	aadd("z-trains-6",			"y_loco_emd1500blue",			"c")
	aadd("z-trains-6",			"y_loco_emd1500blue_v2",		"d")
	aadd("z-trains-6",			"yir_loco_fesw_op",				"e")
	aadd("z-trains-6",			"y_loco_desw",					"f")
	aadd("z-trains-6",			"y_loco_desw_orange",			"g")
	aadd("z-trains-6",			"y_loco_desw_blue",				"h")
	
	aadd("z-trains-7",			"y_3acw_T10K",					"a")
	aadd("z-trains-7",			"yir_mre044",					"b") -- loco 3 UP&Industries
	aadd("z-trains-7",			"yir_lsw_840green",				"c")
	aadd("z-trains-7",			"yir_lsw_r790orange",			"d")
	aadd("z-trains-7",			"yir_lsw_r790red",				"e")
	aadd("z-trains-7",			"yir_atom_header",				"f")
	aadd("z-trains-7",			"yir_atom_mitte",				"g")
	
	aadd("z-trains-8",			"yir_2acw_wood",				"a") 
	aadd("z-trains-8",			"y_wagon_coal",					"b")-- wagon 1
	aadd("z-trains-8",			"y_wagon_stone",				"c")
	aadd("z-trains-8",			"y_wagon_copper",				"d")
	aadd("z-trains-8",			"y_wagon_iron",					"e")
	
	aadd("z-trains-9",			"yir_cw_cargo_blue",			"a")
	aadd("z-trains-9",			"yir_cw_cargo_green",			"b") -- wagon 5 UP
	aadd("z-trains-9",			"z_yira_4a_cw_steel",			"c")
	aadd("z-trains-9",			"z_yira_6a_maai1",				"d")
	
	aadd("z-trains-10",			"y_wagon_closed",				"a")
	aadd("z-trains-10",			"yir_wagon2a_closed_recipe",	"a")
	aadd("z-trains-10",			"y_wagon_trans",				"b") -- wagon 2
	aadd("z-trains-10",			"yir_2acw_3blocks",				"c")
	aadd("z-trains-10",			"y_wagon_corn_green",			"d")
	aadd("z-trains-10",			"y_wagon_corn_blue",			"e")
	aadd("z-trains-10",			"y_wagon_hopper_yellow",		"f")
	
	aadd("z-trains-11",			"yir_4acw_grey",				"a")
	aadd("z-trains-11",			"yir_4acw_oceanblue",			"b") -- wagon 3
	aadd("z-trains-11",			"yir_4acw_purple",				"c")
	aadd("z-trains-11",			"y_wagon_zement_gray",			"d")
	aadd("z-trains-11",			"y_wagon_zement_white",			"e")
	
	aadd("z-trains-12",			"y_wagon_tank_fm1",				"a")
	aadd("z-trains-12",			"y_wagon_tank_fm2",				"b") -- wagon 4
	aadd("z-trains-12",			"y_wagon_tank_blue",			"c")
	aadd("z-trains-12",			"yir_wagon2a_tank_blue_recipe",	"c")
	aadd("z-trains-12",			"y_wagon_tank_orange",			"d")
	aadd("z-trains-12",			"yir_wagon2a_tank_orange_recipe","d")
	
	aadd("z-trains-13",			"yir_cw_flourit",				"a")
	aadd("z-trains-13",			"yir_cw_uranite",				"b") -- wagon 6 Industries
	aadd("z-trains-13",			"yir_cw_upempty",				"c")
	aadd("z-trains-13",			"yir_cw_upclosed",				"d")
	
	aadd("z-trains-14",			"rail",							"a")
	aadd("z-trains-14",			"straight-rail",				"c")
	aadd("z-trains-14",			"curved-rail",					"d") -- signaml
	aadd("z-trains-14",			"train-stop",					"e")
	aadd("z-trains-14",			"rail-signal",					"f")
	aadd("z-trains-14",			"rail-chain-signal",			"g")
end
do	--[[decorative]]--	
	aadd("z-decorative-3",		"y_path_slag",					"a")
	aadd("z-decorative-3",		"yir_copper_tile",				"b")
	aadd("z-decorative-3",		"yir_iron_tile",				"c")
	aadd("z-decorative-3",		"y_path_labor",					"d")
	aadd("z-decorative-3",		"y_path_checker",				"e")
	aadd("z-decorative-3",		"yir_stony_tile",				"f")
	aadd("z-decorative-3",		"yir_grating_tile",				"g")
	aadd("z-decorative-3",		"y_path_science",				"h")
	aadd("z-decorative-3",		"y_tgb",						"i")
	aadd("z-decorative-3",		"y_tring",						"j")
	
	aadd("z-decorative-4",		"yir_wood1_tile",				"a")
	aadd("z-decorative-4",		"yir_wood2_tile",				"b")
	aadd("z-decorative-4",		"yir_wood3_tile",				"c")
	aadd("z-decorative-4",		"yir_ground1_tile",				"d")
	aadd("z-decorative-4",		"yir_plates2_tile",				"f")
	aadd("z-decorative-4",		"yir_muster1_tile",				"g")
	aadd("z-decorative-4",		"yir_brick2_tile",				"i")
	aadd("z-decorative-4",		"yir_brick1_tile",				"j")
	
	aadd("z-decorative-5",		"yir_metal1_tile",				"a")
	aadd("z-decorative-5",		"yir_metal2_tile",				"b")
	aadd("z-decorative-5",		"yir_metal3_tile",				"c")
	aadd("z-decorative-5",		"yir_metal4_tile",				"d")
	aadd("z-decorative-5",		"yir_metal5_tile",				"e")
	aadd("z-decorative-5",		"yir_tile3_tile",				"f")
	aadd("z-decorative-5",		"yir_tile2_tile",				"g")
	aadd("z-decorative-5",		"yir_tile1_tile",				"h")
	aadd("z-decorative-5",		"yir_blue_tile",				"i")
	
	ahide("y_tile_slagfilled")
	ahide("yir_wood4_tile")
	
	zgc.t_remove_recipe_unlock("yuoki_industries", "y_tile_slagfilled_recipe")
	zgc.t_remove_recipe_unlock("yuoki_industries-2", "y_tile_slagpattern_recipe")
	zgc.t_remove_recipe_unlock("yuoki_industries-3", "y_tile_slagbricks_recipe")
	
	if i_exist("yir_blue_tile") and data.raw.recipe["y_tile_slagpattern_recipe"] and data.raw.recipe["y_tile_slagbricks_recipe"]then
		data.raw.recipe["y_tile_slagpattern_recipe"].category= "yir_rc_tiles"
		data.raw.recipe["y_tile_slagbricks_recipe"].category = "yir_rc_tiles"
	end
end
do	--[[TECH]]--
	if z_balance.youki_tech and i_exist("yir_factory_loco") then
		-- yuoki_railway-3
		data:extend({
			{
				type = "technology",
				name = "yuoki_railway",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
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
				order = "y-1[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-2",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				prerequisites = {"yuoki_railway","yuoki_industries"},
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
				order = "y-2[f]"
			},
			{
				type = "technology",
				name = "yuoki_railway-3",
				icon = "__ZGroupChange__/graphics/icons/tech/yuoki_railway.png",
				prerequisites = {"yuoki_railway-2","yuoki_industries-2"},
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
				order = "y-3[f]"
			}
		})
		do	--# transport
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_access-pipe-in")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_access-pipe-out")
		end
		do	--# energy
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_fuel_energy_recipe")
		end
		do	--# trains-vehicles
			zgc.add_recipe_to_tech("yuoki_railway", "yir_factory_loco_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_factory_material_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_factory_tiles_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_factory_stuff_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_coins_gen1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_frame_loco_steam_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_frame_waggon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_radsatz_locos_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_color_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_color_black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_color_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_color_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_color_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_loco_ses_std_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_loco_ses_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_loco_sel_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_loco_fs_steam_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_3acw_T10K_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_mre044_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_cw_cargo_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_cw_cargo_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "z_yira_4a_cw_steel_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "z_yira_6a_maai1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_cw_flourit_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_cw_uranite_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "z_yira_4a_cw_steel_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "z_yira_6a_maai1_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_frame_loco_diesel_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_radsatz_waggon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_ses_red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_tender_black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_tender_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_emd1500black_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_emd1500blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_desw_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_desw_orange_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_loco_desw_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_factory_wagon_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_2acw_wood_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_coal_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_stone_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_copper_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_iron_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_wagon2a_closed_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_trans_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_tank_fm1_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_wagon_tank_fm2_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_atom_header_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_atom_mitte_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_lsw_840green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_lsw_r790orange_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_lsw_r790red_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_cw_upempty_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_cw_upclosed_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_frame_loco_future_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_loco_fesw_op_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_loco_emd1500black_v2_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_loco_emd1500blue_v2")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_loco_del_mk1400")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_loco_emd3000_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_loco_de_bluegray_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_2acw_3blocks_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_wagon_corn_green_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_wagon_corn_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_wagon_hopper_yellow_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_4acw_grey_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_4acw_oceanblue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_4acw_purple_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_wagon_zement_gray_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "y_wagon_zement_white_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_wagon2a_tank_blue_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_wagon2a_tank_orange_recipe")
		end
		do	--# decorative
			zgc.add_recipe_to_tech("yuoki_railway", "y_path_slag_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_path_labor_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_path_checker_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_stony_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "yir_grating_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_path_science_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_tgb_recipe")
			zgc.add_recipe_to_tech("yuoki_railway", "y_tring_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_wood1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_wood3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_ground1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_plates2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_tile_slagpattern_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_muster1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "y_tile_slagbricks_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_brick2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-2", "yir_brick1_tile_recipe")
			
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_metal1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_metal3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_metal4_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_metal5_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_tile3_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_tile2_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_tile1_tile_recipe")
			zgc.add_recipe_to_tech("yuoki_railway-3", "yir_blue_tile_recipe")
		end
	end
end
