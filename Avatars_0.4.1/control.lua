require "gui"
require "config"
require "scripts"

--Migration involving global data
script.on_configuration_changed(function(data)
	if data.mod_changes.Avatars then
		local oldVersion = data.mod_changes.Avatars.old_version
		if oldVersion and oldVersion < "0.4.0" then
			migrateTo_0_4_0()
		end
	end
end)

--Check on entering or leaving a vehicle
function on_driving(event)
	local player = game.players[event.player_index]
	
	--Check for entering the Avatar Control Center
	if player.vehicle and player.vehicle.name == "avatar-control-center" then
		drawSelectionGUI(player)
		debugLog("Getting in")
		
	--Check for entering the Avatar Remote Deployment unit (ARDU)
	elseif player.vehicle and player.vehicle.name == "avatar-remote-deployment-unit" then
		drawARDUGUI(player, player.vehicle)
		
	--Otherwise, destroy GUIs
	else
		destroySelectionGUI(player)
		destroyRenameGUI(player)
		destroyARDUGUI(player)
		debugLog("Getting out")
	end
end

script.on_event(defines.events.on_player_driving_changed_state, on_driving)

--Check on GUI click
function checkGUI(event)
	local elementName = event.element.name
	local player = game.players[event.player_index]
	debugLog("Clicked "..elementName)
	
	--Other button ("avatar_"..4LetterCode...)
	local modSubString = string.sub(elementName, 1, 7)
	
	--Look for button header
	if (modSubString == "avatar_") then
		debugLog("Avatar Mod button press")
		
		--Look for the individual button
		local modButton = string.sub(elementName, 8, 11)
		debugLog("Button pushed: "..modButton)
		
		--Rename button
		if (modButton == "rnam") then
			--Obtain the old name
			local name = string.sub(elementName, 13)
			drawRenameGUI(player, name)
		end
		
		--Control Button
		if (modButton == "ctrl") then
			--Obtain the name of the avatar to control
			local name = string.sub(elementName, 13)
			gainAvatarControl(player, name, event.tick)
		end
		
		--Submit button (to submit a rename)
		if (modButton == "sbmt") then
			changeAvatarNameSubmit(player)
		end
		
		--Cancel button (to cancel a rename)
		if (modButton == "cncl") then
			destroyRenameGUI(player)
		end
		
		--Exit button (to disconnect from the avatar)
		if (modButton == "exit") then
			loseAvatarControl(player, event.tick)
		end
		
		--The ARDU submit button
		if (modButton =="ARDU") then
			changeARDUName(player)
		end
	end
end

script.on_event(defines.events.on_gui_click, checkGUI)

