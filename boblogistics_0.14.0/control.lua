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
  if not global.bobmods.logistics[player_index].gui then global.bobmods.logistics[player_index].gui = nil end
end

function bobmods.logistics.player_setup(player_index)
  bobmods.logistics.create_global_table(player_index)
  bobmods.logistics.create_gui(player_index)
end

function tech_unlocked(force, tech)
  if force.technologies[tech] then
    return force.technologies[tech].researched
  end
end

function bobmods.logistics.create_gui(player_index)
  local player = game.players[player_index]

  if player.gui.top.bob_logistics_inserter_gui then
    player.gui.top.bob_logistics_inserter_gui.destroy()
  end

  local gui = player.gui.top.add({type = "frame", name = "bob_logistics_inserter_gui", direction = "vertical"})
  global.bobmods.logistics[player_index].gui = gui
  gui.add({type = "checkbox", name = "bob_logistics_inserter_button", state = global.bobmods.logistics[player_index].show, style = "bob-logistics-inserter-button"})

  bobmods.logistics.show_gui_options(gui, player_index)
end

function bobmods.logistics.show_gui_options(gui, player_index)
  local long_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.long_technology)
  local more_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.more_technology)
  local near_unlocked = tech_unlocked(game.players[player_index].force, bobmods.logistics.near_technology)

  if gui.table then
    gui.table.destroy()
  end

  if global.bobmods.logistics[player_index].show then
    gui.add({type = "table", name = "table", colspan = 1, style = "bob-table"})
    if long_unlocked or near_unlocked then
      gui.table.add({type = "checkbox", name = "bob_logistics_inserter_enabled", state = global.bobmods.logistics[player_index].enabled, style = "bob-logistics-checkbox", caption = {"gui.bob-logistics-enabled"}})
    end
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
    bobmods.logistics.show_gui_options(event.element.parent, event.player_index)
  elseif event.element.name == "bob_logistics_inserter_enabled" then
    global.bobmods.logistics[event.player_index].enabled = event.element.state
  elseif event.element.name == "bob_logistics_inserter_long_in" then
    global.bobmods.logistics[event.player_index].long_in = event.element.state
  elseif event.element.name == "bob_logistics_inserter_long_out" then
    global.bobmods.logistics[event.player_index].long_out = event.element.state
  elseif event.element.name == "bob_logistics_inserter_near" then
    global.bobmods.logistics[event.player_index].near = event.element.state
  end
end)

script.on_event(defines.events.on_research_finished, function(event)
  if event.research.name == bobmods.logistics.long_technology or
    event.research.name == bobmods.logistics.near_technology or
    event.research.name == bobmods.logistics.more_technology then
    for i, player in pairs(event.research.force.players) do
      bobmods.logistics.show_gui_options(global.bobmods.logistics[player.index].gui, player.index)
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



