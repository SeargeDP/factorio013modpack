local allow_changes = z_balance.angels

do	--[[production]]--
	
	aadd("z-production-1",		"ore-processing-plant",			"a")
	aadd("z-production-1",		"ore-processing-plant-2",		"b")
	aadd("z-production-1",		"ore-processing-plant-3",		"c")
	aadd("z-production-1",		"ore-processing-plant-4",		"d")
	aadd("z-production-1",		"blast-furnace",				"e")
	aadd("z-production-1",		"blast-furnace-2",				"f")
	
	if not allow_changes then
		aadd("z-gathering-10",	"water-void",					"k")
	else
		ahide("water-void")
	end
	
	if z_balance.angels_bio then
		ahide("bio-processing-plant")
		ahide("bio-processing-plant-2")
		
		zgc.t_remove_prerequisite("alien-bio-processing", "bio-processing-1")
		
		switch_tech("bio-processing-1")
		switch_tech("bio-processing-2")
	else
		aadd("z-production-1",	"bio-processing-plant",			"g")
		aadd("z-production-1",	"bio-processing-plant-2",		"h")
	end
	
end
do	--[[resources]]--
	aadd("z-resources-0",		"stone-crushed",				"f")
		
	if not z_balance.angels_bio then
		iadd("z-resources-1",	"algae",						"j")
		
		radd("z-resources-2",	"algae-farming",				"a")
		radd("z-resources-2",	"cellulose-fiber-algae",		"b")
		radd("z-resources-2",	"cellulose-fiber-raw-wood",		"c")
		radd("z-resources-2",	"wood-from-cellulose-resin",	"d")
		radd("z-resources-2",	"wood-from-cellulose",			"e")
		radd("z-resources-2",	"paste-from-sodium-hydroxide",	"f")
		radd("z-resources-2",	"paste-from-liquid-chlor-methane","g")
	else
		ahide("algae")
		ahide("algae-farming")
		ahide("cellulose-fiber-algae")
		ahide("cellulose-fiber-raw-wood")
		ahide("wood-from-cellulose-resin")
		ahide("wood-from-cellulose")
		ahide("paste-from-sodium-hydroxide")
		ahide("paste-from-liquid-chlor-methane")
	end
		
	
	aadd("z-resources-8",		"plastic-bar",					"a")
	aadd("z-resources-8",		"silicon",						"b")
	aadd("z-resources-8",		"bob-silicon-plate",			"c")
	aadd("z-resources-8",		"bob-silicon-plate-processed",	"d")
	aadd("z-resources-8",		"bob-silicon-plate-ingot",		"e")
	aadd("z-resources-8",		"resin",						"f")
	aadd("z-resources-8",		"bob-resin-oil",				"h")
	aadd("z-resources-8",		"bob-resin-wood",				"i")
	aadd("z-resources-8",		"rubber",						"j")
	aadd("z-resources-8",		"bob-rubber",					"k")
	aadd("z-resources-8",		"carbon",						"l")
	aadd("z-resources-8",		"glass",						"m")
	aadd("z-resources-8",		"quartz-glass",					"n")
	aadd("z-resources-8",		"quartz-glass-processed",		"o")
	aadd("z-resources-8",		"quartz-glass-ingot",			"p")
	
	aadd("z-resources-9",		"alumina",						"b")
	aadd("z-resources-9",		"alumina-processed",			"c")
	aadd("z-resources-9",		"alumina-ingot",				"d")
	aadd("z-resources-9",		"cobalt-oxide",					"e")
	aadd("z-resources-9",		"cobalt-oxide-processed",		"f")
	aadd("z-resources-9",		"cobalt-oxide-ingot",			"g")
	aadd("z-resources-9",		"lead-oxide",					"i")
	aadd("z-resources-9",		"lead-oxide-processed",			"j")
	aadd("z-resources-9",		"lead-oxide-ingot",				"k")
	aadd("z-resources-9",		"silver-oxide",					"l")
	aadd("z-resources-9",		"tungsten-oxide",				"m")
	
