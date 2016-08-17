local allow_changes = z_balance.vanila

do	--[[gathering]]--
	aadd("gathering-0",		"iron-axe",					"a")
	aadd("gathering-0",		"steel-axe",				"b")
	aadd("gathering-0",		"repair-pack",				"i")
	
	aadd("gathering-1",		"wooden-chest",				"a")
	aadd("gathering-1",		"iron-chest",				"b")
	aadd("gathering-1",		"steel-chest",				"c")
	
	aadd("gathering-3",		"storage-tank",				"a")
	
	aadd("gathering-4",		"burner-mining-drill",		"a")
	
	aadd("gathering-6",		"electric-mining-drill",	"a")
	
	
	aadd("gathering-8",		"offshore-pump",			"a")
	aadd("gathering-8",		"pumpjack",					"d")
	
	aadd("gathering-10",		"small-pump",				"a")
	
end
do	--[[production]]--
	aadd("production-0",		"stone-furnace",			"a")
	aadd("production-0",		"steel-furnace",			"b")
	aadd("production-0",		"electric-furnace",			"c")
	
	aadd("production-4",		"assembling-machine-1",		"a")
	aadd("production-4",		"assembling-machine-2",		"b")
	aadd("production-4",		"assembling-machine-3",		"c")
	
	aadd("production-6",		"oil-refinery",				"a")
	
	aadd("production-7",		"chemical-plant",			"a")
end
do	--[[resources]]--
	aadd("resources-0",		"raw-wood",					"a")
	aadd("resources-0",		"wood",						"b")
	aadd("resources-0",		"sulfur",					"d")
	
	aadd("resources-3",		"coal",						"a")
	aadd("resources-3",		"stone",					"c")
	aadd("resources-3",		"iron-ore",					"d")
	aadd("resources-3",		"copper-ore",				"e")
	
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
	aadd("resources-0",		"z-coal",					"b")
  end
end
do	--[[plates]]--
	aadd("plates-0",			"iron-plate",				"a")
	aadd("plates-0",			"copper-plate",				"b")
	
	aadd("plates-1",			"steel-plate",				"a")
	
end
do	--[[liquids]]--
	aadd("liquids-0",			"empty-barrel",				"a")
	
	aadd("liquids-1",			"fill-crude-oil-barrel",	"a")
	
	aadd("liquids-2",			"empty-crude-oil-barrel",	"a")
	aadd("liquids-2",			"lubricant",				"b")
	
	aadd("liquids-3",			"crude-oil-barrel",			"a")
	
	aadd("liquids-4",			"basic-oil-processing",		"b")
	aadd("liquids-4",			"advanced-oil-processing",	"c")
	
end
do	--[[chemistry]]--
	aadd("chemistry-0",		"sulfuric-acid",			"a")
	
	aadd("chemistry-2",		"heavy-oil-cracking",		"a")
	aadd("chemistry-2",		"light-oil-cracking",		"b")
	
	aadd("chemistry-3",	"solid-fuel-from-light-oil",	"a")
	aadd("chemistry-3",	"solid-fuel-from-heavy-oil",	"b")
	aadd("chemistry-3",	"solid-fuel-from-petroleum-gas","c")
	
	aadd("chemistry-5",		"plastic-bar",				"a")
	
end
do	--[[automatization]]--
	aadd("automatization-0",	"burner-inserter",				"a")--
	aadd("automatization-0",	"inserter",						"b")--
	aadd("automatization-0",	"long-handed-inserter",			"c")--
	
	aadd("automatization-1",	"filter-inserter",				"a")--
	aadd("automatization-1",	"stack-filter-inserter",		"i")--
	
	aadd("automatization-2",	"fast-inserter",				"a")--
	aadd("automatization-2",	"stack-inserter",				"h")--
	
end
do	--[[transport]]--
	aadd("transport-0",		"transport-belt",			"a")
	aadd("transport-0",		"fast-transport-belt",		"b")
	aadd("transport-0",		"express-transport-belt",	"c")
	
	aadd("transport-1",		"underground-belt",			"a")
	aadd("transport-1",		"fast-underground-belt",	"b")
	aadd("transport-1",		"express-underground-belt",	"c")
	
	aadd("transport-4",		"splitter",					"a")
	aadd("transport-4",		"fast-splitter",			"b")
	aadd("transport-4",		"express-splitter",			"c")
	
	aadd("transport-8",		"pipe",						"a")
	
	aadd("transport-9",		"pipe-to-ground",			"a")
	
