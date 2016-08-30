
use_custom_order 		= false		-- Set "true" to enable custom order settings. Do not forget to rename template file in ZGroupChange\mods\ from _custom_TEMPLATE.lua >to> _custom_.lua !!

use_graphics_tunnings 	= true		-- Enable graphics tunings like better or fixed sprites

--------------------------------------------------------------------------------------------
--# Balance changes such hiding items, change ingredients of recipes, technology changes #--

z_balance_Ignore_All 	= false		-- If true - ignore any of balance settings below


-----------------------------------------------------
--# List of general balance triggers [true/false] #--

z_balance.vanila		= true
-- New coal recipe from raw-wood

z_balance.dim			= true
-- Change ingredients for transport belts and gold circuit

z_balance.bob			= true
-- Hide Electronic machines
-- Hide items if 5dim version available, ignored otherwise
-- Change nitroglycerin production line (ammo development)
-- Hide 5dim modules if bobmodules available. Replace module-case by solder.

z_balance.angels		= true
-- Hide water void

z_balance.youki			= true
-- Hide not fitted in row additional middle-tier axes
-- Hide Bob's storage tanks in exchange on youki
-- Hide Bob's water miners and add new lithia water recipe for youki's water generator
-- Hide items w/o recipes
-- Hide Bob's radars mk4 and mk5 in exchange on youki

z_balance.other			= true
-- Assign unlocking of flare stack recipes to the oil-processing and oil-processing-2 technology
-- Hide Bob's greenhouse if Bio Industries enabled
-- Hide pointless liquids, generated by Rail Tanker
-- Add new tiers of flow control pipes if 5dim or Bob pipes exsists
-- Assign unlocking of spawn belts recipes to the logistics-3 technology


-----------------------------------------------------------------------------------------
--# List of additional balance triggers (independed from global trigger) [true/false] #--

z_balance.add_trees		= true	-- Add woodpulp and organic dust to trees (depending on enabled mods)
z_balance.add_dirt		= true	-- Add dirt, ash and crushed stone to ores (depending on enabled mods)
z_balance.add_dust		= true	-- Add crushed (Youki) and ore's dust (5dim) to raw materials (depending on enabled mods)
z_balance.add_powder	= true	-- Add powdered ores to raw materials (if angel's processing mod enabled)
z_balance.add_gems		= true	-- Add some minerals to gem ore (if bob ores mod enabled)
z_balance.bob_inserters	= true	-- Filter out only original and (extra)fast inserters if "bob_inserters" mod enabled
z_balance.bob_pipes		= true	-- Hide pipes from non-original resources
z_balance.bob_synthetic	= true	-- Hide synthetic (synthetic-wood, wooden-board-synthetic, etc.)
z_balance.bob_weaponry	= true	-- Hide weapons, ammo and armored trains
z_balance.bob_transport	= true	-- Hide armored trains and tanks
z_balance.angels_bio	= true	-- Hide bio processing line
z_balance.youki_pipe	= true	-- Hide Youki's thin pipes and valve
z_balance.youki_tech	= true	-- Temporary solution while Yuoki have no their own technology
z_balance.other_mini	= false	-- Replace original factories by their mini-versions (mini-machines mod)