end
do	--[[plates]]--
	aadd("z-plates-0",		"iron-ore-processing",				"a")
	aadd("z-plates-0",		"copper-ore-processing",			"b")
	aadd("z-plates-0",		"lead-ore-processing",				"c")
	aadd("z-plates-0",		"tin-ore-processing",				"d")
	aadd("z-plates-0",		"zinc-ore-processing",				"e")
	aadd("z-plates-0",		"bauxite-ore-processing",			"f")
	aadd("z-plates-0",		"gold-ore-processing",				"g")
	
	aadd("z-plates-1",		"nickel-ore-processing",			"a")
	aadd("z-plates-1",		"quartz-processing",				"b")
	aadd("z-plates-1",		"cobalt-ore-processing",			"c")
	aadd("z-plates-1",		"silver-ore-processing",			"d")
	aadd("z-plates-1",		"rutile-ore-processing",			"e")
	aadd("z-plates-1",		"tungsten-ore-processing",			"f")
	
	aadd("z-plates-2",		"iron-processed-smelting",			"a")
	aadd("z-plates-2",		"copper-processed-smelting",		"b")
	aadd("z-plates-2",		"lead-processed-smelting",			"c")
	aadd("z-plates-2",		"tin-processed-smelting",			"d")
	aadd("z-plates-2",		"zinc-processed-smelting",			"e")
	aadd("z-plates-2",		"bauxite-processed-smelting",		"f")
	aadd("z-plates-2",		"gold-processed-smelting",			"g")
	aadd("z-plates-2",		"iron-processed",					"a")
	aadd("z-plates-2",		"copper-processed",					"b")
	aadd("z-plates-2",		"lead-processed",					"c")
	aadd("z-plates-2",		"tin-processed",					"d")
	aadd("z-plates-2",		"zinc-processed",					"e")
	aadd("z-plates-2",		"bauxite-processed",				"f")
	aadd("z-plates-2",		"gold-processed",					"g")
	
	aadd("z-plates-3",		"nickel-processed",					"a")
	aadd("z-plates-3",		"quartz-processed",					"b")
	aadd("z-plates-3",		"cobalt-processed",					"c")
	aadd("z-plates-3",		"silver-processed",					"d")
	aadd("z-plates-3",		"rutile-processed",					"e")
	aadd("z-plates-3",		"tungsten-processed",				"f")
	aadd("z-plates-3",		"nickel-processed-smelting",		"a")
	aadd("z-plates-3",		"quartz-processed-smelting",		"b")
	aadd("z-plates-3",		"cobalt-processed-smelting",		"c")
	aadd("z-plates-3",		"silver-processed-smelting",		"d")
	aadd("z-plates-3",		"rutile-processed-smelting",		"e")
	aadd("z-plates-3",		"tungsten-processed-smelting",		"f")
	
	aadd("z-plates-4",		"iron-ingot",						"a")
	aadd("z-plates-4",		"copper-ingot",						"b")
	aadd("z-plates-4",		"lead-ingot",						"c")
	aadd("z-plates-4",		"tin-ingot",						"d")
	aadd("z-plates-4",		"zinc-ingot",						"e")
	aadd("z-plates-4",		"bauxite-ingot",					"f")
	aadd("z-plates-4",		"gold-ingot",						"g")
	
	aadd("z-plates-5",		"nickel-ingot",						"a")
	aadd("z-plates-5",		"quartz-ingot",						"b")
	aadd("z-plates-5",		"cobalt-ingot",						"c")
	aadd("z-plates-5",		"silver-ingot",						"d")
	aadd("z-plates-5",		"rutile-ingot",						"e")
	aadd("z-plates-5",		"tungsten-ingot",					"f")
	
	aadd("z-plates-6",		"angels-powdered-iron",				"a")
	aadd("z-plates-6",		"angels-powdered-copper",			"b")
	aadd("z-plates-6",		"angels-powdered-zinc",				"c")
	aadd("z-plates-6",		"angels-powdered-cobalt",			"d")
	aadd("z-plates-6",		"angels-powdered-silver",			"e")
	aadd("z-plates-6",		"angels-powdered-gold",				"f")
	aadd("z-plates-6",		"angels-powdered-rutile",			"g")
	aadd("z-plates-6",		"powdered-tungsten",				"h")
	aadd("z-plates-6",		"angels-powdered-tungsten",			"i")
	
	radd("z-plates-9",		"angelsore1-crushed-smelting",		"j")
	
	radd("z-plates-10",		"angelsore3-crushed-smelting",		"j")
	
	aadd("z-plates-11",		"iron-plate-processed",				"a")
	aadd("z-plates-11",		"copper-plate-processed",			"b")
	aadd("z-plates-11",		"lead-plate-processed",				"c")
	aadd("z-plates-11",		"tin-plate-processed",				"d")
	aadd("z-plates-11",		"bob-zinc-plate-processed",			"e")
	aadd("z-plates-11",		"silver-plate-processed",			"f")
	aadd("z-plates-11",		"bob-gold-plate-processed",			"g")
	aadd("z-plates-11",		"bob-nickel-plate-processed",		"h")
	radd("z-plates-11",		"angelsore5-crushed-smelting",		"i")
	
	aadd("z-plates-12",		"iron-plate-ingot",					"a")
	aadd("z-plates-12",		"copper-plate-ingot",				"b")
	aadd("z-plates-12",		"lead-plate-ingot",					"c")
	aadd("z-plates-12",		"tin-plate-ingot",					"d")
	aadd("z-plates-12",		"bob-zinc-plate-ingot",				"e")
	aadd("z-plates-12",		"silver-plate-ingot",				"f")
	aadd("z-plates-12",		"bob-gold-plate-ingot",				"g")
	aadd("z-plates-12",		"bob-nickel-plate-ingot",			"h")
	radd("z-plates-12",		"angelsore6-crushed-smelting",		"i")
	
	aadd("z-plates-13",		"brass-alloy",						"a")
	aadd("z-plates-13",		"cobalt-oxide-from-copper",			"b")
	aadd("z-plates-13",		"bob-lead-plate",					"c")
	aadd("z-plates-13",		"silver-from-lead",					"d")
	aadd("z-plates-13",		"bob-zinc-plate",					"e")
	aadd("z-plates-13",		"bronze-alloy",						"f")
	aadd("z-plates-13",		"tungsten-carbide",					"g")
	aadd("z-plates-13",		"bob-aluminium-plate",				"h")
	aadd("z-plates-13",		"bob-gold-plate",					"i")
	
	aadd("z-plates-14",		"cobalt-plate",						"a")
	aadd("z-plates-14",		"bob-nickel-plate",					"b")
	aadd("z-plates-14",		"nickel-plate",						"c")
	aadd("z-plates-14",		"silver-plate",						"d")
	aadd("z-plates-14",		"electrum-alloy",					"e")
	aadd("z-plates-14",		"alumina",							"g")
	aadd("z-plates-14",		"alumina-processed",				"h")
	aadd("z-plates-14",		"alumina-ingot",					"i")
	aadd("z-plates-14",		"lithium",							"j")
	aadd("z-plates-14",		"invar-alloy",						"k")
	aadd("z-plates-14",		"nitinol-alloy",					"l")
	
	aadd("z-plates-15",		"steel-plate",						"a")
	aadd("z-plates-15",		"copper-tungsten-alloy",			"b")
	aadd("z-plates-15",		"bob-tungsten-plate",				"c")
	aadd("z-plates-15",		"tungsten-plate",					"d")
	aadd("z-plates-15",		"titanium-plate",					"e")
	aadd("z-plates-15",		"bob-titanium-plate",				"f")
	aadd("z-plates-15",		"bob-titanium-plate-processed",		"g")
	aadd("z-plates-15",		"bob-titanium-plate-ingot",			"h")
	aadd("z-plates-15",		"cobalt-steel-alloy",				"i")
	
	if z_balance.add_powder then
		zgc.add_newRessource_min_max("iron-ore",	"angels-powdered-iron",		1,2,0.2)
		zgc.add_newRessource_min_max("copper-ore",	"angels-powdered-copper",	1,2,0.2)
		zgc.add_newRessource_min_max("zinc-ore",	"angels-powdered-zinc",		1,1,0.2)
		zgc.add_newRessource_min_max("cobalt-ore",	"angels-powdered-cobalt",	1,1,0.2)
		zgc.add_newRessource_min_max("silver-ore",	"angels-powdered-silver",	1,2,0.1)
		zgc.add_newRessource_min_max("gold-ore",	"angels-powdered-gold",		1,2,0.1)
		zgc.add_newRessource_min_max("rutile-ore",	"angels-powdered-rutile",	1,1,0.1)
		zgc.add_newRessource_min_max("tungsten-ore","angels-powdered-tungsten",	1,1,0.1)
	end
