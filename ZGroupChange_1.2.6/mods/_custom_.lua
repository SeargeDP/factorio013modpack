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

zgc.add_main_group("parts")
zgc.add_main_group("engines")

aadd("angels-aluminium",	"bauxite-ore-processing",						"a")
aadd("angels-cobalt",		"cobalt-ore-processing",						"a")
aadd("angels-copper",		"copper-ore-processing",						"a")
aadd("angels-gold",			"gold-ore-processing",							"a")
aadd("angels-iron",			"iron-ore-processing",							"a")
aadd("angels-lead",			"lead-ore-processing",							"a")
aadd("angels-nickel",		"nickel-ore-processing",						"a")
aadd("angels-silver",		"silver-ore-processing",						"a")
aadd("angels-tin",			"tin-ore-processing",							"a")
aadd("angels-tungsten",		"tungsten-ore-processing",						"a")
aadd("angels-zinc",			"zinc-ore-processing",							"a")

aadd("catalysts",			"algae-green",									"i")
aadd("catalysts",			"algae-blue",									"j")
aadd("catalysts",			"algae-red",									"k")

iadd("ore-crusher",			"burner-ore-crusher",							"a")
radd("ore-sorter",			"burner-ore-crusher",							"a")

aadd("petrochem-raw",		"coal-crushed",									"a")
aadd("petrochem-raw",		"solid-carbon",									"b")
aadd("petrochem-raw",		"solid-coke",									"c")
aadd("petrochem-raw",		"pellet-coke",									"d")
aadd("petrochem-raw",		"solid-resin-1",								"e")
aadd("petrochem-raw",		"solid-resin-2",								"f")
aadd("petrochem-raw",		"solid-rubber",									"g")
aadd("petrochem-raw",		"solid-plastic-1",								"h")
aadd("petrochem-raw",		"solid-plastic-2",								"i")
aadd("petrochem-raw",		"solid-plastic-3",								"j")
aadd("petrochem-raw",		"chemical-void",								"k")
aadd("petrochem-raw",		"solid-calcium-sulfate",						"l")
aadd("petrochem-raw",		"solid-sodium-chlorate",						"m")
aadd("petrochem-raw",		"solid-sodium-hydroxide",						"n")
aadd("petrochem-raw",		"fluorite-ore",									"o")
aadd("petrochem-raw",		"catalyst-metal-carrier",						"p")
aadd("petrochem-raw",		"catalyst-metal-red",							"q")
aadd("petrochem-raw",		"catalyst-metal-blue",							"r")
aadd("petrochem-raw",		"catalyst-metal-green",							"s")
aadd("petrochem-raw",		"catalyst-metal-yellow",						"t")
aadd("petrochem-raw",		"solid-calcium-chloride",						"u")
aadd("petrochem-raw",		"solid-sodium-perchlorate",						"v")
aadd("petrochem-raw",		"solid-sodium-hypochlorite",					"w")

aadd("refining-buildings",	"algae-farm",									"m")
aadd("refining-buildings",	"algae-farm-2",									"n")

aadd("z-alien-10",			"small-biter-hatching",							"a")
aadd("z-alien-10",			"medium-biter-hatching",						"b")
aadd("z-alien-10",			"big-biter-hatching",							"c")
aadd("z-alien-10",			"behemoth-biter-hatching",						"d")
aadd("z-alien-10",			"small-spitter-hatching",						"e")
aadd("z-alien-10",			"medium-spitter-hatching",						"f")
aadd("z-alien-10",			"big-spitter-hatching",							"g")
aadd("z-alien-10",			"behemoth-spitter-hatching",					"h")

aadd("z-alien-11",			"small-worm-hatching",							"a")
iadd("z-alien-11",			"small-worm-hatching-exhausted",				"a")
aadd("z-alien-11",			"small-worm-hatching-refresh",					"b")
aadd("z-alien-11",			"medium-worm-hatching",							"c")
iadd("z-alien-11",			"medium-worm-hatching-exhausted",				"c")
aadd("z-alien-11",			"medium-worm-hatching-refresh",					"d")
aadd("z-alien-11",			"big-worm-hatching",							"e")
iadd("z-alien-11",			"big-worm-hatching-exhausted",					"e")
aadd("z-alien-11",			"big-worm-hatching-refresh",					"f")

aadd("z-alien-12",			"Natural_Evolution_Biter-Spawner",				"a")
iadd("z-alien-12",			"Natural_Evolution_Biter-Spawner-exhausted",	"a")
aadd("z-alien-12",			"Natural_Evolution_Biter-Spawner-refresh",		"b")
aadd("z-alien-12",			"Natural_Evolution_Spitter-Spawner",			"c")
iadd("z-alien-12",			"Natural_Evolution_Spitter-Spawner-exhausted",	"c")
aadd("z-alien-12",			"Natural_Evolution_Spitter-Spawner-refresh",	"d")

aadd("z-alien-13",			"Artifact-collector",							"a")
iadd("z-alien-13",			"Artifact-collector-area",						"a")
aadd("z-alien-13",			"Thumper",										"b")
aadd("z-alien-13",			"TerraformingStation",							"c")
aadd("z-alien-13",			"Alien_Hatchery",								"d")
aadd("z-alien-13",			"AlienControlStation",							"e")
iadd("z-alien-13",			"AlienControlStation_Area",						"e")

aadd("z-alien-14",			"alien-ore",									"a")
aadd("z-alien-14",			"alien-shard",									"b")