end
do	--[[logistic]]--
	aadd("logistic-0",		"blueprint-book",					"a")
	aadd("logistic-0",		"blueprint",						"b")
	aadd("logistic-0",		"deconstruction-planner",			"c")
	
	aadd("logistic-1",		"roboport",							"a")
	aadd("logistic-1",		"logistic-robot",					"c")
	aadd("logistic-1",		"construction-robot",				"e")
	
	aadd("logistic-2",		"logistic-chest-storage",			"a")
	aadd("logistic-2",		"logistic-chest-requester",			"b")
	aadd("logistic-2",		"logistic-chest-passive-provider",	"c")
	aadd("logistic-2",		"logistic-chest-active-provider",	"d")
	
	aadd("logistic-8",		"copper-cable",						"a")
	aadd("logistic-8",		"red-wire",							"b")
	aadd("logistic-8",		"green-wire",						"c")
	
	aadd("logistic-9",		"arithmetic-combinator",			"a")
	aadd("logistic-9",		"decider-combinator",				"b")
	aadd("logistic-9",		"constant-combinator",				"c")
	aadd("logistic-9",		"power-switch",						"d")
end
do	--[[energy]]--
	aadd("energy-0",			"solid-fuel",				"a")
	
	aadd("energy-1",			"boiler",					"a")
	
	aadd("energy-2",			"steam-engine",				"a")
	
	aadd("energy-3",			"accumulator",				"a")
	
	aadd("energy-4",			"solar-panel",				"a")
	
	aadd("energy-7",			"small-electric-pole",		"b")
	aadd("energy-7",			"medium-electric-pole",		"c")
	
	aadd("energy-8",			"big-electric-pole",		"a")
	aadd("energy-8",			"substation",				"e")
	
end
do	--[[defense]]--
	aadd("defense-0",			"stone-wall",				"a")
	aadd("defense-0",			"gate",						"b")
	
	aadd("defense-3",			"gun-turret",				"a")
	aadd("defense-3",			"flamethrower-turret",		"b")
	aadd("defense-3",			"laser-turret",				"c")
	
	aadd("defense-8",			"radar",					"a")
	
end
do	--[[armor]]--
	aadd("armor-0",			"pistol",							"a")
	aadd("armor-0",			"submachine-gun",					"b")
	aadd("armor-0",			"shotgun",							"c")
	aadd("armor-0",			"combat-shotgun",					"d")
	aadd("armor-0",			"flame-thrower",					"e")
	aadd("armor-0",			"rocket-launcher",					"f")
	
	aadd("armor-1",			"firearm-magazine",					"a")
	aadd("armor-1",			"piercing-rounds-magazine",			"b")
	aadd("armor-1",			"shotgun-shell",					"c")
	aadd("armor-1",			"piercing-shotgun-shell",			"d")
	aadd("armor-1",			"flame-thrower-ammo",				"e")
	aadd("armor-1",			"rocket",							"f")
	aadd("armor-1",			"explosive-rocket",					"g")
	
	aadd("armor-2",			"grenade",							"a")
	aadd("armor-2",			"cluster-grenade",					"b")
	aadd("armor-2",			"land-mine",						"c")
	aadd("armor-2",			"slowdown-capsule",					"d")
	aadd("armor-2",			"poison-capsule",					"e")
	aadd("armor-2",			"defender-capsule",					"f")
	aadd("armor-2",			"distractor-capsule",				"g")
	aadd("armor-2",			"destroyer-capsule",				"h")
	aadd("armor-2",			"discharge-defense-remote",			"i")
	
	aadd("armor-3",			"light-armor",						"a")
	aadd("armor-3",			"heavy-armor",						"b")
	aadd("armor-3",			"modular-armor",					"c")
	aadd("armor-3",			"power-armor",						"d")
	aadd("armor-3",			"power-armor-mk2",					"e")
	
	aadd("armor-4",			"exoskeleton-equipment",			"a")
	aadd("armor-4",			"night-vision-equipment",			"b")
	aadd("armor-4",			"personal-roboport-equipment",		"c")
	
	aadd("armor-5",			"solar-panel-equipment",			"a")
	aadd("armor-5",			"fusion-reactor-equipment",			"b")
	aadd("armor-5",			"battery-equipment",				"c")
	aadd("armor-5",			"battery-mk2-equipment",			"d")
	
	aadd("armor-6",			"personal-laser-defense-equipment",	"a")
	aadd("armor-6",			"discharge-defense-equipment",		"b")
	
	aadd("armor-7",			"energy-shield-equipment",			"a")
	aadd("armor-7",			"energy-shield-mk2-equipment",		"b")
	
