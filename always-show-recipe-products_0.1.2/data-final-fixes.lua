require("config")

-- For debug only.
local DEBUG = false
local DEBUG_ENFORCE_PRODUCT_EXIST = false

-- All possible data raw types for items, used for searching the recipe product by product name.
local possible_data_raw_types_for_items =
{
	-- Always search in these categories first.
	"item",
	"item-with-entity-data",	-- 0.13
	"item-with-label",			-- 0.13
	"item-with-inventory",		-- 0.13
	"selection-tool",			-- 0.13
	
	-- Then these.
	"ammo",
	"armor",
	"blueprint",
	"blueprint-book",			-- 0.13
	"capsule",
	"deconstruction-item",
	"fluid",
	"gun",
	"mining-tool",
	"module",
	"rail-planner", 			-- 0.13
	"repair-tool",
	"rocket-silo-rocket",
	"tool"
}

-- Returns the product according to the given product name.
-- If no such product is found, nil will be returned.
local function get_product_by_product_name(product_name)
	for _, raw_type in pairs(possible_data_raw_types_for_items) do
		local raw = data.raw[raw_type]
		if raw then
			local product = raw[product_name]
			if product then
				return product
			end
		end
	end
	return nil
end

-----

-- All possible data types for entities, used for searching the entity by entity name.
local possible_data_raw_types_for_entities =
{
	"accumulator",
	"ammo-turret",
	"arithmetic-combinator",
	"assembling-machine",
	"beacon",
	"boiler",
	"car",
	"cargo-wagon",
	"combat-robot",
	"constant-combinator",
	"construction-robot",
	"container",
	"curved-rail",
	"decider-combinator",
	"electric-energy-interface",	-- 0.13
	"decorative",
	"electric-pole",
	"electric-turret",
	"fish",
	"fluid-turret",					-- 0.13
	"furnace",
	"gate",
	"generator",
	"inserter",
	"lab",
	"lamp",
	"land-mine",	
	"loader",						-- 0.13
	"locomotive",
	"logistic-container",
	"logistic-robot",
	"market",
	"mining-drill",
	"offshore-pump",
	"pipe",
	"pipe-to-ground",
	"player",
	"player-port",
	"power-switch",					-- 0.13
	"pump",
	"radar",
	"rail-chain-signal",
	"rail-signal",
	"resource",
	"roboport",
	"rocket-defense",
	"rocket-silo",
	"simple-entity",
	"smart-container",
	"solar-panel",
	"splitter",
	"storage-tank",
	"straight-rail",
	"train-stop",
	"transport-belt",
	"underground-belt", 			-- 0.13, changed from "transport-belt-to-ground",
	"turret",
	"unit",
	"unit-spawner",
	"wall"
}

-- Returns the entity according to the given name of place result of a product.
-- If no such entity is found, nil will be returned.
local function get_entity_by_product_place_result(place_result_name)
	for _, raw_type in pairs(possible_data_raw_types_for_entities) do
		local raw = data.raw[raw_type]
		if raw then
			local entity = raw[place_result_name]
			if entity then
				return entity
			end
		end
	end
	return nil
end

-----

-- All possible data raw types for items, used for searching the equipment by equipment name.
local possible_data_raw_types_for_equipments =
{
	"active-defense-equipment",
	"battery-equipment",
	"energy-shield-equipment",
	"generator-equipment",
	"movement-bonus-equipment",
	"night-vision-equipment",
	"roboport-equipment",
	"solar-panel-equipment"
}

-- Returns the equipment according to the given name of placed-as-equipment result of a product.
-- If no such equipment is found, nil will be returned.
local function get_equipment_by_product_placed_as_equipment_result(place_result_name)
	for _, raw_type in pairs(possible_data_raw_types_for_equipments) do
		local raw = data.raw[raw_type]
		if raw then
			local equipment = raw[place_result_name]
			if equipment then
				return equipment
			end
		end
	end
	return nil
end

----

