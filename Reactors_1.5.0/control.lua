MOD_NAME = "Reactors"

REACTOR_ENTITY_NAME = "nuclear-reactor"
INTERFACE_ENTITY_NAME = "reactor-interface"
BOILER_ENTITY_NAME = "reactor-boiler"
TOWER_ENTITY_NAME = "cooling-tower"
STEAM_ENTITY_NAME = "cooling-tower-steam"

SIGNAL_CORE_TEMP = {type="virtual", name="signal-reactor-core-temp"}
SIGNAL_FLUID_TEMP = {type="virtual", name="signal-reactor-fluid-temp"}
SIGNAL_POWER_OUTPUT = {type="virtual", name="signal-reactor-power-output"}
SIGNAL_REACTOR_SCRAM = {type="virtual", name="signal-reactor-scram"}
SIGNAL_REACTOR_TARGET = {type="virtual", name="signal-reactor-target"}
SIGNAL_REACTOR_STOP = {type="virtual", name="signal-reactor-stop"}
SIGNAL_REACTOR_STOPPING = {type="virtual", name="signal-reactor-stopping"}

TICKS_PER_UPDATE = 5 -- each reactor and cooling tower gets updated once every 5 ticks
UPDATES_PER_SECOND = 60 / TICKS_PER_UPDATE

MAX_POWER = 26000 -- kilowatts
MIN_POWER =
{
  ["fission-reaction"] = MAX_POWER * 0.2,
  ["breeder-reaction"] = MAX_POWER * 0.2
}
POWER_INCREMENT = MAX_POWER / UPDATES_PER_SECOND / 10 -- 10 seconds to max from zero
POWER_DECREMENT = MAX_POWER / UPDATES_PER_SECOND / 10 -- 10 seconds to zero from max
CRAFTING_INCREMENT =
{
  ["fission-reaction"] = 1 / 50 / UPDATES_PER_SECOND / MIN_POWER["fission-reaction"],
  ["breeder-reaction"] = 1 / 50 / UPDATES_PER_SECOND / MIN_POWER["breeder-reaction"]
}
AMBIENT_TEMP = 15
OPERATING_TEMP = 150
SCRAM_TEMP = 200 -- overheat trigger temp
REACTOR_MASS = 2000

function init_global()
  global = global or {}
  global.reactors = global.reactors or {}
  global.towers = global.towers or {}
end

script.on_init(init_global)

function is_older_than(va, vb)
  if va and vb then
    local ia = string.gmatch(va, '%d+')
    for sb in string.gmatch(vb, '%d+') do
      local sa = ia()
      if sb > sa then
        return true
      elseif sb < sa then
        return false
      end
    end
  end
  return false
end

function update_global(changes)
  if changes.mod_changes[MOD_NAME] then
    -- reset minimum power on mod updating, in case settings have changed - will be recalculated next reactor tick
    for i,reactor in pairs(global.reactors) do
      reactor.min_power = nil
      reactor.increment = nil
      reactor.shutdown = false
    end
    if is_older_than(changes.mod_changes[MOD_NAME].old_version, "1.1.0") then
      -- make sub-entities indestructible to avert errors
      for i,reactor in pairs(global.reactors) do
        reactor.boiler.destructible = false
        reactor.interface.destructible = false
      end
      for i,tower in pairs(global.towers) do
        tower.steam.destructible = false
      end
      game.print("Applied Reactors 1.1.0 changes")
    end
    if is_older_than(changes.mod_changes[MOD_NAME].old_version, "1.4.5") then
      for i,reactor in pairs(global.reactors) do
        reactor.signals =
        {
          parameters =
          {
            ["core"] = {signal=SIGNAL_CORE_TEMP, count=0, index=1},
            ["coolant"] = {signal=SIGNAL_FLUID_TEMP, count=0, index=2},
            ["output"] = {signal=SIGNAL_POWER_OUTPUT, count=0, index=3},
            ["fluid"] = {signal={type="fluid", name="water"}, count=0, index=4},
            ["scram"] = {signal=SIGNAL_REACTOR_SCRAM, count=0, index=5},
            ["shutdown"] = {signal=SIGNAL_REACTOR_STOPPING, count=0, index=6}
          }
        }
        reactor.fluid = nil
        reactor.energy_delta = 0
      end
      game.print("Applied Reactors 1.4.5 changes")
    end
  end
