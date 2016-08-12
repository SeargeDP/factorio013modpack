--Selection GUI - The main table that displays and allows for renaming and control of avatars
--Draw Selection GUI
function drawSelectionGUI(player)
	debugLog("Drawing Selection GUI")
	
	--Determine the sort
	local sortValues
	if verifySelectionGUI(player) then
		--Get the sort from the current selection GUI
		debugLog("Old Selection GUI found")
		sortValues = getSortValues(player)
	else
		--Default sort values
		sortValues = {	name_ascending = true,
						name_descending = false,
						location_ascending = false,
						location_descending = false
					 }
	end
	
	--Destroy old Selection GUI
	destroySelectionGUI(player)
	
	--Obtain a sorted table to display
	local sortedTable = getSortedTable(sortValues, player.position)
	
	--Create the frame to hold everything
	local avatarSelectionFrame = player.gui.center.add{type="frame", name="avatarSelectionFrame", direction="vertical", caption={"Avatars-table-header", printPosition(player)}}
	
	--Fill in the GUI if there is data
	if (sortedTable ~= nil and #sortedTable > 0) then
		--Flow to align the header frames
		local headerFlow = avatarSelectionFrame.add{type="flow", name="headerFlow", direction="horizontal"}
		
		--Column header frames
		local nameHeader = headerFlow.add{type="frame", name="nameHeader", direction="vertical", style="avatar_table_name_header_frame"}
		local locationHeader = headerFlow.add{type="frame", name="locationHeader", direction="vertical", style="avatar_table_location_header_frame"}
		local renameHeader = headerFlow.add{type="frame", name="renameHeader", direction="vertical", style="avatar_table_rename_header_frame"}
		local controlHeader = headerFlow.add{type="frame", name="controlHeader", direction="vertical", style="avatar_table_control_header_frame"}
		
		--Header labels
		nameHeader.add{type="label", caption={"Avatars-table-avatar-name-header"}, style="avatar_table_header_avatar_name"}
		locationHeader.add{type="label", caption={"Avatars-table-avatar-location-header"}, style="avatar_table_general"}
		renameHeader.add{type="label", caption={"Avatars-table-rename-avatar-header"}, style="avatar_table_general"}
		controlHeader.add{type="label", caption={"Avatars-table-control-avatar-header"}, style="avatar_table_general"}
		
		--Create the "Asending" sort row
		local upperSortFlow = avatarSelectionFrame.add{type="flow", name="upperSortFlow", direction="horizontal"}
		upperSortFlow.add{type="label", caption={"Avatars-table-sort-prefix"}}
		upperSortFlow.add{	type="radiobutton", 
							name="avatar_sort_name_ascending", 
							caption={"Avatars-table-ascending"}, 
							tooltip={"Avatars-table-sort-ascending-names-tooltip"}, 
							state=sortValues.name_ascending, 
							style="avatar_table_name_sort_radiobutton"}
		upperSortFlow.add{	type="radiobutton", 
							name="avatar_sort_location_ascending", 
							caption={"Avatars-table-ascending"}, 
							tooltip={"Avatars-table-sort-ascending-location-tooltip"}, 
							state=sortValues.location_ascending}
		upperSortFlow.add{type="label", caption="", style="avatar_table_sort_trailing_null_label"}
		
		--Create the "Descending" sort row
		local lowerSortFlow = avatarSelectionFrame.add{type="flow", name="lowerSortFlow", direction="horizontal"}
		lowerSortFlow.add{type="label", caption="", style="avatar_table_sort_leading_null_label"}
		lowerSortFlow.add{	type="radiobutton", 
							name="avatar_sort_name_descending", 
							caption={"Avatars-table-descending"}, 
							tooltip={"Avatars-table-sort-descending-names-tooltip"}, 
							state=sortValues.name_descending, 
							style="avatar_table_name_sort_radiobutton"}
		lowerSortFlow.add{	type="radiobutton", 
							name="avatar_sort_location_descending", 
							caption={"Avatars-table-descending"}, 
							tooltip={"Avatars-table-sort-descending-location-tooltip"}, 
							state=sortValues.location_descending}
		lowerSortFlow.add{type="label", caption="", style="avatar_table_sort_trailing_null_label"}
		
		--Frame and scroll pane creation
		local tableFrame = avatarSelectionFrame.add{type="frame", name="tableFrame", direction="vertical"}
		local selectionScrollPane = tableFrame.add{type="scroll-pane", name="selectionScrollPane", direction="vertical", style="avatar_table_scroll_pane"}
		
		--Total avatar count
		local totalAvatars = 0
		
		--Iterate through the avatars
		for _, avatar in ipairs(sortedTable) do
			if (avatar == nil) then break end
			local avatarEntity = avatar.avatarEntity
			if (avatarEntity ~= nil and avatarEntity.valid) then
				--Make sure the avatar is in the same force
				if (avatarEntity.force == player.force) then
					--Add it to the count
					totalAvatars = totalAvatars + 1
					
					--Create the row frame
					local row = selectionScrollPane.add{type="frame", direction="horizontal", style="avatar_table_row_frame"}
					
					--Fill in the row
					row.add{type="label", name=avatar.name, caption=avatar.name, style="avatar_table_label_avatar_name"}
					row.add{type="label", caption=getDistance(player.position, avatarEntity.position), style="avatar_table_label_avatar_location"}
					row.add{
								type="button", 
								name="avatar_rnam_"..avatar.name, 
								caption={"Avatars-table-rename-button"}, 
								tooltip={"Avatars-table-rename-button-tooltip", avatar.name}, 
								style="avatar_table_button"}
					row.add{type="label", style="avatar_table_label_gap"}
					row.add{	type="button", 
								name="avatar_ctrl_"..avatar.name, 
								caption={"Avatars-table-control-button"}, 
								tooltip={"Avatars-table-control-button-tooltip", avatar.name}, 
								style="avatar_table_button"}
				end
			end
		end
		--Footer 
		--Avatar Total
		avatarSelectionFrame.add{type="label", caption={"Avatars-table-total-avatars", totalAvatars}, style="avatar_table_total_avatars"}
	end
end

--Creates a printable position
function printPosition(entity)
	local position = "(" ..math.floor(entity.position.x) ..", " ..math.floor(entity.position.y) ..")"
	return position
end

--Update Selection GUI for the current player
function updateSelectionGUI(player)
	--Redraw the GUI
	if verifyRenameGUI then
		drawSelectionGUI(player)
	end
end

--Update the Selection GUI for all players on this page
function updateSelectionGUIAll()
	for _, player in pairs(game.players) do
		drawSelectionGUI(player)
	end
end

--Returns true or false if the Selection GUI is open
function verifySelectionGUI(player)
	if (player.gui.center.avatarSelectionFrame ~= nil and player.gui.center.avatarSelectionFrame.valid) then
		return true
	end
	return false
end

--Destroy Selection GUI
function destroySelectionGUI(player)
	if verifySelectionGUI(player) then 
		player.gui.center.avatarSelectionFrame.destroy()
	end
end

--Flip the sort radio buttons that were not checked
function flipRadioButtons(player, modButton)
	if verifySelectionGUI(player) then
		if (modButton ~= "name_ascending") then
			player.gui.center.avatarSelectionFrame.upperSortFlow.avatar_sort_name_ascending.state = false
		end
		
		if (modButton ~= "name_descending") then
			player.gui.center.avatarSelectionFrame.lowerSortFlow.avatar_sort_name_descending.state = false
		end
		
		if (modButton ~= "location_ascending") then
			player.gui.center.avatarSelectionFrame.upperSortFlow.avatar_sort_location_ascending.state = false
		end
		
		if (modButton ~= "location_descending") then
			player.gui.center.avatarSelectionFrame.lowerSortFlow.avatar_sort_location_descending.state = false
		end
	end
end

--Rename GUI -Rename an avatar
--Draw Rename GUI
function drawRenameGUI(player, name)
	--Destroy old Rename GUI
	destroyRenameGUI(player)
	debugLog("Changing name of "..name)
	
	--Rename Frame and labels
	local changeNameFrame = player.gui.center.add{type="frame", name="changeNameFrame", direction="vertical", caption={"Avatars-change-name-change-name"}}
	local currentNameFlow = changeNameFrame.add{type="flow", name="currentNameFlow", direction="horizontal"}
	currentNameFlow.add{type="label", name="currentNameLabel", caption={"Avatars-change-name-current-name"}}
	currentNameFlow.add{type="label", name="currentName", caption=name}
	changeNameFrame.add{type="textfield", name="newNameField"}
	
	--Buttons
	local buttonsFlow = changeNameFrame.add{type="flow", name="buttonsFlow"}
	buttonsFlow.add{type="button", name="avatar_sbmt", caption={"Avatars-submit-button"}}
	buttonsFlow.add{type="button", name="avatar_cncl", caption={"Avatars-cancel-button"}}
end

--Update Rename GUI when the submit button has be pressed
function updateRenameGUIOnSubmit(player, oldName, newName)
	--Check if a name change occured
	if (newName ~= nil) then
		--Update Selection GUI first, to maintain order
		if verifySelectionGUI(player) then
			updateSelectionGUIAll()
		end
		
		--Update Rename GUI for each player
		for _, players in pairs(game.players) do
			local changeNameFrame = players.gui.center.changeNameFrame
			if (changeNameFrame ~= nil and changeNameFrame.valid) then
				--Perserve the text in the textfield
				local currentTextField = changeNameFrame.newNameField.text
				
				--Check for each player
				if (changeNameFrame.currentNameFlow.currentName.caption == oldName) then
					drawRenameGUI(players, newName)
				else
					local currentName = changeNameFrame.currentNameFlow.currentName.caption
					drawRenameGUI(players, currentName)
				end
				
				--Put back the text in the textfield
				players.gui.center.changeNameFrame.newNameField.text = currentTextField
			end
		end
	else
		--If not, update with the old name
		updateSelectionGUI(player)
		drawRenameGUI(player, oldName)
	end
end

--Update the Rename GUI
function updateRenameGUI(player)
	--Update Selection GUI first, to maintain order
	updateSelectionGUI(player)
	
	if verifyRenameGUI(player) then
		--Preserve the name and the text in the text box
		local currentName = player.gui.center.changeNameFrame.currentNameFlow.currentName.caption
		local textBoxData = player.gui.center.changeNameFrame.newNameField.text
		
		drawRenameGUI(player, currentName)
		
		--Replace the text in the text box
		player.gui.center.changeNameFrame.newNameField.text = textBoxData
	end
end

--Returns true or false if the Rename GUI is open
function verifyRenameGUI(player)
	if (player.gui.center.changeNameFrame ~= nil and player.gui.center.changeNameFrame.valid) then
		return true
	end
	return false
end

--Destroy Rename GUI
function destroyRenameGUI(player)
	if verifyRenameGUI(player) then
		player.gui.center.changeNameFrame.destroy()
	end 
end

--Disconnect GUI - Disconnect from the controlled avatar
--Draw Disconnect GUI
function drawDisconnectGUI(player)
	local disconnect = player.gui.top.add{type="flow", name="avatarExit"}
	disconnect.add{type="button", name="avatar_exit", tooltip={"Avatars-button-disconnect-tooltip", getPlayerData(player).currentAvatarName}, caption={"Avatars-button-disconnect"}}
end

--Destroy Disconnect GUI
function destroyDisconnectGUI(player)
	if (player.gui.top.avatarExit ~= nil and player.gui.top.avatarExit.valid) then
		player.gui.top.avatarExit.destroy()
	end 
end

--Avatar Remote Deployment Unit GUI
--Draw ARDU GUI
function drawARDUGUI(player, ARDU)
	--Destroy old ARDU GUI
	destroyARDUGUI(player)
	
	--Get the ARDU from the table
	local ARDUData = getARDUFromTable(ARDU)
	
	if (ARDUData ~= nil) then
		--Rename Frame and labels
		local ARDUGUI = player.gui.center.add{type="frame", name="avatarARDUFrame", direction="vertical", caption={"Avatars-ARDU-rename-header"}}
		local currentNameFlow = ARDUGUI.add{type="flow", name="currentNameFlow", direction="horizontal"}
		currentNameFlow.add{type="label", name="currentNameLabel", caption={"Avatars-ARDU-rename-current-name"}}
		currentNameFlow.add{type="label", name="currentName", caption=ARDUData.name, style="avatar_ARDU_current_name"}
		ARDUGUI.add{type="textfield", name="newNameField"}
		
		--Buttons
		local buttonsFlow = ARDUGUI.add{type="flow", name="buttonsFlow"}
		buttonsFlow.add{type="button", name="avatar_ARDU", caption={"Avatars-submit-button"}}
	else
		player.print{"Avatars-error-ARDU-not-found"}
	end
end

--Destroy ARDU GUI
function destroyARDUGUI(player)
	if (player.gui.center.avatarARDUFrame ~= nil and player.gui.center.avatarARDUFrame.valid) then
		player.gui.center.avatarARDUFrame.destroy()
	end 
end

--Destroys all GUI
function destroyAllGUI(player)
	destroySelectionGUI(player)
	destroyRenameGUI(player)
	destroyDisconnectGUI(player)
	destroyARDUGUI(player)
end