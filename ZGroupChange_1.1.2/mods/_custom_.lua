--[[

!! IMPORTANT !!
Make a copy of the file and rename it to [_custom_.lua] before edit.
To enable custom changes - set "use_custom_order" in config.lua to "true"


You can use all of existed in this mod functions (lib/util.lua).
But in almost 90% of cases you can do all you want just using three of them:

aadd(group, item, order)	-- Place (or show recently hided) item and/or recipe to another group.
ahide(item, replace_by)		-- Hide item and recipe, also remove recipe from technology.
switch_tech(technology)		-- Switch off technology (hiding from research tree).

There is two modification of aadd and ahide functions:

iadd(group, item, order)	-- Place (or show recently hided) only item (ignore recipe) to another group.
radd(group, item, order)	-- Place (or show recently hided) only recipe (ignore item) to another group.

ihide(item, replace_by)		-- Hide only item (recipe will stay available).
rhide(item, replace_by)		-- Hide only recipe (item will stay available), also remove recipe from technology.


Also you can use boolean functions to check existence of item:

i_exist(item)		-- Return "true" if item exist, "false" otherwise.
i_not_exist(item)	-- Return "true" if item NOT exist, "false" otherwise.

In all cases when your changes affect existing technology tree - you must start new game to take effects.

Also you must to know: internal item name is not the same what you see in game !!
There is a easiest way to find that name - go to mod directory of items which you want to rearrange and rename "local" folder and restart the game.
After that you should see internal items names, like "item_name.raw-wood" or similar. Name is the part which after last dot ("raw-wood" for example).
Then, when you are done - just rename it back to "local" and restart again.

]]

--[[ EXAMPLE #1

		--GROUP NAME--	-- ITEM --	 --ORDER--
	aadd("z-other-4",	"raw-wood",		"a")	-- Regroup item
	aadd("z-other-4",	"coal",			"b")	-- Regroup item

]]

--[[ EXAMPLE #2

	if i_exist("bi_bio_farm") then			-- If [Bio Farm] from "Bio Industries" mod exist?
	
			-- GROUP NAME --		  -- ITEM --	 	 --ORDER--
		aadd("z-production-9",		"bi_bio_farm",			"a")
		aadd("z-production-9",		"bi-Bio_Garden",		"b")
		aadd("z-production-9",		"bi-cokery",			"c")
		aadd("z-production-9",		"bi-bioreactor",		"d")
		aadd("z-production-9",		"bi-stone-crusher",		"e")
	
		rhide("bob-seedling")					-- Hide Bob's version recipe of seedling
		ahide("bob-fertiliser")					-- Hide item and recipe.
		
		switch_tech("bob-fertiliser")			-- Hide technology.
	end

]]

aadd("armor-5",				"collector-grounditems-armor-module",	"h")

aadd("chemistry-0",			"CMH-NaOH",								"k")

aadd("decorative-1",		"landfill",								"a")
aadd("decorative-1",		"green_grass",							"b")
aadd("decorative-1",		"sand_light",							"c")
aadd("decorative-1",		"gravel",								"d")
aadd("decorative-1",		"concrete",								"e")
aadd("decorative-1",		"concrete-from-pulver",					"f")
aadd("decorative-1",		"smooth-concrete",						"g")
aadd("decorative-1",		"reinforced-concrete",					"h")
aadd("decorative-1",		"hazard-concrete",						"i")
aadd("decorative-1",		"fire-hazard-concrete",					"j")

aadd("decorative-2",		"wood-floor",							"a")
aadd("decorative-2",		"wooden-floor",							"b")
aadd("decorative-2",		"rusty-metal",							"c")
aadd("decorative-2",		"diamond-plate",						"d")
aadd("decorative-2",		"rusty-grate",							"e")
aadd("decorative-2",		"arrow-grate",							"f")
aadd("decorative-2",		"circuit-floor",						"g")

