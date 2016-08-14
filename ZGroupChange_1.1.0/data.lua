zgc = zgc or {}
zgc.cnt = 0
zgc.itemtypes = {
	"mining-tool", "repair-tool", "rail-planner", "blueprint-book", "blueprint", "deconstruction-item", "gun", "ammo", "armor","virtual-signal", "module", "tool", "capsule", "selection-tool"}
zgc.restrictedtypes = {
	"assembling-machine","virtual-signal"}
zgc.brutgroups = {
	"yuoki","Yuoki","yuoki-energy","yuoki_liquids","yi_engines","yuoki_railway","yie_harvest"}
zgc.grp_list = {
"gathering","production","resources","plates","liquids","chemistry","automatization","transport","defense","energy","logistic","module","intermediate","armor","weaponry","trains-vehicles","decorative","alien","other"}
zgc.mgq = {
{"gathering","production","resources"},
{"automatization","transport","logistic","energy","defense"},
{"intermediate"}
}
zgc.new_ressourse_list = {}
zgc.name_list = {}

local __old_log = log
local log = function(msg)
	if not z_debug then return end
	__old_log(msg)
end

function f(msg,...)
	if not z_debug then return end
	return "[[ZGC]] "..string.format(msg,...)
end

function table.merge(tab1, tab2)
	if type(tab1) == 'table' and type(tab2) == 'table' then
        for k,v in pairs(tab2) do
			if type(v)=='table' and type(tab1[k] or false)=='table' then
				table.merge(tab1[k],v)
			elseif type(k) == "number" then
				table.insert(tab1,v)
			else
				tab1[k]=v
			end
		end
    end
    return tab1
end

function table.deepcopy(tab)
    local tab_type = type(tab)
    local copy
    if tab_type == 'table' then
        copy = {}
        for tab_key, tab_value in next, tab, nil do
            copy[table.deepcopy(tab_key)] = table.deepcopy(tab_value)
        end
        setmetatable(copy, table.deepcopy(getmetatable(tab)))
    else -- number, string, boolean, etc
        copy = tab
    end
    return copy
end

function table.removekey(tab, key)
    local element = tab[key]
    tab[key] = nil
		log(f("Remove key %s from [%s] table",key,tostring(tab)))
    return element
end

function table.has_value(tab, val)
    for index, value in ipairs (tab) do
        if value == val then
            return true
        end
    end
    return false
end

function dumpvar(data, depth, sortdepth)
    local tablecache = {}
    local buffer = ""
    local padder = "	"
    local depth = depth or 30
    local sortdepth = sortdepth or 0
 
    local function dumpvar(d, _depth)
        local t = type(d)
        local str = tostring(d)
        if (t == "table") then
            if (tablecache[str]) then
                -- table already dumped before, so we dont
                -- dump it again, just mention it
                buffer = buffer.."<"..str..">\n"
            else
                tablecache[str] = (tablecache[str] or 0) + 1
                buffer = buffer..string.format(" {%s-- <%s>\n",padder,str)
				
				if _depth >= depth then buffer = buffer.."\n"; return end
				if _depth <= sortdepth then
					for k, v in pairsByKeys(d) do
						buffer = buffer..string.rep(padder, _depth+1).."["..k.."]"
						if _depth+1 < depth then buffer = buffer.." => " end
						dumpvar(v, _depth+1)
					end
				else for k, v in pairs(d) do
						buffer = buffer..string.rep(padder, _depth+1).."["..k.."]"
						if _depth+1 < depth then buffer = buffer.." => " end
						dumpvar(v, _depth+1)
					end
				end
                
				buffer = buffer..string.rep(padder, _depth).."}\n"
            end
        elseif (t == "number") then
            buffer = buffer.."("..t..") "..str.."\n"
        else
            buffer = buffer.."("..t..") \""..str.."\"\n"
        end
    end
    dumpvar(data, 0)
    return buffer
end

function pairsByKeys(t, f)
	local a = {}
	for n in pairs(t) do table.insert(a, n) end
	table.sort(a, f)
	local i = 0      -- iterator variable
	local iter = function ()   -- iterator function
		i = i + 1
		if a[i] == nil then return nil
		else return a[i], t[a[i]]
		end
	end
	return iter
end



