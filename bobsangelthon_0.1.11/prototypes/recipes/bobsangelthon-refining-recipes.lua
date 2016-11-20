data.raw.recipe["slag-processing-dissolution"].ingredients = {{"slag", 5}}

data.raw.recipe["stone-crushed"].energy_required = 2
data.raw.recipe["stone-crushed"].ingredients = {{"stone-crushed", 3}}

data.raw.recipe["yellow-waste-water-purification"].energy_required = 5
data.raw.recipe["yellow-waste-water-purification"].ingredients = {{type="fluid", name="water-yellow-waste", amount=52}}
data.raw.recipe["yellow-waste-water-purification"].results = {{type="fluid", name="water-purified", amount=35}, {type="item", name="sulfur", amount=13}}

for i=1, 6 do
	--Ore Crushing
	data.raw.recipe["angelsore"..i.."-crushed"].energy_required = 3
	data.raw.recipe["angelsore"..i.."-crushed"].ingredients = {{"angels-ore"..i, 8}}
	data.raw.recipe["angelsore"..i.."-crushed"].results = {{"angels-ore"..i.."-crushed", 8}, {"stone-crushed", 2}}

    	--Ore Crushing Hand
	if i == 1 or i == 3 then
		data.raw.recipe["angelsore"..i.."-crushed-hand"].energy_required = 6
		data.raw.recipe["angelsore"..i.."-crushed-hand"].ingredients = {{"angels-ore"..i, 5}}
		data.raw.recipe["angelsore"..i.."-crushed-hand"].results = {{"angels-ore"..i.."-crushed", 5}, {"stone-crushed", 5}}
	end

	--Crushed Ore Sorting
	data.raw.recipe["angelsore"..i.."-crushed-processing"].energy_required = 1
	data.raw.recipe["angelsore"..i.."-crushed-processing"].ingredients = {{"angels-ore"..i.."-crushed", 8}}
	
	--Ore Hydro Refining
	data.raw.recipe["angelsore"..i.."-chunk"].energy_required = 1.5
	data.raw.recipe["angelsore"..i.."-chunk"].ingredients[1].amount = 8
	data.raw.recipe["angelsore"..i.."-chunk"].ingredients[2].amount = data.raw.recipe["angelsore"..i.."-chunk"].ingredients[2].amount
	data.raw.recipe["angelsore"..i.."-chunk"].results[1].amount = 8

	--Ore Chunk Sorting
	data.raw.recipe["angelsore"..i.."-chunk-processing"].energy_required = 3
	data.raw.recipe["angelsore"..i.."-chunk-processing"].ingredients = {{"angels-ore"..i.."-chunk", 16}}
	
	--Ore Chemical Refining
	data.raw.recipe["angelsore"..i.."-crystal"].energy_required = 3
	data.raw.recipe["angelsore"..i.."-crystal"].ingredients = {{type="item", name="angels-ore"..i.."-chunk", amount=8}, {type="fluid", name="sulfuric-acid", amount=0.5}}
	data.raw.recipe["angelsore"..i.."-crystal"].results[1].amount = data.raw.recipe["angelsore"..i.."-crystal"].results[1].amount * 4
	
	--Ore Crystal Sorting
	data.raw.recipe["angelsore"..i.."-crystal-processing"].energy_required = 3
	data.raw.recipe["angelsore"..i.."-crystal-processing"].ingredients = {{"angels-ore"..i.."-crystal", 16}}
	
	--Purified Ore Sorting
	data.raw.recipe["angelsore"..i.."-pure-processing"].energy_required = 3
	data.raw.recipe["angelsore"..i.."-pure-processing"].ingredients = {{"angels-ore"..i.."-pure", 16}}
	
	for o=1, 5 do
		data.raw.recipe["angelsore"..i.."-chunk-processing"].results[o].amount = data.raw.recipe["angelsore"..i.."-chunk-processing"].results[o].amount * 4
	end	
	
	data.raw.recipe["angelsore"..i.."-crystal-processing"].results[1].amount = 2

	data.raw.recipe["angelsore"..i.."-pure-processing"].results[1].amount = 2
	data.raw.recipe["angelsore"..i.."-pure-processing"].results[2].amount = 1
	
	for o=1, 6 do
		data.raw.recipe["angelsore"..i.."-crystal-processing"].results[o].amount = data.raw.recipe["angelsore"..i.."-crystal-processing"].results[o].amount * 4
		data.raw.recipe["angelsore"..i.."-pure-processing"].results[o].amount = data.raw.recipe["angelsore"..i.."-pure-processing"].results[o].amount * 4
		if o==1 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 1 --Nickel
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 2 --Quartz
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 2 --Nickel
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 2 --Quartz
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 2 --Nickel
		end
		if o==2 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[3].amount = 1 --Aluminium
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 1 --Zinc
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 2 --Aluminium
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 2 --Zinc
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[5].amount = 2 --Silver
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 2 --Aluminium
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 2 --Zinc
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[5].amount = 2 --Silver
		end
		if o==3 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 1
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 2
		end
		if o==4 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[3].amount = 2
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[5].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[5].amount = 2
		end
		if o==5 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[2].amount = 2
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 4 --Gold
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[2].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 4 --Gold
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[5].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[2].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 4 --Gold
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[5].amount = 2
		end
		if o==6 then
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-chunk-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-crystal-processing"].results[5].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[3].amount = 1
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[4].amount = 2
			data.raw.recipe["angelsore"..o.."-pure-processing"].results[5].amount = 2
		end
	end
	
	
	
	for g=1, 3 do
		local ore = data.raw.recipe["angelsore"..i.."-crushed-processing"]
		local k = ore.results[g].amount * 2
		ore.results[g].amount = k
	end