--Handles the checkbox checked event
function checkboxChecked(event)
	local elementName = event.element.name
	local player = game.players[event.player_index]
	
	--Check for avatar sort checkbox ("avatar_sort_")
	local modSubString = string.sub(elementName, 1, 12)
	
	if (modSubString == "avatar_sort_") then
		debugLog("Avatar Mod Radio-button press")
		
		--Look for the individual button
		local modButton = string.sub(elementName, 13, #elementName)
		debugLog("Radio-button pushed: "..modButton)
		
		--Check for each sort button
		if (modButton == "name_ascending") then
			flipRadioButtons(player, modButton)
		elseif (modButton == "name_descending") then
			flipRadioButtons(player, modButton)
		elseif (modButton == "location_ascending") then
			flipRadioButtons(player, modButton)
		elseif (modButton == "location_descending") then
			flipRadioButtons(player, modButton)
		end
		
		--Update the GUIs (updateRenameGUI triggers both rename and the selection gui, to maintain order)
		updateRenameGUI(player)
	end
end

script.on_event(defines.events.on_gui_checked_state_changed, checkboxChecked)

--Check on an entity being built
function on_entity_built(event)
	local entity = event.created_entity
		
	--Dummy fuel to avoid the error signal
	if (entity.name == "avatar-control-center") then
		entity.insert{name="coal", count=1}
		entity.operable = false
		return
	end
	
	--Add avatars to the table
	if (entity.name == "avatar") then
		addAvatarToTable(entity)
	end
	
	--Dummy fuel and add to table
	if (entity.name == "avatar-remote-deployment-unit") then
		entity.insert{name="coal", count=1}
		addARDUToTable(entity)
	end
	
	--Add to table
	if (entity.name == "avatar-assembling-machine") then
		addAvatarAssemblerTotable(entity)
	end
end

script.on_event(defines.events.on_robot_built_entity, on_entity_built)
script.on_event(defines.events.on_built_entity, on_entity_built)

--Check on entity being destroyed or deconstructed
function on_entity_destroyed(event)
	local entity = event.entity
	
	--Destruction of an Avatar Control Center
	if (entity.name == "avatar-control-center") then
		--Remove dummy fuel
		entity.clear_items_inside()
		
		--Check if a player was using it
		local playerDataTable = doesPlayerTableExistOrCreate(global.avatarPlayerData)
		if (playerDataTable ~= nil) then
			for _, playerData in ipairs(playerDataTable) do
				if (entity.passenger == playerData.realBody) then
					if (playerData.currentAvatar ~= nil) then
						--Deactive the current avatar
						--The game will continue it's actions otherwise, which can cause a game crash
						playerData.currentAvatar.active = false
						local player = playerData.player
						loseAvatarControl(player, event.tick)
						destroyAllGUI(player)
						player.print{"Avatars-error-avatar-control-center-destroyed"}
					end
				end
			end
		end
		return
	end
	
	--Destruction of an Avatar
	if (entity.name == "avatar") then
		
		--Remove the avatar from the global table
		for _, currentAvatar in ipairs(global.avatars) do
			if (currentAvatar.avatarEntity == entity) then
				local avatarEntity = currentAvatar.avatarEntity
				
				local newFunction = function (arg) return arg.avatarEntity == entity end --Function that returns true or false if the entities match
				global.avatars = removeFromTable(newFunction, global.avatars)
				debugLog("deleted avatar: " .. #global.avatars .. ", " .. currentAvatar.name)
				
				--Attempts to deploy a new avatar
				redeployAvatarFromARDU(avatarEntity)
			end
		end
		return
	end
	
	--Destruction of an ARDU
	if (entity.name == "avatar-remote-deployment-unit") then
		entity.clear_items_inside()
		--Remove it from the global table
		for _, currentARDU in ipairs(global.avatarARDUTable) do
			if (currentARDU.entity == entity) then
				debugLog("Deleting ARDU, "..currentARDU.name)
				removeARDUFromTable(entity)
			end
		end
		return
	end
	
	--Destruction of an Assembling Machine
	if (entity.name == "avatar-assembling-machine") then
		for _, currentAssembler in ipairs(global.avatarAssemblingMachines) do
			if (currentAssembler.entity == entity) then
				removeAvatarAssemlerFromTable(entity)
			end
		end
	end
end

script.on_event(defines.events.on_preplayer_mined_item, on_entity_destroyed)
script.on_event(defines.events.on_robot_pre_mined, on_entity_destroyed)
script.on_event(defines.events.on_entity_died, on_entity_destroyed)

--Handles a player dying while controlling an avatar
function on_preplayer_died(event)
	local player = game.players[event.player_index]
	
	if (player.character.name == "avatar") then
		loseAvatarControl(player, 0)
		player.print{"Avatars-error-controlled-avatar-death"}
	end
end

script.on_event(defines.events.on_pre_player_died, on_preplayer_died)

--Handler for the hotkey to disconnect from an avatar
function on_hotkey(event)
	local player = game.players[event.player_index]
	
	loseAvatarControl(player, event.tick)
end

script.on_event("avatars_disconnect", on_hotkey)

function on_tick(event)
	--Every 5 seconds - Check to deploy the initial avatar for ARDUs
	if ((game.tick % (60*5)) == 17) then
		if (global.avatarARDUTable ~= nil) then
			for _, ARDU in ipairs(global.avatarARDUTable) do
				if not ARDU.flag then --This only triggers once
					local flag = deployAvatarFromARDU(ARDU)
					if flag then ARDU.flag = flag end
					debugLog("Attempted first deployment from "..ARDU.name)
				end
			end
		end
	end
	
	--Every 15 seconds - check to place avatars in the avatar assembling machines
	if ((game.tick % (60*15)) == 23) then 
		placeAvatarInAssemblers()
	end
end

script.on_event(defines.events.on_tick, on_tick)

--DEBUG messages
function debugLog(message)
	if debug_mode then
		for _, player in pairs(game.players) do
			player.print(message)
		end
	end
end


--Remote Calls
--Mod Interfaces

--remote.call("Avatars_avatar_placement", "addAvatar", arg)
remote.add_interface("Avatars_avatar_placement", {
	addAvatar = function(entity)
		if (entity ~= nil and entity.valid) then
			if (entity.name == "avatar") then
				addAvatarToTable(entity)
			end
		end
	end
})


--User Commands
remote.add_interface("Avatars", {
	--Used to force a swap back to the player's body
	-- /c remote.call("Avatars", "manual_swap_back")
	manual_swap_back = function()
		player = game.player
		if (player.character.name ~= "player") then
			local playerData = getPlayerData(player)
			--Check for the avatarEntity to exist or not
			--If a player disconnects, it removes the avatarEntity from the table, so it has to be replaced
			for _, avatar in ipairs(global.avatars) do
				if (avatar.name == playerData.currentAvatarName) then
					avatar.avatarEntity = player.character
				end
			end
			--Give back the player's body
			player.character = playerData.realBody
			
			--Clear the table
			playerData.realBody = nil
			playerData.currentAvatar = nil
			playerData.currentAvatarName = nil
			
			--GUI clean up
			destroyAllGUI(player)
		else
			player.print{"avatar-remote-call-in-your-body"}
		end
	end,
	--LAST DITCH EFFORT
	--Only use this is your body was destroyed somehow and you can't reload a save (this will create a new body)
	-- /c remote.call("Avatars", "create_new_body")
	create_new_body = function()
		player = game.player
		if (player.character.name ~= "player") then
			local playerData = getPlayerData(player)
			
			if (playerData.realBody ~= nil and playerData.realBody.valid) then
				player.print{"avatar-remote-call-still-have-a-body"}
				return
			end
			local newBody = player.surface.create_entity{name="player", position=player.position, force=player.force}
			
			if (newBody ~= nil) then
				
				
				--Manually lose control
				player.character = newBody
				
				--Clear the table
				playerData.realBody = nil
				playerData.currentAvatar = nil
				
				--GUI clean up
				destroyDisconnectGUI(player)
			end
		else
			player.print{"avatar-remote-call-in-your-body"}
		end
	end
})

--DEBUG
remote.add_interface("Avatars_debug", {
	-- /c remote.call("Avatars_debug", "testing")
	testing = function()
		if debug_mode then
			for _, player in pairs(game.players) do
				player.insert({name="avatar-control-center", count=5})
				player.insert({name="avatar-assembling-machine", count=5})
				player.insert({name="avatar-remote-deployment-unit", count=5})
				player.insert({name="avatar", count=25})
			end
		end
	end,
	
	-- /c remote.call("Avatars_debug", "avatars_list")
	avatars_list = function()
		if debug_mode then
			for _, player in pairs(game.players) do
				local count = 0
				for _, avatar in ipairs(global.avatars) do
					count = count + 1
					
					--Valid entity check
					local validFlag = "false"
					if (avatar.avatarEntity ~= nil and avatar.avatarEntity.valid) then
						validFlag = "true"
					end
					
					player.print(count..", "..avatar.name..", "..validFlag)
				end
			end
		end
	end
})