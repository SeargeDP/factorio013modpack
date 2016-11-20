local mainMaxRows = 5
local mainMaxEntries = 30
local maxRecentEntries = 20

--------------------------------------------------
-- API
--------------------------------------------------

-- call this to open the item selection gui
-- player: LuaPlayer
-- method: function(itemName) callback which is executed when an item has been selected
-- itemSelection_open(player, method)

--------------------------------------------------
-- Global data
--------------------------------------------------

-- This helper file uses the following global data variables:
-- global.itemSelection[$playerName].recent= { $itemName1, $itemName2, ... }
--        .callback = function($itemName)

------------------------------------
-- Helper methods
------------------------------------

local function initGuiForPlayerName(playerName)
	if global.itemSelection == nil then global.itemSelection = {} end
	local is = global.itemSelection
	if is[playerName] == nil then is[playerName] = {} end
	if is[playerName].recent == nil then is[playerName].recent = {} end
end

local function checkBoxForItem(itemName)
	local item = game.item_prototypes[itemName]
	local tip = item.localised_name
	return {
		type = "sprite-button",
		name = "itemSelection.item."..itemName,
		style = "slot_button_style",
		tooltip = tip,
		sprite = "item/"..itemName
	}
end

local function selectItem(playerData,player,itemName)
	-- add to recent items
	table.insert(playerData.recent,1,itemName)
	-- prevent duplicates
	for i=#playerData.recent,2,-1 do
		if playerData.recent[i] == itemName then table.remove(playerData.recent,i) end
	end
	-- remove oldest items from history
	if #playerData.recent > maxRecentEntries then
		table.remove(playerData.recent,maxRecentEntries)
	end

	if global.itemSelection[player.name].callback then
		global.itemSelection[player.name].callback(itemName)
		global.itemSelection[player.name].callback = nil
	end
	itemSelection_close(player)
end


local function rebuildItemList(player)
	local frame = player.gui.left.itemSelection.main
	if frame.itemsScrollPane then
		frame.itemsScrollPane.destroy()
	end

	local scroll = frame.add{type="scroll-pane", name="itemsScrollPane"}
	--scroll.style.maximal_width=450  --Needed to produce horizontal scroll bars
	scroll.style.maximal_height=180 --Needed to produce vertical scroll bars
	scroll.horizontal_scroll_policy = "never"
	scroll.vertical_scroll_policy = "auto"
	local items = scroll.add{type="table",name="items",colspan=mainMaxEntries}
	
	local filter = frame.search["itemSelection.field"].text
	for name,prototype in pairs(game.item_prototypes) do
		if not prototype.has_flag("hidden") and (filter == "" or string.find(name,filter)) then
			local checkbox = checkBoxForItem(name)
			local status, err = pcall(function() items.add(checkbox) end)
			if not status then
				warn("Error occured with item: "..name..". The style is missing probably because item was registered in data-final-fixes.lua instead of before. The item will not be displayed in the list.")
				warn(err)
			end
		end
	end
end

------------------------------------
-- Events
------------------------------------

itemSelection_close = function(player)
	if player.gui.left.itemSelection ~= nil then
		player.gui.left.itemSelection.destroy()
	end
	initGuiForPlayerName(player.name)
	local playerData = global.itemSelection[player.name]
	playerData.callback = nil
end

itemSelection_open = function(player,method)
	initGuiForPlayerName(player.name)
	local playerData = global.itemSelection[player.name]

	if player.gui.left.itemSelection ~= nil then
		itemSelection_close(player)
	end

	local frame = player.gui.left.add{type="frame",name="itemSelection",direction="vertical",caption={"item-selection"}}
	frame.add{type="table",name="main",colspan=1}
	frame = frame.main

	if #playerData.recent > 0 then
		frame.add{type="table",name="recent",colspan=2}
		frame.recent.add{type="label",name="title",caption={"",{"recent"},":"}}
		frame.recent.add{type="table",name="items",colspan=#playerData.recent}
		for _,itemName in pairs(playerData.recent) do
			frame.recent.items.add(checkBoxForItem(itemName))
		end
	end

	frame.add{type="table",name="special",colspan=2}
	frame.special.add{type="label",name="title",caption={"",{"special"},":"}}
	frame.special.add{type="table",name="items",colspan=1}
	frame.special.items.add(checkBoxForItem("belt-sorter-everythingelse"))

	frame.add{type="table",name="search",colspan=2}
	frame.search.add{type="label",name="title",caption={"",{"search"},":"}}
	frame.search.add{type="textfield",name="itemSelection.field"}

	rebuildItemList(player)
	-- Store reference for callback

	global.itemSelection[player.name].callback = method
	global.itemSelection[player.name].filter = ""
	gui_scheduleEvent("itemSelection.updateFilter",player)
end

itemSelection_gui_event = function(guiEvent,player)
	initGuiForPlayerName(player.name)
	local fieldName = guiEvent[1]
	local playerData = global.itemSelection[player.name]
	if playerData == nil then return end
	if playerData.callback == nil then return end
	if fieldName == "field" then
		rebuildItemList(player)
	elseif fieldName == "updateFilter" then
		local frame = player.gui.left.itemSelection.main
		local filter = frame.search["itemSelection.field"].text
		if filter ~= playerData.filter then
			playerData.filter = filter
			rebuildItemList(player)
		end
		gui_scheduleEvent("itemSelection.updateFilter",player)
	elseif fieldName == "item" then
		local itemName = guiEvent[2]
		selectItem(playerData,player,itemName)
	else
		warn("Unknown fieldName for itemSelection_gui_event: "..tostring(fieldName))
	end
end