function zgc.i_get_type(name)

	local item_type = nil
	local itemtypes_all = table.deepcopy(zgc.itemtypes)
	table.insert(itemtypes_all,"fluid")
	table.insert(itemtypes_all,"item")
	
	for _,type_name in pairs(itemtypes_all) do
		if type_name ~= "recipe" and data.raw[type_name][name] then
			if type_name ~= "item" then return type_name end
			item_type = type_name
		end
	end
	
	return item_type
end

function zgc.i_get_basic_type(name)
	
	if data.raw.item[name] then return "item" end
	if data.raw.fluid[name] then return "fluid" end
	
	return nil
end

function zgc.i_basic_item(inputs)
	
	local item = {}
	
	item.name = inputs.name or inputs[1]
	item.amount = inputs.amount or inputs[2] or 1
	item.type = inputs.type or zgc.i_get_basic_type(item.name) or "item"
	
	return item
end

function zgc.i_item(inputs)
	local item = {}
	
	item.name = inputs.name or inputs[1]
	item.amount = inputs.amount or inputs[2]
	item.probability = inputs.probability or nil
	item.type = inputs.type or zgc.i_get_basic_type(item.name) or "item"
	
	if not item.amount then
		item.amount_min = inputs.amount_min or nil
		item.amount_max = inputs.amount_max or nil
	else item.amount = 1 end
	
	return item
end

function zgc.i_combine(item1_in, item2_in)
	
	local item = {}
	local item1 = zgc.i_item(item1_in)
	local item2 = zgc.i_item(item2_in)

	item.name = item1.name
	item.type = item1.type

	if item1.amount then
		item.amount = item1.amount + (item2.amount or 0)
	else
		item.amount_min = (item1.amount_min or item1.amount or 1) + (item2.amount_min or item2.amount or 0)
		item.amount_max = (item1.amount_max or item1.amount or 1) + (item2.amount_max or item2.amount or 0)
	end
	item1.probability = (item1.probability or 1) + (item2.probability or 1) / 2
	
	return item
end

function zgc.i_add_inc(list, item_in)
	local item = zgc.i_item(item_in)
	local flag = true
	for i, obj in pairs(list) do
		if obj[1] == item.name or obj.name == item.name then
			flag = false
			obj = zgc.i_combine(obj, item)
		end
	end
	if flag then table.insert(list, item) end
end

function zgc.i_add_new(list, item_in)
	local item = zgc.i_item(item_in)
	
	for _,object in pairs(list) do
		if item.name == zgc.i_basic_item(object).name then return end
	end
	table.insert(list, item)
end

function zgc.i_remove(list, item)
	for i, obj in ipairs(list) do
		if obj[1] == item or obj.name == item then
			table.remove(list, i)
		end
	end
end



function zgc.r_remove_ingredient(recipe, item)
	if data.raw.recipe[recipe] then
		zgc.i_remove(data.raw.recipe[recipe].ingredients, item)
	else
		log(f("Recipe %s does not exist.",recipe))
	end
end

function zgc.r_remove_ingredient_in_all(item)
	for recipe_name,recipe in pairs(data.raw.recipe) do
		local _ingr = false
		for _,ingredient in pairs(recipe) do
			if ingredient[1] == item or (ingredient.name and ingredient.name == item) then _ingr = true end
		end
		if _ingr then zgc.r_remove_ingredient(recipe_name,item) end
	end
end

function zgc.r_add_new_ingredient(recipe, item)
	if data.raw.recipe[recipe] and zgc.i_get_type(i_basic_item(item).name) then
		zgc.i_add_new(data.raw.recipe[recipe].ingredients, zgc.i_basic_item(item))
	else
		if not data.raw.recipe[recipe] then
			log(f("Recipe %s does not exist.",recipe))
		end
		if not zgc.i_get_type(item) then
			log(f("Ingredient %s does not exist.",i_basic_item(item).name))
		end
	end
end

function zgc.r_add_ingredient(recipe, item)
	if data.raw.recipe[recipe] and zgc.i_get_type(zgc.i_basic_item(item).name) then
		zgc.i_add_inc(data.raw.recipe[recipe].ingredients, zgc.i_basic_item(item))
	else
		if not data.raw.recipe[recipe] then
			log(f("Recipe %s does not exist.",recipe))
		end
		if not zgc.i_get_basic_type(zgc.i_basic_item(item).name) then
			log(f("Ingredient %s does not exist.",i_basic_item(item).name))
		end
	end
