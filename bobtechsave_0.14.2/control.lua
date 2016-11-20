if not bobmods then bobmods = {} end
if not bobmods.techsave then bobmods.techsave = {} end


if not global then global = {} end
if not global.techsave then global.techsave = {} end
if not global.techsave.force then global.techsave.force = {} end


function bobmods.techsave.create_force(force)
  if not global.techsave.force[force.name] then
    global.techsave.force[force.name] = {}
  end
  if not global.techsave.force[force.name].research_progress then
    global.techsave.force[force.name].research_progress = {}
  end
end

function bobmods.techsave.technology_cleanup(force)
  if global.techsave.force[force.name].research_progress ~= nil then
    local newtable = {}
    for index, research in pairs(global.techsave.force[force.name].research_progress) do
      if game.forces[force.name].technologies[index] then
        newtable[index] = research
      end
    end
    global.techsave.force[force.name].research_progress = newtable
  end
end


function bobmods.techsave.on_tick(event)
  for index, force in pairs(game.forces) do
    if force.current_research ~= nil then
      if not global.techsave.force[force.name] then
        bobmods.techsave.create_force(force)
      end
      if force.research_progress > 1 then
        force.research_progress = 1
      end
      global.techsave.force[force.name].research_progress[force.current_research.name] = force.research_progress
    end
  end
end

function bobmods.techsave.on_research_started(event)
  if event.research.force.current_research then
    if global.techsave.force[event.research.force.name] and global.techsave.force[event.research.force.name].research_progress[event.research.name] then
      event.research.force.research_progress = global.techsave.force[event.research.force.name].research_progress[event.research.name]
    end
  end
end

function bobmods.techsave.on_research_finished(event)
  if global.techsave.force[event.research.force.name] and global.techsave.force[event.research.force.name].research_progress[event.research.name] then
    global.techsave.force[event.research.force.name].research_progress[event.research.name] = nil
  end
end

function bobmods.techsave.on_configuration_changed(event)
  for index, force in pairs(game.forces) do
    bobmods.techsave.create_force(force)
    bobmods.techsave.technology_cleanup(force)
  end
end

function bobmods.techsave.on_force_created(event)
  bobmods.techsave.create_force(event.force)
end

function bobmods.techsave.on_forces_merging(event)
  local newtable = {}
  for index, force in pairs(global.techsave.force) do
    if game.forces[index] and index ~= event.source.name then
      newtable[index] = force
    end
  end
  global.techsave.force = newtable
end


script.on_event(defines.events.on_tick, bobmods.techsave.on_tick)
script.on_event(defines.events.on_research_started, bobmods.techsave.on_research_started)
script.on_event(defines.events.on_research_finished, bobmods.techsave.on_research_finished)
script.on_configuration_changed(bobmods.techsave.on_configuration_changed)
script.on_event(defines.events.on_force_created, bobmods.techsave.on_force_created)
script.on_event(defines.events.on_forces_merging, bobmods.techsave.on_forces_merging)


