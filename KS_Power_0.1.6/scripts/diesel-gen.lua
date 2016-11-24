require "util"


function find_generators(surface)
	if global.petroleum_generator == nil then
		global.petroleum_generator = {}
	for c in surface.get_chunks() do
  for key, petroleum_generator in pairs(surface.find_entities_filtered({area={{c.x * 32, c.y * 32}, {c.x * 32 + 32, c.y * 32 + 32}}, name="petroleum-generator"})) do

      table.insert(global.petroleum_generator, petroleum_generator)
  end
end
----game.players[1].print("Migrated Diesel Generators")
end
end


local fluidTypeToTemperature =
{
    ["petroleum-gas"] =
    {
        min = 79.6,
        set = 80
    },
    ["light-oil"] =
    {
        min = 99.6,
        set = 100
    },
    ["diesel-fuel"] =
    {
        min = 99.6,
        set = 100
    },
    ["heavy-oil"] =
    {
        min = 59.6,
        set = 60
    }
}

function check_generators()
if global.archived_petroleum_generator == nil then
    global.archived_petroleum_generator = {}
end
  if global.petroleum_generator ~= nil then
    for k,gen in pairs(global.petroleum_generator) do
      if gen.valid then
        if gen.fluidbox[1] ~= nil then 
          local pot = gen.fluidbox[1]
          local p = gen.position
          local lookup = fluidTypeToTemperature[pot.type]
          if lookup ~= nil then
          pot["temperature"] = lookup.set
          else pot["temperature"] = 15
          end
          if math.floor(gen.fluidbox[1]["temperature"] + 0.01) == pot["temperature"] then
            table.insert(global.archived_petroleum_generator, gen)
            table.remove(global.petroleum_generator, k)
            --game.players[1].print{"Generator was archived  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
          end
          
          gen.fluidbox[1] = pot

          else
          if global.archived_petroleum_generator == nil then
            global.archived_petroleum_generator = {}
          end
          table.insert(global.archived_petroleum_generator, gen)
          table.remove(global.petroleum_generator, k)
          --game.players[1].print{"empty pot was archived  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
        end

      else table.remove(global.petroleum_generator, k)
      --game.players[1].print{"Generator was removed from index  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
      end
    end
  end
end



function recheck_archived_generators()
  if global.archived_petroleum_generator == nil then
    global.archived_petroleum_generator = {}
  end
  if not global.gen_index then global.gen_index = 1 end
  local gen_index = global.gen_index
  local generators = global.archived_petroleum_generator
  local num_archived = #generators
  local gen = generators[gen_index]
 
  if gen ~= nil then
    if gen.valid then
      local pot = gen.fluidbox[1]
      if pot ~= nil then
        local lookup = fluidTypeToTemperature[pot.type]
        if lookup ~= nil then
          if pot["temperature"] < lookup.min then
            pot["temperature"] = lookup.set
            gen.fluidbox[1] = pot
            table.insert(global.petroleum_generator, gen)
            table.remove(global.archived_petroleum_generator, gen_index)
            gen_index = gen_index - 1
          end
        end
      end
    else table.remove(global.archived_petroleum_generator, gen_index)
      gen_index = gen_index - 1
    end
  if gen_index == num_archived then gen_index = 0 end
    gen_index = gen_index +1
  end
  global.gen_index = gen_index
end

--[[
function old_recheck_archived_generators()

if global.archived_petroleum_generator == nil then
  global.archived_petroleum_generator = {}
end

if not gen_index then gen_index = 1 end



  local generators = global.archived_petroleum_generator
  local num_archived = #generators
  local gen = generators[gen_index]

  if gen ~= nil then
    if gen.valid then
      if gen.fluidbox[1] ~= nil then 
        local pot = gen.fluidbox[1]                            

        if pot.type == "petroleum-gas" then 					
          if pot["temperature"] < 79.6 then
            pot["temperature"] = 80.00
            table.insert(global.petroleum_generator, gen)
            table.remove(global.archived_petroleum_generator, gen_index)
            gen_index = gen_index - 1
          end

        elseif pot.type == "light-oil" then
          if pot["temperature"] < 99.6 then
            pot["temperature"] = 100.00
            table.insert(global.petroleum_generator, gen)
            table.remove(global.archived_petroleum_generator, gen_index)
            gen_index = gen_index - 1
          end

        elseif pot.type == "diesel-fuel" then 					
          if pot["temperature"] < 99.6 then
            pot["temperature"] = 100.00
            table.insert(global.petroleum_generator, gen)
            table.remove(global.archived_petroleum_generator, gen_index)
            gen_index = gen_index - 1
          end

        elseif pot.type == "heavy-oil" then 					
          if pot["temperature"] < 59.6 then
            pot["temperature"] = 60.00
            table.insert(global.petroleum_generator, gen)
            table.remove(global.archived_petroleum_generator, gen_index) 
            gen_index = gen_index - 1
          end
        end
        gen.fluidbox[1] = pot
      end
    else table.remove(global.archived_petroleum_generator, gen_index)
    gen_index = gen_index - 1
    end
  if gen_index == num_archived then gen_index = 0 end
  gen_index = gen_index +1
  end
end

function old_check_generators()
  if global.petroleum_generator ~= nil then
    for k,gen in pairs(global.petroleum_generator) do
      if gen.valid then
        if gen.fluidbox[1] ~= nil then 
          local pot = gen.fluidbox[1]
          local p = gen.position

          if pot.type == "petroleum-gas" then 					
              pot["temperature"] = 80.00
              gen.surface.pollute({p.x, p.y}, 0.8/60)

            elseif pot.type == "light-oil" then 					
              pot["temperature"] = 100.00
              gen.surface.pollute({p.x, p.y}, 1/60)

            elseif pot.type == "diesel-fuel" then 					
              pot["temperature"] = 100.00
              gen.surface.pollute({p.x, p.y}, 1.2/60)

            elseif pot.type == "heavy-oil" then 					
              pot["temperature"] = 60.00
              gen.surface.pollute({p.x, p.y}, 0.6/60)

            else pot["temperature"] = 15
          end

          if math.floor(gen.fluidbox[1]["temperature"] + 0.01) == pot["temperature"] then
            table.insert(global.archived_petroleum_generator, gen)
            table.remove(global.petroleum_generator, k)
            --game.players[1].print{"Generator was archived  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
          end
          
          gen.fluidbox[1] = pot

        end

        if gen.fluidbox[1] == nil then 
        table.insert(global.archived_petroleum_generator, gen)
        table.remove(global.petroleum_generator, k)
        --game.players[1].print{"empty pot was archived  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
        end

      else table.remove(global.petroleum_generator, k)
      --game.players[1].print{"Generator was removed from index  "..#global.archived_petroleum_generator.."  "..#global.petroleum_generator}
      end
    end
  end
end

]]--