end
do	--[[liquids]]--
	aadd("z-liquids-2",		"thermal-water-barrel",				"i")
	aadd("z-liquids-5",		"fill-thermal-water-barrel",		"i")
	aadd("z-liquids-6",		"empty-thermal-water-barrel",		"i")
end
do	--[[chemistry]]--
	aadd("z-chemistry-0",		"tungstic-acid",				"h")
	aadd("z-chemistry-0",		"tungstic-acid-processed",		"i")
	aadd("z-chemistry-0",		"tungstic-acid-ingot",			"j")
	
	if not z_balance.angels_bio then
		aadd("z-chemistry-1",	"liquid-chlor-methane",			"j")
	else
		ahide("liquid-chlor-methane")
	end
end
do	--[[intermediate]]--
	if not z_balance.angels_bio then
		iadd("z-intermediate-6","cellulose-fiber",				"j")
		iadd("z-intermediate-6","paste",						"j")
	else
		ahide("paste")
		ahide("cellulose-fiber")
		zgc.r_replace_ingredient_in_all("paste", "polishing-compound")
	end
	
	if i_not_exist("basic-circuit-board") then
		--zgc.r_replace_ingredient("bio-processing-plant","basic-circuit-board", "electronic-circuit")
		--zgc.r_replace_ingredient("bio-processing-plant-2","basic-circuit-board", "electronic-circuit")
		zgc.r_replace_ingredient_in_all("basic-circuit-board", "electronic-circuit")
		zgc.r_replace_ingredient_in_all("basic-circuit-board", "electronic-circuit")
	end