end

function zgc.r_replace_ingredient(recipe, old, new)
	local new = new or "raw-wood"
	if data.raw.recipe[recipe] and zgc.i_get_type(new) then
		local amount = 0
		for i, ingredient in pairs(data.raw.recipe[recipe].ingredients) do
			if ingredient[1] == old then
				amount = ingredient[2] + amount
			end
			if ingredient.name == old then
				amount = ingredient.amount + amount
			end
		end
		if amount > 0 then
			zgc.r_remove_ingredient(recipe, old)
			zgc.r_add_ingredient(recipe, {new, amount})
		end
	else
		if not data.raw.recipe[recipe] then
			log(f("Recipe %s does not exist.",recipe))
		end
		if not zgc.i_get_type(new) then
			log(f("Ingredient %s does not exist.",new))
		end
	end
end

function zgc.r_replace_ingredient_in_all(old, new)
	local new = new or "raw-wood"
	if zgc.i_get_basic_type(new) then
		for i, recipe in pairs(data.raw.recipe) do
			zgc.r_replace_ingredient(recipe.name, old, new)
		end
	else
		log(f("Ingredient %s does not exist.",new))
	end
end

function zgc.t_add_recipe_unlock(technology, recipe)
	if data.raw.technology[technology] and data.raw.recipe[recipe] then
		data.raw.technology[technology].effects = data.raw.technology[technology].effects or {}
		for i, effect in pairs(data.raw.technology[technology].effects) do
			if effect.type == "unlock-recipe" and effect.recipe == recipe then return end
		end
		table.insert(data.raw.technology[technology].effects,{type = "unlock-recipe", recipe = recipe})
	else
		if not data.raw.technology[technology] then
			log(f("technology %s does not exist.",technology))
		end
		if not data.raw.recipe[recipe] then
			log(f("Recipe %s does not exist.",recipe))
		end
	end
end

function zgc.t_remove_prerequisite(technology, prerequisite)
	if data.raw.technology[technology] then
		for i, check in ipairs(data.raw.technology[technology].prerequisites) do
			if check == prerequisite then
				table.remove(data.raw.technology[technology].prerequisites, i)
			end
		end
	else
		log(f("technology %s does not exist.",technology))
	end
end

function zgc.t_remove_recipe_unlock(technology, recipe)
	if data.raw.technology[technology] and data.raw.technology[technology].effects then
		for i, effect in pairs(data.raw.technology[technology].effects) do
			if effect.type == "unlock-recipe" and effect.recipe == recipe then
				table.remove(data.raw.technology[technology].effects,i)
			end
		end
	elseif not data.raw.technology[technology] then
		log(f("technology %s does not exist.",technology))
	end
end



function i_exist(item)
	for _,v in pairs(zgc.name_list) do
		if v == item then return true end
	end
	return false
end
function i_not_exist(item)
	return not i_exist(item)
end

function iadd(group,name,order,ico,anim)
	
	local group = zgc.get_group_name(group)
	if not order then zgc.cnt = zgc.cnt+1 end
	local order 	= order or "z"..zgc.cnt
	local typeof 	= zgc.i_get_type(name) or "item"
	local ico 		= ico or false
	local anim 		= anim or false
	
	--# Item
	if table.has_value(zgc.itemtypes, typeof) then
		if not data.raw[typeof][name] then return end
		data.raw[typeof][name].subgroup = group
		data.raw[typeof][name].order = order
		data.raw[typeof][name].flags = data.raw[typeof][name].oldflags or data.raw[typeof][name].flags
		if ico then data.raw[typeof][name].icon = ico end
		if anim then data.raw[typeof][name].animation.filename = anim end
log(f("ADD (%s) %s to %s : %s",string.upper(typeof),name,group,order))
		return
		
	elseif data.raw["fluid"][name] then
		data.raw["fluid"][name].subgroup = group
		data.raw["fluid"][name].order = order
		data.raw["fluid"][name].flags = data.raw["fluid"][name].oldflags or data.raw["fluid"][name].flags
		if ico then data.raw["fluid"][name].icon = ico end
