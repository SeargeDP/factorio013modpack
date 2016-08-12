-- If set to true, the idle power drain will be removed from all Inserters.
bobmods.config.DrainlessInserters = false

-- If set to true, the idle power drain will be removed from all Laser Turrets.
bobmods.config.DrainlessLaserTurrets = false

-- If set to true, Ore acts like Oil in that it doesn't disapar, but mining speed slows as it depleats.
bobmods.config.InfiniteOre = false

-- Sets the new player inventory size
bobmods.config.InventorySize = 90



-- Assembly mod

-- if set to true, new Oil Refineries will be added.
bobmods.config.assembly.OilRefineries = true

-- if set to true, new Chemical Plants will be added.
bobmods.config.assembly.ChemicalPlants = true

-- if set to true, new Electrolysers will be added.
bobmods.config.assembly.Electrolysers = true

-- if set to true, new Furnaces will be added.
bobmods.config.assembly.Furnaces = true

-- if set to true, new Multi-purpose Furnaces will be added.
bobmods.config.assembly.MultipurposeFurnaces = true



-- Enemies mod

-- if set to true, Enemies will drop small versions of Alien Artifacts.
bobmods.config.enemies.EnableSmallArtifacts = true

-- if set to true, New types of Alien Artifacts will drop.
bobmods.config.enemies.EnableNewArtifacts = true



-- Logistics mod

-- If set to true, long versions of Burner, Fast, Smart and Express inserters are added.
bobmods.config.logistics.LongInserters = true

-- If set to true, Near (near side of standard belt) and Far (near side of long handed belt) inserters are added. Requires LongInserters to be true
bobmods.config.logistics.NearInserters = true

-- If set to true, short in long out, and long in short out combinations of Near, Standard, Far and Long inserters are added. Requires LongInserters and NearInserters to be true.
bobmods.config.logistics.MoreInserters = true


-- If set to true, the Tier 5 "Extremely Fast Transport Belt" Tier of Belt, Splitter and Underground belt will be enabled, and able to be researched.
bobmods.config.logistics.ExtremelyFastBelt = true


-- If set to true, the recipe for the base game Roboport MK1 is updated to the modular recipe.
bobmods.config.logistics.RoboportRecipeUpdate = true

-- If set to true, the Flying robot frame intermediates will exist for use in recipes.
bobmods.config.logistics.FlyingRobotFrames = true

-- If set to true, the Logistic/Construction robot tool/brain intermediates will exist for use in recipes.
bobmods.config.logistics.RobotParts = true

-- If set to true, Logistic/Construction robots require the previous tier to craft.
bobmods.config.logistics.RobotRequirePrevious = true

-- Change robot related stats.
-- (Values set in overide.lua, defaults set to be pre 0.12.10 stats (multiplied to match 0.13 defaults))
bobmods.config.logistics.OverideRobotValues = false


-- Mining mod

-- If set to true, new better mining axes are available.
bobmods.config.mining.MiningAxes = true

-- If set to true, new upgradable mining drills are available.
bobmods.config.mining.MiningDrills = true

-- If set to true, new upgradable large area mining drills are available.
bobmods.config.mining.AreaDrills = true

-- If set to true, new upgradable pumpjacks are available.
bobmods.config.mining.Pumpjacks = true

-- If set to true, water mining pumpjacks are available.
bobmods.config.mining.WaterMiners = true


-- Modules mod

-- If enabled, then Merged modules and research are enabled. (This turns on all 3 types)
bobmods.config.modules.EnableMergedModules = true

-- if enabled, then the specific merged module with be enabled.
bobmods.config.modules.EnableRawSpeedModules = false
bobmods.config.modules.EnableGreenModules = false
bobmods.config.modules.EnableRawProductivityModules = false

-- If enabled, then God modules and research are enabled.
bobmods.config.modules.EnableGodModules = false


-- If enabled, Productivity modules suffer speed penalty. Raw productivity modules also cost Speed circuits.
bobmods.config.modules.ProductivityHasSpeed = false

-- If enabled, the Beacons can transmit the productivity effect.
bobmods.config.modules.BeaconCanTransmitProductivity = false