aadd("decorative-5",		"sign-post",							"a")
aadd("decorative-5",		"small-lamp",							"b")

aadd("defense-9",			"collector-grounditems",				"a")

aadd("energy-0",			"burner-generator",						"a")
aadd("energy-0",			"wind-turbine",							"b")
aadd("energy-0",			"petroleum-generator",					"c")
aadd("energy-0",			"OilSteamBoiler",						"d")
aadd("energy-0",			"burn-crude-oil",						"e")
aadd("energy-0",			"burn-heavy-oil",						"f")
aadd("energy-0",			"burn-light-oil",						"g")

aadd("energy-8",			"huge-electric-pole",					"e")
aadd("energy-8",			"substation",							"f")
aadd("energy-8",			"substation-2",							"g")
aadd("energy-8",			"substation-3",							"h")
aadd("energy-8",			"substation-4",							"i")
aadd("energy-8",			"big-substation",						"j")

aadd("gathering-1",			"wooden-crate",							"d")
aadd("gathering-1",			"basic-repository",						"e")

aadd("gathering-6",			"bob-mining-drill-1",					"b")
aadd("gathering-6",			"bob-mining-drill-2",					"c")
aadd("gathering-6",			"bob-mining-drill-3",					"d")
aadd("gathering-6",			"bob-mining-drill-4",					"e")

aadd("intermediate-3",		"solder-alloy",							"a")
aadd("intermediate-3",		"solder-alloy-lead",					"b")
aadd("intermediate-3",		"solder",								"c")
aadd("intermediate-3",		"basic-electronic-components",			"d")
aadd("intermediate-3",		"electronic-components",				"e")
aadd("intermediate-3",		"intergrated-electronics",				"f")
aadd("intermediate-3",		"processing-electronics",				"g")

aadd("intermediate-6",		"iron-stick",							"c")
aadd("intermediate-6",		"explosives",							"d")
aadd("intermediate-6",		"bob-fertiliser",						"e")
aadd("intermediate-6",		"bi-fertiliser",						"f")
aadd("intermediate-6",		"bi-fertiliser-2",						"g")
aadd("intermediate-6",		"bi-adv-fertiliser",					"h")
aadd("intermediate-6",		"bob-seedling",							"i")
aadd("intermediate-6",		"bi-seedling",							"j")
aadd("intermediate-6",		"bob-basic-greenhouse-cycle",			"k")
aadd("intermediate-6",		"bob-advanced-greenhouse-cycle",		"l")
aadd("intermediate-6",		"grinding-wheel",						"m")
aadd("intermediate-6",		"polishing-wheel",						"n")
aadd("intermediate-6",		"polishing-wheel-synthetic",			"o")
aadd("intermediate-6",		"polishing-compound",					"p")

aadd("liquids-1",			"bob-oil-processing",					"a")
aadd("liquids-1",			"CMH-refining",							"b")
aadd("liquids-1",			"basic-oil-processing",					"c")
aadd("liquids-1",			"advanced-oil-processing",				"d")
aadd("liquids-1",			"ground-water",							"e")
aadd("liquids-1",			"bi-Fuel_Conversion",					"e")
aadd("liquids-1",			"bi-biomass-0",							"f")
aadd("liquids-1",			"bi-Bio_Fuel",							"g")

aadd("liquids-2",			"coal-liquefaction",					"b")
aadd("liquids-2",			"CMH-coal-cracking",					"c")
aadd("liquids-2",			"diesel-fuel",							"f")
aadd("liquids-2",			"lubricant",							"g")
aadd("liquids-2",			"bob-liquid-air",						"h")
aadd("liquids-2",			"bi-Clean_Air",							"i")
aadd("liquids-2",			"bi-Clean_Air2",						"j")