log(f("ADD (%s) %s to %s : %s",string.upper(typeof),name,group,order))
		return
	end
	
	if not data.raw.item[name] then return end
	data.raw.item[name].subgroup = group
	data.raw.item[name].order = order
	data.raw.item[name].flags = data.raw.item[name].oldflags or data.raw.item[name].flags
	if ico then data.raw.item[name].icon = ico end
	if anim then data.raw.item[name].animation.filename = anim end
log(f("ADD ITEM %s to %s : %s",name,group,order))
end
function radd(group,recipe,order,ico)

	local group = zgc.get_group_name(group)
	if not order then zgc.cnt = zgc.cnt+1 end
	local order 	= order or "z"..zgc.cnt
	local recipe 	= recipe or zgc.find_recipe(name)
	local ico 		= ico or false
	
	--# Recipe
	if data.raw.recipe[recipe] then
		data.raw.recipe[recipe].subgroup = group
		data.raw.recipe[recipe].order = order
		data.raw.recipe[recipe].hidden  = false
		if ico then data.raw.recipe[recipe].icon = ico end
log(f("ADD RECIPE %s to %s : %s",recipe,group,order))
	end
end
function aadd(group,name,order,ico,anim,addrecipe)
	
	if not order then zgc.cnt = zgc.cnt+1 end
	local order 	= order or "z"..zgc.cnt
	local typeof 	= zgc.i_get_type(name) or "item"
	local ico 		= ico or false
	local anim 		= anim or false
	local recipe 	= zgc.find_recipe(name)
	local addrecipe	= addrecipe or true
	
	iadd(group,name,order,ico,anim)
	if addrecipe then radd(group,recipe,order,ico) end
	
end

function ihide(name,replase,typeof)
	local replase 	= replase or false
	local typeof 	= typeof or zgc.i_get_type(name) or "item"
	
	--# Item
	if not data.raw[typeof][name] then return end
	data.raw[typeof][name].flags = data.raw[typeof][name].flags or {}
	data.raw[typeof][name].oldflags = data.raw[typeof][name].flags
	data.raw[typeof][name].flags = {"hidden"}
	
	--# Replace items
	if replase then
log(f("REPLACE  %s => %s",name,replase))
		zgc.r_replace_ingredient_in_all(name, replase)
	end
	
end
function rhide(name,recipe)
	local recipe = recipe or zgc.find_recipe(name)
	
	--# technology
	local tech_name = ""
	for t_name,t_data in pairs(data.raw.technology) do
		if t_data.effects then
			for _,effect in ipairs(t_data.effects) do
				if effect.recipe and effect.recipe == recipe
				then tech_name = t_name end
			end
		end
	end
	if #tech_name > 0 then
log(f("[[REMOVE]]  %s from [%s]",name,tech_name))
		zgc.t_remove_recipe_unlock(tech_name, name)
	end
	
	--# Recipe	
	if data.raw.recipe[recipe] then 
		data.raw.recipe[recipe].hidden = true
	end
	
end
function ahide(name,replase)
	
	local typeof 	= zgc.i_get_type(name) or "item"
	local replase 	= replase or false
	local recipe 	= zgc.find_recipe(name)
	
	ihide(name,replase,typeof)
	rhide(name,recipe)
	
end

function switch_tech(tname,flag)
	if data.raw.technology[tname] then
		local flag = flag or false
		if flag then
			if data.raw.technology[tname].hidden_effects then
				data.raw.technology[tname].effects = table.deepcopy(data.raw.technology[tname].hidden_effects)
				data.raw.technology[tname].hidden_effects = nil
			end
		else
			if data.raw.technology[tname].effects then
				data.raw.technology[tname].hidden_effects = table.deepcopy(data.raw.technology[tname].effects)
				data.raw.technology[tname].effects = nil
			end
		end
		data.raw.technology[tname].enabled = flag
	end
end



