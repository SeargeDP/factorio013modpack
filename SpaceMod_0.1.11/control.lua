-- require "defines"
-- require "util"

MOD_NAME = "SpaceMod"

spaceshiprequirements = {
   satellite = 7,
   drydockstructure = 10,
   drydockcommand = 2,
   shipcasings = 10,
   shipthrusters = 4,
   shiptprotectionfield = 1,
   shipfusionreactor = 1,
   shipfuelcells = 2,
   shiphabitation = 1,
   shiplifesupport = 1,
   shipastrometrics = 1,
   shipcommand = 1,
   shipftldrive = 1
   }

local function glob_init()

  global = global or {}
  global.requirements = spaceshiprequirements
  if global.launches == nil then
    global.launches = {
      satellite = 0,
      drydockstructure = 0,
      drydockcommand = 0,
      shipcasings = 0,
      shipthrusters = 0,
      shiptprotectionfield = 0,
      shipfusionreactor = 0,
      shipfuelcells = 0,
      shiphabitation = 0,
      shiplifesupport = 0,
      shipastrometrics = 0,
      shipcommand = 0,
      shipftldrive = 0
	  }
	end
end

local function gui_init(player, after_research)

    if player.gui.top["space-toggle-button"] then
	  if player.force.technologies["rocket-silo"].researched ~= true then
        player.gui.top["space-toggle-button"].destroy() 
	  end
      return	  
    end 

    if (player.force.technologies["rocket-silo"].researched or after_research) then

        player.gui.top.add{
            type = "button",
            name = "space-toggle-button",
            caption = {"space-toggle-button-caption"}
        }
		
    end

end

local function on_player_created(event)
  gui_init(game.players[event.player_index], false)
end

local function satellite_frame(satellites)
--	satellites = {}
    satellites = frame.add{
	      type = "label", 
		  caption = "-Satellites launched : " .. global.launches.satellite .. "/" .. global.requirements.satellite }
 
end

local function drydock_frame(drydock)
--	drydock = {}
    drydock.structure = frame.add{
	      type = "label", 
		  caption = "-Drydock Structure Component : " .. global.launches.drydockstructure .. "/" .. global.requirements.drydockstructure }
    drydock.command = frame.add{
	      type = "label", 
		  caption = "-Drydock Command Centre : " .. global.launches.drydockcommand .. "/" .. global.requirements.drydockcommand }

end

local function drydock_frame_title()
    frame.add{type = "label", caption = {"drydock-progress-title"}}
    drydock_frame(drydock)
end

local function ship_frame(ship)
--	ship = {}
	ship.field = frame.add{
	      type = "label", 
		  caption = "-Protection Field : " .. global.launches.shipprotectionfield .. "/" .. global.requirements.shipprotectionfield }
	ship.fusion = frame.add{
	      type = "label", 
		  caption = "-Fusion Reactor : " .. global.launches.shipfusionreactor .. "/" .. global.requirements.shipfusionreactor }
	ship.habitation = frame.add{
	      type = "label", 
		  caption = "-Habitation : " .. global.launches.shiphabitation .. "/" .. global.requirements.shiphabitation }
	ship.life = frame.add{
	      type = "label", 
		  caption = "-Life Support : " .. global.launches.shiplifesupport .. "/" .. global.requirements.shiplifesupport }
	ship.astrometrics = frame.add{
	      type = "label", 
		  caption = "-Astrometrics : " .. global.launches.shipastrometrics .. "/" .. global.requirements.shipastrometrics }
	ship.command = frame.add{
	      type = "label", 
		  caption = "-Command : " .. global.launches.shipcommand .. "/" .. global.requirements.shipcommand }
	ship.ftldrive = frame.add{
	      type = "label", 
		  caption = "-FTL drive : " .. global.launches.shipftldrive .. "/" .. global.requirements.shipftldrive }
	ship.fuelcells = frame.add{
	      type = "label", 
		  caption = "-Fuel Cells : " .. global.launches.shipfuelcells .. "/" .. global.requirements.shipfuelcells }
	ship.thrusters = frame.add{
	      type = "label", 
		  caption = "-Thrusters : " .. global.launches.shipthrusters .. "/" .. global.requirements.shipthrusters }
	ship.casings = frame.add{
	      type = "label", 
		  caption = "-Hull sections : " .. global.launches.shipcasings .. "/" .. global.requirements.shipcasings }
end

	

local function ship_frame_title()
	frame.add{type = "label", caption = {"ship-progress-title"}}
	ship_frame(ship)
end

