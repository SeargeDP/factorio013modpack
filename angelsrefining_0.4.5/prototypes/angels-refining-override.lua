--OVERRIDE FOR REFINING
--PRODUCTIVITY TRIGGER
if angelsmods.refining.enableproductivity and bobmods.plates then
	bobmods.lib.module.add_productivity_limitation("slag-processing-dissolution")
	bobmods.lib.module.add_productivity_limitation("stone-crushed-dissolution")
	
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-1")
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-2")
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-3")
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-4")
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-5")
	bobmods.lib.module.add_productivity_limitation("slag-processing-bob-6")
	
	bobmods.lib.module.add_productivity_limitation("catalysator-brown")
	
	bobmods.lib.module.add_productivity_limitation("angelsore1-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore2-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore3-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore4-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore5-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore6-crushed-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore7-crushed-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore-crushed-mix1-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crushed-mix2-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crushed-mix3-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crushed-mix4-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore1-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore2-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore3-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore4-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore5-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore6-chunk-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore7-chunk-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore-chunk-mix1-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-chunk-mix2-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-chunk-mix3-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-chunk-mix4-processing")

	bobmods.lib.module.add_productivity_limitation("angelsore1-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore2-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore3-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore4-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore5-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore6-crystal-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore7-crystal-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore-crystal-mix1-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crystal-mix2-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crystal-mix3-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore-crystal-mix4-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore1-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore2-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore3-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore4-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore5-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore6-pure-processing")
	bobmods.lib.module.add_productivity_limitation("angelsore7-pure-processing")
	
	bobmods.lib.module.add_productivity_limitation("angelsore-pure-mix1-processing")
end

