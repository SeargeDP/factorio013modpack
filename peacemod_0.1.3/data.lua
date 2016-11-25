require("config")
require("prototypes.alien-ore")
require("prototypes.alien-shard")
require("prototypes.alien-goo")
require("prototypes.alien-artifact")

local function RemoveRecipe(recipe)
	--Remove the recipe
	if data.raw["recipe"][recipe] then
		data.raw["recipe"][recipe] = null
	end
	--Remove all unlocks for recipe in tech tree
	for i, technology in pairs(data.raw["technology"]) do
		if technology.effects then
			for j, effect in pairs(technology.effects) do
				if effect.recipe == recipe then
					technology.effects[j] = null
				end
			end	
		end
	end	
end

if enemiesSpawn==false then
	-- Disable the enemies at start and during chunk generation
	for index, unitspawner in pairs(data.raw["unit-spawner"]) do
		if unitspawner.autoplace.force == "enemy" then
			unitspawner.autoplace = null
		end
	end
	for index, turret in pairs(data.raw["turret"]) do
		if turret.autoplace.force == "enemy" then
			turret.autoplace = null
		end
	end

	-- Make sure no enemy will evolve or spawn (not sure if needed but just in case)
	data.raw["map-settings"]["map-settings"].enemy_evolution.enabled = false;
	data.raw["map-settings"]["map-settings"].enemy_expansion.enabled = false;

	-- Remove enemy options from map generator dialog
	data.raw["autoplace-control"]["enemy-base"] = null
end

if removeMilitaryTech==true then
	for i=1,6 do
		data.raw["technology"]["bullet-damage-" .. i] = null
	end
	for i=1,6 do
		data.raw["technology"]["bullet-speed-" .. i] = null
	end
	for i=1,20 do
		data.raw["technology"]["follower-robot-count-" .. i] = null
	end
	for i=1,5 do
		data.raw["technology"]["combat-robot-damage-" .. i] = null
        
	end
	for i=1,6 do
		data.raw["technology"]["gun-turret-damage-" .. i] = null
	end
	for i=1,6 do
		data.raw["technology"]["laser-turret-damage-" .. i] = null
	end
	for i=1,6 do
		data.raw["technology"]["laser-turret-speed-" .. i] = null
	end
	for i=1,5 do
		data.raw["technology"]["rocket-damage-" .. i] = null
	end
	data.raw["technology"]["combat-robotics"] = null
	data.raw["technology"]["combat-robotics-2"] = null
	data.raw["technology"]["combat-robotics-3"] = null
	data.raw["technology"]["personal-laser-defense-equipment"] = null
	data.raw["technology"]["discharge-defense-equipment"] = null
	data.raw["technology"]["land-mine"] = null
	data.raw["technology"]["tanks"] = null
	data.raw["technology"]["laser"] = null
    data.raw["technology"]["cluster-grenade"] = null
	data.raw["technology"]["explosive-rocketry"] = null
	data.raw["technology"]["turrets"] = null
	data.raw["technology"]["laser-turrets"] = null
	
	RemoveRecipe("pistol")
	RemoveRecipe("basic-bullet-magazine")
	RemoveRecipe("submachine-gun")
	RemoveRecipe("piercing-bullet-magazine")
	RemoveRecipe("grenade")
	RemoveRecipe("poison-capsule")
	RemoveRecipe("slowdown-capsule")
	RemoveRecipe("rocket-launcher")
	
	for index, prerequisite in pairs(data.raw["technology"]["military-3"].prerequisites) do
		if prerequisite == "laser" then
			data.raw["technology"]["military-3"].prerequisites[index] = null
		end
	end
	
end

-- Simple or advanced mining
if simpleMode==true then
	data.raw["resource"]["alien-ore"].minable.result = "alien-artifact"
	data.raw["resource"]["alien-ore"].minable.mining_time = 20
	data.raw["resource"]["alien-ore"].autoplace.richness_base = 1
	data.raw["resource"]["alien-ore"].autoplace.richness_multiplier = 20
	data.raw["recipe"]["alien-shard"] = null
else
	data.raw["item"]["alien-artifact"].order = "h[alien-artifact]-b[alien-artifact]"
	
	data.raw["technology"]["alien-technology"].prerequisites = {"automation-3"}
	data.raw["technology"]["alien-technology"].unit.ingredients = {
		{"science-pack-1", 1},
		{"science-pack-2", 1},
		{"science-pack-3", 1}
	}
	data.raw["technology"]["alien-technology"].unit.count = 150
	data.raw["technology"]["alien-technology"].effects = {
		{
			type = "unlock-recipe",
			recipe = "alien-science-pack"
		},
		{
			type = "unlock-recipe",
			recipe = "alien-shard"
		},
		{
			type = "unlock-recipe",
			recipe = "alien-goo"
		},
		{
			type = "unlock-recipe",
			recipe = "alien-artifact"
		}
	}

end