function gui_open_frame(player)

    frame = player.gui.left["space-progress-frame"]

    if frame then
		frame.destroy()
        return
    end

    -- Now we can build the GUI.

    frame = player.gui.left.add{
        type = "frame",
        caption = {"space-progress-frame-title"},
        name = "space-progress-frame",
        direction = "vertical"
    }

--    local error_label = frame.add{ 
--        type = "label",
--        caption = "---",
--        name = "space-progress-error-label"
--    }

--    error_label.style.minimal_width = 200
	
	frame.add{type = "label", caption = {"satellite-network-progress-title"}}
--	satellite_frame(satellites)
    frame.add{
		type = "label", 
		caption = "-Satellites launched : " .. global.launches.satellite .. "/" .. global.requirements.satellite 
		}

	-- Test for satellite network established condition
	if global.launches.satellite < global.requirements.satellite then
	  return
	end

--    drydock_frame_title(drydock)	
	frame.add{type = "label", caption = {"drydock-progress-title"}}
	frame.add{
	      type = "label", 
		  caption = "-Drydock Structure Component : " .. global.launches.drydockstructure .. "/" .. global.requirements.drydockstructure 
		  }
    frame.add{
	      type = "label", 
		  caption = "-Drydock Command Centre : " .. global.launches.drydockcommand .. "/" .. global.requirements.drydockcommand 
		  }
	
	
	-- Test for drydock built condition
	if (global.launches.drydockstructure < global.requirements.drydockstructure or 
		global.launches.drydockcommand < global.requirements.drydockcommand) then
		return
	end
	
--	ship_frame_title(ship)
	frame.add{type = "label", caption = {"ship-progress-title"}}
	frame.add{
	      type = "label", 
		  caption = "-Protection Field...... : " .. global.launches.shiptprotectionfield .. "/" .. global.requirements.shiptprotectionfield 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Fusion Reactor........ : " .. global.launches.shipfusionreactor .. "/" .. global.requirements.shipfusionreactor 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Habitation............ : " .. global.launches.shiphabitation .. "/" .. global.requirements.shiphabitation 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Life Support.......... : " .. global.launches.shiplifesupport .. "/" .. global.requirements.shiplifesupport 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Astrometrics.......... : " .. global.launches.shipastrometrics .. "/" .. global.requirements.shipastrometrics 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Command............... : " .. global.launches.shipcommand .. "/" .. global.requirements.shipcommand 
		  }
	frame.add{
	      type = "label", 
		  caption = "-FTL drive............. : " .. global.launches.shipftldrive .. "/" .. global.requirements.shipftldrive 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Fuel Cells............ : " .. global.launches.shipfuelcells .. "/" .. global.requirements.shipfuelcells 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Thrusters............. : " .. global.launches.shipthrusters .. "/" .. global.requirements.shipthrusters 
		  }
	frame.add{
	      type = "label", 
		  caption = "-Hull sections......... : " .. global.launches.shipcasings .. "/" .. global.requirements.shipcasings 
		  }
	
end

local function on_configuration_changed(data)
  if not data or not data.mod_changes then
    return
  end
  if data.mod_changes[MOD_NAME] then
    glob_init()
    for _, player in pairs(game.players) do
        gui_init(player, player.force.technologies["rocket-silo"].researched)
    end
	game.players[1].print("Mod version changed processed")
  end
end

script.on_event(defines.events.on_gui_click, function(event) 

    local element = event.element
    local player = game.players[event.player_index]

    if element.name == "space-toggle-button" then
        gui_open_frame(player)

    end
	
	if player.gui.left["rocket_score"] ~= nil then
	  player.gui.left["rocket_score"].destroy()
	end

end)

script.on_event(defines.events.on_research_finished, function(event)

    if event.research.name == 'rocket-silo' then
        for _, player in pairs(game.players) do
            gui_init(player, true)
        end
    end

end)

script.on_init(function()

    glob_init()

    for _, player in pairs(game.players) do
        gui_init(player, false)
    end
	

end)


script.on_event(defines.events.on_player_created, on_player_created)
script.on_configuration_changed(on_configuration_changed)

