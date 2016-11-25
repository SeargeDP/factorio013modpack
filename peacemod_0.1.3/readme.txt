This mod completely removes enemies from the game, allowing the player to play the game in a peaceful way. Enemy loot (alien artifacts) can still be acquired from a new alternative source.

Features:
- No enemy bases and no enemy spawning.
- Most military technologies have been removed for less clutter in tech tree. Some exceptions:
	- Shotguns are kept for rock and tree clearing.
	- Armors are kept for exoskeletons and protection from running trains.
	- Walls ands gates are kept for aesthetics value
	- The rocket defence technology is still available if needed.
- Alien artifacts can be made from a new source: Alien ore. (Amount can be configured on the Map Generation screen)
- Two modes for acquiring Alien artifacts
	- Advanced mode: (Default)
		- Mining an alien ore patch will yield alien ore. 
		- Smelting alien ore will result in alien shards. (Requires Alien technology research) 
		- Combining sulfuric acid and alien ore will result in alien goo. (Requires Alien technology research) 
		- Crafting alien shards with alien goo will result in alien artifacts. (Requires Alien technology research) 
	- Simple mode:
		- Mining an alien ore patch will yield alien artifcats. 

		

Configuration:
You can chnage some parameters in config.lua in the mod folder:

simpleMode:
false(default) = Mined alien ore can be used in new recipes to get alien artifacts.
true = Mining alien ore will directly result in alien artifacts. Mining will be much longer than normal and amount will be more limited. No new recipe is added to the game.

removeMilitaryTech:
true(default) = Most military tech is removed from the game except for some exceptions that still add value to the peaceful game play.
false = No changes are made to tech trees so all technologies are available like in a normal game.

Updated to 0.12 by Secretchaos
Updated to 0.13 by leffe108 and cullyn