-- Returns the desired recipe localised name according to the given product, place result entity and place result equipment
local function get_recipe_localised_name_by_product(recipe, product, place_result_entity, place_result_equipment)
	-- Note: the game engine used its own way to determine recipe name based on localisation key existence, it is impossible for us to re-create such behaviour,
	-- see this: https://forums.factorio.com/viewtopic.php?f=28&t=33802
	-- So, here lies a known issue: some recipe names will appear different when this mod is turned on.
	-- The same goes to recipe descriptions.
	
	-- If the product has localised name, use it.
	if product.localised_name then
		return product.localised_name
	end
	
	-- If product is fluid, use the fluid name locale.
	if product.type == "fluid" then
		return {"fluid-name." .. product.name}
	end
	
	-- If the product can place antity, use the name of such entity.
	if place_result_entity then
		-- If the entity has localised name, use it.
		if place_result_entity.localised_name then
			return place_result_entity.localised_name
		else
			-- Otherwise, use the locale for the entity name instead.
			return {"entity-name." .. place_result_entity.name}
		end
	end
	
	-- If the product can place equipment, use the name of such equipment.
	if place_result_equipment then
		-- If the equipment has localised name, use it.
		if place_result_equipment.localised_name then
			return place_result_equipment.localised_name
		else
			-- Otherwise, use the locale for the equipment name instead.
			return {"equipment-name." .. place_result_equipment.name}
		end
	end
	
	-- Last resort. Use the locale for item name.
	return {"item-name." .. product.name}
end