script.on_event(defines.events.on_rocket_launched, function(event)
  local force = event.rocket.force
  if event.rocket.get_item_count("satellite") > 0 then
    if global.launches.satellite < global.requirements.satellite then
	  global.launches.satellite = global.launches.satellite + 1		  
	end
	game.set_game_state{game_finished=false, player_won=false, can_continue=true}	
	if global.launches.satellite == global.requirements.satellite then

		for _, player in pairs(game.players) do
			player.print({"satellite-network-complete-msg"}) 
		end	  
    end
	for index, player in pairs(force.players) do
		if player.gui.left["rocket_score"] ~= nil then
			player.gui.left["rocket_score"].destroy()
		end
	end
	for _, player in pairs(game.players) do
		frame = player.gui.left["space-progress-frame"]
		if frame then
			frame.destroy()
			gui_open_frame(player)
		end
	end		
	return
  end
  
	if event.rocket.get_item_count("drydock-structural") > 0 then
		if global.launches.drydockstructure < global.requirements.drydockstructure then
			global.launches.drydockstructure = global.launches.drydockstructure + 1
		end

	end
  
	if event.rocket.get_item_count("drydock-assembly") > 0 then
		if global.launches.drydockcommand < global.requirements.drydockcommand then
			global.launches.drydockcommand = global.launches.drydockcommand + 1
		end

	end  

--	local condition = (ship == nil) and (global.launches.drydockstructure = global.requirements.drydockstructure) and (global.launches.drydockcommand = globallaunches.drydockcommand)			
						
	if (event.rocket.get_item_count("drydock-structural") > 0 or event.rocket.get_item_count("drydock-assembly") > 0) and
		global.launches.drydockstructure == global.requirements.drydockstructure and
		global.launches.drydockcommand == global.launches.drydockcommand then
				for _, player in pairs(game.players) do
					player.print({"drydock-complete-msg"}) 
				end

	end

	if event.rocket.get_item_count("fusion-reactor") > 0 then
		if global.launches.shipfusionreactor < global.requirements.shipfusionreactor then
			global.launches.shipfusionreactor = global.launches.shipfusionreactor + 1
		end

	end  

	if event.rocket.get_item_count("fuel-cell") > 0 then
		if global.launches.shipfuelcells < global.requirements.shipfuelcells then
			global.launches.shipfuelcells = global.launches.shipfuelcells + 1
		end

	end 	

	if event.rocket.get_item_count("hull-component") > 0 then
		if global.launches.shipcasings < global.requirements.shipcasings then
			global.launches.shipcasings = global.launches.shipcasings + 1
		end

	end 

	if event.rocket.get_item_count("protection-field") > 0 then
		if global.launches.shiptprotectionfield < global.requirements.shiptprotectionfield then
			global.launches.shiptprotectionfield = global.launches.shiptprotectionfield + 1
		end

	end 

	if event.rocket.get_item_count("space-thruster") > 0 then
		if global.launches.shipthrusters < global.requirements.shipthrusters then
			global.launches.shipthrusters = global.launches.shipthrusters + 1
		end

	end 

	if event.rocket.get_item_count("habitation") > 0 then
		if global.launches.shiphabitation < global.requirements.shiphabitation then
			global.launches.shiphabitation = global.launches.shiphabitation + 1
		end

	end

	if event.rocket.get_item_count("life-support") > 0 then
		if global.launches.shiplifesupport < global.requirements.shiplifesupport then
			global.launches.shiplifesupport = global.launches.shiplifesupport + 1
		end

	end  

	if event.rocket.get_item_count("command") > 0 then
		if global.launches.shipcommand < global.requirements.shipcommand then
			global.launches.shipcommand = global.launches.shipcommand + 1
		end

	end 

	if event.rocket.get_item_count("astrometrics") > 0 then
		if global.launches.shipastrometrics < global.requirements.shipastrometrics then
			global.launches.shipastrometrics = global.launches.shipastrometrics + 1
		end

	end 

	if event.rocket.get_item_count("ftl-drive") > 0 then
		if global.launches.shipftldrive < global.requirements.shipftldrive then
			global.launches.shipftldrive = global.launches.shipftldrive + 1
		end
	end  

	-- Test for vistory condition
	if  global.launches.shipfusionreactor == global.requirements.shipfusionreactor and
		global.launches.shipcasings == global.requirements.shipcasings and
		global.launches.shiptprotectionfield == global.requirements.shiptprotectionfield and
		global.launches.shipthrusters == global.requirements.shipthrusters and
		global.launches.shiphabitation == global.requirements.shiphabitation and
		global.launches.shiplifesupport == global.requirements.shiplifesupport and
		global.launches.shipcommand == global.requirements.shipcommand and
		global.launches.shipastrometrics == global.requirements.shipastrometrics and
		global.launches.shipftldrive == global.requirements.shipftldrive then
		for _, player in pairs(game.players) do
			player.print({"spaceship-complete-msg"}) 
		end
		game.set_game_state{game_finished=true, player_won=true, can_continue=true}
	end
	for _, player in pairs(game.players) do
		frame = player.gui.left["space-progress-frame"]
		if frame then
			frame.destroy()
			gui_open_frame(player)
		end
	end	
--	if (#game.players <= 1) then
--		ipc.keypress(9)
--	end
end)