end

script.on_configuration_changed(update_global)

function add_reactor(reactor)
  -- workaround to prevent rotation from interfering with blueprinting
  -- destroys new reactor and makes new one, resetting orientation to north
  local old_reactor = reactor
  reactor = old_reactor.surface.create_entity
  {
    name = REACTOR_ENTITY_NAME,
    position = old_reactor.position,
    force = old_reactor.force
  }
  reactor.recipe = old_reactor.recipe -- copy recipe setting
  old_reactor.destroy()
  -- add boiler/heat exchanger, provides fluidbox for water flow and heating
  local boiler = reactor.surface.create_entity
  {
    name = BOILER_ENTITY_NAME,
    position = reactor.position,
    force = reactor.force
  }
  boiler.operable = false -- disable tank gui
  boiler.destructible = false -- so we don't try to update a dead tank (and don't have to keep checking it's alive)
  local interface = nil
  -- search for ghosted interface (in case this is part of a blueprint)
  local ghosts = reactor.surface.find_entities_filtered
  {
    name = "entity-ghost",
    position = {reactor.position.x, reactor.position.y + 1}
  }
  for _,ghost in pairs(ghosts) do
    if ghost.ghost_name == INTERFACE_ENTITY_NAME then
      -- revive ghost interface (giving us its wire connections) and store a reference for use
      interface = select(2,ghost.revive())
    end
  end
  -- if no ghost, make a new one
  interface = interface or reactor.surface.create_entity
  {
    name = INTERFACE_ENTITY_NAME,
    position = {reactor.position.x, reactor.position.y + 1},
    force = reactor.force
  }
  interface.operable = false -- do not allow the player to interface with the interface
  interface.destructible = false -- same as the boiler, saves checking it still exists each update
  table.insert(global.reactors,
  {
    id = reactor.unit_number,
    entity = reactor,
    boiler = boiler,
    interface = interface,
    control = interface.get_or_create_control_behavior(),
    signals =
    {
      parameters =
      {
        ["core"] = {signal=SIGNAL_CORE_TEMP, count=0, index=1},
        ["coolant"] = {signal=SIGNAL_FLUID_TEMP, count=0, index=2},
        ["output"] = {signal=SIGNAL_POWER_OUTPUT, count=0, index=3},
        ["fluid"] = {signal={type="fluid", name="water"}, count=0, index=4},
        ["scram"] = {signal=SIGNAL_REACTOR_SCRAM, count=0, index=5},
        ["shutdown"] = {signal=SIGNAL_REACTOR_STOPPING, count=0, index=6}
      }
    },
    core_temp = AMBIENT_TEMP,
    fluid_temp = AMBIENT_TEMP,
    power = 0,
    energy_delta = 0,
    scram = false,
    shutdown = false
  })
end

function remove_reactor(dead_reactor)
  for i,reactor in pairs(global.reactors) do
    if reactor.id == dead_reactor.unit_number then
      reactor.boiler.destroy() -- remove boiler
      reactor.interface.destroy() -- remove circuit interface
      table.remove(global.reactors, i) -- remove table entry so we stop trying to update this reactor
    end
  end
end

function add_tower(tower)
  -- happy cloud maker entity, for making happy clouds
  -- this is needed bcause the tower is an electric furnace, and only burner furnaces can produce smoke
  local steam = tower.surface.create_entity
  {
    name = STEAM_ENTITY_NAME,
    position = tower.position,
    force = tower.force
  }
  steam.operable = false -- disable opening the happy cloud maker's GUI
  steam.destructible = false -- it can't be destroyed (we remove it when the cooling tower dies)
  steam.get_fuel_inventory().insert({name="solid-fuel", count=50}) -- at 1 watt, this is enough fuel to run for 39 years, should suffice
  steam.fluidbox[1] = {type="water", amount=1} -- water for dummy steam puff recipe
  steam.active = false -- start inactive
  table.insert(global.towers,
  {
    id = tower.unit_number,
    entity = tower,
    steam = steam
  })