end
do	--[[intermediate]]--
	aadd("intermediate-0",	"science-pack-1",			"a")
	aadd("intermediate-0",	"science-pack-2",			"b")
	aadd("intermediate-0",	"science-pack-3",			"c")
	aadd("intermediate-0",	"alien-science-pack",		"d")
	
	aadd("intermediate-1",	"electronic-circuit",		"b")
	aadd("intermediate-1",	"advanced-circuit",			"d")
	aadd("intermediate-1",	"processing-unit",			"f")
	
	aadd("intermediate-4",	"iron-gear-wheel",			"a")
	
	aadd("intermediate-3",	"alien-artifact",			"a")
	
	aadd("intermediate-4",	"fish",						"a")
	aadd("intermediate-4",	"raw-fish",					"b")
	aadd("intermediate-4",	"iron-stick",				"c")
	aadd("intermediate-4",	"explosives",				"d")
	aadd("intermediate-4",	"battery",					"e")
	aadd("intermediate-4",	"engine-unit",				"f")
	aadd("intermediate-4",	"electric-engine-unit",		"g")
	aadd("intermediate-4",	"flying-robot-frame",		"h")
	
	aadd("intermediate-7",	"rocket-silo",				"a")
	aadd("intermediate-7",	"low-density-structure",	"b")
	aadd("intermediate-7",	"rocket-fuel",				"c")
	aadd("intermediate-7",	"rocket-part",				"d")
	aadd("intermediate-7",	"rocket-control-unit",		"e")
	aadd("intermediate-7",	"satellite",				"f")
	
end
do	--[[module]]--
	aadd("module-0",			"lab",						"a")
	aadd("module-0",			"beacon",					"e")
	
	aadd("module-3",			"speed-module",				"a")
	aadd("module-3",			"speed-module-2",			"b")
	aadd("module-3",			"speed-module-3",			"c")
	
	aadd("module-4",			"productivity-module",		"a")
	aadd("module-4",			"productivity-module-2",	"b")
	aadd("module-4",			"productivity-module-3",	"c")
	
	aadd("module-5",			"effectivity-module",		"a")
	aadd("module-5",			"effectivity-module-2",		"b")
	aadd("module-5",			"effectivity-module-3",		"c")
end
do	--[[trains-vehicles]]--
	aadd("trains-0",			"diesel-locomotive",		"c")
	
	aadd("trains-1",			"cargo-wagon",				"b")
	
	aadd("trains-11",			"rail",						"a")
	aadd("trains-11",			"straight-rail",			"c")
	aadd("trains-11",			"curved-rail",				"d")
	aadd("trains-11",			"train-stop",				"e")
	aadd("trains-11",			"rail-signal",				"f")
	aadd("trains-11",			"rail-chain-signal",		"g")
	
	
	aadd("vehicles-0",		"car",						"a")
	aadd("vehicles-0",		"tank",						"b")
	
	aadd("vehicles-1",		"tank-machine-gun",			"a")
	aadd("vehicles-1",		"vehicle-machine-gun",		"b")
	
	aadd("vehicles-2",		"cannon-shell",				"a")
	aadd("vehicles-2",		"explosive-cannon-shell",	"b")
	
end
do	--[[decorative]]--
	aadd("decorative-0",			"landfill",				"a")
	aadd("decorative-0",			"stone-brick",			"b")
	aadd("decorative-0",			"concrete",				"c")
	aadd("decorative-0",			"hazard-concrete",		"d")
	
	aadd("decorative-2",			"small-lamp",			"a")
	
end