end
do	--[[alien]]--
	aadd("z-alien-1",	"alien-science-pack-red",			"a")
	aadd("z-alien-1",	"alien-science-pack-orange",		"a")
	aadd("z-alien-1",	"alien-science-pack-yellow",		"a")
	aadd("z-alien-1",	"alien-science-pack-green",			"a")
	aadd("z-alien-1",	"alien-science-pack-blue",			"a")
	aadd("z-alien-1",	"alien-science-pack-purple",		"a")
	
	aadd("z-alien-2",	"alien-pre-artifact-base",			"a")
	aadd("z-alien-2",	"alien-pre-artifact-red",			"b")
	aadd("z-alien-2",	"alien-pre-artifact-orange",		"c")
	aadd("z-alien-2",	"alien-pre-artifact-yellow",		"d")
	aadd("z-alien-2",	"alien-pre-artifact-green",			"e")
	aadd("z-alien-2",	"alien-pre-artifact-blue",			"f")
	aadd("z-alien-2",	"alien-pre-artifact-purple",		"g")
	
	aadd("z-alien-3",	"alien-artifact-from-small",		"a")
	aadd("z-alien-3",	"alien-artifact-red-from-small",	"b")
	aadd("z-alien-3",	"alien-artifact-orange-from-small",	"c")
	aadd("z-alien-3",	"alien-artifact-yellow-from-small",	"d")
	aadd("z-alien-3",	"alien-artifact-green-from-small",	"e")
	aadd("z-alien-3",	"alien-artifact-blue-from-small",	"f")
	aadd("z-alien-3",	"alien-artifact-purple-from-small",	"g")
	
	aadd("z-alien-4",	"small-alien-artifact",				"a")
	aadd("z-alien-4",	"small-alien-artifact-red",			"b")
	aadd("z-alien-4",	"small-alien-artifact-orange",		"c")
	aadd("z-alien-4",	"small-alien-artifact-yellow",		"d")
	aadd("z-alien-4",	"small-alien-artifact-green",		"e")
	aadd("z-alien-4",	"small-alien-artifact-blue",		"f")
	aadd("z-alien-4",	"small-alien-artifact-purple",		"g")
	
	aadd("z-alien-5",	"alien-artifact",					"a")
	aadd("z-alien-5",	"alien-artifact-red",				"b")
	aadd("z-alien-5",	"alien-artifact-orange",			"c")
	aadd("z-alien-5",	"alien-artifact-yellow",			"d")
	aadd("z-alien-5",	"alien-artifact-green",				"e")
	aadd("z-alien-5",	"alien-artifact-blue",				"f")
	aadd("z-alien-5",	"alien-artifact-purple",			"g")
	
	aadd("z-alien-6",	"petri-dish",						"a")
	aadd("z-alien-6",	"substrate-dish",					"b")
	aadd("z-alien-6",	"alien-pre-artifact",				"c")
	aadd("z-alien-6",	"alien-bacteria",					"d")
	aadd("z-alien-6",	"alien-goo",						"e")
	aadd("z-alien-6",	"alien-orange-alloy",				"f")
	aadd("z-alien-6",	"alien-blue-alloy",					"g")
	