end

function remove_tower(dead_tower)
  for i,tower in pairs(global.towers) do
    if tower.id == dead_tower.unit_number then
      tower.steam.destroy() -- remove happy cloud maker
      table.remove(global.towers, i) -- remove table entry so we stop trying to update this tower
    end
  end
end

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == REACTOR_ENTITY_NAME then
    add_reactor(event.created_entity)
  elseif event.created_entity.name == TOWER_ENTITY_NAME then
    add_tower(event.created_entity)
  end
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == REACTOR_ENTITY_NAME then
    add_reactor(event.created_entity)
  elseif event.created_entity.name == TOWER_ENTITY_NAME then
    add_tower(event.created_entity)
  end
end)

script.on_event(defines.events.on_preplayer_mined_item, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_reactor(event.entity)
  elseif event.entity.name == TOWER_ENTITY_NAME then
    remove_tower(event.entity)
  end
end)
script.on_event(defines.events.on_robot_pre_mined, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_reactor(event.entity)
  elseif event.entity.name == TOWER_ENTITY_NAME then
    remove_tower(event.entity)
  end
end)
script.on_event(defines.events.on_entity_died, function(event)
  if event.entity.name == REACTOR_ENTITY_NAME then
    remove_reactor(event.entity)
  elseif event.entity.name == TOWER_ENTITY_NAME then
    remove_tower(event.entity)
  end
end)


function round(double)
  return math.floor(double + 0.5)
end

function has_signal(index, signal)
  local green = global.reactors[index].control.get_circuit_network(defines.wire_type.green)
  if green then
    local green_signal = green.get_signal(signal)
    if green_signal and green_signal > 0 then
      return true
    end
  end
  local red = global.reactors[index].control.get_circuit_network(defines.wire_type.red)
  if red then
    local red_signal = red.get_signal(signal)
    if red_signal and red_signal > 0 then
      return true
    end
  end
  return false
end

function get_signal(index, signal)
  local count = 0
  local green = global.reactors[index].control.get_circuit_network(defines.wire_type.green)
  if green then
    local green_signal = green.get_signal(signal)
    if green_signal then
      count = count + green_signal
    end
  end
  local red = global.reactors[index].control.get_circuit_network(defines.wire_type.red)
  if red then
    local red_signal = red.get_signal(signal)
    if red_signal then
      count = count + red_signal
    end
  end
  return count
end

function clamp(val, min, max)
  if val > max then
    return max
  elseif val < min then
    return min
  else
    return val
  end
end