aadd("z-armor-1",			"Biological-bullet-magazine",					"c")
aadd("z-armor-1",			"du-magazine",									"d")
aadd("z-armor-1",			"shotgun-shell",								"e")
aadd("z-armor-1",			"piercing-shotgun-shell",						"f")
aadd("z-armor-1",			"flame-thrower-ammo",							"g")
aadd("z-armor-1",			"rocket",										"h")
aadd("z-armor-1",			"explosive-rocket",								"i")

aadd("z-armor-3",			"land-mine-poison",								"d")
aadd("z-armor-3",			"slowdown-capsule",								"e")
aadd("z-armor-3",			"poison-capsule",								"f")
aadd("z-armor-3",			"defender-capsule",								"g")
aadd("z-armor-3",			"distractor-capsule",							"h")
aadd("z-armor-3",			"destroyer-capsule",							"i")
aadd("z-armor-3",			"discharge-defense-remote",						"j")

aadd("z-armor-5",			"collector-grounditems-armor-module",			"h")

aadd("z-armor-7",			"rtg-equipment",								"i")

aadd("z-armor-11",			"combat-robot-dispenser-equipment",				"g")

aadd("z-automatization-0",	"ne-combat-inserter",							"c")
iadd("z-automatization-0",	"combat-inserter",								"c")
aadd("z-automatization-0",	"long-handed-inserter",							"d")
aadd("z-automatization-0",	"express-inserter",								"e")

aadd("z-chemistry-0",		"CMH-NaOH",										"k")

aadd("z-chemistry-7",		"gas-carbon-dioxide-from-wood",					"e")
aadd("z-chemistry-7",		"gas-methanol-from-wood",						"f")
aadd("z-chemistry-7",		"gas-ammonia-from-blue-fiber",					"g")

aadd("z-decorative-0",		"small-iron-blank",								"c")
aadd("z-decorative-0",		"large-iron-blank",								"d")
aadd("z-decorative-0",		"small-copper-blank",							"e")
aadd("z-decorative-0",		"large-copper-blank",							"f")

aadd("z-decorative-1",		"landfill",										"a")
aadd("z-decorative-1",		"green_grass",									"b")
aadd("z-decorative-1",		"sand_light",									"c")
aadd("z-decorative-1",		"gravel",										"d")
aadd("z-decorative-1",		"concrete",										"e")
aadd("z-decorative-1",		"concrete-from-pulver",							"f")
aadd("z-decorative-1",		"smooth-concrete",								"g")
aadd("z-decorative-1",		"reinforced-concrete",							"h")
aadd("z-decorative-1",		"hazard-concrete",								"i")
aadd("z-decorative-1",		"fire-hazard-concrete",							"j")

aadd("z-decorative-2",		"wood-floor",									"a")
aadd("z-decorative-2",		"wooden-floor",									"b")
aadd("z-decorative-2",		"rusty-metal",									"c")
aadd("z-decorative-2",		"diamond-plate",								"d")
aadd("z-decorative-2",		"rusty-grate",									"e")
aadd("z-decorative-2",		"arrow-grate",									"f")
aadd("z-decorative-2",		"circuit-floor",								"g")

aadd("z-decorative-3",		"alien-metal",									"a")
aadd("z-decorative-3",		"hexagonb",										"b")
aadd("z-decorative-3",		"metal-scraps",									"c")
aadd("z-decorative-3",		"asphalt",										"d")
aadd("z-decorative-3",		"lava",											"e")
aadd("z-decorative-3",		"snow",											"f")

aadd("z-decorative-5",		"sign-post",									"a")
aadd("z-decorative-5",		"small-lamp",									"b")

aadd("z-defense-0",			"iron-wall",									"c")
aadd("z-defense-0",			"iron-walls",									"c")
aadd("z-defense-0",			"ne-living-wall",								"e")
aadd("z-defense-0",			"ne-living-wall-refresh",						"f")
iadd("z-defense-0",			"ne-living-wall-exhausted",						"f")

aadd("z-defense-2",			"Bio_Cannon_Bio_Ammo",							"f")

aadd("z-defense-9",			"collector-grounditems",						"a")

aadd("z-energy-0",			"burner-generator",								"a")
aadd("z-energy-0",			"burner-generator-power",						"b")
aadd("z-energy-0",			"wind-turbine",									"c")
aadd("z-energy-0",			"petroleum-generator",							"d")
aadd("z-energy-0",			"OilSteamBoiler",								"e")
aadd("z-energy-0",			"burn-crude-oil",								"f")
aadd("z-energy-0",			"burn-heavy-oil",								"g")
aadd("z-energy-0",			"burn-light-oil",								"h")

aadd("z-energy-3",			"nuclear-reactor",								"a")
aadd("z-energy-3",			"cooling-tower",								"b")
aadd("z-energy-3",			"steam-turbine",								"c")
aadd("z-energy-3",			"reactor-interface",							"d")
aadd("z-energy-3",			"electric-energy-interface",					"e")
aadd("z-energy-3",			"fission-reaction",								"f")
aadd("z-energy-3",			"breeder-reaction",								"g")

aadd("z-energy-6",			"accumulator",									"a")
aadd("z-energy-6",			"slow-accumulator",								"b")
aadd("z-energy-6",			"large-accumulator",							"c")
aadd("z-energy-6",			"fast-accumulator",								"d")
aadd("z-energy-6",			"slow-accumulator-2",							"e")
aadd("z-energy-6",			"large-accumulator-2",							"f")
aadd("z-energy-6",			"fast-accumulator-2",							"g")
aadd("z-energy-6",			"slow-accumulator-3",							"h")
aadd("z-energy-6",			"large-accumulator-3",							"i")
aadd("z-energy-6",			"fast-accumulator-3",							"j")

