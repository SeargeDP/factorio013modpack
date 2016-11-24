require "config"

----Pollution obsorbtion----
--All Trees EVEN MOD TREES 
for k,tree in pairs(data.raw["tree"]) do
	if tree.emissions_per_tick then
		local Emissions = tree.emissions_per_tick
		tree.emissions_per_tick = Emissions * EmissionsFactor
	end	--trees have negative emissions so they soak up polution
end

----Tree Collision----
--Forest easyer to walk through
if TreeCollision then
	for _,tree in pairs(data.raw["tree"]) do
		tree.collision_box = {{-0.2, -0.2}, {0.2, 0.2}}
	end
end

----Tree Loot----
--Tree drop wood when killed; like rocks drop stone.
if TreeLoot then
	for _,tree in pairs(data.raw["tree"]) do
		tree.loot = {{item = "raw-wood", probability = 1, count_min = 1, count_max = 2}}
		--One Forth to Half of mineable items; just like the rocks.
	end
end