end
do	--[[decorative]]--
	aadd("z-decorative-0",			"angels-powdered-stone",	"c")
	aadd("z-decorative-0",			"concrete-pulver",			"d")
	aadd("z-decorative-0",			"concrete-brick",			"e")
	if i_exist("5d-concrete-a") then
		aadd("z-decorative-1",		"concrete",					"a")
		aadd("z-decorative-0",		"concrete-from-pulver",		"a")		
		aadd("z-decorative-1",		"hazard-concrete",			"h")
	else
		aadd("z-decorative-0",		"concrete",					"f")
		aadd("z-decorative-0",		"concrete-from-pulver",		"g")
		aadd("z-decorative-0",		"hazard-concrete",			"h")
	end
	
end

do	--[[refining]]--
  if i_exist("angels-ore1") then
  
	zgc.add_main_group("refining")
	
	data:extend({
		{
			type = "item-subgroup",
			name = "catalysts",
			group = "resource-refining",
			order = "m-p",
		}
	})
	
	aadd("catalysts",			"catalysator-base",				"a")
	aadd("catalysts",			"catalysator-blue",				"b")
	aadd("catalysts",			"catalysator-green",			"c")
	aadd("catalysts",			"catalysator-orange",			"d")
	aadd("catalysts",			"catalysator-purple",			"e")
	aadd("catalysts",			"catalysator-red",				"f")
	aadd("catalysts",			"catalysator-yellow",			"g")
	aadd("catalysts",			"catalysator-brown",			"h")
	
	aadd("ore-processing-a",	"iron-ore-crushed",				"h[iron-crushed]")
	aadd("ore-processing-a",	"copper-ore-crushed",			"h[copper-crushed]")
	aadd("ore-processing-b",	"iron-ore-chunk",				"h[iron-chunk]")
	aadd("ore-processing-b",	"copper-ore-chunk",				"h[copper-chunk]")
	aadd("ore-processing-c",	"iron-ore-crystal",				"h[iron-crystal]")
	aadd("ore-processing-c",	"copper-ore-crystal",			"h[copper-crystal]")
	aadd("ore-processing-d",	"iron-ore-pure",				"h[iron-pure]")
	aadd("ore-processing-d",	"copper-ore-pure",				"h[copper-pure]")
	
	aadd("geode-processing",	"slag-processing-stone",		"z")
	aadd("geode-processing",	"slag",							"z")
	aadd("water-treatment",		"salt-water-electrolysis-2",	"a")
	aadd("water-treatment",		"water-mineralized",			"z")
	aadd("ore-crusher",			"burner-ore-crusher",			"e[burner-ore-crusher]")
	aadd("ore-crusher",			"burner-ore-crusher",			"e[burner-ore-crusher]")
	
	for k,v in pairs(data.raw["item-subgroup"]) do
		if v.group == "resource-refining" then v.group = "zgc-refining" end
	end
  else
	ahide("catalysator-base")
	ahide("catalysator-blue")
	ahide("catalysator-green")
	ahide("catalysator-orange")
	ahide("catalysator-purple")
	ahide("catalysator-red")
	ahide("catalysator-yellow")
	
	switch_tech("catalysts",false)
  end
end