aadd("z-energy-8",			"huge-electric-pole",							"e")
aadd("z-energy-8",			"substation",									"f")
aadd("z-energy-8",			"substation-2",									"g")
aadd("z-energy-8",			"substation-3",									"h")
aadd("z-energy-8",			"substation-4",									"i")
aadd("z-energy-8",			"big-substation",								"j")

iadd("z-engines-1",			"angels-plate-copper",							"a")
iadd("z-engines-1",			"angels-plate-iron",							"b")
iadd("z-engines-1",			"angels-plate-lead",							"c")
iadd("z-engines-1",			"angels-plate-tin",								"d")
iadd("z-engines-1",			"angels-wire-coil-copper",						"e")
iadd("z-engines-1",			"angels-wire-coil-gold",						"f")
iadd("z-engines-1",			"angels-wire-coil-silver",						"g")
iadd("z-engines-1",			"angels-wire-coil-tin",							"h")

iadd("z-engines-3",			"angels-roll-aluminium",						"a")
iadd("z-engines-3",			"angels-roll-cobalt",							"b")
iadd("z-engines-3",			"angels-roll-gold",								"c")
iadd("z-engines-3",			"angels-roll-manganese",						"d")
iadd("z-engines-3",			"angels-roll-nickel",							"e")
iadd("z-engines-3",			"angels-roll-silicon",							"f")
iadd("z-engines-3",			"angels-roll-silver",							"g")
iadd("z-engines-3",			"angels-roll-titanium",							"h")
iadd("z-engines-3",			"angels-roll-tungsten",							"i")
iadd("z-engines-3",			"angels-roll-zinc",								"j")

iadd("z-engines-6",			"ingot-aluminium",								"a")
iadd("z-engines-6",			"ingot-cobalt",									"b")
iadd("z-engines-6",			"ingot-copper",									"c")
iadd("z-engines-6",			"ingot-gold",									"d")
iadd("z-engines-6",			"ingot-iron",									"e")
iadd("z-engines-6",			"ingot-lead",									"f")
iadd("z-engines-6",			"ingot-manganese",								"g")

iadd("z-engines-7",			"ingot-nickel",									"a")
iadd("z-engines-7",			"ingot-silicon",								"b")
iadd("z-engines-7",			"ingot-silver",									"c")
iadd("z-engines-7",			"ingot-tin",									"d")
iadd("z-engines-7",			"ingot-titanium",								"e")
iadd("z-engines-7",			"ingot-tungsten",								"f")
iadd("z-engines-7",			"ingot-zinc",									"g")
iadd("z-engines-7",			"ingot-steel",									"h")

iadd("z-engines-8",			"pellet-aluminium",								"a")
iadd("z-engines-8",			"pellet-cobalt",								"b")
iadd("z-engines-8",			"pellet-copper",								"c")
iadd("z-engines-8",			"pellet-gold",									"d")
iadd("z-engines-8",			"pellet-iron",									"e")
iadd("z-engines-8",			"pellet-lead",									"f")
iadd("z-engines-8",			"pellet-manganese",								"g")

iadd("z-engines-9",			"pellet-nickel",								"a")
iadd("z-engines-9",			"pellet-silica",								"b")
iadd("z-engines-9",			"pellet-silver",								"c")
iadd("z-engines-9",			"pellet-tin",									"d")
iadd("z-engines-9",			"pellet-titanium",								"e")
iadd("z-engines-9",			"pellet-tungsten",								"f")
iadd("z-engines-9",			"pellet-zinc",									"g")

iadd("z-engines-10",		"processed-aluminium",							"a")
iadd("z-engines-10",		"processed-cobalt",								"b")
iadd("z-engines-10",		"processed-copper",								"c")
iadd("z-engines-10",		"processed-gold",								"d")
iadd("z-engines-10",		"processed-iron",								"e")
iadd("z-engines-10",		"processed-lead",								"f")
iadd("z-engines-10",		"processed-manganese",							"g")

iadd("z-engines-11",		"processed-nickel",								"a")
iadd("z-engines-11",		"processed-silica",								"b")
iadd("z-engines-11",		"processed-silver",								"c")
iadd("z-engines-11",		"processed-tin",								"d")
iadd("z-engines-11",		"processed-titanium",							"e")
iadd("z-engines-11",		"processed-tungsten",							"f")
iadd("z-engines-11",		"processed-zinc",								"g")

iadd("z-engines-12",		"solid-aluminium-oxide",						"a")
iadd("z-engines-12",		"solid-ammonium-paratungstate",					"b")
iadd("z-engines-12",		"solid-lead-oxide",								"c")
iadd("z-engines-12",		"solid-manganese-sulfate",						"d")
iadd("z-engines-12",		"solid-tungsten-oxide",							"e")

aadd("z-engines-15",		"ore-processing-machine",						"a")
aadd("z-engines-15",		"ore-processing-machine-2",						"b")
aadd("z-engines-15",		"ore-processing-machine-3",						"c")
aadd("z-engines-15",		"ore-processing-machine-4",						"d")
aadd("z-engines-15",		"pellet-press",									"e")
aadd("z-engines-15",		"pellet-press-2",								"f")
aadd("z-engines-15",		"pellet-press-3",								"g")
aadd("z-engines-15",		"pellet-press-4",								"h")

aadd("z-engines-16",		"blast-furnace",								"a")
aadd("z-engines-16",		"blast-furnace-2",								"b")
aadd("z-engines-16",		"blast-furnace-3",								"c")
aadd("z-engines-16",		"blast-furnace-4",								"d")
aadd("z-engines-16",		"induction-furnace",							"e")
aadd("z-engines-16",		"induction-furnace-2",							"f")
aadd("z-engines-16",		"induction-furnace-3",							"g")
aadd("z-engines-16",		"induction-furnace-4",							"h")

