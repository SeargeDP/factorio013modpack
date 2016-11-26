data:extend({
  {
    type = "recipe",
    name = "copper-plate",
    category = "smelting",

    energy_required = 6.33,
    ingredients = {{ "copper-ore", 4}},
    result = "copper-plate",
    result_count = 5,
  },
  {
    type = "recipe",
    name = "iron-plate",
    category = "smelting",

    energy_required = 7,
    ingredients = {{"iron-ore", 4}},
    result = "iron-plate",
    result_count = 5,
  },
  {
    type = "recipe",
    name = "stone-brick",
    category = "smelting",

    energy_required = 7,
    ingredients = {{"stone", 5}},
    result = "stone-brick",
  },
  {
    type = "recipe",
    name = "steel-plate",
    category = "smelting",
    enabled = false,

    energy_required = 27.5,
    ingredients = {{"iron-plate", 10}},
    result = "steel-plate",
  },
})