-- Makes the product of the given recipe visible.
local function make_recipe_product_visible(recipe)
	-- Adding main_product will make the product visible.
	local main_product = recipe.main_product
	if main_product ~= nil and main_product == "" then
		-- Already visible due to empty main_product.
		return
	end
	if recipe.results ~= nil then
		local result_count = 0
		for _, result in pairs(recipe.results) do
			result_count = result_count + 1
			if result_count > 1 then
				-- Also already visible due to multiple results.
				return
			end
		end
	end

	-- But setting main_product to empty string will require the recipe icon, subgroup to be set explicitly.
	-- We will also need to assign the product's order back to the recipe order because it can no longer get data from its "main_product".
	-- Same goes to the recipe name if the recipe has no localised_name, so we will need the product's localised name.
	
	-- Get the product prototype name.
	local product_name = nil
	if recipe.result then
		product_name = recipe.result
	elseif recipe.results then
		if recipe.results[1] then
			-- The standard format of each result is {type = "item/fluid", name = "foo", amount = 10}
			product_name = recipe.results[1].name
			if product_name == nil then
				-- But don't know why sometimes the format is {[1] = "foo", [2] = 10}
				-- Because type does not matter?
				for _, val in pairs(recipe.results[1]) do
					if type(val) == "string" and val ~= "item" and val ~= "fluid" then
						product_name = val
						break
					end
				end
			end
		end
	end
	
	if product_name == nil then
		-- No product at all.
		if DEBUG_ENFORCE_PRODUCT_EXIST then
			error("Cannot find product name for recipe: " .. recipe.name)
		end
		return
	end

	-- We know the product name now, find the actual product.
	local product = get_product_by_product_name(product_name)
	if product == nil then
		-- Cannot find the product.
		if DEBUG then
			error("No product found for recipe: " .. recipe.name .. ", product name: " .. product_name)
		end
		return
	end
	
	-- Check whether we should continue according to the config.
	-- Get the place result entity and/or equipment first.
	local place_result_entity = nil
	local place_result_name = product.place_result
	if place_result_name and place_result_name ~= "" then
		place_result_entity = get_entity_by_product_place_result(place_result_name)
		if not place_result_entity then
			if DEBUG then
				error("Product " .. product.name .. " from recipe: " .. recipe.name .. " has place result " .. place_result_name .. " but we cannot find it.")
			end
		end
	end
	local place_result_equipment = nil
	place_result_name = product.placed_as_equipment_result
	if place_result_name and place_result_name ~= "" then
		place_result_equipment = get_equipment_by_product_placed_as_equipment_result(place_result_name)
		if not place_result_equipment then
			if DEBUG then
				error("Product " .. product.name .. " from recipe: " .. recipe.name .. " has placed-as-equipment result " .. place_result_name .. " but we cannot find it.")
			end
		end
	end
	local can_place_as_tile = product.place_as_tile ~= nil and product.place_as_tile.result ~= nil
	
	-- Check.
	-- Container recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_container_recipes then
		if place_result_entity and (place_result_entity.type == "container" or place_result_entity.type == "logistic-container") then
			return
		end
	end
	-- Electric pole recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_electric_pole_recipes then
		if place_result_entity and place_result_entity.type == "electric-pole" then
			return
		end
	end
	-- Car, tank and locomotive recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_vehicle_recipes then
		if place_result_entity and (place_result_entity.type == "car" or place_result_entity.type == "tank" or place_result_entity.type == "locomotive") then
			return
		end
	end
	-- Roboport recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_roboport_recipes then
		if place_result_entity and place_result_entity.type == "roboport" then
			return
		end
	end
	-- Tile recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_tile_recipes then
		if can_place_as_tile then
			return
		end
	end
	
	----
	
	-- Mining tool recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_mining_tool_recipes then
		if product.type == "mining-tool" then
			return
		end
	end
	-- Repair tool recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_repair_tool_recipes then
		if product.type == "repair-tool" then
			return
		end
	end
	-- Boiler recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_boiler_recipes then
		if place_result_entity and place_result_entity.type == "boiler" then
			return
		end
	end
	-- Steam engine, solar panel, accumulator recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_generator_recipes then
		if place_result_entity and (place_result_entity.type == "generator" or place_result_entity.type == "solar-panel" or place_result_entity.type == "accumulator") then
			return
		end
	end
	-- Mining drill recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_mining_drill_recipes then
		if place_result_entity and place_result_entity.type == "mining-drill" then
			return
		end
	end
	-- Furnace. assembling machine, oil refinery, chemical plant and rocket silo recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_crafting_machine_recipes then
		if place_result_entity and (place_result_entity.type == "furnace" or place_result_entity.type == "assembling-machine" or place_result_entity.type == "rocket-silo") then
			return
		end
	end
	-- Module recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_module_recipes then
		if product.type == "module" then
			return
		end
	end
	
	----
	
	-- Fuel recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_fuel_recipes then
		if product.fuel_value ~= nil then
			return
		end
	end
	
	----
	
	-- Gun recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_gun_recipes then
		if product.type == "gun" then
			return
		end
	end
	-- Ammo recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_ammo_recipes then
		if product.type == "ammo" then
			return
		end
	end
	-- Capsule and grenade recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_capsule_recipes then
		if product.type == "capsule" then
			return
		end
	end	
	-- Armor recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_armor_recipes then
		if product.type == "armor" then
			return
		end
	end
	-- Equipment recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_equipment_recipes then
		if place_result_equipment then
			return
		end
	end	
	-- Turret recipes.
	if always_show_recipe_products_config.ignore_all_following_recipes or always_show_recipe_products_config.ignore_turret_recipes then
		if place_result_entity and (place_result_entity.type == "turret" or place_result_entity.type == "ammo-turret" or place_result_entity.type == "electric-turret" or place_result_entity.type == "fluid-turret") then
			return
		end
	end
	-- Finished checking.
	
	-- Check if we have the essential items before actually change the recipe.
	if recipe.icon == nil then
		if product.icon == nil then
			-- We need icon, but no icon is found.
			if DEBUG then
				error("Cannot find product icon for recipe: " .. recipe.name .. ", from product: " .. product_name)
			end
			return
		end
	end
	
	-- Set icon.
	if recipe.icon == nil then
		recipe.icon = product.icon
	end
	-- Set subgroup.
	if recipe.subgroup == nil then
		local product_subgroup = product.subgroup
		if product_subgroup == nil then
			-- In some rare cases, the product has no subgroup.
			-- If such product is a fluid, put it in the "fluid" subgroup.
			if product.type == "fluid" then
				product_subgroup = "fluid"
			else
				-- Otherwise, unknown.
				-- (This may break some mods visually)
				product_subgroup = "other"
			end
		end
		recipe.subgroup = product_subgroup
	end
	-- Set order. Not as important as subgroup, just want to keep the original order.
	if recipe.order == nil then
		recipe.order = product.order
	end
	
	-- Set recipe localised name.
	recipe.localised_name = get_recipe_localised_name_by_product(recipe, product, place_result_entity, place_result_equipment)
	-- Set recipe localised description.
	if recipe.localised_description == nil then
		recipe.localised_description = {"item-description." .. product.name}
	end

	-- Make the product visible.
	recipe.main_product = ""
end

-- Loop through all recipes. Make their products visible.
for _, recipe in pairs(data.raw["recipe"]) do
	make_recipe_product_visible(recipe)
end