aadd("z-engines-17",		"casting-machine",								"a")
aadd("z-engines-17",		"casting-machine-2",							"b")
aadd("z-engines-17",		"casting-machine-3",							"c")
aadd("z-engines-17",		"casting-machine-4",							"d")
aadd("z-engines-17",		"strand-casting-machine",						"e")
aadd("z-engines-17",		"strand-casting-machine-2",						"f")
aadd("z-engines-17",		"strand-casting-machine-3",						"g")
aadd("z-engines-17",		"strand-casting-machine-4",						"h")

aadd("z-engines-18",		"sintering-oven",								"a")
aadd("z-engines-18",		"sintering-oven-2",								"b")
aadd("z-engines-18",		"sintering-oven-3",								"c")
aadd("z-engines-18",		"sintering-oven-4",								"d")

aadd("z-gathering-1",		"wooden-crate",									"d")
aadd("z-gathering-1",		"basic-repository",								"e")

aadd("z-gathering-2",		"zcs-trash-landfill",							"j")

aadd("z-gathering-6",		"bob-mining-drill-1",							"b")
aadd("z-gathering-6",		"bob-mining-drill-2",							"c")
aadd("z-gathering-6",		"bob-mining-drill-3",							"d")
aadd("z-gathering-6",		"bob-mining-drill-4",							"e")

aadd("z-gathering-8",		"water-well-pump",								"b")

aadd("z-intermediate-3",	"solder-alloy",									"a")
aadd("z-intermediate-3",	"solder-alloy-lead",							"b")
aadd("z-intermediate-3",	"solder",										"c")
aadd("z-intermediate-3",	"basic-electronic-components",					"d")
aadd("z-intermediate-3",	"electronic-components",						"e")
aadd("z-intermediate-3",	"intergrated-electronics",						"f")
aadd("z-intermediate-3",	"processing-electronics",						"g")

aadd("z-intermediate-6",	"iron-stick",									"c")
aadd("z-intermediate-6",	"explosives",									"d")
aadd("z-intermediate-6",	"bob-fertiliser",								"e")
aadd("z-intermediate-6",	"bi-fertiliser",								"f")
aadd("z-intermediate-6",	"bi-fertiliser-2",								"g")
aadd("z-intermediate-6",	"bi-adv-fertiliser",							"h")
aadd("z-intermediate-6",	"bob-seedling",									"i")
aadd("z-intermediate-6",	"bi-seedling",									"j")
aadd("z-intermediate-6",	"bob-basic-greenhouse-cycle",					"k")
aadd("z-intermediate-6",	"bob-advanced-greenhouse-cycle",				"l")
aadd("z-intermediate-6",	"grinding-wheel",								"m")
aadd("z-intermediate-6",	"polishing-wheel",								"n")
aadd("z-intermediate-6",	"polishing-wheel-synthetic",					"o")
aadd("z-intermediate-6",	"polishing-compound",							"p")
aadd("z-intermediate-6",	"gun-cotton",									"q")

aadd("z-intermediate-13",	"Building_Materials",							"a")

aadd("z-liquids-1",			"bob-oil-processing",							"a")
aadd("z-liquids-1",			"CMH-refining",									"b")
aadd("z-liquids-1",			"basic-oil-processing",							"c")
aadd("z-liquids-1",			"advanced-oil-processing",						"d")
aadd("z-liquids-1",			"ground-water",									"e")

aadd("z-liquids-2",			"coal-liquefaction",							"b")
aadd("z-liquids-2",			"CMH-coal-cracking",							"c")
aadd("z-liquids-2",			"coal-cracking",								"d")
aadd("z-liquids-2",			"diesel-fuel",									"f")
aadd("z-liquids-2",			"bob-liquid-air",								"h")
aadd("z-liquids-2",			"bi-Clean_Air",									"i")
aadd("z-liquids-2",			"bi-Clean_Air2",								"j")
aadd("z-liquids-2",			"advanced-caustic-oil-processing",				"k")
aadd("z-liquids-2",			"caustic-heavy-oil-processing",					"l")
aadd("z-liquids-2",			"caustic-oil-processing",						"m")

aadd("z-liquids-3",			"water-barrel",									"a")
aadd("z-liquids-3",			"lithia-water-barrel",							"b")
aadd("z-liquids-3",			"crude-oil-barrel",								"c")
aadd("z-liquids-3",			"heavy-oil-barrel",								"d")
aadd("z-liquids-3",			"light-oil-barrel",								"e")
aadd("z-liquids-3",			"lubricant-barrel",								"f")
aadd("z-liquids-3",			"sulfuric-acid-barrel",							"g")
aadd("z-liquids-3",			"nitric-acid-barrel",							"h")
aadd("z-liquids-3",			"bi-Fuel_Conversion",							"i")
aadd("z-liquids-3",			"uranium-slurry",								"j")
aadd("z-liquids-3",			"uranium-separation",							"k")
aadd("z-liquids-3",			"fuel-reprocessing",							"l")
aadd("z-liquids-3",			"mox-fuel",										"m")

aadd("z-liquids-4",			"oxygen-canister",								"a")
aadd("z-liquids-4",			"hydrogen-canister",							"b")
aadd("z-liquids-4",			"nitrogen-canister",							"c")
aadd("z-liquids-4",			"chlorine-canister",							"d")
aadd("z-liquids-4",			"hydrogen-chloride-canister",					"e")
aadd("z-liquids-4",			"petroleum-gas-canister",						"f")
aadd("z-liquids-4",			"liquid-fuel-canister",							"g")
aadd("z-liquids-4",			"ferric-chloride-canister",						"h")

