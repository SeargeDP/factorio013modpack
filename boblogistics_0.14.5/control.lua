if not bobmods then bobmods = {} end
if not bobmods.logistics then bobmods.logistics = {} end
if not bobmods.logistics.inserters then bobmods.logistics.inserters = {} end
if not bobmods.math then bobmods.math = {} end

function bobmods.math.mod(number, div)
  if number < 0 then
    local newnumber = 0 - number
    local mod = newnumber % div
    return 0 - mod
  else
    return number % div
  end
end

function bobmods.math.floor(number)
  local num
  if number < 0 then
    num = number - 0.1
  else
    num = number + 0.1
  end
  return math.floor (num - bobmods.math.mod(num, 1))
end

function bobmods.math.round(number)
  local num
  if number < 0 then
    num = number - 0.5
  else
    num = number + 0.5
  end
  return math.floor (num - bobmods.math.mod(num, 1))
end

function bobmods.math.offset(number)
  local num = bobmods.math.mod(number, 1)
  if num < 0 then
    if num > -0.5 then
      return num
    else
      return num + 1
    end
  else
    if num < 0.5 then
      return num
    else
      return num - 1
    end
  end
end


bobmods.logistics.long_technology = "long-inserters-1"
bobmods.logistics.near_technology = "near-inserters"
bobmods.logistics.more_technology = "more-inserters-1"

bobmods.logistics.long2_technology = "long-inserters-2"
bobmods.logistics.more2_technology = "more-inserters-2"

bobmods.logistics.offset = 0.19

bobmods.logistics.inserters.range1 = {
  pickup = {
    {x = 0, y = -1},
    {x = 1, y = 0},
    {x = 0, y = 1},
    {x = -1, y = 0}
  },
  drop = {
    {x = 0, y = 1},
    {x = -1, y = 0},
    {x = 0, y = -1},
    {x = 1, y = 0}
  }
}

bobmods.logistics.inserters.range2 = {
  pickup = {
    {x = 0, y = -2},
    {x = 2, y = 0},
    {x = 0, y = 2},
    {x = -2, y = 0}
  },
  drop = {
    {x = 0, y = 2},
    {x = -2, y = 0},
    {x = 0, y = -2},
    {x = 2, y = 0}
  },
}


bobmods.logistics.inserters.offset_positions = {
  near = {
    {x = 0, y = -bobmods.logistics.offset},
    {x = bobmods.logistics.offset, y = 0},
    {x = 0, y = bobmods.logistics.offset},
    {x = -bobmods.logistics.offset, y = 0}
  },
  far = {
    {x = 0, y = bobmods.logistics.offset},
    {x = -bobmods.logistics.offset, y = 0},
    {x = 0, y = -bobmods.logistics.offset},
    {x = bobmods.logistics.offset, y = 0}
  }
}


function bobmods.logistics.normalise_tile_offset(tile_offset)
  local new_offset = {x = 0, y = 0}
  if tile_offset.x > 0 then new_offset.x = bobmods.logistics.offset end
  if tile_offset.x < 0 then new_offset.x = -bobmods.logistics.offset end
  if tile_offset.y > 0 then new_offset.y = bobmods.logistics.offset end
  if tile_offset.y < 0 then new_offset.y = -bobmods.logistics.offset end
  return new_offset
end

function bobmods.logistics.set_range(position_in, range)
  local position = {x = 0, y = 0}
  if position_in.x > 0.1 then
    position.x = range
  elseif position_in.x < -0.1 then
    position.x = -range
  else
    position.x = 0
  end
  if position_in.y > 0.1 then
    position.y = range
  elseif position_in.y < -0.1 then
    position.y = -range
  else
    position.y = 0
  end
  return position
end


