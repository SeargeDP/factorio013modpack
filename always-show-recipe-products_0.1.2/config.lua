-- All configurations about this mod.
always_show_recipe_products_config =
{
	-- Due to technical limitation, this mod cannot replicate the original item info in the following recipes,
	-- like size in chests, crafting speed of assembling machines, damage of turrets, ammos and guns, functions of equipments, etc.
	-- so you will not be able to see such info on recipe tooltips.
	-- By ignoring these recipes, you will get back the item info, but their products will not be shown by this mod.
	
	
	-- Overall --
	-- All of the following recipes.
	-- Use this if you are too tired of checking each of the following options.
	ignore_all_following_recipes = true,
	
	-- Logistics --
	-- Container recipes - storage size.
	ignore_container_recipes = false,
	-- Electric pole recipes - supply area.
	ignore_electric_pole_recipes = false,
	-- Car, tank and locomotive recipes - health, power consumption.
	ignore_vehicle_recipes = false,
	-- Roboport recipes - area.
	ignore_roboport_recipes = false,
	-- Tile recipes - build info, walking speed bonuse.
	ignore_tile_recipes = false,	
	
	-- Production --
	-- Mining tool recipes - mining power, durability.
	ignore_mining_tool_recipes = false,
	-- Repair tool recipes - repair speed, durability.
	ignore_repair_tool_recipes = false,
	-- Boiler recipes - efficiency.
	ignore_boiler_recipes = false,
	-- Steam engine, solar panel, accumulator recipes - maximum power output/input. 
	ignore_generator_recipes = false,
	-- Mining drill recipes - mining area, mining speed, mining power.
	ignore_mining_drill_recipes = false,
	-- Furnace, assembling machine, oil refinery, chemical plant and rocket silo recipes - crafting speed.
	ignore_crafting_machine_recipes = false,
	-- Module recipes - bonuses and penalties.
	ignore_module_recipes = false,
	
	-- Intermediate products --
	-- Fuel recipes - fuel values.
	ignore_fuel_recipes = false,
	
	-- Combat --
	-- Gun recipes - range, damage, attack speed.
	ignore_gun_recipes = false,
	-- Ammo recipes - range, damage.
	ignore_ammo_recipes = false,
	-- Capsule and grenade recipes - range, shooting speed, area of effect size, robot count, robot lifetime, robot range, robot damage.
	ignore_capsule_recipes = false,
	-- Armor recipes - resistances, inventory size bonus, grid size.
	ignore_armor_recipes = false,
	-- Equipment recipes - equipment functions.
	ignore_equipment_recipes = false,
	-- Turret recipes - damage.
	ignore_turret_recipes = false
}