aadd("z-liquids-11",		"water",										"a")
aadd("z-liquids-11",		"lithia-water",									"b")
aadd("z-liquids-11",		"water-purified",								"c")
aadd("z-liquids-11",		"water-saline",									"d")
aadd("z-liquids-11",		"thermal-water",								"e")
aadd("z-liquids-11",		"liquid-air",									"f")

aadd("z-liquids-11",		"crude-oil",									"g")
aadd("z-liquids-11",		"heavy-oil",									"h")
aadd("z-liquids-11",		"light-oil",									"i")
aadd("z-liquids-11",		"lubricant",									"j")
aadd("z-liquids-11",		"liquid-fuel",									"k")
aadd("z-liquids-11",		"bi-Bio_Fuel",									"l")
aadd("z-liquids-11",		"bi-biomass",									"m")
aadd("z-liquids-11",		"bi-biomass-0",									"n")

aadd("z-liquids-11",		"crystal-seedling",								"o")
aadd("z-liquids-11",		"crystal-matrix",								"p")
aadd("z-liquids-11",		"crystal-slurry",								"q")
aadd("z-liquids-11",		"mineral-sludge",								"r")
aadd("z-liquids-11",		"slag-slurry",									"s")
aadd("z-liquids-11",		"NE_alien_toxin",								"t")
aadd("z-liquids-11",		"NE_alien-revitalization",						"u")
aadd("z-liquids-11",		"NE_revitalization-solution",					"v")
aadd("z-liquids-11",		"NE_basic-alien-nutrientant",					"w")
aadd("z-liquids-11",		"NE_nutrient-solution",							"x")
aadd("z-liquids-11",		"NE_enhanced-alien-nutrientant",				"y")
aadd("z-liquids-11",		"NE_enhanced-nutrient-solution",				"z")

aadd("z-module-2",			"speed-processor",								"a")
aadd("z-module-2",			"speed-processor-2",							"b")
aadd("z-module-2",			"speed-processor-3",							"c")
aadd("z-module-2",			"effectivity-processor",						"d")
aadd("z-module-2",			"effectivity-processor-2",						"e")
aadd("z-module-2",			"effectivity-processor-3",						"f")
aadd("z-module-2",			"productivity-processor",						"g")
aadd("z-module-2",			"productivity-processor-2",						"h")
aadd("z-module-2",			"productivity-processor-3",						"i")

aadd("z-module-3",			"pollution-clean-processor",					"a")
aadd("z-module-3",			"pollution-clean-processor-2",					"b")
aadd("z-module-3",			"pollution-clean-processor-3",					"c")
aadd("z-module-3",			"pollution-create-processor",					"d")
aadd("z-module-3",			"pollution-create-processor-2",					"e")
aadd("z-module-3",			"pollution-create-processor-3",					"f")

aadd("z-other-0",			"sky-entrance",									"a")
aadd("z-other-0",			"sky-exit",										"b")
aadd("z-other-0",			"underground-entrance",							"c")
aadd("z-other-0",			"underground-exit",								"d")

aadd("z-other-1",			"energy-transport-lower",						"a")
aadd("z-other-1",			"energy-transport-upper",						"b")
aadd("z-other-1",			"energy-transport-2-lower",						"c")
aadd("z-other-1",			"energy-transport-2-upper",						"d")
aadd("z-other-1",			"energy-transport-3-lower",						"e")
aadd("z-other-1",			"energy-transport-3-upper",						"f")
aadd("z-other-1",			"energy-transport-4-lower",						"g")
aadd("z-other-1",			"energy-transport-4-upper",						"h")

aadd("z-other-2",			"wooden-transport-chest-down",					"a")
aadd("z-other-2",			"wooden-transport-chest-up",					"b")
aadd("z-other-2",			"iron-transport-chest-down",					"c")
aadd("z-other-2",			"iron-transport-chest-up",						"d")
aadd("z-other-2",			"steel-transport-chest-down",					"e")
aadd("z-other-2",			"steel-transport-chest-up",						"f")
aadd("z-other-2",			"logistic-transport-chest-down",				"g")
aadd("z-other-2",			"logistic-transport-chest-up",					"h")
aadd("z-other-2",			"logistic-transport-chest-2-down",				"i")
aadd("z-other-2",			"logistic-transport-chest-2-up",				"j")

aadd("z-other-3",			"transport-storehouse-down",					"a")
aadd("z-other-3",			"transport-storehouse-up",						"b")
aadd("z-other-3",			"logistic-transport-storehouse-down",			"c")
aadd("z-other-3",			"logistic-transport-storehouse-up",				"d")
aadd("z-other-3",			"transport-warehouse-down",						"e")
aadd("z-other-3",			"transport-warehouse-up",						"f")
aadd("z-other-3",			"logistic-transport-warehouse-down",			"g")
aadd("z-other-3",			"logistic-transport-warehouse-up",				"h")

aadd("z-other-4",			"fluid-transport-lower",						"a")
aadd("z-other-4",			"fluid-transport-upper",						"b")
aadd("z-other-4",			"fluid-transport-2-lower",						"c")
aadd("z-other-4",			"fluid-transport-2-upper",						"d")
aadd("z-other-4",			"fluid-transport-3-lower",						"e")
aadd("z-other-4",			"fluid-transport-3-upper",						"f")
aadd("z-other-4",			"fluid-transport-4-lower",						"g")
aadd("z-other-4",			"fluid-transport-4-upper",						"h")

