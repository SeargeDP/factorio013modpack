require("config")

script.on_event(defines.events.on_entity_died, function(event)
	local dead_entity = event.entity
	local reduction_factor = 0.0
	local altered_evolution = 0.0
	local current_evolution = game.evolution_factor

	--print(dead_entity.type.." - "..dead_entity.name)
	
	if current_evolution > MINIMUM_EVOLUTION_FACTOR then
		if dead_entity.type == "unit" then
			--minimise check loop time
			--print("Unit")
		else
			if dead_entity.type == "turret" then
				for _, worm in pairs(WORMS) do
					--print(worm[1])
					if dead_entity.name == worm[1] then
						reduction_factor = BASE_REDUCTION_FACTOR * worm[2]
						break
					end
				end		
			else 
				if dead_entity.type == "unit-spawner" then
					for _, spawner in pairs(SPAWNERS) do
						--print(spawner[1])
						if dead_entity.name == spawner[1] then
							reduction_factor = BASE_REDUCTION_FACTOR * spawner[2]
							break
						end
					end
				end
			end
		end
		
		if reduction_factor > 0.0 then
			--if DEBUG then print("Reduction = "..reduction_factor) end
			if current_evolution < 1.0 then
				altered_evolution = (current_evolution - (reduction_factor * (1 - current_evolution)))
				if altered_evolution > MINIMUM_EVOLUTION_FACTOR then
					game.evolution_factor = altered_evolution
				else
					game.evolution_factor = MINIMUM_EVOLUTION_FACTOR
				end
			else
				game.evolution_factor = 0.9999999
			end
			
			if ALIENS_GEARING_FOR_WAR then
				game.map_settings.enemy_evolution.time_factor = game.map_settings.enemy_evolution.time_factor + ((EVOLUTION_INCREMENT_FACTOR * reduction_factor) / 10)
				game.map_settings.enemy_evolution.pollution_factor = game.map_settings.enemy_evolution.pollution_factor + (EVOLUTION_INCREMENT_FACTOR * reduction_factor)
				
				--if DEBUG then print("Time = "..game.map_settings.enemy_evolution.time_factor.."\nPolution = "..game.map_settings.enemy_evolution.pollution_factor) end
			end
		end
	end
end)

if DEBUG then
	script.on_event(defines.events.on_tick, function(event)	
		if DISPLAY_FACTORS then
			print("Evolution Factors Reset")
			print("Destroy = "..game.map_settings.enemy_evolution.destroy_factor)
			print("Pollution = "..game.map_settings.enemy_evolution.pollution_factor)
			print("Time = "..game.map_settings.enemy_evolution.time_factor)
			print("Evolution = "..game.evolution_factor)
			DISPLAY_FACTORS = false
		end
	end)
end

script.on_init(function()
	game.map_settings.enemy_evolution.destroy_factor = 0.0
	game.map_settings.enemy_evolution.pollution_factor = POLLUTION_FACTOR
end)

function print(msg)
	game.players[1].print(msg)
end
	
	
--[[
	if current_evolution > MINIMUM_EVOLUTION_FACTOR then	
		if dead_entity.type == "turret" then
			if string.find(dead_entity.name, "small") then
				reduction_factor = BASE_REDUCTION_FACTOR * SMALL_WORM
			elseif string.find(dead_entity.name, "medium") then
				reduction_factor = BASE_REDUCTION_FACTOR * MEDIUM_WORM
			elseif string.find(dead_entity.name, "big") then
				reduction_factor = BASE_REDUCTION_FACTOR * BIG_WORM
			elseif string.find(dead_entity.name, "giant") then
				reduction_factor = BASE_REDUCTION_FACTOR * GIANT_WORM
			elseif string.find(dead_entity.name, "behemoth") then
				reduction_factor = BASE_REDUCTION_FACTOR * BEHEMOTH_WORM
			end		
		else 
			if dead_entity.type == "unit-spawner" then
				if string.find(dead_entity.name, "bob") then
					reduction_factor = BASE_REDUCTION_FACTOR * SPAWNER_BOBS
				else
					reduction_factor = BASE_REDUCTION_FACTOR * SPAWNER_BASE
				end
			end
		end
--]]