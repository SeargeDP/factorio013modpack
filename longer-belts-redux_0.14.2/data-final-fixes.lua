require("config")
local floor, insert = math.floor, table.insert

local scratch, distance

local belts, underbelts = data.raw["transport-belt"],data.raw["underground-belt"]

scratch = underbelts["underground-belt"]

local DISTCONST = ((scratch.underground_distance or 5)+1) / scratch.speed

local underground, aboveground, aboveitem = {},{},{}

for ename,edata in pairs(belts) do
	aboveground[edata.minable.result]={entity=ename,dist=floor(edata.speed* DISTCONST)}
end

for ename, edata in pairs(underbelts) do
	underground[edata.minable.result]={entity=ename,dist=floor(edata.speed* DISTCONST)}
end

for iname,idata in pairs(data.raw.item) do
	scratch = idata.place_result
	if scratch then
		if aboveground[scratch] then
			if aboveground[scratch].entity ~= scratch then aboveground[scratch]=nil end
		elseif underground[scratch] then
			if underground[scratch].entity ~= scratch then underground[scratch]=nil end
		end
	end
end

scratch={}
for iname,info in pairs(aboveground) do
	if aboveitem[info.dist] then
		scratch[info.dist]=true
	else
		aboveitem[info.dist]=iname
	end
end
for k in pairs(scratch) do aboveitem[k]=nil end

for item,info in pairs(underground) do
	if not aboveitem[info.dist] then
		underground[item]=nil
	else
		underbelts[info.entity].max_distance = info.dist-1
	end
end


local add
if UGB_REDUX_CONFIG.addBeltToRecipe then 
	for rname,recipe in pairs(data.raw.recipe) do
		if recipe.result then
			scratch = underground[recipe.result]
			if scratch then
				distance=scratch.dist
				add=aboveitem[distance]
				for _,ing in pairs(recipe.ingredients) do
					scratch = ing[1] or ing.name
					if scratch==add then add=ing end
					if aboveground[scratch] then
						distance = distance- (ing[2] or ing.amount)
					else
						scratch=underground[scratch]
						if scratch then
							distance = distance - scratch.dist * (ing[2] or ing.amount)/2
						end
					end
				end
				if distance>0 then
					distance=floor(distance+.9)
					if type(add)=="table" then
						if add[1] then
							add[2]=add[2]+distance
						else
							add.amount=add.amount+distance
						end
					else
						if recipe.ingredients[1][1] then
							insert(recipe.ingredients, {add, distance})
						else
							insert(recipe.ingredients, {type="item", name=add, amount=distance})
						end
					end
				end
			end
		end
	end
end
