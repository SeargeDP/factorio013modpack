local allow_changes = z_balance.vanila

do	--[[gathering]]--
	aadd("z-gathering-0",		"iron-axe",					"a")
	aadd("z-gathering-0",		"steel-axe",				"b")
	aadd("z-gathering-0",		"repair-pack",				"i")
	
	aadd("z-gathering-1",		"wooden-chest",				"a")
	aadd("z-gathering-1",		"iron-chest",				"b")
	aadd("z-gathering-1",		"steel-chest",				"c")
	
	aadd("z-gathering-3",		"storage-tank",				"a")
	
	aadd("z-gathering-4",		"burner-mining-drill",		"a")
	
	aadd("z-gathering-6",		"electric-mining-drill",	"a")
	
	
	aadd("z-gathering-8",		"offshore-pump",			"a")
	aadd("z-gathering-8",		"pumpjack",					"d")
	
	aadd("z-gathering-10",		"small-pump",				"a")
	
end
do	--[[production]]--
	aadd("z-production-0",		"stone-furnace",			"a")
	aadd("z-production-0",		"steel-furnace",			"b")
	aadd("z-production-0",		"electric-furnace",			"c")
	
	aadd("z-production-4",		"assembling-machine-1",		"a")
	aadd("z-production-4",		"assembling-machine-2",		"b")
	aadd("z-production-4",		"assembling-machine-3",		"c")
	
	aadd("z-production-6",		"oil-refinery",				"a")
	
	aadd("z-production-7",		"chemical-plant",			"a")
end
do	--[[resources]]--
	aadd("z-resources-0",		"raw-wood",					"a")
	aadd("z-resources-0",		"wood",						"b")
	aadd("z-resources-0",		"sulfur",					"d")
	
	aadd("z-resources-3",		"coal",						"a")
	aadd("z-resources-3",		"stone",					"c")
	aadd("z-resources-3",		"iron-ore",					"d")
	aadd("z-resources-3",		"copper-ore",				"e")
	
  if allow_changes then
	data:extend({
		{
			type = "recipe",
			name = "z-coal",
			icon = "__base__/graphics/icons/coal-dark-background.png",
			category = "smelting",
			subgroup = "z-resources-1",
			order = "b",
			energy_required = 35,
			enabled = true,
			ingredients = {{"raw-wood",25}},
			hidden = false,
			result = "coal",
			result_count = 10
		},
	})
	aadd("z-resources-0",		"z-coal",					"b")
  end
end
do	--[[plates]]--
	aadd("z-plates-0",			"iron-plate",				"a")
	aadd("z-plates-0",			"copper-plate",				"b")
	
	aadd("z-plates-1",			"steel-plate",				"a")
	
end
do	--[[liquids]]--
	aadd("z-liquids-0",			"empty-barrel",				"a")
	
	aadd("z-liquids-1",			"fill-crude-oil-barrel",	"a")
	
	aadd("z-liquids-2",			"empty-crude-oil-barrel",	"a")
	aadd("z-liquids-2",			"lubricant",				"b")
	
	aadd("z-liquids-3",			"crude-oil-barrel",			"a")
	
	aadd("z-liquids-4",			"basic-oil-processing",		"b")
	aadd("z-liquids-4",			"advanced-oil-processing",	"c")
	
end
do	--[[chemistry]]--
	aadd("z-chemistry-0",		"sulfuric-acid",			"a")
	
	aadd("z-chemistry-2",		"heavy-oil-cracking",		"a")
	aadd("z-chemistry-2",		"light-oil-cracking",		"b")
	
	aadd("z-chemistry-3",	"solid-fuel-from-light-oil",	"a")
	aadd("z-chemistry-3",	"solid-fuel-from-heavy-oil",	"b")
	aadd("z-chemistry-3",	"solid-fuel-from-petroleum-gas","c")
	
	aadd("z-chemistry-5",		"plastic-bar",				"a")
	
end
do	--[[automatization]]--
	aadd("z-automatization-0",	"burner-inserter",				"a")--
	aadd("z-automatization-0",	"inserter",						"b")--
	aadd("z-automatization-0",	"long-handed-inserter",			"c")--
	
	aadd("z-automatization-1",	"filter-inserter",				"a")--
	aadd("z-automatization-1",	"stack-filter-inserter",		"i")--
	
	aadd("z-automatization-2",	"fast-inserter",				"a")--
	aadd("z-automatization-2",	"stack-inserter",				"h")--
	