function zgc.find_recipe(item, brute)
	
	if not item then return item end
	
	local recipe
	local brute = brute or false
	
	if not brute and data.raw.item[item] and data.raw.item[item].group then
		brute = table.has_value(zgc.brutgroups, data.raw.item[item].group)
	end
	
	local r_list = {}
	table.insert(r_list, item)
	table.insert(r_list, item.."-recipe")
	table.insert(r_list, item.."_recipe")
	if string.find(item,"-") then
		table.insert(r_list, string.gsub(item,"(-)","_").."")
		table.insert(r_list, string.gsub(item,"(-)","_").."-recipe")
		table.insert(r_list, string.gsub(item,"(-)","_").."_recipe")
	end
	if string.find(item,"_") then
		table.insert(r_list, string.gsub(item,"(_)","-").."")
		table.insert(r_list, string.gsub(item,"(_)","-").."-recipe")
		table.insert(r_list, string.gsub(item,"(_)","-").."_recipe")
	end
	
	for _,v in pairs(r_list) do
		if data.raw.recipe[v] then
			if item ~= v then log(f("FIND RECIPE (%s) for %s",v,item)) end
			return v
		end
	end
	
	if not recipe and brute then
		for _name,_data in pairs(data.raw.recipe) do
			if _data.result then
				if (type(_data.result) == "table" and _data.result.name == item)
				or (type(_data.result) == "string" and _data.result == item) then
					log(f("BRUTE RECIPE (%s) for %s",_name,item))
					return _name
				end
			elseif _data.results and type(_data.results) == "table" then
				for _,v in pairs(_data.results) do
					if v.name and v.name == item then
						log(f("BRUTE RECIPE (%s) for %s",_name,item))
						return _name
					end
				end
			end
		end
	end
	
	return item
end

function zgc.add_recipe_to_tech(t,r)
	
	local _r = zgc.find_recipe(r)
	
	if data.raw.recipe[_r] then
log(f('RECIPE2TECH  "%s"',_r))
		data.raw.recipe[_r].enabled = false
		data.raw.technology[t].enabled = true
		data.raw.technology[t].hidden = false
		zgc.t_add_recipe_unlock(t,_r)
	else
log(f('[[RECIPE2TECH FAIL]] "%s"',_r))
	end
	
end

function zgc.add_newRessource_min_max(main_source, it, mn, mx, pb, it2, mn2, mx2, pb2)
	
	if not data.raw.item[it] then return end
	
	local _res1 = {
		type = "item",
		name = it,
		amount_min = mn,
		amount_max = mx,
		probability = pb
	}
	local _res2 = {
		type = "item",
		name = it2,
		amount_min = mn2,
		amount_max = mx2,
		probability = pb2
	}
	
	if main_source == "raw-wood" then
		for k,v in pairs(data.raw.tree) do
			if type(data.raw.tree[k].minable) == "table" then
				if  zgc.new_ressourse_list[k] == nil then zgc.new_ressourse_list[k] = {} end
				
				if type(data.raw.tree[k].minable.results) == "table" then
					for _,v in pairs(data.raw.tree[k].minable.results) do
						table.insert(zgc.new_ressourse_list[k],v) end
					table.insert(zgc.new_ressourse_list[k],_res1)
					if it2 ~= nil and data.raw.item[it2] then table.insert(zgc.new_ressourse_list[k],_res2) end
					
				elseif data.raw.tree[k].minable.result ~= nil then
					local count = data.raw.tree[k].minable.count or 2
					table.insert(zgc.new_ressourse_list[k],{
						type = "item",
						name = "raw-wood",
						amount_min = data.raw.tree[k].minable.amount_min or math.ceil(count/2),
						amount_max = data.raw.tree[k].minable.amount_max or count,
						probability = 1
					})
					table.insert(zgc.new_ressourse_list[k],_res1)
					if it2 ~= nil and data.raw.item[it2] then table.insert(zgc.new_ressourse_list[k],_res2) end
				end
			end
		end
	elseif data.raw.resource[main_source] and type(data.raw.resource[main_source].minable) == "table" then
		local source_col = {main_source, main_source.."__tm", "infinite-"..main_source, "infinite-"..main_source.."__tm"}
		for _,source in pairs(source_col) do if data.raw.resource[source] then
			if type(data.raw.resource[source].minable.results) == "table" then
				zgc.new_ressourse_list[source] = table.deepcopy(data.raw.resource[source].minable.results)
			else
				zgc.new_ressourse_list[source] = zgc.new_ressourse_list[source] or {}
				local count = data.raw.resource[source].minable.count or 2
				table.insert(zgc.new_ressourse_list[source],{
					type = "item",
					name = main_source,
					amount_min = data.raw.resource[source].minable.amount_min or math.ceil(count/2),
					amount_max = data.raw.resource[source].minable.amount_max or count,
					probability = 1
				})
			end
			table.insert(zgc.new_ressourse_list[source],_res1)
			if it2 ~= nil and data.raw.item[it2] then table.insert(zgc.new_ressourse_list[source],_res2) end
		end end
	end
