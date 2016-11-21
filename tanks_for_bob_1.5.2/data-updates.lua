--data:extend(
--{
---- Make assembling-machine 3 able to craft tank components
----	{
--		type = "assembling-machine",
--		name = "assembling-machine-3",
--		crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
--	}
--}
--if data.raw.assembling-machine["assembling-machine-3"] then
--	table.insert(data.raw.assembling-machine["assembling-machine-3"].crafting_categories, { "tank-crafting","tank-ammo-component"} )
--	table.insert(data.raw.unit["small-spitter"].loot, {  item = "small-alien-artifact",  count_min = 1,  count_max = 1,  probability = 0.5 } )
--end

function TableConcat(t1,t2)
    for i=1,#t2 do
        t1[#t1+1] = t2[i]
    end
    return t1
end

data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories = TableConcat( data.raw["assembling-machine"]["assembling-machine-3"].crafting_categories, {"tank-crafting","tank-ammo-component"} )