-- Stats for the modules per level.
bobmods.config.modules.SpeedPerLevel = 0.2
bobmods.config.modules.PollutionPerLevel = 0.15
bobmods.config.modules.ConsumptionPerLevel = 0.1
bobmods.config.modules.ProductivityPerLevel = 0.05
-- Specifically for the Productivity modules.
bobmods.config.modules.SpeedPerProductivityLevel = 0.05
-- Specifically for the Polution creating modules.
bobmods.config.modules.PollutionCreatePerLevel = 0.5

-- Bonus stats for first module.
bobmods.config.modules.SpeedBonus = 0
bobmods.config.modules.PollutionBonus = 0
bobmods.config.modules.ConsumptionBonus = 0
bobmods.config.modules.ProductivityBonus = 0
-- Specifically for the Productivity modules.
bobmods.config.modules.ProductivitySpeedBonus = 0.2
-- Specifically for the Polution creating modules.
bobmods.config.modules.PollutionCreateBonus = 0


-- If enabled, modules that effect productivity can only be used on Registered intermediates.
-- Warning: the game will delete any modules that do not match the limits
bobmods.config.modules.EnableProductivityLimitation = true




-- Ores mod

-- if set to true, Stone will apear in larger, richer vains.
bobmods.config.ores.EnhanceStone = true

-- if set to true, Gem ore fields will give the Unsorted Gems resource. If false will give each ore type.
bobmods.config.ores.UnsortedGemOre = false


-- These set the probability of extra items being given from certain resources.
-- if set to true, extra items are given from certain resources.

bobmods.config.ores.LeadGivesNickel = false
bobmods.config.ores.LeadNickelRatio = 0.6

-- if Nickel ore is disabled, but Lead gives Nickel is enabled, Galena will also give Cobalt ore.
bobmods.config.ores.NickelGivesCobalt = false
bobmods.config.ores.NickelCobaltRatio = 0.4

-- Diamonds can be obtained from mining Coal, Ruby, Saphire and Topaz from Bauxite, and Amethyst and Emerald from Quartz
bobmods.config.ores.GemsFromOtherOres = false
bobmods.config.ores.GemProbability = 0.05

-- These set the probability of each type of gem being given.
bobmods.config.gems.RubyRatio = 1
bobmods.config.gems.SapphireRatio = 0.8
bobmods.config.gems.EmeraldRatio = 0.6
bobmods.config.gems.AmethystRatio = 0.5
bobmods.config.gems.TopazRatio = 0.4
bobmods.config.gems.DiamondRatio = 0.2


-- can turn on only. if they're turned on by another mod, they'll stay on.
-- if set to true, the listed ore fields can spawn on maps. new maps will have autoplace control options.
bobmods.config.ores.EnableBauxite = true
bobmods.config.ores.EnableCobaltOre = false
bobmods.config.ores.EnableGemsOre = true
bobmods.config.ores.EnableGoldOre = true
bobmods.config.ores.EnableLeadOre = true
bobmods.config.ores.EnableNickelOre = true
bobmods.config.ores.EnableQuartz = true
bobmods.config.ores.EnableRutile = true
bobmods.config.ores.EnableSilverOre = true
bobmods.config.ores.EnableSulfur = false
bobmods.config.ores.EnableTinOre = true
bobmods.config.ores.EnableTungstenOre = true
bobmods.config.ores.EnableZincOre = true
bobmods.config.ores.EnableWaterOres = true



-- Metals Chemicals and Intermediates mod

-- Reduce cost of Steel
bobmods.config.plates.CheaperSteel = true

-- Change recipe and research costs for the battery.
bobmods.config.plates.BatteryUpdate = true

-- If set to true, this will turn on the old recipes to get water and lithia water from nothing on the water pumps.
bobmods.config.plates.EnableGroundWater = false



-- Warfare mod

-- if enabled you can research tank cannon improvements.
bobmods.config.warfare.TankCannonResearch = true

-- if enabled combat robots will have updated recipes, and a new tier robot.
bobmods.config.warfare.RobotUpdate = true



-- Power mod

-- This will change the fuel efficiency and energy boilers add to water.
--(values in overide.lua, defaults set to pre 0.12.8 stats)
bobmods.config.power.OverideBoilerValues = false

-- This will change the efficiency and water usage of the Steam engine power generators.
--(values in overide.lua, defaults set to pre 0.12.8 stats)
bobmods.config.power.OverideSteamEngineValues = false