function bobmods.logistics.create_global_table(player_index)
  if not global then global = {} end
  if not global.bobmods then global.bobmods = {} end
  if not global.bobmods.logistics then global.bobmods.logistics = {} end
  if not global.bobmods.logistics[player_index] then global.bobmods.logistics[player_index] = {} end

  if not global.bobmods.logistics[player_index].enabled then global.bobmods.logistics[player_index].enabled = false end
  if not global.bobmods.logistics[player_index].long_in then global.bobmods.logistics[player_index].long_in = false end
  if not global.bobmods.logistics[player_index].long_out then global.bobmods.logistics[player_index].long_out = false end
  if not global.bobmods.logistics[player_index].near then global.bobmods.logistics[player_index].near = false end
  if not global.bobmods.logistics[player_index].show then global.bobmods.logistics[player_index].show = false end

  if not global.bobmods.logistics[player_index].enabled2 then global.bobmods.logistics[player_index].enabled2 = false end
  if not global.bobmods.logistics[player_index].pickup then global.bobmods.logistics[player_index].pickup = 18 end
  if not global.bobmods.logistics[player_index].drop then global.bobmods.logistics[player_index].drop = 8 end
  if not global.bobmods.logistics[player_index].offset then global.bobmods.logistics[player_index].offset = 2 end
end

function bobmods.logistics.player_setup(player_index)
  bobmods.logistics.create_global_table(player_index)
  bobmods.logistics.create_gui_button(player_index)
end

function tech_unlocked(force, tech)
  if force.technologies[tech] then
    return force.technologies[tech].researched
  end
end


function bobmods.logistics.create_gui_button(player_index)
  local player = game.players[player_index]

  -- remove legacy GUI
  if player.gui.top.bob_logistics_inserter_gui then
    player.gui.top.bob_logistics_inserter_gui.destroy()
  end

  if player.gui.top.bob_logistics_inserter_button then
    player.gui.top.bob_logistics_inserter_button.destroy()
  end

  player.gui.top.add({type = "checkbox", name = "bob_logistics_inserter_button", state = global.bobmods.logistics[player_index].show, style = "bob-logistics-inserter-button"})
end

