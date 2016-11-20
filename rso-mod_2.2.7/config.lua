
debug_enabled = false
debug_items_enabled = false

region_size = 7	-- alternative mean to control how further away resources would be, default - 256 tiles or 8 chunks
				-- each region is region_size*region_size chunks
				-- each chunk is 32*32 tiles

use_donut_shapes = false		-- setting this to false will remove donuts from possible resource layouts

starting_area_size = 1         	-- starting area in regions, safe from random nonsense

absolute_resource_chance = 0.60 -- chance to spawn an resource in a region
starting_richness_mult = 1		-- multiply starting area richness for resources
global_richness_mult = 1		-- multiply richness for all resources except starting area
global_size_mult = 1			-- multiply size for all ores, doesn't affect starting area

absolute_enemy_chance = 0.25	-- chance to spawn enemies per sector (can be more then one base if spawned)
enemy_base_size_multiplier = 1  -- all base sizes will be multiplied by this - larger number means bigger bases

multi_resource_active = true			-- global switch for multi resource chances
multi_resource_richness_factor = 0.60 	-- any additional resource is multiplied by this value times resources-1
multi_resource_size_factor = 0.90
multi_resource_chance_diminish = 0.6	-- diminishing effect factor on multi_resource_chance

min_amount=250 					-- default value for minimum amount of resource in single pile

richness_distance_factor=0.7 	-- exponent for richness distance factor calculation
size_distance_factor=0.1	   	-- exponent for size distance factor calculation

deterministic = true           	-- set to false to use system for all decisions  math.random

-- mode is no longer used by generation process - it autodetects endless resources
-- endless_resource_mode = false   -- if true, the size of each resource is modified by the following modifier. Use with the endless resources mod.
endless_resource_mode_sizeModifier = 0.80

disableEnemyExpansion = false		-- allows for disabling of in-game biter base building
use_RSO_biter_spawning = true    	-- enables spawning of biters controlled by RSO mod - less enemies around with more space between bases
use_vanilla_biter_spawning = false	-- enables using of vanilla spawning 

biter_ratio_segment=1      --the ratio components determining how many biters to spitters will be spawned
spitter_ratio_segment=1    --eg. 1 and 1 -> equal number of biters and spitters,  10 and 1 -> 10 times as many biters to spitters

useEnemiesInPeaceMod = false -- additional override for peace mod detection - when set to true it will spawn enemies normally, needs to have enemies enabled in peace mod

useStraightWorldMod = false -- enables Straight World mod - actual mod code copied into RSO to make it compatible

ignoreMapGenSettings = false -- stops the default behaviour of reading map gen settings

fluidResourcesFactor = 20 -- temporary factor for calculation of resource %-ages for fluids

useResourceCollisionDetection = true	-- enables avoidace calculations to reduce ores overlaping of each other
resourceCollisionDetectionRatio = 0.8	-- at least this much of ore field needs to be placable to spawn it
resourceCollisionFieldSkip = true		-- determines if ore field should be skipped completely if placement based on ratio failed

-- Angels Ores section
infiniteResourceSpawnThreshold = 0.7	-- should be between 0 and 1 - 0 means all nodes are infinite, 1 or more will result with no infinite nodes
infiniteResourceInStartArea	= false