aadd("module-1",			"speed-processor",						"a")
aadd("module-1",			"speed-processor-2",					"b")
aadd("module-1",			"speed-processor-3",					"c")
aadd("module-1",			"effectivity-processor",				"d")
aadd("module-1",			"effectivity-processor-2",				"e")
aadd("module-1",			"effectivity-processor-3",				"f")
aadd("module-1",			"productivity-processor",				"g")
aadd("module-1",			"productivity-processor-2",				"h")
aadd("module-1",			"productivity-processor-3",				"i")

aadd("module-2",			"pollution-clean-processor",			"a")
aadd("module-2",			"pollution-clean-processor-2",			"b")
aadd("module-2",			"pollution-clean-processor-3",			"c")
aadd("module-2",			"pollution-create-processor",			"d")
aadd("module-2",			"pollution-create-processor-2",			"e")
aadd("module-2",			"pollution-create-processor-3",			"f")

aadd("other-0",				"sky-entrance",							"a")
aadd("other-0",				"sky-exit",								"b")
aadd("other-0",				"underground-entrance",					"c")
aadd("other-0",				"underground-exit",						"d")

aadd("other-1",				"energy-transport-lower",				"a")
aadd("other-1",				"energy-transport-upper",				"b")
aadd("other-1",				"energy-transport-2-lower",				"c")
aadd("other-1",				"energy-transport-2-upper",				"d")
aadd("other-1",				"energy-transport-3-lower",				"e")
aadd("other-1",				"energy-transport-3-upper",				"f")
aadd("other-1",				"energy-transport-4-lower",				"g")
aadd("other-1",				"energy-transport-4-upper",				"h")

aadd("other-2",				"wooden-transport-chest-down",			"a")
aadd("other-2",				"wooden-transport-chest-up",			"b")
aadd("other-2",				"iron-transport-chest-down",			"c")
aadd("other-2",				"iron-transport-chest-up",				"d")
aadd("other-2",				"steel-transport-chest-down",			"e")
aadd("other-2",				"steel-transport-chest-up",				"f")
aadd("other-2",				"logistic-transport-chest-down",		"g")
aadd("other-2",				"logistic-transport-chest-up",			"h")
aadd("other-2",				"logistic-transport-chest-2-down",		"i")
aadd("other-2",				"logistic-transport-chest-2-up",		"j")

aadd("other-3",				"transport-storehouse-down",			"a")
aadd("other-3",				"transport-storehouse-up",				"b")
aadd("other-3",				"logistic-transport-storehouse-down",	"c")
aadd("other-3",				"logistic-transport-storehouse-up",		"d")
aadd("other-3",				"transport-warehouse-down",				"e")
aadd("other-3",				"transport-warehouse-up",				"f")
aadd("other-3",				"logistic-transport-warehouse-down",	"g")
aadd("other-3",				"logistic-transport-warehouse-up",		"h")

aadd("other-4",				"fluid-transport-lower",				"a")
aadd("other-4",				"fluid-transport-upper",				"b")
aadd("other-4",				"fluid-transport-2-lower",				"c")
aadd("other-4",				"fluid-transport-2-upper",				"d")
aadd("other-4",				"fluid-transport-3-lower",				"e")
aadd("other-4",				"fluid-transport-3-upper",				"f")
aadd("other-4",				"fluid-transport-4-lower",				"g")
aadd("other-4",				"fluid-transport-4-upper",				"h")

aadd("other-5",				"crude-servo",							"a")
aadd("other-5",				"standard-servo",						"b")
aadd("other-5",				"improved-servo",						"c")
aadd("other-5",				"crude-connector",						"d")
aadd("other-5",				"basic-connector",						"e")
aadd("other-5",				"standard-connector",					"f")
aadd("other-5",				"improved-connector",					"g")
aadd("other-5",				"advanced-connector",					"h")

aadd("other-6",				"actuator",								"a")
aadd("other-6",				"avatar-arm",							"b")
aadd("other-6",				"avatar-leg",							"c")
aadd("other-6",				"avatar-head",							"d")
aadd("other-6",				"avatar-internals",						"e")
aadd("other-6",				"avatar-torso",							"f")
aadd("other-6",				"avatar-skin",							"g")