aadd("z-other-5",			"crude-servo",									"a")
aadd("z-other-5",			"standard-servo",								"b")
aadd("z-other-5",			"improved-servo",								"c")
aadd("z-other-5",			"crude-connector",								"d")
aadd("z-other-5",			"basic-connector",								"e")
aadd("z-other-5",			"standard-connector",							"f")
aadd("z-other-5",			"improved-connector",							"g")
aadd("z-other-5",			"advanced-connector",							"h")

aadd("z-other-6",			"actuator",										"a")
aadd("z-other-6",			"avatar-arm",									"b")
aadd("z-other-6",			"avatar-leg",									"c")
aadd("z-other-6",			"avatar-head",									"d")
aadd("z-other-6",			"avatar-internals",								"e")
aadd("z-other-6",			"avatar-torso",									"f")
aadd("z-other-6",			"avatar-skin",									"g")

aadd("z-other-7",			"avatar-assembling-machine",					"a")
aadd("z-other-7",			"avatar-remote-deployment-unit",				"b")
aadd("z-other-7",			"avatar-control-center",						"c")
aadd("z-other-7",			"avatar",										"d")
aadd("z-other-7",			"attractor-on",									"e")
aadd("z-other-7",			"attractor-off",								"f")
aadd("z-other-7",			"personal-spawn-marker-recipe",					"f")
aadd("z-other-7",			"personal-spawn-marker-item",					"h")

aadd("z-other-8",			"drydock-assembly",								"a")
aadd("z-other-8",			"drydock-structural",							"b")
aadd("z-other-8",			"fusion-reactor",								"c")
aadd("z-other-8",			"hull-component",								"d")
aadd("z-other-8",			"protection-field",								"e")
aadd("z-other-8",			"space-thruster",								"f")
aadd("z-other-8",			"fuel-cell",									"g")
aadd("z-other-8",			"fuel-cell-hydrogen",							"h")

aadd("z-other-9",			"habitation",									"a")
aadd("z-other-9",			"life-support",									"b")
aadd("z-other-9",			"command",										"c")
aadd("z-other-9",			"astrometrics",									"d")
aadd("z-other-9",			"ftl-drive",									"e")

aadd("z-parts-10",			"angels-electrolyser",							"a")
aadd("z-parts-10",			"angels-electrolyser-2",						"b")
aadd("z-parts-10",			"angels-electrolyser-3",						"c")
aadd("z-parts-10",			"angels-electrolyser-4",						"d")
aadd("z-parts-10",			"liquifier",									"e")
aadd("z-parts-10",			"liquifier-2",									"f")
aadd("z-parts-10",			"liquifier-3",									"g")
aadd("z-parts-10",			"liquifier-4",									"h")

aadd("z-parts-11",			"separator",									"a")
aadd("z-parts-11",			"separator-2",									"b")
aadd("z-parts-11",			"separator-3",									"c")
aadd("z-parts-11",			"separator-4",									"d")
aadd("z-parts-11",			"gas-refinery",									"e")
aadd("z-parts-11",			"gas-refinery-2",								"f")
aadd("z-parts-11",			"gas-refinery-3",								"g")
aadd("z-parts-11",			"gas-refinery-4",								"h")

aadd("z-parts-12",			"steam-cracker",								"a")
aadd("z-parts-12",			"steam-cracker-2",								"b")
aadd("z-parts-12",			"steam-cracker-3",								"c")
aadd("z-parts-12",			"steam-cracker-4",								"d")

aadd("z-parts-13",			"advanced-chemical-plant",						"a")
aadd("z-parts-13",			"advanced-chemical-plant-2",					"b")
aadd("z-parts-13",			"air-filter",									"c")
aadd("z-parts-13",			"air-filter-2",									"d")
aadd("z-parts-13",			"fluid-splitter-2-way",							"e")
aadd("z-parts-13",			"fluid-splitter-3-way",							"f")

aadd("z-parts-14",			"angels-storage-tank-1",						"a")
aadd("z-parts-14",			"angels-storage-tank-2",						"b")
aadd("z-parts-14",			"angels-pressure-tank-1",						"c")
aadd("z-parts-14",			"valve-check",									"d")
aadd("z-parts-14",			"valve-return",									"e")
aadd("z-parts-14",			"valve-overflow",								"f")
aadd("z-parts-14",			"valve-converter",								"g")

aadd("z-plates-8",			"aluminium-titanium-a",							"a")
aadd("z-plates-8",			"zinc-iron",									"b")
aadd("z-plates-8",			"zinc-tin",										"c")
aadd("z-plates-8",			"advanced-electrum",							"d")
aadd("z-plates-8",			"stone-quartz",									"e")

aadd("z-plates-10",			"angelsore1-crushed-smelting",					"a")
aadd("z-plates-10",			"angelsore3-crushed-smelting",					"b")
aadd("z-plates-10",			"angelsore5-crushed-smelting",					"c")
aadd("z-plates-10",			"angelsore6-crushed-smelting",					"d")

aadd("z-production-2",		"chemical-furnace",								"i")

aadd("z-production-4",		"tank-assembling-machine",						"g")
aadd("z-production-4",		"tank-ammo-assembling-machine",					"h")

aadd("z-resources-0",		"crude-gold",									"l")

aadd("z-resources-1",		"solid-calcium-carbonate",						"l")

aadd("z-resources-2",		"blue-fiber-algae",								"a")
aadd("z-resources-2",		"blue-cellulose-fiber",							"b")
aadd("z-resources-2",		"red-cellulose-fiber",							"c")
aadd("z-resources-2",		"blue-fiber-algae",								"c")
aadd("z-resources-2",		"paste-from-gas-chlor-methane",					"g")
aadd("z-resources-2",		"wood-pellets",									"h")
aadd("z-resources-2",		"wood-bricks",									"i")