end

function zgc.add_newRessource_finalize()
	for k,v in pairs(data.raw.tree) do
		if zgc.new_ressourse_list[k] ~= nil then
			v.minable.result = nil
			v.minable.count = nil
			v.minable.results = {}
			v.minable.results = table.deepcopy(zgc.new_ressourse_list[k])
		end
	end
	
	for k,v in pairs(data.raw.resource) do
		if zgc.new_ressourse_list[k] ~= nil then
			v.minable.result = nil
			v.minable.count = nil
			v.minable.results = {}
			v.minable.results = table.deepcopy(zgc.new_ressourse_list[k])
		end
	end
	
end

function zgc.generate_main_groups()
	local c = 0
	local z = ""
	for _,g in pairs(zgc.grp_list) do c=c+1
		if c<10 then z="0" else z="" end
		zgc.add_main_group(g)
	end
end

function zgc.add_main_group(name,order)
	local order = order or ""
	data:extend({{
		type = "item-group",
		name = "zgc-"..name,
		order = "0 0 zgc-"..order,
		inventory_order = "0 0 zgc-"..order,
		icon = "__ZGroupChange__/graphics/icons/cat/"..name..".png",
	}})
end

function zgc.ig(name)
	return data.raw["item-group"][name] or data.raw["item-group"]["zgc-"..name] or nil
end
function zgc.isg(name)
	return data.raw["item-subgroup"][name] or data.raw["item-subgroup"]["zgc-"..name] or nil
end

function zgc.resort_main_groups(que)
	local cnt = 1
	for r=1,5 do for c=1,6 do
		if zgc.mgq[r] and zgc.mgq[r][c] then
			zgc.group_order("zgc-"..zgc.mgq[r][c], "0 0 zgc-"..r..c)
		elseif que and que[cnt] then
			zgc.group_order("zgc-"..que[cnt], "0 0 zgc-"..r..c)
			cnt = cnt+1
		else break end
	end end
end

function zgc.get_main_group(name)
	local name = string.sub(string.match(name,"-%w*"),2) or name
	for k,_ in pairs(data.raw["item-group"]) do
		if string.find(k,name) and string.sub(k,1,4) == "zgc-" then return k end
	end
end

function zgc.get_group_name(name)
	
	if data.raw["item-subgroup"][name] then return name end
	
	local _name = "zgc-"..string.sub(name,3)
	if data.raw["item-subgroup"][_name] then return _name end
	
	
	local order = string.sub(name,string.find(name, "-", 5)+1)
	if tonumber(order) < 10 then order = '0'..order end
	if string.find(name, "trains") then order = "t "..order end
	if string.find(name, "vehicles") then order = "v "..order end
	
	if string.find(_name,"trains") or string.find(_name,"vehicles") then 
		_name = string.gsub(_name,"(trains)(vehicles)", "trains-vehicles")
	end
	
	local main_group = zgc.get_main_group(_name)
	
	if main_group then
log(f("ADD NEW SUB GROUP [%s] for %s",_name,main_group))
		data.raw["item-subgroup"][_name] = {
			type = "item-subgroup",
			name = _name,
			group = main_group,
			order = order
		}
	end
	
	return _name
end

function zgc.group_order(g_name,order)
	if data.raw["item-group"][g_name] then
		data.raw["item-group"][g_name].order = order
		data.raw["item-group"][g_name].inventory_order = order
	end
end

function zgc.set_icon(item,ico)
	
	local typeof = zgc.i_get_type(item) or "item"
	local recipe = zgc.find_recipe(item)
	
	if data.raw[typeof][item] then
		data.raw[typeof][item].icon = ico
	end
	if data.raw.recipe[recipe] then
		data.raw.recipe[recipe].icon = ico
	end
end