--OVERRIDE FOR BOBs
if angelsmods.smelting or bobmods.plates then
	--insert geodes to refining recipes
	table.insert(data.raw["recipe"]["angelsore1-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore2-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore3-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore4-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore5-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore6-chunk"].results,{type="item", name="geode-blue", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore1-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore2-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore3-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore4-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore5-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	table.insert(data.raw["recipe"]["angelsore6-chunk"].results,{type="item", name="geode-red", amount=1, probability=0.3})
	
	--insert geodes as minable result to stone rocks
	data.raw["simple-entity"]["stone-rock"].minable={mining_particle = "stone-particle",mining_time = 8,
	results=
		{
		  {type="item", name="stone", amount=10, probability=1},
		  {type="item", name="geode-blue", amount=3, probability=0.7},
  		  {type="item", name="geode-cyan", amount=1, probability=0.3},
		  {type="item", name="geode-lightgreen", amount=1, probability=0.4},
		  {type="item", name="geode-purple", amount=2, probability=0.5},
		  {type="item", name="geode-red", amount=3, probability=0.8},
		  {type="item", name="geode-yellow", amount=2, probability=0.6},
		},
    }

	--Add liquifying recipes to chemical plants
	if bobmods.assembly then
		table.insert(data.raw["assembling-machine"]["chemical-plant"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-2"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-3"].crafting_categories,"liquifying")
		table.insert(data.raw["assembling-machine"]["chemical-plant-4"].crafting_categories,"liquifying")
	end
	if data.raw["technology"]["water-miner-1"] then
		data.raw["technology"]["water-miner-1"] = nil
		data.raw["technology"]["water-miner-2"] = nil
		data.raw["technology"]["water-miner-3"] = nil
		data.raw["technology"]["water-miner-4"] = nil
		data.raw["technology"]["water-miner-5"] = nil
	end
end

--OVERRIDE FOR YUOKI
if data.raw.item["y-res1"] then
	--TIER 2
	data.raw["recipe"]["angelsore1-chunk-processing"].ingredients[1]={"angels-ore1-chunk", 7}
	data.raw["recipe"]["angelsore3-chunk-processing"].ingredients[1]={"angels-ore3-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore1-chunk-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-chunk-processing"].results,{type = "item", name = "y-res2", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore1-crystal-processing"].ingredients[1]={"angels-ore1-crystal", 9}
	data.raw["recipe"]["angelsore3-crystal-processing"].ingredients[1]={"angels-ore3-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore1-crystal-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-crystal-processing"].results,{type = "item", name = "y-res2", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore1-pure-processing"].ingredients[1]={"angels-ore1-pure", 10}
	data.raw["recipe"]["angelsore3-pure-processing"].ingredients[1]={"angels-ore3-pure", 10}

	table.insert(data.raw["recipe"]["angelsore1-pure-processing"].results,{type = "item", name = "y-res1", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-pure-processing"].results,{type = "item", name = "y-res2", amount=1})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-yi",
		category = "crystallizing",
		subgroup = "slag-processing",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=5},
		},
		results=
		{
		  {type="item", name="y-res1", amount=1, probability=0.5},
		  {type="item", name="y-res2", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-yi.png",
		order = "a-a [slag-processing-yi]",
		},
		{
		type = "recipe",
		name = "angelsore-chunk-mix-yi1-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore1-chunk", amount=2},
		{type="item", name="angels-ore3-chunk", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="y-res1", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi1-sorting.png",
		order = "c-i-g[angelsore-chunk-mix-yi1-processing]",
		},
		{
		type = "recipe",
		name = "angelsore-chunk-mix-yi2-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore2-chunk", amount=2},
		{type="item", name="angels-ore4-chunk", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="y-res2", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-yi2-sorting.png",
		order = "c-i-g[angelsore-chunk-mix-yi2-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-yi"})
	table.insert(data.raw["technology"]["advanced-ore-refining-2"].effects,{type = "unlock-recipe", recipe = "angelsore-chunk-mix-yi1-processing"})
	table.insert(data.raw["technology"]["advanced-ore-refining-2"].effects,{type = "unlock-recipe", recipe = "angelsore-chunk-mix-yi2-processing"})
end

--OVERRIDE FOR URANIUM POWER
if data.raw.item["uraninite"] then
	--TIER 2
	data.raw["recipe"]["angelsore2-chunk-processing"].ingredients[1]={"angels-ore2-chunk", 7}
	data.raw["recipe"]["angelsore4-chunk-processing"].ingredients[1]={"angels-ore4-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore2-chunk-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-chunk-processing"].results,{type = "item", name = "fluorite", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore2-crystal-processing"].ingredients[1]={"angels-ore2-crystal", 9}
	data.raw["recipe"]["angelsore4-crystal-processing"].ingredients[1]={"angels-ore4-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore2-crystal-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-crystal-processing"].results,{type = "item", name = "fluorite", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore2-pure-processing"].ingredients[1]={"angels-ore2-pure", 10}
	data.raw["recipe"]["angelsore4-pure-processing"].ingredients[1]={"angels-ore4-pure", 10}

	table.insert(data.raw["recipe"]["angelsore2-pure-processing"].results,{type = "item", name = "uraninite", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-pure-processing"].results,{type = "item", name = "fluorite", amount=1})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-up",
		category = "crystallizing",
		subgroup = "slag-processing",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=5},
		},
		results=
		{
		  {type="item", name="uraninite", amount=1, probability=0.5},
		  {type="item", name="fluorite", amount=1, probability=0.5},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-up.png",
		order = "a-a [slag-processing-up]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-up1-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore1-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="angels-ore6-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="uraninite", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up1-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-up1-processing]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-up2-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore2-crystal", amount=2},
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="fluorite", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-up2-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-up2-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-up"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up1-processing"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-up2-processing"})
end

--OVERRIDE FOR NUCULAR
if data.raw.item["uranium-ore"] then
	--TIER 2
	data.raw["recipe"]["angelsore5-chunk-processing"].ingredients[1]={"angels-ore5-chunk", 7}

	table.insert(data.raw["recipe"]["angelsore5-chunk-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 3
	data.raw["recipe"]["angelsore5-crystal-processing"].ingredients[1]={"angels-ore5-crystal", 9}

	table.insert(data.raw["recipe"]["angelsore5-crystal-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	--TIER 4
	data.raw["recipe"]["angelsore5-pure-processing"].ingredients[1]={"angels-ore5-pure", 10}

	table.insert(data.raw["recipe"]["angelsore5-pure-processing"].results,{type = "item", name = "uranium-ore", amount=1})

	data:extend({
		{
		type = "recipe",
		name = "slag-processing-nuc",
		category = "crystallizing",
		subgroup = "slag-processing",
		energy_required = 8,
		enabled = "false",
		ingredients ={
		{type="fluid", name="mineral-sludge", amount=5},
		},
		results=
		{
		  {type="item", name="uranium-ore", amount=1, probability=0.8},
		},
		icon = "__angelsrefining__/graphics/icons/slag-processing-nuc.png",
		order = "a-a [slag-processing-nuc]",
		},
		{
		type = "recipe",
		name = "angelsore-crystal-mix-nuc-processing",
		category = "ore-sorting",
		subgroup = "ore-sorting-advanced",
		energy_required = 1.5,
		enabled = "false",
		ingredients ={
		{type="item", name="angels-ore3-crystal", amount=2},
		{type="item", name="angels-ore4-crystal", amount=2},
		{type="item", name="angels-ore5-crystal", amount=2},
		{type="item", name="catalysator-brown", amount=1},
		},
		results=
		{
		  {type="item", name="uranium-ore", amount=6},
		},
		icon = "__angelsrefining__/graphics/icons/angels-ore-mix-nuc-sorting.png",
		order = "c-i-g[angelsore-crystal-mix-nuc-processing]",
		},
	})
	table.insert(data.raw["technology"]["slag-processing-1"].effects,{type = "unlock-recipe", recipe = "slag-processing-nuc"})
	table.insert(data.raw["technology"]["advanced-ore-refining-3"].effects,{type = "unlock-recipe", recipe = "angelsore-crystal-mix-nuc-processing"})
end