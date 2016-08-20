function debug_print()
	game.players[1].print("DEBUG: Current item table:")
	for i, entry in pairs(global.zcs.items) do
		item = entry[1][1]
		amount = entry[2][1]
		length = entry[2][2]
		game.players[1].print("Item: " .. item .. " Amount: " .. amount .. " Length: " .. length)
	end
end

function item_check(landfill)
	inventory = landfill.get_inventory(defines.inventory.chest).get_contents()
	for item, amount in pairs(inventory) do
		--game.players[1].print("DEBUG: Checking item in landfill. Current item: " .. item .. " of amount: " .. amount)
		present = false
		total = 0
		for i, entry in pairs(global.zcs.items) do
			if entry[1][1] == item and entry[1][2] == landfill and entry[2][1] ~= amount then
				present = true
				total = total + entry[2][1]
			elseif entry[1][1] == item and entry[1][2] == landfill and entry[2][1] == amount then
				present = true
				total = amount
				break
			end
		end
		if present and total ~= amount then
			table.insert(global.zcs.items, { {item, landfill}, {amount - total, 0} })
			--game.players[1].print("DEBUG: Item present, but with different stack size.")
			--game.players[1].print("DEBUG: Adding ItemStack {name = " .. item .. ", count = " .. (amount - total) .. "}")
		elseif present and total == amount then
			--game.players[1].print("DEBUG: Item present with same stack size, ignoring.")
		elseif not present then
			table.insert(global.zcs.items, { {item, landfill}, {amount, 0} })
			--game.players[1].print("DEBUG: Adding ItemStack {name = " .. item .. ", count = " .. amount .. "}")
		end
	end
end

function delete_check()
	for i, entry in pairs(global.zcs.items) do
		if entry[1][2] ~= nil and entry[1][2].valid then
			--game.players[1].print("DEBUG: Checking Item: " .. entry[1][1] .. " Amount: " .. entry[2][1])
			--item = entry[1][1]
			--landfill = entry[1][2]
			--amount = entry[2][1]
			--length = entry[2][2]
			for item, amount in pairs(entry[1][2].get_inventory(defines.inventory.chest).get_contents()) do
				if entry[1][1] == item then
					--game.players[1].print("DEBUG: Item still in landfill.")
					present = true
					break
				end
			end
			if entry[2][2] == 13 and present == true then
				--game.players[1].print("DEBUG: Item being deleted")
				entry[1][2].surface.pollute(entry[1][2].position, entry[2][1] * 5)
				entry[1][2].get_inventory(defines.inventory.chest).remove({name=entry[1][1], count=entry[2][1]})
				table.remove(global.zcs.items, i)
			elseif entry[2][2] < 13 and present == true then
				--game.players[1].print("DEBUG: Item not yet being deleted. Current count: " .. entry[2][2])
				entry[2][2] = entry[2][2] + 1
			elseif not present then
				--game.players[1].print("DEBUG: Item no longer in landfill.")
				table.remove(global.zcs.items, i)
			end
		else
			--game.players[1].print("DEBUG: Item deleted from table due to removed landfill")
			table.remove(global.zcs.items, i)
		end
	end
end

function landfill_check(event)
	if event.tick % (1000) == 0 then
		--game.players[1].print("DEBUG: Performing check")
		for i,landfill in pairs(global.zcs.landfills) do
			if landfill == nil or not landfill.valid then
				--game.players[1].print("DEBUG: Landfill removed")
				table.remove(global.zcs.landfills, i)
				for i, entry in pairs(global.zcs.items) do
					if entry[1][2] == landfill then
						--game.players[1].print("DEBUG: Item deleted from table due to removed landfill")
						table.remove(global.zcs.items, i)
					end
				end
			elseif not landfill.get_inventory(defines.inventory.chest).is_empty() then
				--game.players[1].print("DEBUG: Landfill has items")
				item_check(landfill)
			end
		end
		delete_check()
		--game.players[1].print("DEBUG: Check complete")
		--debug_print()
	end
end

function landfill_built(event)
	if event.created_entity.name == "zcs-trash-landfill" then
		table.insert(global.zcs.landfills, event.created_entity)
	end
end

script.on_init(function()
	global.zcs = global.zcs or {}
	global.zcs.landfills = global.zcs.landfills or {}
	global.zcs.items = global.zcs.items or {}
end)

script.on_load(function()
	global.zcs.landfills = global.zcs.landfills or {}
	global.zcs.items = global.zcs.items or {}
end)

script.on_event(defines.events.on_tick, landfill_check)
script.on_event(defines.events.on_built_entity, landfill_built)