function update_reactor(index)
  local reactor = global.reactors[index]

  -- update core
  if reactor.scram then
    if reactor.core_temp < AMBIENT_TEMP + 1 then
      reactor.scram = false
      reactor.signals.parameters["scram"].count = 0
      -- don't turn reactor back on if stop signal present
      reactor.entity.active = not has_signal(index, SIGNAL_REACTOR_STOP)
    end
  else
    reactor.shutdown = reactor.shutdown or has_signal(index, SIGNAL_REACTOR_STOP)
    if reactor.entity.is_crafting() then
      if reactor.entity.crafting_progress < 1 then
        reactor.min_power = reactor.min_power or MIN_POWER[reactor.entity.recipe.name]
        reactor.increment = reactor.increment or CRAFTING_INCREMENT[reactor.entity.recipe.name]
        if reactor.shutdown then
          reactor.power = reactor.power - POWER_DECREMENT
          if reactor.power <= 0 then
            reactor.power = 0
            reactor.entity.active = false
            reactor.shutdown = false
            reactor.signals.parameters["shutdown"].count = 0
          else
            reactor.signals.parameters["shutdown"].count = 1
          end
        else
          reactor.entity.active = true
          local target = get_signal(index, SIGNAL_REACTOR_TARGET)
          if target > 0 then
            target = clamp(target * MAX_POWER / 100, reactor.min_power, MAX_POWER)
            if reactor.power < target then
              reactor.power = math.min(reactor.power + POWER_INCREMENT, target)
            else
              reactor.power = math.max(reactor.power - POWER_DECREMENT, target)
            end
          else
            if reactor.power < reactor.min_power or reactor.core_temp < OPERATING_TEMP then
              reactor.power = math.min(reactor.power + POWER_INCREMENT, MAX_POWER)
            elseif reactor.core_temp > OPERATING_TEMP then
              reactor.power = clamp(reactor.power - POWER_DECREMENT, reactor.min_power, MAX_POWER)
            end
          end
        end
        if reactor.entity.active and reactor.power > reactor.min_power then
          reactor.entity.crafting_progress = reactor.entity.crafting_progress + (reactor.power - reactor.min_power) * reactor.increment
        end
        reactor.core_temp = reactor.core_temp + (reactor.power / REACTOR_MASS / UPDATES_PER_SECOND)
      end
      if reactor.core_temp > SCRAM_TEMP then
        
        reactor.scram = true
        reactor.signals.parameters["scram"].count = 1
        reactor.shutdown = false
        reactor.signals.parameters["shutdown"].count = 0
        reactor.power = 0
        reactor.entity.active = false
      end
    else
      -- not crafting, no power
      reactor.min_power = nil
      reactor.increment = nil
      reactor.power = 0
    end
  end
  reactor.signals.parameters["output"].count = round(reactor.power / MAX_POWER * 100)
  reactor.core_temp = math.max(reactor.core_temp + reactor.energy_delta / REACTOR_MASS, AMBIENT_TEMP)
  reactor.energy_delta = 0
  reactor.signals.parameters["core"].count = round(reactor.core_temp)
  
  -- update fluid
  local fluid = reactor.boiler.fluidbox[1]
  if fluid then
    local sum_energy = reactor.core_temp * REACTOR_MASS + (fluid.amount * fluid.temperature)
    local avg_temp = sum_energy / (REACTOR_MASS + fluid.amount)
    reactor.fluid_temp = math.min(avg_temp, 100)
    local temp_delta = (reactor.fluid_temp - fluid.temperature) -- this can be negative if fluid is warmer than core
    reactor.signals.parameters["fluid"].count = round(fluid.amount)
    reactor.signals.parameters["coolant"].count = round(reactor.fluid_temp)
  else
    reactor.fluid_temp = AMBIENT_TEMP
    reactor.signals.parameters["fluid"].count = 0
    reactor.signals.parameters["coolant"].count = 0
  end
  
  -- update signals
  reactor.control.parameters = reactor.signals
end

function quick_update_reactor(index)
  local reactor = global.reactors[index]
  if reactor and reactor.boiler.valid then
    local fluid = reactor.boiler.fluidbox[1]
    if fluid then
      reactor.energy_delta = reactor.energy_delta + (fluid.temperature - reactor.fluid_temp) * fluid.amount
      fluid.temperature = reactor.fluid_temp
      reactor.boiler.fluidbox[1] = fluid
    end
  end
end

function update_tower(index)
  local tower = global.towers[index]
  if tower and tower.entity.valid then
    tower.steam.active = tower.entity.is_crafting() and tower.entity.crafting_progress < 1 -- only show steam puffs if cooling tower is actively working and not backed up
    tower.steam.crafting_progress = 0.1 -- reset steam puff crafting progress so it never actually finishes
  end
end

script.on_event(defines.events.on_tick, function(event)
  for i,_ in pairs(global.reactors) do
    quick_update_reactor(i)
  end
  local index = (event.tick % TICKS_PER_UPDATE) + 1
  while index <= #global.reactors do
    if global.reactors[index] then
      update_reactor(index)
    end
    index = index + TICKS_PER_UPDATE
  end

  index = (event.tick % TICKS_PER_UPDATE) + 1
  while index <= #global.towers do
    update_tower(index)
    index = index + TICKS_PER_UPDATE
  end
end)