end

if not angelsmods.smelting then -- -- Check if Smelting is available
    log("Not Smelting")

	local ores = {'iron', 'copper', 'tin', 'lead', 'silver', 'bauxite', 'cobalt', 'gold', 'nickel', 'rutile', 'tungsten', 'zinc'}
	local sec = {'ore', 'processed', 'plate', 'plate'}
	local tri = {'processing', 'smelting', 'processed', 'ingot'}
	
	for h = 1, 2 do --Iron, Copper
		for y = 1, 4 do --Ore, Processed, Plate, Plate
			local dat = data.raw.recipe[""..ores[h].."-"..sec[y].."-"..tri[y]..""]
			if y == 1 then --'Ore'-ore-processing
				dat.energy_required = 6
				dat.ingredients = {{""..ores[h].."-"..sec[1].."", 6}}
				dat.results = {{""..ores[h].."-"..sec[2].."", 3}}
				if h == 2 then --Copper
					dat.ingredients = {{""..ores[h].."-"..sec[1].."", 5}}
					dat.results = {{""..ores[h].."-"..sec[2].."", 4}}
				end
			elseif y == 2 then --'Ore'-processed-smelting
				dat.energy_required = 4
				dat.ingredients = {{""..ores[h].."-"..sec[2].."", 4}}
				dat.results = {{""..ores[h].."-"..tri[4].."", 5}}
			elseif y == 3 then --'Ore'-plate-processed
				dat.energy_required = 16
				dat.ingredients = {{""..ores[h].."-"..sec[2].."", 2}}
				dat.results = {{""..ores[h].."-"..sec[3].."", 15}}
				if h == 2 then --Copper
					dat.results = {{""..ores[h].."-"..sec[3].."", 16}}
				end
			else			   --'Ore'-plate-ingot
				dat.energy_required = 6.33
				dat.ingredients = {{""..ores[h].."-"..tri[4].."", 1}}
				dat.results = {{""..ores[h].."-"..sec[3].."", 8}}
			end
		end
	end
	
	for h = 3, 5 do --Tin, Lead, Silver
		for y = 1, 4 do --Ore, Processed, Plate, Plate
			local dat = data.raw.recipe[""..ores[h].."-"..sec[y].."-"..tri[y]..""]
			if y == 1 then --'Ore'-ore-processing
				dat.energy_required = 6
				dat.ingredients = {{""..ores[h].."-"..sec[1].."", 6}}
				dat.results = {{""..ores[h].."-"..sec[2].."", 3}}			
			elseif y == 2 then --'Ore'-processed-smelting
				dat.energy_required = 4
				dat.ingredients = {{""..ores[h].."-"..sec[2].."", 4}}
				dat.results = {{""..ores[h].."-"..tri[4].."", 4}}
			elseif y == 3 then --'Ore'-plate-processed
				dat.energy_required = 7.15
				dat.ingredients = {{""..ores[h].."-"..sec[2].."", 1}}
				dat.results = {{""..ores[h].."-"..sec[3].."", 3}}
			else			   --'Ore'-plate-ingot
				dat.energy_required = 7.15
				dat.ingredients = {{""..ores[h].."-"..tri[4].."", 1}}
				dat.results = {{""..ores[h].."-"..sec[3].."", 4}}
			end
		end
	end
	
	for h = 6, 12 do --Bauxite, Cobalt, Gold, Nickel, Rutile, Tungsten, Zinc
		for y = 1, 2 do --Ore, Processed
			local dat = data.raw.recipe[""..ores[h].."-"..sec[y].."-"..tri[y]..""]
			if y == 1 then --'Ore'-ore-processing
				dat.energy_required = 4
				dat.ingredients = {{""..ores[h].."-"..sec[1].."", 6}}
				dat.results = {{""..ores[h].."-"..sec[2].."", 3}}
				if h == 6 then --Bauxite
					dat.ingredients = {{"alumina", 6}}
				end
			else		   --'Ore'-processed-smelting
				dat.energy_required = 3
				dat.ingredients = {{""..ores[h].."-"..sec[2].."", 4}}
				dat.results = {{""..ores[h].."-"..tri[4].."", 4}}
			end
		end
	end
	
	--Bobs Mods
	local recipe = "quartz-processing"
	local rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{"quartz", 6}}
	rec.results = {{"quartz-processed", 3}}
	
	recipe = "quartz-processed-smelting"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{"quartz-processed", 4}}
	rec.results = {{"quartz-ingot", 5}}
	
	recipe = "quartz-glass-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 15
	rec.ingredients = {{"quartz-processed", 2}}
	rec.results = {{"glass", 15}}
	
	recipe = "quartz-glass-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{"quartz-ingot", 1}}
	rec.results = {{"glass", 8}}
	
	recipe = "alumina-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 14.3
	rec.ingredients = {{"bauxite-processed", 2}, {"carbon", 3}}
	rec.results = {{"aluminium-plate", 6}}
	
	recipe = "alumina-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 7.15
	rec.ingredients = {{"bauxite-ingot", 1}, {"carbon", 2}}
	rec.results = {{"aluminium-plate", 4}}
	
	recipe = "cobalt-oxide-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 21
	rec.ingredients = {{type="item", name="cobalt-processed", amount=2}, {type="item", name="stone", amount=3}}
	rec.result_count = 6
	
	recipe = "cobalt-oxide-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 14
	rec.ingredients = {{type="item", name="cobalt-ingot", amount=1}, {type="item", name="stone", amount=2}}
	rec.result_count = 4
	
	recipe = "bob-gold-plate-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="gold-processed", amount=4}, {type="fluid", name="chlorine", amount=2.5}}
	rec.results = {{type="item", name="gold-plate", amount=5}}
	
	recipe = "bob-gold-plate-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{type="item", name="gold-ingot", amount=1}, {type="fluid", name="chlorine", amount=4}}
	rec.results = {{type="item", name="gold-plate", amount=8}}
	
	recipe = "lead-oxide-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="lead-processed", amount=4}, {type="fluid", name="oxygen", amount=15}}
	rec.results = {{type="item", name="lead-oxide", amount=10}, {type="fluid", name="sulfur-dioxide", amount=10}}
	
	recipe = "lead-oxide-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{type="item", name="lead-ingot", amount=1}, {type="fluid", name="oxygen", amount=12}}
	rec.results = {{type="item", name="lead-oxide", amount=8}, {type="fluid", name="sulfur-dioxide", amount=8}}
	
	recipe = "bob-nickel-plate-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="nickel-processed", amount=5}, {type="fluid", name="water", amount=5}, {type="fluid", name="oxygen", amount=7.5}}
	rec.results = {{type="fluid", name="sulfuric-acid", amount=5}, {type="item", name="nickel-plate", amount=5}}
	
	recipe = "bob-nickel-plate-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{type="item", name="nickel-ingot", amount=1}, {type="fluid", name="water", amount=8}, {type="fluid", name="oxygen", amount=12}}
	rec.results = {{type="fluid", name="sulfuric-acid", amount=8}, {type="item", name="nickel-plate", amount=8}}
	
	recipe = "bob-silicon-plate-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="calcium-chloride", amount=5}, {type="item", name="carbon", amount=8}, {type="item", name="quartz-processed", amount=4}}
	rec.results = {{type="item", name="silicon", amount=5}}
	
	recipe = "bob-silicon-plate-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{type="item", name="calcium-chloride", amount=8}, {type="item", name="carbon", amount=12}, {type="item", name="quartz-ingot", amount=1}}
	rec.results = {{type="item", name="silicon", amount=8}}
	
	recipe = "bob-titanium-plate-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 21
	rec.ingredients = {{type="item", name="calcium-chloride", amount=6}, {type="item", name="carbon", amount=3}, {type="item", name="rutile-processed", amount=2}}
	rec.result = "titanium-plate"
	rec.result_count = 6
	
	recipe = "bob-titanium-plate-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 14
	rec.ingredients = {{type="item", name="calcium-chloride", amount=4}, {type="item", name="carbon", amount=2}, {"rutile-ingot", amount=1}}
	rec.result = "titanium-plate"
	rec.result_count = 4
	
	recipe = "silver-nitrate-from-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="silver-processed", amount=4}, {type="fluid", name="nitrogen-dioxide", amount=5}}
	rec.results = {{type="item", name="silver-nitrate", amount=5}}
	
	recipe = "silver-nitrate-from-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 6
	rec.ingredients = {{type="item", name="silver-ingot", amount=1}, {type="fluid", name="nitrogen-dioxide", amount=8}}
	rec.results = {{type="item", name="silver-nitrate", amount=8}}
	
	recipe = "tungstic-acid-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 12
	rec.ingredients = {{type="item", name="tungsten-processed", amount=4}, {type="fluid", name="hydrogen-chloride", amount=24}}
	rec.results = {{type="fluid", name="tungstic-acid", amount=12}, {type="item", name="calcium-chloride", amount=6}}
	
	recipe = "tungstic-acid-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 4
	rec.ingredients = {{type="item", name="tungsten-ingot", amount=1}, {type="fluid", name="hydrogen-chloride", amount=8}}
	rec.results = {{type="fluid", name="tungstic-acid", amount=4}, {type="item", name="calcium-chloride", amount=2}}
	
	recipe = "bob-zinc-plate-processed"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 7.15
	rec.ingredients = {{type="item", name="zinc-processed", amount=1}, {type="fluid", name="sulfuric-acid", amount=3}}
	rec.results = {{type="item", name="zinc-plate", amount=3}}
	
	recipe = "bob-zinc-plate-ingot"
	rec = data.raw.recipe[""..recipe..""]
	rec.energy_required = 7.15
	rec.ingredients = {{type="item", name="zinc-ingot", amount=1}, {type="fluid", name="sulfuric-acid", amount=4}}
	rec.results = {{type="item", name="zinc-plate", amount=4}}