end
do	--[[transport]]--
	aadd("z-transport-0",		"transport-belt",			"a")
	aadd("z-transport-0",		"fast-transport-belt",		"b")
	aadd("z-transport-0",		"express-transport-belt",	"c")
	
	aadd("z-transport-1",		"underground-belt",			"a")
	aadd("z-transport-1",		"fast-underground-belt",	"b")
	aadd("z-transport-1",		"express-underground-belt",	"c")
	
	aadd("z-transport-4",		"splitter",					"a")
	aadd("z-transport-4",		"fast-splitter",			"b")
	aadd("z-transport-4",		"express-splitter",			"c")
	
	aadd("z-transport-8",		"pipe",						"a")
	
	aadd("z-transport-9",		"pipe-to-ground",			"a")
	
	if i_exist("fast-underground-belt") then
		data.raw["underground-belt"]["fast-underground-belt"].underground_sprite.filename = "__ZGroupChange__/graphics/entity/u_line_r.png" end
	if i_exist("express-underground-belt") then
		data.raw["underground-belt"]["express-underground-belt"].underground_sprite.filename = "__ZGroupChange__/graphics/entity/u_line_b.png" end
	if i_exist("pipe-to-ground") then
		data.raw["pipe-to-ground"]["pipe-to-ground"].underground_sprite = {
			filename = "__ZGroupChange__/graphics/entity/u_pipe_1.png",
			priority = "high",
			width = 64,
			height = 64,
			x = 64,
			scale = 0.5
		}
	end
	
end
do	--[[logistic]]--
	aadd("z-logistic-0",		"blueprint-book",					"a")
	aadd("z-logistic-0",		"blueprint",						"b")
	aadd("z-logistic-0",		"deconstruction-planner",			"c")
	
	aadd("z-logistic-1",		"roboport",							"a")
	aadd("z-logistic-1",		"logistic-robot",					"c")
	aadd("z-logistic-1",		"construction-robot",				"e")
	
	aadd("z-logistic-2",		"logistic-chest-storage",			"a")
	aadd("z-logistic-2",		"logistic-chest-requester",			"b")
	aadd("z-logistic-2",		"logistic-chest-passive-provider",	"c")
	aadd("z-logistic-2",		"logistic-chest-active-provider",	"d")
	
	aadd("z-logistic-8",		"copper-cable",						"a")
	aadd("z-logistic-8",		"red-wire",							"b")
	aadd("z-logistic-8",		"green-wire",						"c")
	
	aadd("z-logistic-9",		"arithmetic-combinator",			"a")
	aadd("z-logistic-9",		"decider-combinator",				"b")
	aadd("z-logistic-9",		"constant-combinator",				"c")
	aadd("z-logistic-9",		"power-switch",						"d")
end
do	--[[energy]]--
	aadd("z-energy-0",			"solid-fuel",				"a")
	
	aadd("z-energy-1",			"boiler",					"a")
	
	aadd("z-energy-2",			"steam-engine",				"a")
	
	aadd("z-energy-3",			"accumulator",				"a")
	
	aadd("z-energy-4",			"solar-panel",				"a")
	
	aadd("z-energy-7",			"small-electric-pole",		"b")
	aadd("z-energy-7",			"medium-electric-pole",		"c")
	
	aadd("z-energy-8",			"big-electric-pole",		"a")
	aadd("z-energy-8",			"substation",				"e")
	
end
do	--[[defense]]--
	aadd("z-defense-0",			"stone-wall",				"a")
	aadd("z-defense-0",			"gate",						"b")
	
	aadd("z-defense-3",			"gun-turret",				"a")
	aadd("z-defense-3",			"flamethrower-turret",		"b")
	aadd("z-defense-3",			"laser-turret",				"c")
	
	aadd("z-defense-8",			"radar",					"a")
	
end
do	--[[armor]]--
	aadd("z-armor-0",			"pistol",							"a")
	aadd("z-armor-0",			"submachine-gun",					"b")
	aadd("z-armor-0",			"shotgun",							"c")
	aadd("z-armor-0",			"combat-shotgun",					"d")
	aadd("z-armor-0",			"flame-thrower",					"e")
	aadd("z-armor-0",			"rocket-launcher",					"f")
	
	aadd("z-armor-1",			"firearm-magazine",					"a")
	aadd("z-armor-1",			"piercing-rounds-magazine",			"b")
	aadd("z-armor-1",			"shotgun-shell",					"c")
	aadd("z-armor-1",			"piercing-shotgun-shell",			"d")
	aadd("z-armor-1",			"flame-thrower-ammo",				"e")
	aadd("z-armor-1",			"rocket",							"f")
	aadd("z-armor-1",			"explosive-rocket",					"g")
	
	aadd("z-armor-2",			"grenade",							"a")
	aadd("z-armor-2",			"cluster-grenade",					"b")
	aadd("z-armor-2",			"land-mine",						"c")
	aadd("z-armor-2",			"slowdown-capsule",					"d")
	aadd("z-armor-2",			"poison-capsule",					"e")
	aadd("z-armor-2",			"defender-capsule",					"f")
	aadd("z-armor-2",			"distractor-capsule",				"g")
	aadd("z-armor-2",			"destroyer-capsule",				"h")
	aadd("z-armor-2",			"discharge-defense-remote",			"i")
	
	aadd("z-armor-3",			"light-armor",						"a")
	aadd("z-armor-3",			"heavy-armor",						"b")
	aadd("z-armor-3",			"modular-armor",					"c")
	aadd("z-armor-3",			"power-armor",						"d")
	aadd("z-armor-3",			"power-armor-mk2",					"e")
	
	aadd("z-armor-4",			"exoskeleton-equipment",			"a")
	aadd("z-armor-4",			"night-vision-equipment",			"b")
	aadd("z-armor-4",			"personal-roboport-equipment",		"c")
	
	aadd("z-armor-5",			"solar-panel-equipment",			"a")
	aadd("z-armor-5",			"fusion-reactor-equipment",			"b")
	aadd("z-armor-5",			"battery-equipment",				"c")
	aadd("z-armor-5",			"battery-mk2-equipment",			"d")
	
	aadd("z-armor-6",			"personal-laser-defense-equipment",	"a")
	aadd("z-armor-6",			"discharge-defense-equipment",		"b")
	
	aadd("z-armor-7",			"energy-shield-equipment",			"a")
	aadd("z-armor-7",			"energy-shield-mk2-equipment",		"b")
	
