require "util"



function find_burners(surface)
	if global.burner == nil then
		global.burner = {}
	for c in surface.get_chunks() do
  for key, burner in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="burner-generator"})) do

      table.insert(global.burner, burner)
  end
end
--game.players[1].print("Migrated Burner Generators")
end
end







function check_burners()
   if global.burner ~= nil then
      for k,burner in pairs(global.burner) do
      	if k % 360 == game.tick % 360 then
					if burner.valid then
										if burner.energy ~= 0 then
										local X = burner.position.x
										local Y = burner.position.y --+ 0.5
										lid = {}
									lid =	burner.surface.find_entities_filtered{area = {{X -0.5, Y - 0.5 }, {X + 0.5  , Y +0.5 }}, name= "burner-generator-power"}
									if lid[1] ~= nil then
									local 	top = lid[1].fluidbox[1]
									if top == nil then 	top = {type="water", amount=3, temperature=15} end
									if top ~= nil then
										if burner.fluidbox[1] ~= nil then 
										bot = burner.fluidbox[1]



									t1 = top["temperature"]
									v1 = top["amount"] * 100
									t2 = bot["temperature"]
									v2 = bot["amount"]
									dv = v2 - v1

							
									if v1 < 295 then
										v1 = 100
										t2 = 90 end				

										bot["temperature"] = t2
										burner.fluidbox[1] = bot
										top["amount"]= 3
										top["temperature"] = 100
										lid[1].fluidbox[1] = top
											end
					end
end
end

else table.remove(global.burner, k) --game.players[1].print("burner removed")
end
end
end	
end
end
				
				