else
    log("Smelting")
	--Bobs Mods	
	local recipe = "lead-oxide-processed"
	local rec = data.raw.recipe[""..recipe..""]
	if rec then
	  rec.energy_required = 4
	  rec.ingredients = {{type="item", name="processed-lead", amount=4}, {type="fluid", name="oxygen", amount=15}}
	  rec.results = {{type="item", name="lead-oxide", amount=10}, {type="fluid", name="sulfur-dioxide", amount=10}}
	end 
	
	recipe = "silver-nitrate-from-processed"
	rec = data.raw.recipe[""..recipe..""]
	if rec then
	  rec.energy_required = 4
	  rec.ingredients = {{type="item", name="processed-silver", amount=4}, {type="fluid", name="nitrogen-dioxide", amount=5}}
	  rec.results = {{type="item", name="silver-nitrate", amount=5}}
	end 
	
	recipe = "silver-nitrate-from-ingot"
	rec = data.raw.recipe[""..recipe..""]
	if rec then
	  rec.energy_required = 6
	  rec.ingredients = {{type="item", name="silver-ingot", amount=1}, {type="fluid", name="nitrogen-dioxide", amount=8}}
	  rec.results = {{type="item", name="silver-nitrate", amount=8}}
	end 
	
	recipe = "tungstic-acid-processed"
	rec = data.raw.recipe[""..recipe..""]
	if rec then
	  rec.energy_required = 12
	  rec.ingredients = {{type="item", name="processed-tungsten", amount=4}, {type="fluid", name="hydrogen-chloride", amount=24}}
	  rec.results = {{type="fluid", name="tungstic-acid", amount=12}, {type="item", name="calcium-chloride", amount=6}}
	end 
	
	recipe = "tungstic-acid-ingot"
	rec = data.raw.recipe[""..recipe..""]
	if rec then
	  rec.energy_required = 4
	  rec.ingredients = {{type="item", name="tungsten-ingot", amount=1}, {type="fluid", name="hydrogen-chloride", amount=8}}
	  rec.results = {{type="fluid", name="tungstic-acid", amount=4}, {type="item", name="calcium-chloride", amount=2}}
	end 
end
