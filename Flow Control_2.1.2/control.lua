script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "pipe-elbow"
      or event.created_entity.name == "pipe-junction"
      or event.created_entity.name == "pipe-straight" then
    event.created_entity.operable = false
  end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == "pipe-elbow"
      or event.created_entity.name == "pipe-junction"
      or event.created_entity.name == "pipe-straight" then
    event.created_entity.operable = false
  end
end)