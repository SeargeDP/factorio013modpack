--require("defines")

-------------------------------------------------------------------
-- A-sync Action Queue
--
function aaq_init()
	if not global.aaq then
		global.aaq = {}
		
		script.on_event(defines.events.on_tick, aaq_tick)
	end
end

function aaq_queue(action)
	table.insert(global.aaq, action)
end

function aaq_tick()
	while #global.aaq > 0 do
		local aaq_action = table.remove(global.aaq,1)
		aaq_action()
	end
end
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Grouping
--
function group(index_id, group_id, members)
	_init_group(index_id, group_id)

	if index_id == nil then
	 index_id = "default"
 	end

	if group_id then
		for ix, vx in ipairs(members) do
			_addto_group(index_id, group_id, vx)
		end
		return group_id
	else
		-- no GID, then assign one
		return group(index_id, _new_group(index_id), members)
	end
end

function getGroup(index_id, group_id)
	_init_group(index_id, group_id)

	if group_id then
		return _get_group(index_id, group_id)
	else
		return nil
	end
end

function getGroup_byMember(index_id, group_id, member_id)
	_init_group(index_id, group_id)

	if member_id then
		return _of_group(index_id, group_id, entity_id)
	else
		return nil
	end
end

function ungroup(index_id, group_id)
	_init_group(index_id, group_id)

	if group_id then
		return _clear_group(index_id, group_id)
	else
		return false
	end
end
-------------------------------------------------------------------
function _init_group(index_id)
	if not global.group then
		global.group = {}
	end
	if not global.group.default then
		global.group.default = {}
	end
	if index_id and not global.group[index_id] then
		-- don't care if they name their group "default"
		global.group[index_id] = {}
	end
end

function _new_group(index_id)
	local group_id_n = 0
	local group_id_r = nil

	while group_id_r == nil do
	 local group_id_x = "gid-" .. (group_id_n + #global.group[index_id])
		if global.group[index_id][group_id_x] then
			-- collision
			group_id_n = group_id_n + 1
		else
			group_id_r = group_id_x
		end
	end

	return group_id_r
end

function _addto_group(index_id, group_id, member_id)
	if global.group[index_id] then
		if not global.group[index_id][group_id] then
			global.group[index_id][group_id] = {}
		end
	end

	table.insert(global.group[index_id][group_id], member_id)
end

function _get_group(index_id, group_id)
	return global.group[index_id][group_id]
end

function _of_group(index_id, member_id)
	--full scan
	for kx, vx in pairs(global.group[index_id]) do
		for ky, vy in pairs(vx) do
			if member_id == vy then
				return vx
			end
		end
	end
	return nil
end

function _clear_group(index_id, group_id)
	global.group[index_id][group_id] = nil
end
-------------------------------------------------------------------

-------------------------------------------------------------------
-- Cantor Hash
-------------------------------------------------------------------
function cantor(k1, k2)
	return (0.5 * (k1+k2) * (k1+k2+1) + k2)
end
-------------------------------------------------------------------