aadd("z-resources-3",		"platinum-ore",									"h")
aadd("z-resources-3",		"chrome-ore",									"i")
aadd("z-resources-3",		"manganese-ore",								"j")

aadd("z-resources-4",		"sponge-titanium",								"h")

aadd("z-resources-5",		"paste-cellulose",								"a")
aadd("z-resources-5",		"paste-iron",									"b")
aadd("z-resources-5",		"paste-copper",									"c")
aadd("z-resources-5",		"paste-zinc",									"d")
aadd("z-resources-5",		"paste-gold",									"e")
aadd("z-resources-5",		"paste-silver",									"f")
aadd("z-resources-5",		"paste-cobalt",									"g")
aadd("z-resources-5",		"paste-titanium",								"h")
aadd("z-resources-5",		"paste-tungsten",								"i")

aadd("z-resources-7",		"plastic-bar",									"a")
aadd("z-resources-7",		"bi-platic",									"b")
aadd("z-resources-7",		"resin",										"c")
aadd("z-resources-7",		"bob-resin-oil",								"d")
aadd("z-resources-7",		"bob-resin-wood",								"e")
aadd("z-resources-7",		"rubber",										"f")
aadd("z-resources-7",		"bob-rubber",									"g")

aadd("z-resources-8",		"uranium-ore",									"o")
aadd("z-resources-8",		"enriched-fuel",								"p")
aadd("z-resources-8",		"plutonium",									"q")
aadd("z-resources-8",		"spent-fuel",									"r")
aadd("z-resources-8",		"depleted-uranium",								"s")
aadd("z-resources-8",		"plutonium-core",								"t")

aadd("z-trains-0",			"diesel-locomotive",							"b")
aadd("z-trains-0",			"bob-armoured-diesel-locomotive-2",				"i")

aadd("z-trains-1",			"cargo-wagon",									"b")
aadd("z-trains-1",			"bob-armoured-cargo-wagon-2",					"i")

aadd("z-trains-11",			"bi-rail-wood",									"a")
aadd("z-trains-11",			"rail",											"b")

aadd("z-transport-2",		"medium-underground-belt",						"a")
aadd("z-transport-2",		"long-underground-belt",						"b")
aadd("z-transport-2",		"medium-fast-underground-belt",					"c")
aadd("z-transport-2",		"long-fast-underground-belt",					"d")
aadd("z-transport-2",		"medium-express-underground-belt",				"e")
aadd("z-transport-2",		"long-express-underground-belt",				"f")

aadd("z-transport-4",		"smartsplitter",								"h")
aadd("z-transport-4",		"Single Splitter",								"i")

aadd("z-transport-5",		"pipe",											"a")
aadd("z-transport-5",		"valve",										"b")
aadd("z-transport-5",		"pipe-to-ground",								"c")
aadd("z-transport-5",		"medium-pipe-to-ground",						"d")
aadd("z-transport-5",		"long-pipe-to-ground",							"e")
aadd("z-transport-5",		"ultra-pipe-to-ground",							"f")
aadd("z-transport-5",		"continental-pipe-to-ground",					"g")

aadd("z-vehicles-0",		"car-flamer",									"b")
aadd("z-vehicles-0",		"tank",											"c")
aadd("z-vehicles-0",		"tank-2",										"d")
aadd("z-vehicles-0",		"tank-3",										"e")
aadd("z-vehicles-0",		"bob-robot-tank",								"f")
aadd("z-vehicles-0",		"bob-tank-2",									"g")
aadd("z-vehicles-0",		"bob-tank-3",									"h")

aadd("z-vehicles-1",		"flame-tank-wlsk",								"j")
aadd("z-vehicles-1",		"auto-tank",									"k")
aadd("z-vehicles-1",		"modular-tank",									"l")
aadd("z-vehicles-1",		"auto-tank-wlsk",								"m")
aadd("z-vehicles-1",		"nade-tank",									"n")
aadd("z-vehicles-1",		"nade-tank-wlsk",								"o")
aadd("z-vehicles-1",		"mine-tank",									"p")
aadd("z-vehicles-1",		"rocket-tank",									"q")

aadd("z-vehicles-2",		"super-tank",									"a")
aadd("z-vehicles-2",		"super-tank-alternate",							"b")
aadd("z-vehicles-2",		"super-tank-wmd",								"c")
aadd("z-vehicles-2",		"tank-artillery",								"d")
aadd("z-vehicles-2",		"tank-auto-cannon",								"e")
aadd("z-vehicles-2",		"tank-cannon",									"f")
aadd("z-vehicles-2",		"tank-mine-cannon",								"g")
aadd("z-vehicles-2",		"tank-nade-cannon",								"h")
aadd("z-vehicles-2",		"tank-wmd-cannon",								"i")
aadd("z-vehicles-2",		"tank-light-chasis-wlsk",						"j")

aadd("z-vehicles-3",		"tank-machinegun-turret",						"a")
aadd("z-vehicles-3",		"tank-flamer",									"b")
aadd("z-vehicles-3",		"tank-flamer-2",								"c")
aadd("z-vehicles-3",		"tank-rocket-cannon",							"d")

aadd("z-vehicles-4",		"cannon-shell",									"a")
aadd("z-vehicles-4",		"cannon-shell-2",								"b")
aadd("z-vehicles-4",		"cannon-shell-convert",							"c")
aadd("z-vehicles-4",		"explosive-cannon-shell",						"d")
aadd("z-vehicles-4",		"scatter-cannon-shell",							"e")
aadd("z-vehicles-4",		"poison-artillery-shell",						"f")
aadd("z-vehicles-4",		"explosive-artillery-shell",					"g")
aadd("z-vehicles-4",		"distractor-artillery-shell",					"h")