end
do	--[[intermediate]]--
	aadd("z-intermediate-0",	"science-pack-1",			"a")
	aadd("z-intermediate-0",	"science-pack-2",			"b")
	aadd("z-intermediate-0",	"science-pack-3",			"c")
	aadd("z-intermediate-0",	"alien-science-pack",		"d")
	
	aadd("z-intermediate-1",	"electronic-circuit",		"b")
	aadd("z-intermediate-1",	"advanced-circuit",			"d")
	aadd("z-intermediate-1",	"processing-unit",			"f")
	
	aadd("z-intermediate-4",	"iron-gear-wheel",			"a")
	
	aadd("z-intermediate-3",	"alien-artifact",			"a")
	
	aadd("z-intermediate-4",	"fish",						"a")
	aadd("z-intermediate-4",	"raw-fish",					"b")
	aadd("z-intermediate-4",	"iron-stick",				"c")
	aadd("z-intermediate-4",	"explosives",				"d")
	aadd("z-intermediate-4",	"battery",					"e")
	aadd("z-intermediate-4",	"engine-unit",				"f")
	aadd("z-intermediate-4",	"electric-engine-unit",		"g")
	aadd("z-intermediate-4",	"flying-robot-frame",		"h")
	
	aadd("z-intermediate-7",	"rocket-silo",				"a")
	aadd("z-intermediate-7",	"low-density-structure",	"b")
	aadd("z-intermediate-7",	"rocket-fuel",				"c")
	aadd("z-intermediate-7",	"rocket-part",				"d")
	aadd("z-intermediate-7",	"rocket-control-unit",		"e")
	aadd("z-intermediate-7",	"satellite",				"f")
	
end
do	--[[module]]--
	aadd("z-module-0",			"lab",						"a")
	aadd("z-module-0",			"beacon",					"e")
	
	aadd("z-module-3",			"speed-module",				"a")
	aadd("z-module-3",			"speed-module-2",			"b")
	aadd("z-module-3",			"speed-module-3",			"c")
	
	aadd("z-module-4",			"productivity-module",		"a")
	aadd("z-module-4",			"productivity-module-2",	"b")
	aadd("z-module-4",			"productivity-module-3",	"c")
	
	aadd("z-module-5",			"effectivity-module",		"a")
	aadd("z-module-5",			"effectivity-module-2",		"b")
	aadd("z-module-5",			"effectivity-module-3",		"c")
end
do	--[[trains-vehicles]]--
	aadd("z-trains-0",			"diesel-locomotive",		"c")
	
	aadd("z-trains-1",			"cargo-wagon",				"b")
	
	aadd("z-trains-11",			"rail",						"a")
	aadd("z-trains-11",			"straight-rail",			"c")
	aadd("z-trains-11",			"curved-rail",				"d")
	aadd("z-trains-11",			"train-stop",				"e")
	aadd("z-trains-11",			"rail-signal",				"f")
	aadd("z-trains-11",			"rail-chain-signal",		"g")
	
	
	aadd("z-vehicles-0",		"car",						"a")
	aadd("z-vehicles-0",		"tank",						"b")
	
	aadd("z-vehicles-1",		"tank-machine-gun",			"a")
	aadd("z-vehicles-1",		"vehicle-machine-gun",		"b")
	
	aadd("z-vehicles-2",		"cannon-shell",				"a")
	aadd("z-vehicles-2",		"explosive-cannon-shell",	"b")
	
end
do	--[[decorative]]--
	aadd("z-decorative-0",			"landfill",				"a")
	aadd("z-decorative-0",			"stone-brick",			"b")
	aadd("z-decorative-0",			"concrete",				"c")
	aadd("z-decorative-0",			"hazard-concrete",		"d")
	
	aadd("z-decorative-2",			"small-lamp",			"a")
	
end