function bobmods.logistics.create_gui(player_index)
  local player = game.players[player_index]
  local long_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.long_technology)
  local more_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.more_technology)
  local near_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.near_technology)

  if player.gui.left.bob_logistics_inserter_gui then
    player.gui.left.bob_logistics_inserter_gui.destroy()
  end

  local gui = player.gui.left.add({type = "frame", name = "bob_logistics_inserter_gui", direction = "vertical"})
  gui.add({type = "table", name = "table", colspan = 1, style = "bob-table"})

  if long_unlocked or near_unlocked then
    gui.table.add({type = "checkbox", name = "bob_logistics_inserter_enabled", state = global.bobmods.logistics[player_index].enabled, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-enabled"}})
  end
  if global.bobmods.logistics[player_index].enabled then
    if long_unlocked then
      if more_unlocked then
        gui.table.add({type = "checkbox", name = "bob_logistics_inserter_long_in", state = global.bobmods.logistics[player_index].long_in, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-pickup"}})
        gui.table.add({type = "checkbox", name = "bob_logistics_inserter_long_out", state = global.bobmods.logistics[player_index].long_out, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-drop"}})
      else
        gui.table.add({type = "checkbox", name = "bob_logistics_inserter_long_in", state = global.bobmods.logistics[player_index].long_in, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-long"}})
      end
    end
    if near_unlocked then
      gui.table.add({type = "checkbox", name = "bob_logistics_inserter_near", state = global.bobmods.logistics[player_index].near, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-near"}})
    end
  end

  if remote.interfaces.bobinserters then
    gui.table.add({type = "checkbox", name = "bob_logistics_inserter_enabled2", state = global.bobmods.logistics[player_index].enabled2, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-enabled2"}})
    if global.bobmods.logistics[player_index].enabled2 then
      remote.call("bobinserters", "draw_gui", {player_index = player_index, gui = gui, name = "bob_logistics", pickup = global.bobmods.logistics[player_index].pickup, drop = global.bobmods.logistics[player_index].drop, offset = global.bobmods.logistics[player_index].offset})
    end
  end
end


function bobmods.logistics.show_gui_options(player_index)
  local player = game.players[player_index]

  if player.gui.left.bob_logistics_inserter_gui then
    player.gui.left.bob_logistics_inserter_gui.destroy()
  end

  if global.bobmods.logistics[player_index].show then
    bobmods.logistics.create_gui(player_index)
  end
end



function bobmods.logistics.set_positions(entity, player_index)
  local enabled = global.bobmods.logistics[player_index].enabled
  if enabled then
    local force = game.players[player_index].force
    local direction = (entity.direction / 2) + 1

    local long_unlocked = tech_unlocked(force, bobmods.logistics.long_technology)
    local more_unlocked = tech_unlocked(force, bobmods.logistics.more_technology)
    local near_unlocked = tech_unlocked(force, bobmods.logistics.near_technology)

    local long_in = global.bobmods.logistics[player_index].long_in
    local long_out = global.bobmods.logistics[player_index].long_out
    local near = global.bobmods.logistics[player_index].near

    local pickup_position = {x = entity.pickup_position.x - entity.position.x, y = entity.pickup_position.y - entity.position.y}
    local drop_full_position = {x = entity.drop_position.x - entity.position.x, y = entity.drop_position.y - entity.position.y}
    local drop_position = {x = bobmods.math.round(drop_full_position.x), y = bobmods.math.round(drop_full_position.y)}
    local drop_offset = bobmods.logistics.normalise_tile_offset({x = bobmods.math.offset(drop_full_position.x), y = bobmods.math.offset(drop_full_position.y)})

    if long_unlocked then
      if more_unlocked then
        if long_in then
          pickup_position = bobmods.logistics.set_range(pickup_position, 2)
        else
          pickup_position = bobmods.logistics.set_range(pickup_position, 1)
        end
        if long_out then
          drop_position = bobmods.logistics.set_range(drop_position, 2)
        else
          drop_position = bobmods.logistics.set_range(drop_position, 1)
        end
      else
        if long_in then
          pickup_position = bobmods.logistics.set_range(pickup_position, 2)
          drop_position = bobmods.logistics.set_range(drop_position, 2)
        else
          pickup_position = bobmods.logistics.set_range(pickup_position, 1)
          drop_position = bobmods.logistics.set_range(drop_position, 1)
        end
      end
    end

    if near_unlocked then
      if near then
        drop_offset = bobmods.logistics.set_range(drop_position, -bobmods.logistics.offset)
      else
        drop_offset = bobmods.logistics.set_range(drop_position, bobmods.logistics.offset)
      end
    end


    entity.drop_position = {entity.position.x + drop_position.x + drop_offset.x, entity.position.y + drop_position.y + drop_offset.y}
    entity.pickup_position = {entity.position.x + pickup_position.x, entity.position.y + pickup_position.y}
  end
  if global.bobmods.logistics[player_index].enabled2 and remote.interfaces.bobinserters then
    local pickup_position = remote.call("bobinserters", "get_position", {position = global.bobmods.logistics[player_index].pickup})
    local drop_position = remote.call("bobinserters", "get_position", {position = global.bobmods.logistics[player_index].drop})
    local drop_offset = remote.call("bobinserters", "get_offset", {position = global.bobmods.logistics[player_index].offset})
    local direction = (entity.direction / 2) + 1

    if direction == 3 then -- 3 is up, because inserters are backwards.
      entity.drop_position = {entity.position.x + drop_position.x + drop_offset.x, entity.position.y + drop_position.y + drop_offset.y}
      entity.pickup_position = {entity.position.x + pickup_position.x, entity.position.y + pickup_position.y}
    elseif direction == 4 then
      entity.drop_position = {entity.position.x - drop_position.y - drop_offset.y, entity.position.y + drop_position.x + drop_offset.x}
      entity.pickup_position = {entity.position.x - pickup_position.y, entity.position.y + pickup_position.x}
    elseif direction == 1 then
      entity.drop_position = {entity.position.x - drop_position.x - drop_offset.x, entity.position.y - drop_position.y - drop_offset.y}
      entity.pickup_position = {entity.position.x - pickup_position.x, entity.position.y - pickup_position.y}
    elseif direction == 2 then
      entity.drop_position = {entity.position.x + drop_position.y + drop_offset.y, entity.position.y - drop_position.x - drop_offset.x}
      entity.pickup_position = {entity.position.x + pickup_position.y, entity.position.y - pickup_position.x}
    end
  end
end


script.on_configuration_changed(function(event)
  for i, player in pairs(game.players) do
    bobmods.logistics.player_setup(player.index)
  end
end)

script.on_init(function(event)
  for i, player in pairs(game.players) do
    bobmods.logistics.player_setup(player.index)
  end
end)

script.on_event(defines.events.on_player_created, function(event)
  bobmods.logistics.player_setup(event.player_index)
end)

script.on_event(defines.events.on_player_joined_game, function(event)
  bobmods.logistics.player_setup(event.player_index)
end)

script.on_event(defines.events.on_gui_checked_state_changed, function(event)
  if event.element.name == "bob_logistics_inserter_button" then
    global.bobmods.logistics[event.player_index].show = event.element.state
    bobmods.logistics.show_gui_options(event.player_index)
  elseif event.element.name == "bob_logistics_inserter_enabled" then
    global.bobmods.logistics[event.player_index].enabled = event.element.state
    if event.element.state then
      global.bobmods.logistics[event.player_index].enabled2 = false
    end
    bobmods.logistics.create_gui(event.player_index)
  elseif event.element.name == "bob_logistics_inserter_long_in" then
    global.bobmods.logistics[event.player_index].long_in = event.element.state
  elseif event.element.name == "bob_logistics_inserter_long_out" then
    global.bobmods.logistics[event.player_index].long_out = event.element.state
  elseif event.element.name == "bob_logistics_inserter_near" then
    global.bobmods.logistics[event.player_index].near = event.element.state

  elseif event.element.name == "bob_logistics_inserter_enabled2" then
    global.bobmods.logistics[event.player_index].enabled2 = event.element.state
    if event.element.state then
      global.bobmods.logistics[event.player_index].enabled = false
    end
    bobmods.logistics.create_gui(event.player_index)


  elseif remote.interfaces.bobinserters and string.sub(event.element.name, 1, 6) == "button" then
    if event.element.parent.name == "bob_logistics_pickup" then
--[[
      for i=1,49 do
        if event.element.name == "button" .. i then
          remote.call("bobinserters", "draw_button_position_check", {gui = event.element.parent, position = i})
          global.bobmods.logistics[event.player_index].pickup = i 
        end
      end
]]--
--      i = tonumber(string.sub(event.element.name, string.find(event.element.name, "%d+")))
--      local i = tonumber(string.match(event.element.name, "%d+$"))
      local i = string.gsub(event.element.name, "button", "") + 0
      remote.call("bobinserters", "draw_button_position_check", {gui = event.element.parent, position = i})
      global.bobmods.logistics[event.player_index].pickup = i 
    elseif event.element.parent.name == "bob_logistics_drop" then
      local i = string.gsub(event.element.name, "button", "") + 0
      remote.call("bobinserters", "draw_button_position_check", {gui = event.element.parent, position = i})
      global.bobmods.logistics[event.player_index].drop = i 
    elseif event.element.parent.name == "bob_logistics_offset" then
      local i = string.gsub(event.element.name, "button", "") + 0
      remote.call("bobinserters", "draw_button_offset_check", {gui = event.element.parent, position = i})
      global.bobmods.logistics[event.player_index].offset = i 
    end

  end
end)

script.on_event(defines.events.on_research_finished, function(event)
  if event.research.name == bobmods.logistics.long_technology or
    event.research.name == bobmods.logistics.near_technology or
    event.research.name == bobmods.logistics.more_technology or
    event.research.name == bobmods.logistics.long2_technology or
    event.research.name == bobmods.logistics.more2_technology then
    for i, player in pairs(event.research.force.players) do
      bobmods.logistics.show_gui_options(player.index)
    end
  end
end)

script.on_event(defines.events.on_built_entity, function(event)
  local player = game.players[event.player_index]
  if event.created_entity.name == "valve" then
    player.rotate_for_build()
    player.rotate_for_build()
  end

  local entity = event.created_entity
  if
    entity.type == "inserter"
    or (entity.type == "entity-ghost" and entity.ghost_type == "inserter" and not (player.cursor_stack and (player.cursor_stack.type == "blueprint" or player.cursor_stack.type == "blueprint-book")))
  then
    bobmods.logistics.set_positions(entity, event.player_index)
  end
end)