aadd("z-vehicles-5",		"tank-ammo-casing",								"a")
aadd("z-vehicles-5",		"tank-ammo-reinforced-casing",					"b")
aadd("z-vehicles-5",		"tank-ammo-universal-explosive",				"c")
aadd("z-vehicles-5",		"tank-ammo-universal-explosive-synthetic",		"d")
aadd("z-vehicles-5",		"minepack",										"e")
aadd("z-vehicles-5",		"minepack-poison",								"f")

aadd("z-vehicles-6",		"45mm-auto",									"a")
aadd("z-vehicles-6",		"50mm-mortar",									"b")
aadd("z-vehicles-6",		"50mm-mortar-poison",							"c")
aadd("z-vehicles-6",		"rocketpack",									"d")
aadd("z-vehicles-6",		"tank-wmd-ammo",								"e")
aadd("z-vehicles-6",		"flame-thrower-ammo-tanker",					"f")
aadd("z-vehicles-6",		"flame-thrower-ammo-tanker-2",					"g")

aadd("z-vehicles-7",		"ap-bullet-brick",								"a")
aadd("z-vehicles-7",		"piercing-shotgun-shell-brick",					"a")
aadd("z-vehicles-7",		"fish-kit",										"a")
aadd("z-vehicles-7",		"tank-recall-token",							"a")

aadd("z-weaponry-0",		"bob-laser-robot",								"j")
aadd("z-weaponry-0",		"assembly-robot",								"k")

aadd("z-weaponry-1",		"bob-laser-robot-capsule",						"k")

aadd("z-weaponry-12",		"vehicle-solar-panel-1",						"a")
aadd("z-weaponry-12",		"vehicle-solar-panel-2",						"b")
aadd("z-weaponry-12",		"vehicle-solar-panel-3",						"c")
aadd("z-weaponry-12",		"vehicle-solar-panel-4",						"d")
aadd("z-weaponry-12",		"vehicle-solar-panel-5",						"e")
aadd("z-weaponry-12",		"vehicle-solar-panel-6",						"f")

aadd("z-weaponry-13",		"vehicle-fusion-cell-1",						"a")
aadd("z-weaponry-13",		"vehicle-fusion-cell-2",						"b")
aadd("z-weaponry-13",		"vehicle-fusion-cell-3",						"c")
aadd("z-weaponry-13",		"vehicle-fusion-cell-4",						"d")
aadd("z-weaponry-13",		"vehicle-fusion-cell-5",						"e")
aadd("z-weaponry-13",		"vehicle-fusion-cell-6",						"f")

aadd("z-weaponry-14",		"vehicle-fusion-reactor-1",						"a")
aadd("z-weaponry-14",		"vehicle-fusion-reactor-2",						"b")
aadd("z-weaponry-14",		"vehicle-fusion-reactor-3",						"c")
aadd("z-weaponry-14",		"vehicle-fusion-reactor-4",						"d")
aadd("z-weaponry-14",		"vehicle-fusion-reactor-5",						"e")
aadd("z-weaponry-14",		"vehicle-fusion-reactor-6",						"f")

aadd("z-weaponry-15",		"vehicle-shield-1",								"a")
aadd("z-weaponry-15",		"vehicle-shield-2",								"b")
aadd("z-weaponry-15",		"vehicle-shield-3",								"c")
aadd("z-weaponry-15",		"vehicle-shield-4",								"d")
aadd("z-weaponry-15",		"vehicle-shield-5",								"e")
aadd("z-weaponry-15",		"vehicle-shield-6",								"f")

aadd("z-weaponry-16",		"vehicle-battery-1",							"a")
aadd("z-weaponry-16",		"vehicle-battery-2",							"b")
aadd("z-weaponry-16",		"vehicle-battery-3",							"c")
aadd("z-weaponry-16",		"vehicle-battery-4",							"d")
aadd("z-weaponry-16",		"vehicle-battery-5",							"e")
aadd("z-weaponry-16",		"vehicle-battery-6",							"f")

aadd("z-weaponry-17",		"vehicle-big-turret-1",							"a")
aadd("z-weaponry-17",		"vehicle-big-turret-2",							"b")
aadd("z-weaponry-17",		"vehicle-big-turret-3",							"c")
aadd("z-weaponry-17",		"vehicle-big-turret-4",							"d")
aadd("z-weaponry-17",		"vehicle-big-turret-5",							"e")
aadd("z-weaponry-17",		"vehicle-big-turret-6",							"f")

aadd("z-weaponry-18",		"vehicle-laser-defense-1",						"a")
aadd("z-weaponry-18",		"vehicle-laser-defense-2",						"b")
aadd("z-weaponry-18",		"vehicle-laser-defense-3",						"c")
aadd("z-weaponry-18",		"vehicle-laser-defense-4",						"d")
aadd("z-weaponry-18",		"vehicle-laser-defense-5",						"e")
aadd("z-weaponry-18",		"vehicle-laser-defense-6",						"f")

_log("BEFORE WORK")
zgc.get_group_name("z-liquids-19",fluids)
for k, v in pairs(data.raw["fluid"]) do
	_log("FLUID: %s : %s IN %s/%s(%s)",k,v.name,v.group,v.subgroup,v.order)
	v.subgroup = "zgc-liquids-19"
end

for k,v in pairs(data.raw["item-subgroup"]) do
	if v.group == "petrochem-refining" then v.group = "zgc-parts" end
	if v.group == "angels-smelting" then v.group = "zgc-engines" end
end

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


