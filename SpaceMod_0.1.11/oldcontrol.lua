require "defines"
require "util"

MOD_NAME = "SpaceMod"

local function init_global()
  global = global or {}
  global.guiSettings = global.guiSettings or {}
  global.character = global.charactor or {}
  global.unlocked = global.unlocked or false
  global.unlockedByForce = global.unlockedByForce or {}
  global.version = "0.1.0"
end

local function init_force(force)
  global.trainsByForce[force.name] = global.trainsByForce[force.name] or {}
  debugLog("Init force")
  if force.technologies["rocket-silo"].researched then
    debugLog("Research is true")
    global.unlockedByForce[force.name] = true
    global.unlocked = true
    register_events()
    for i,p in pairs(force.players) do
      init_player(p)
    end
  end
end

local function init_forces()
  for i, force in pairs(game.forces) do
    init_force(force)
  end
end

local function on_init()
  init_global()
  init_forces()
  game.player.print("Hello world")
end

local function on_load()
  if global.unlocked then
    register_events()
  end
end

script.on_init(on_init)
script.on_load(on_load)
script.on_event(defines.events.on_player_created, on_player_created)
script.on_event(defines.events.on_force_created, on_force_created)

local function on_player_created(event)
  init_player(game.players[event.player_index])
end

local function on_force_created(event)
  init_force(event.force)
end

function register_events()
  script.on_event(defines.events.on_gui_click, on_gui_click)
end

--Called if tech is unlocked
function init_gui(player)
  debugLog("Init: " .. player.name .. " - " .. player.force.name)

      if player.gui.top["SpaceMod-button"] then
        player.gui.top["SpaceMod-button"].destroy() 
    end

    if not player.gui.top["SpaceMod-button"]
            and (player.force.technologies["rocket-silo"].researched) then

        player.gui.top.add{
            type = "button",
            name = "SpaceMod-button",
            caption = {"SpaceMod-button-caption"}
        }

    end
  
  
end

script.on_event(defines.events.on_research_finished, function(event)
  local status, err = pcall(on_research_finished, event)
  if err then debugDump(err,true) end
end)

function on_research_finished(event)
  if event.research.name == "rocket-silo" then
    global.unlockedByForce[event.research.force.name] = true
    global.unlocked = true
    register_events() ;
    for _, p in pairs(event.research.force.players) do
      init_gui(p)
    end
  end
end

local function init_player(player)
  global.guiSettings[player.index] = global.guiSettings[player.index] or util.table.deepcopy(defaultGuiSettings)
  if global.unlockedByForce[player.force.name] then
    init_gui(player)
	else
	init_gui(player)
  end
end

function on_gui_click(event)
  local status, err = pcall(function()
    local refreshGui = false
    local newInfoWindow = false
    local rematchStationList = false
    local guiSettings = global.guiSettings[event.element.player_index]
    local player = game.players[event.element.player_index]
	    debugLog("CLICK! " .. event.element.name .. game.tick)
	end)
	if err then debugDump(err,true) end
end

function debugDump(var, force)
  if false or force then
    for i,player in pairs(game.players) do
      local msg
      if type(var) == "string" then
        msg = var
      else
        msg = serpent.dump(var, {name="var", comment=false, sparse=false, sortkeys=true})
      end
      player.print(msg)
    end
  end
end

function debugLog(message)
  if true then -- set for debug
    for i,player in pairs(game.players) do
      player.print(message)
  end
  end
end