-----------------------
--Cross Mod Detection--
-----------------------

if not NE_Buildings_Config then NE_Buildings_Config = {} end
if not NE_Buildings_Config.mod then NE_Buildings_Config.mod = {} end

-----------------------


--Detect Bob's Enemies
if data.raw["unit"]["bob-big-piercing-biter"] ~= nil and data.raw["unit"]["bob-big-electric-spitter"] ~= nil then
	NE_Buildings_Config.mod.BobEnemies=true
else 
	NE_Buildings_Config.mod.BobEnemies=false
end

--Detect Supreme Warfare
if data.raw["technology"]["artillery"] ~= nil and data.raw["technology"]["advanced-artillery"] ~= nil then
	NE_Buildings_Config.mod.SupremeWarfare=true
else 
	NE_Buildings_Config.mod.SupremeWarfare=false
end


--Detect N.E. Enemies
if data.raw["unit"]["small-biter-Mk2"] ~= nil or data.raw["unit"]["small-spitter-Mk2"] ~= nil or data.raw["logistic-container"]["Artifact-collector-area"] ~= nil then
	NE_Buildings_Config.mod.NEEnemies=true
else 
	NE_Buildings_Config.mod.NEEnemies=false
end
