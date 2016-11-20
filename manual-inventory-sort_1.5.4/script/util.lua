local util = {}
util.table = {}

function util.table.get_n(t)
	local n = 0
	for i, v in pairs(t) do n = n + 1 end
	return n
end

function util.add_unique(tab, value)
	for i, v in pairs(tab) do if v == value then return end end
	table.insert(tab, value)
end

function util.get_staks_with_order(order, stacks)
	res = {}
	for i, v in pairs(stacks) do if v.stack.valid and v.order == order then table.insert(res, v) end end
	return res
end

function util.get_total_ammo(stack) return stack.ammo + (stack.count - 1) * game.item_prototypes[stack.name].magazine_size end
function util.get_total_ammo_capacity(name) return game.item_prototypes[name].magazine_size * game.item_prototypes[name].stack_size end

function util.get_total_durability(stack) return stack.durability + (stack.count - 1) * game.item_prototypes[stack.name].durability end
function util.get_total_durability_prototype(name) return game.item_prototypes[name].durability * game.item_prototypes[name].stack_size end

function util.compress_ammo(stack1, stack2)
	local stack1_missing_ammo = util.get_total_ammo_capacity(stack1.name) - util.get_total_ammo(stack1)
	local stack2_ammo = util.get_total_ammo(stack2)
	
	local stack2_valid = false
	
	if stack2_ammo == stack1_missing_ammo then
		stack1.add_ammo(stack1_missing_ammo)
		stack2.clear()
	elseif stack2_ammo < stack1_missing_ammo then
		stack1.add_ammo(stack2_ammo)
		stack2.clear()
	elseif stack2_ammo > stack1_missing_ammo then
		stack1.add_ammo(stack1_missing_ammo)
		stack2.drain_ammo(stack1_missing_ammo)
		
		stack2_valid = true
	end
	
	return stack2_valid
end

function util.compress_usable_stacks(stack1, stack2)
	local stack1_missing_durability = util.get_total_durability_prototype(stack1.name) - util.get_total_durability(stack1)
	local stack2_durability = util.get_total_durability(stack2)
	local full_durability = game.item_prototypes[stack1.name].durability
	local t_stack1_missing_durability = full_durability - stack1.durability
	
	local stack2_valid = false
	
	if stack2_durability == stack1_missing_durability then
		stack1.add_durability(stack1_missing_durability)
		stack2.clear()
	elseif stack2_durability < stack1_missing_durability then
		stack1.add_durability(stack2_durability)
		stack2.clear()
	elseif stack2_durability > stack1_missing_durability then
		stack1.add_durability(stack1_missing_durability)
		stack2.drain_durability(stack1_missing_durability)
		stack2_valid = true
	end
	
	return stack2_valid
end

function util.is_sortable(entity)
	local sortable_entities = {"container", "logistic-container", "car", "cargo-wagon"}
	
	for _, v in pairs(sortable_entities) do
		if entity.type == v then return true end
	end
	
	return false
end

function util.remove_element(tab, value)
	for i, v in pairs(tab) do
		if v == value then
			table.remove(tab, i)
			return tab
		end
	end
	
	
end

function util.format_array(array)
	local res = ""
	local first = true
	for _, v in pairs(array) do
		if not first then res = res .. ","
		else first = false end
		res = res .. v
	end
	return res
end

function util.split_string(inputstr, sep)
	if sep == nil then sep = "%s" end
	local t={} ; i=1
	for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
		t[i] = str
		i = i + 1
	end
	return t
end

return util