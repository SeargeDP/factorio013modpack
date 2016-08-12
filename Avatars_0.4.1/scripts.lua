--General Scripts

--Counts the number of avatars in the same force as the player
function avatarCount(player)
	local totalAvatars = 0
	for _, avatar in ipairs(global.avatars) do
		if (avatar == nil) then break end
		if (avatar.avatarEntity.force.name == player.force.name) then
			totalAvatars = totalAvatars + 1
		end
	end
	return totalAvatars
end

--Look up the player in global.avatarPlayerData, or create an entry for them
function getPlayerData(player)
	global.avatarPlayerData = doesPlayerTableExistOrCreate(global.avatarPlayerData)
	if (player == nil) then return end
	
	--Look up the player
	for _, playerData in ipairs(global.avatarPlayerData) do
		if (playerData.player == player) then
			debugLog(player.name.." was found in the table")
			return playerData
		end
	end
	
	--Add to the table when necessary
	debugLog(player.name.." was added to the table")
	local playerData = {player=player, realBody=nil, currentAvatar=nil, currentAvatarName=nil, lastBodySwap=nil}
	
	table.insert(global.avatarPlayerData, playerData)
	debugLog("Players is PlayerData:"..#global.avatarPlayerData)
	
	return playerData
end


--Table Handling Scripts

--Add the avatar to the table
function addAvatarToTable(entity)
	global.avatars = doesAvatarTableExistOrCreate(global.avatars)
	
	--Make sure the global increments table exists and initialize it otherwise
	global.avatarDefaultCount = doesAvatarDefaultCountExistOrCreate(global.avatarDefaultCount)
	
	--Obtain the increment and increase it for later
	local currentIncrement = global.avatarDefaultCount
	global.avatarDefaultCount = currentIncrement + 1
	
	--Insert the new avatar to the table
	table.insert(global.avatars, {avatarEntity=entity, name=default_avatar_name..string.format("%03d",currentIncrement)})
	debugLog("new avatar: " .. #global.avatars .. ", " .. global.avatars[#global.avatars].name)
end

--Add the ARDU to the table
function addARDUToTable(entity)
	global.avatarARDUTable = doesARDUTableExistOrCreate(global.avatarARDUTable)
	
	--Make sure the global increments table exists and initialize it otherwise
	global.ARDUCount = doesARDUCountExistOrCreate(global.ARDUCount)
	
	--Obtain the increment and increase it for later
	local currentIncrement = global.ARDUCount
	global.ARDUCount = currentIncrement + 1
	
	--Inser the new ARDU to the table
	table.insert(global.avatarARDUTable, {
											entity=entity, 
											name=default_avatar_remote_deployment_unit_name..string.format("%03d", currentIncrement),
											flag=false,
											deployedAvatar=nil,
											currentIteration=0
										 })
	debugLog("new ARDU: " .. #global.avatarARDUTable .. ", " .. global.avatarARDUTable[#global.avatarARDUTable].name)
end

--Add the Assembling Machine to the table
function addAvatarAssemblerTotable(entity)
	global.avatarAssemblingMachines = doesAvatarAssemlingMachinesExistOrCreate(global.avatarAssemblingMachines)
	
	table.insert(global.avatarAssemblingMachines, {entity=entity})
end

--Takes an entity, returns the table value
function getARDUFromTable(ARDU)
	for _, currentARDU in ipairs(global.avatarARDUTable) do
		if (currentARDU.entity == ARDU) then
			return currentARDU
		end
	end
	return nil
end

--Remove Assemblers from the global table
function removeAvatarAssemlerFromTable(entity)
	global.avatarAssemblingMachines = doesAvatarAssemlingMachinesExistOrCreate(global.avatarAssemblingMachines)
	
	local newFunction = function (arg) return arg.entity == entity end --Function that returns true or false if the entities match
	global.avatarAssemblingMachines = removeFromTable(newFunction, global.avatarAssemblingMachines)
	debugLog("deleted Assembler: " .. #global.avatarAssemblingMachines)
end

--Remove ARDUs from the global table
function removeARDUFromTable(entity)
	local newFunction = function (arg) return arg.entity == entity end --Function that returns true or false if the entities match
	global.avatarARDUTable = removeFromTable(newFunction, global.avatarARDUTable)
	debugLog("Deleted ARDU: " .. #global.avatarARDUTable)
end

--Removes an entity from a global table
--Works by adding everything except the old entry to a new table and overwritting the old table
function removeFromTable(func, oldTable)
	if (oldTable == nil) then return nil end
	local newTable = {}
	for _, row in ipairs(oldTable) do
		if not func(row) then table.insert(newTable, row) end
	end
	return newTable
end

--Table Check/Creation
--Make sure global.avatarPlayerData exists
function doesPlayerTableExistOrCreate(checkTable)
	if checkTable == nil then
		return {player=nil, realBody=nil, currentAvatar=nil, lastBodySwap=nil}
	else
		return checkTable
	end
end

--Make sure global.avatars exists
function doesAvatarTableExistOrCreate(checkTable)
	if checkTable == nil then
		return {avatarEntity=nil,name=""}
	else
		return checkTable
	end
end

--Make sure global.avatarARDUTable exists
function doesARDUTableExistOrCreate(checkTable)
	if checkTable == nil then
		return {entity=nil,name="", deployedAvatar=nil}
	else
		return checkTable
	end
end

--Make sure global.avatarAssemblingMachines exists
function doesAvatarAssemlingMachinesExistOrCreate(checkTable)
	if checkTable == nil then
		return {entity=nil}
	else
		return checkTable
	end
end

--Make sure global.avatarDefaultCount exists
function doesAvatarDefaultCountExistOrCreate(checkVar)
	if checkVar == nil then
		return 0
	else
		return checkVar
	end
end

--Make sure global.ARDUCount exists
function doesARDUCountExistOrCreate(checkVar)
	if checkVar == nil then
		return 0
	else
		return checkVar
	end
end

--Sorting Scripts

function getSortValues(player)
	debugLog("Obtaining old sort values")
	local selectionFrame = player.gui.center.avatarSelectionFrame
	
	return {	name_ascending = selectionFrame.upperSortFlow.avatar_sort_name_ascending.state,
				name_descending = selectionFrame.lowerSortFlow.avatar_sort_name_descending.state,
				location_ascending = selectionFrame.upperSortFlow.avatar_sort_location_ascending.state,
				location_descending = selectionFrame.lowerSortFlow.avatar_sort_location_descending.state,
		   }
end

function getSortedTable(sortValues, position)
	--Check the sort string
	if (global.avatars) then
		if (sortValues.name_ascending) then
			--Comapre the name strings
			local newFunction = function(a,b) return a.name < b.name end
			return getNewSortedTable(copyTable(global.avatars), newFunction)
			
		elseif (sortValues.name_descending) then
			--Comapre the name strings
			local newFunction = function(a,b) return a.name > b.name end
			return getNewSortedTable(copyTable(global.avatars), newFunction)
			
		elseif (sortValues.location_ascending) then
			--Compare the distances
			local newFunction = function(a,b) 
									local aDistance = getDistance(position, a.avatarEntity.position)
									local bDistance = getDistance(position, b.avatarEntity.position)
									return aDistance < bDistance
								end
			return getNewSortedTable(copyTable(global.avatars), newFunction)
			
		elseif (sortValues.location_descending) then
			--Compare the distances
			local newFunction = function(a,b) 
									local aDistance = getDistance(position, a.avatarEntity.position)
									local bDistance = getDistance(position, b.avatarEntity.position)
									return aDistance > bDistance
								end
			return getNewSortedTable(copyTable(global.avatars), newFunction)
			
		else
			return global.avatars
		end
	else
		return {}
	end
end

--Takes a table (list) and sorts it based on the function provided
function getNewSortedTable(list, func)
	local changesMade
	local itemCount = #list
	
	--Repeat until there are no changes made
	repeat
		changesMade = false
		--The first item will never need comapred to nothing
		for i=2, itemCount do
			if func(list[i], list[i-1]) then
				--Swap the data
				local temp = list[i-1]
				list[i-1] = list[i]
				list[i] = temp
				
				--Set the flag
				changesMade = true
			end
		end
		itemCount = itemCount - 1
	until changesMade == false
	
	return list
end

--Find the distance of an avatar from the player
function getDistance(startPosition, endPosition)
	local xDistance = startPosition.x - endPosition.x
	local yDistance = startPosition.y - endPosition.y
	
	--Find the total distance of the line
	local distance = math.sqrt((xDistance^2) + (yDistance^2))
	
	--Round the distance (found from http://lua-users.org/wiki/SimpleRound)
	local mult = 10^(1) --The power is the number of decimal places to round to
	return math.floor(distance * mult + 0.5) / mult
end

--Copies a table by value
function copyTable(oldTable)
	local newTable = {}
	for i, row in pairs(oldTable) do
		newTable[i] = row
	end
	return newTable
end


--GUI Triggers

--Submiting the avatar name
function changeAvatarNameSubmit(player)
	local changeNameFrame = player.gui.center.changeNameFrame
	
	--Make sure the text field is valid
	if verifyRenameGUI(player) then
	
		--Obtain the old name
		local oldName = changeNameFrame.currentNameFlow.currentName.caption
	
		--Make sure a name was entered
		if (changeNameFrame.newNameField.text ~= "") then
			--Obtain the new name
			local newName = changeNameFrame.newNameField.text
			local flag = false
			local renamedAvatar = nil
			for _, avatar in ipairs(global.avatars) do
				--If the new name matches any avatars, then break the loop and throw an error
				if (avatar.name == newName) then
					flag = false
					debugLog("Duplicate name found")
					break
				end
				--Catch the matching name but still check for duplicate names
				if (avatar.name == oldName) then
					flag = true
					renamedAvatar = avatar
					debugLog("Found the old name")
				end
			end
			
			--Final check and set
			if flag then
				debugLog("Renaming Avatar")
				renamedAvatar.name = newName
				updateRenameGUIOnSubmit(player, oldName, newName)
			else
				--Name in use
				player.print{"Avatars-error-name-in-use"}
				updateRenameGUIOnSubmit(player, oldName, nil)
				player.gui.center.changeNameFrame.newNameField.text = newName
			end
		else
			--Blank text field
			player.print{"Avatars-error-blank-name"}
			updateRenameGUIOnSubmit(player, oldName, nil)
		end
	end
end

--Submitting the ARDU rename
function changeARDUName(player)
	local ARDUGUI = player.gui.center.avatarARDUFrame
	
	if (ARDUGUI ~= nil and ARDUGUI.valid) then
		--Obtain the old name
		local oldName = ARDUGUI.currentNameFlow.currentName.caption
	
		--Make sure a name was entered
		if (ARDUGUI.newNameField.text ~= "") then
			--Obtain the new name
			local newName = ARDUGUI.newNameField.text
			local flag = false
			local renamedARDU = nil
			for _, currentARDU in ipairs(global.avatarARDUTable) do
				--If the new name matches any ARDUs, then break the loop and throw an error
				if (currentARDU.name == newName) then
					flag = false
					debugLog("Duplicate name found")
					break
				end
				--Catch the matching name but still check for duplicate names
				if (currentARDU.name == oldName) then
					flag = true
					renamedARDU = currentARDU
					debugLog("Found the old name")
				end
			end
			
			--Final check and set
			if flag then
				renamedARDU.name = newName
				drawARDUGUI(player, renamedARDU.entity)
			else
				--Name in use
				player.print{"Avatars-error-name-in-use"}
			end
		else
			--Blank text field
			player.print{"Avatars-error-blank-name"}
		end
	end
end

--Avatar Control

--Give control of an avatar to a player
function gainAvatarControl(player, name, tick)
	debugLog("Gaining control of "..name)
	
	
	local playerData = getPlayerData(player) --{player=nil, realBody=nil, currentAvatar=nil, currentAvatarName=nil, lastBodySwap=nil}
		
    -- Don't bodyswap too often, Factorio hates it when you do that. -per YARM
    if (playerData.lastBodySwap ~= nil) and (playerData.lastBodySwap + 10 > tick) then return end
    playerData.lastBodySwap = tick
	
	--Players can only control an avatar from their real body
	if (player.character.name ~= "player") then
		player.print{"Avatars-error-only-control-from-real-body"}
		return
	end
	
	--Store the real body
	playerData.realBody = player.character
	
	--Find the avatar
	for _, avatar in ipairs(global.avatars) do
		if (avatar.name == name) then
			debugLog(avatar.name.." found")
			
			local owner = nil
			--Make sure no one else is controlling it
			for _, players in ipairs(global.avatarPlayerData) do
				if (players.currentAvatar == avatar.avatarEntity) then
					owner = players.player.name
					break
				end
			end
			
			if (owner ~= nil) then
				player.print{"Avatars-error-already-controlled", owner}
				return
			end
			--Give it to the player
			playerData.currentAvatar = avatar.avatarEntity
			playerData.currentAvatarName = avatar.name
			break
		end
	end
	
	--Final check
	if (playerData.realBody ~= nil) and (playerData.currentAvatar ~= nil) then
		debugLog("Final check")
		playerData.currentAvatar.active = true
		player.character = playerData.currentAvatar
	end
	
	--GUI clean up
	destroyAllGUI(player)
	drawDisconnectGUI(player)
end

--Take control from a player
function loseAvatarControl(player, tick)
	debugLog("Going back to the body")
	
	local playerData = getPlayerData(player)
	
	--Test to make sure that player is controlling an avatar
	--Otherwise there are issues with other control changing mods
	if (player.character ~= nil) then --This was causing issues in MP only (must be a different way of handling death)
		if (player.character.name ~= "avatar") then
			player.print{"Avatars-error-cannot-disconnect-from-nonavatar"}
			return
		end
	end
	
	-- Don't bodyswap too often, Factorio hates it when you do that. -per YARM
	if (tick ~= 0) then
		if (playerData.lastBodySwap ~= nil) and (playerData.lastBodySwap + 10 > tick) then return end
		playerData.lastBodySwap = tick
	else
		playerData.lastBodySwap = game.tick
	end
	
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
	destroyDisconnectGUI(player)
	drawSelectionGUI(player)
end

--Avatar Deployment
function deployAvatarFromARDU(ARDU)
	if (ARDU.entity.passenger == nil) then
		--Verify that the ARDU does not have an avatar deployed
		if (ARDU.deployedAvatar == nil) then
			local entity = ARDU.entity
			debugLog("No prior avatar")
			--Check contents of the ARDU
			if (entity.get_item_count("avatar") > 0) then
				--Create an avatar and place it inside the ARDU
				local avatar = entity.surface.create_entity{name="avatar", position=entity.position, force=entity.force}
				entity.passenger = avatar
				entity.remove_item({name="avatar", count=1})
				debugLog("New avatar deployed")
				
				--ARDU book keeping
				ARDU.deployedAvatar = avatar
				ARDU.currentIteration = ARDU.currentIteration + 1
				
				--Add the avatar to the table (normal event is not triggered)
				addAvatarToTable(avatar)
				for _, currentAvatar in ipairs(global.avatars) do
					if (currentAvatar.avatarEntity == avatar) then
						--Rename it to the ARDU name
						currentAvatar.name = (ARDU.name.." "..default_avatar_deployed_prefix.." "..string.format("%03d",ARDU.currentIteration))
						global.avatarDefaultCount = global.avatarDefaultCount - 1
						break
					end
				end
				return true
			end
		end
	end
	return false
end

--Avatar Redeployment (based on the old avatar's stats)
function redeployAvatarFromARDU(oldAvatar)
	if (global.avatarARDUTable ~= nil) then
		for _, ARDU in ipairs(global.avatarARDUTable) do
			if (ARDU.deployedAvatar == oldAvatar) then
				--Find the ARDU and deploy a new avatar
				ARDU.deployedAvatar = nil
				deployAvatarFromARDU(ARDU)
			end
		end
	end
end

--Triggered by avatar assembling machines to place avatars
function placeAvatarInAssemblers()
	if (global.avatarAssemblingMachines ~= nil) then
		for _, assembler in ipairs(global.avatarAssemblingMachines) do
			--Get the output inventory
			local avatarOutput = assembler.entity.get_output_inventory()
			
			--Check for avatars
			if (avatarOutput.get_item_count("avatar") > 0) then
				local position = getPlacementPosition(assembler.entity)
				if (position ~= nil) then 
					if assembler.entity.surface.can_place_entity{name="avatar", position=position, force=assembler.entity.force} then
						--Place the avatar and add it to the table
						local avatar = assembler.entity.surface.create_entity{name="avatar", position=position, force=assembler.entity.force} 
						addAvatarToTable(avatar)
						avatarOutput.remove({name="avatar", count=1})
					end
				end
			end
		end
	end
end

--Finds the direction of the assembling machine and gives the position in front of the output
--Output fluidbox is the opposite of the direction
--top left is -x -y // top right is +x -y
--bottom left is -x +y // bottom right is +x +y
--0 = S, 2 = W, 4 = N, 6 = E
function getPlacementPosition(entity)
	local direction = entity.direction
	local positionX = entity.position.x
	local positionY = entity.position.y
	
	--Output is facing south
	if (direction == 0) then
		return {positionX, positionY+2}
	--Output is facing west
	elseif (direction == 2) then
		return {positionX-2, positionY}
	--Output is facing north
	elseif (direction == 4) then
		return {positionX, positionY-2}
	--Output is facing east
	elseif (direction == 6) then
		return {positionX+2, positionY}
	end
	return nil
end


--Migration Scripts

--0.4.0 Migration
function migrateTo_0_4_0()
	--Default avatar names need to have leading zeroes in order to sort correctly
	if global.avatars then
		for i, avatar in ipairs(global.avatars) do
			local nameSubString = string.sub(avatar.name, 1, #default_avatar_name)
			if (default_avatar_name == nameSubString) then
				local avatarNumber = string.format("%03d", tonumber(string.sub(avatar.name, #default_avatar_name+1, #avatar.name)))
				global.avatars[i].name = default_avatar_name..avatarNumber
			end
		end
	end
end