aadd("other-7",				"avatar-assembling-machine",			"a")
aadd("other-7",				"avatar-remote-deployment-unit",		"b")
aadd("other-7",				"avatar-control-center",				"c")
aadd("other-7",				"avatar",								"d")
aadd("other-7",				"personal-spawn-marker-recipe",			"e")

aadd("other-8",				"drydock-assembly",						"a")
aadd("other-8",				"drydock-structural",					"b")
aadd("other-8",				"fusion-reactor",						"c")
aadd("other-8",				"hull-component",						"d")
aadd("other-8",				"protection-field",						"e")
aadd("other-8",				"space-thruster",						"f")
aadd("other-8",				"fuel-cell",							"g")

aadd("other-9",				"habitation",							"a")
aadd("other-9",				"life-support",							"b")
aadd("other-9",				"command",								"c")
aadd("other-9",				"astrometrics",							"d")
aadd("other-9",				"ftl-drive",							"e")

aadd("plates-8",			"aluminium-titanium-a",					"a")
aadd("plates-8",			"zinc-iron",							"b")
aadd("plates-8",			"zinc-tin",								"c")
aadd("plates-8",			"advanced-electrum",					"d")
aadd("plates-8",			"stone-quartz",							"e")

aadd("plates-10",			"angelsore1-crushed-smelting",			"a")
aadd("plates-10",			"angelsore3-crushed-smelting",			"b")
aadd("plates-10",			"angelsore5-crushed-smelting",			"c")
aadd("plates-10",			"angelsore6-crushed-smelting",			"d")

aadd("resources-0",			"crude-gold",							"l")

aadd("resources-7",			"plastic-bar",							"a")
aadd("resources-7",			"bi-platic",							"b")
aadd("resources-7",			"resin",								"c")
aadd("resources-7",			"bob-resin-oil",						"d")
aadd("resources-7",			"bob-resin-wood",						"e")
aadd("resources-7",			"rubber",								"f")
aadd("resources-7",			"bob-rubber",							"g")

aadd("trains-0",			"shuttleTrain",							"f")

aadd("trains-11",			"bi-rail-wood",							"a")
aadd("trains-11",			"rail",									"b")

aadd("transport-2",			"medium-underground-belt",				"a")
aadd("transport-2",			"long-underground-belt",				"b")
aadd("transport-2",			"medium-fast-underground-belt",			"c")
aadd("transport-2",			"long-fast-underground-belt",			"d")
aadd("transport-2",			"medium-express-underground-belt",		"e")
aadd("transport-2",			"long-express-underground-belt",		"f")

aadd("transport-4",			"smartsplitter",						"h")

aadd("transport-8",			"valve",								"b")

aadd("transport-9",			"pipe-to-ground",						"b")
aadd("transport-9",			"medium-pipe-to-ground",				"c")
aadd("transport-9",			"long-pipe-to-ground",					"d")
aadd("transport-9",			"ultra-pipe-to-ground",					"e")
aadd("transport-9",			"continental-pipe-to-ground",			"f")

aadd("weaponry-0",			"bob-laser-robot",						"j")
aadd("weaponry-0",			"assembly-robot",						"k")

aadd("weaponry-1",			"bob-laser-robot-capsule",				"k")

--[[ List of inventory groups (mask: z-[name]-[0..n])  [
	z-gathering-#
	z-production-#
	z-resources-#
	z-plates-#
	z-liquids-#
	z-chemistry-#
	z-automatization-#
	z-transport-#
	z-logistic-#
	z-energy-#
	z-module-#
	z-defense-#
	z-intermediate-#
	z-parts-#
	z-youki-#
	z-armor-#
	z-weaponry-#
	z-trains-#
	z-vehicles-#
	z-alien-#
	z-refining-#
	z-atom-#
	z-decorative-#
	z-other-#
] ]]


