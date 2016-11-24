require "util"

function find_turbines(surface)
	if global.wind_turbine == nil then
		global.wind_turbine = {}
	for c in surface.get_chunks() do
  for key, wind_turbine in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="wind-turbine"})) do

      table.insert(global.wind_turbine, wind_turbine)
  end
end
--game.players[1].print("Migrated Wind Turbines")
end
end


function check_turbines()
  if global.wind_turbine == nil then global.wind_turbine = {} end
  
  local turbines = global.wind_turbine
  local num_turbines = #turbines
  if not global.turbine_index then global.turbine_index = 1 end
  local turbine_index = global.turbine_index
  local gen = turbines[turbine_index]

  if gen ~= nil then
      if gen.valid then
        local s = gen.surface
        local r = math.random(990,1010)/1000
        local t = (100*(s.wind_speed*25))*r
        local pot = {amount = 1000, type = "wind", temperature = t}

        gen.fluidbox[1] = pot
        else table.remove(turbines, turbine_index) turbine_index = turbine_index-1
      end
    if turbine_index == num_turbines then turbine_index = 0 end
    turbine_index = turbine_index+1
    global.turbine_index = turbine_index
  end
end

function change_wind_hour()

	if global.wind_hour == nil
		then global.wind_hour = 0.02
	end
global.wind_hour = math.random(5,40)/1000
end

function change_wind_day()
	if global.wind_day == nil
		then global.wind_day = 1
		end

	global.wind_day = math.random(80,120)/100
end

function tick_wind()
if global.wind_hour == nil
		then global.wind_hour = 0.02
end

if global.wind_day == nil
		then global.wind_day = 1
end	
--game.players[1].print("wind ticked")


  for k, s in pairs(game.surfaces) do
    local nv = global.wind_hour * global.wind_day
    local v = s.wind_speed
    if v ~= nil then
      if nv > v then       
        dv = (nv-v)/45
        s.wind_speed = v + dv      
      end

      if nv < v then
        dv = (v-nv)/45
        s.wind_speed = v - dv
      end
    end
  end
end
				
			
