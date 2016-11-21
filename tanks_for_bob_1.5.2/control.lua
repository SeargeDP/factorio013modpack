require "util"

-- Events
script.on_event(defines.events.on_player_driving_changed_state, function(event)
  tank_talk(event.player_index)
end)

script.on_event(defines.events.on_gui_click, function(event)
  button(event.element, event.player_index)
end)

script.on_event(defines.events.on_player_created, function(event)
  init(event.player_index )
end)

script.on_event(defines.events.on_trigger_created_entity, function(event)
  enityCreated(event.entity )
end)

script.on_event(defines.events.on_built_entity, function(event)
  on_built_entity(game.players[event.player_index] )
end)

script.on_event(defines.events.on_put_item, function(event)
  on_put_item( game.players[event.player_index] )
end)

-- on_built_entity()
function on_put_item(player)
  
end

-- on_built_entity()
function on_built_entity(player)

end

-- enityCreated()
function enityCreated(entity)
  if( entity.name == "pre-teleport-effect")then
     teleportEffect(entity)
  end
end

-- Init()
function init(player_index)

end

-- Button
function button(element, player_index)
  local button = element.name
  tank_button(button, player_index)
end

--Function tank_talk(player_index){
function tank_talk(player_index)
  local player = game.players[player_index]
  local tanktype = nil
  local count_auto_cannon_shells = 0
  local count_cannon_shells = 0
  local count_mortar_shells = 0

  if( player.character ) then -- must be exist
    if( player.character.health > 0.0 ) then -- must be alive
      if( player.driving == false ) then
        tankCloseGui(player)
      else
        tanktype = player.vehicle.name
        if ( (tanktype == "flame-tank-wlsk" or tanktype == "auto-tank-wlsk" or tanktype == "super-tank" or tanktype == "super-tank-alternate") and player.force.technologies["tank-recall"].researched ) then
          player.print("Recal teleporter ready")
          tankOpenGui(player)
        end
        if ( tanktype == "diesel-locomotive" ) then
          player.print("Hello sir, please be seated in the most lethal vehicle in this game!")
        end
      end
    end
  end
end


-- Tank Gui and Button
function tankOpenGui(player)
  player.gui.top.add{type="button", name="set_recal_tank", caption="Set recall tank"}
  --if( player.gui.top.recal_tank ~= nil ) then
  --  player.gui.top.recal_tank.destroy()
  --end  
end

function tankCloseGui(player)
    local temp = "tank_".. player.name
    tank = global[temp]

  if( player.gui.top.set_recal_tank ~= nil ) then
    player.gui.top.set_recal_tank.destroy()
  end
  --if( global[temp] ~= nil ) then
  --  player.gui.top.add{type="button", name="recal_tank", caption="Recall to tank"}
  --end
end

function tank_button(button, player_index)
  local player = game.players[player_index]
  local tank = player.vehicle

  if( button == "set_recal_tank" ) then
    player.print("Teleporter is set to this tank")
    local temp = "tank_".. player.name 
    global[temp] = tank
  end
end

--------------------------------------
-- Tank telepoter
--------------------------------------
function teleportEffect(entity)
  -- body
  --game.players[1].print("pre-teleport-effect")
  local entityPlayer = entity.surface.find_entity('player', entity.position)
  if( entityPlayer ~= nil ) then
    --entityPlayer = entity.surface.find_nearest_enemy{position={entity.position.x, entity.position.y},max_distance=3,force="enemy"}
    for c, tplayer in pairs(game.players) do
      --game.players[1].print("Looking x".. entityPlayer.position.x .." y ".. entityPlayer.position.y .." == x".. tplayer.position.x .." y ".. tplayer.position.y)
      if( tplayer.position.x == entityPlayer.position.x and tplayer.position.y == entityPlayer.position.y ) then
        player = tplayer
        --player.print("found")
      end
    end
    local temp = "tank_".. player.name
    tank = global[temp]
    if( tank ~= nil ) then
      --player.print("Teleporting to tank")
      player.surface.create_entity{name="teleport-effect", position={entityPlayer.position.x,entityPlayer.position.y}}
      --player.teleport(tank.position)
      tank.passenger = player.character
      tank.surface.create_entity{name="teleport-effect", position={tank.position.x,tank.position.y}}
      tankOpenGui(player)
    else
      player.insert{name="tank-recall-token", count=1}
      player.print("Failed! Missing linked tank.")
    end
  else
  	--game.players[1].print("Looking in tanks")
    for c, tplayer in pairs(game.players) do      
      if( tplayer.vehicle ~= nil ) then
        --game.players[1].print("Looking found player in tank")
        if( tplayer.vehicle.position.x == tplayer.vehicle.position.x and entity.position.y == entity.position.y ) then
          player = tplayer
          player.insert{name="tank-recall-token", count=1}
          player.print("Failed! Cannot be used inside a vehicle.")
        end
      end
    end
  end
end