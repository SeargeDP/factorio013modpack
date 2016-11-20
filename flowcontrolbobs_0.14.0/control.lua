script.on_event(defines.events.on_built_entity, function(event)
  if string.match(event.created_entity.name, "pipe-") and 
     (   string.match(event.created_entity.name, "elbow")
      or string.match(event.created_entity.name, "junction")
      or string.match(event.created_entity.name, "straight")) then
    event.created_entity.operable = false
  end
end)