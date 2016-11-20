-- Recipes added for Base
data:extend({
  {
    type = "recipe",
    name = "furnace-stone-steel",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {"stone-furnace", 1},
	  {"steel-plate", 8},
	  {"stone-brick", 8}
    },
    result = "steel-furnace"
  },
  {
    type = "recipe",
    name = "furnace-steel-electric",
	energy_required = 7,
    enabled = false,
    ingredients = 
    {
      {"steel-furnace", 1},
      {"steel-plate", 7},
      {"advanced-circuit", 5}
    },
    result = "electric-furnace"
  },
  {
	type = "recipe",
	name = "gun-pistol-submachine",
	energy_required = 4,
	enabled = false,
	ingredients =
	{
		{"pistol", 1},
		{"iron-gear-wheel", 10},
		{"iron-plate", 5}
	},
	result = "submachine-gun"
  },
  {
	type = "recipe",
	name = "shotgun-basic-combat",
	energy_required = 10,
	enabled = false,
	ingredients =
	{
		{"shotgun", 1},
		{"wood", 5},
		{"steel-plate", 12}
	},
	result = "combat-shotgun"
  }
})