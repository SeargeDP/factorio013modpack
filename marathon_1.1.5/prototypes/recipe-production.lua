data:extend({
  {
    type = "recipe",
    name = "burner-mining-drill",

    energy_required = 2,
    ingredients = {
      {"iron-gear-wheel", 5},
      {"stone-furnace", 1},
      {"iron-plate", 10},
    },
    result = "burner-mining-drill",
  },
  {
    type = "recipe",
    name = "electric-mining-drill",

    energy_required = 10,
    ingredients = {
      {"electronic-circuit", 20},
      {"iron-gear-wheel", 25},
      {"iron-plate", 100},
    },
    result = "electric-mining-drill",
  },
  {
    type = "recipe",
    name = "steel-furnace",
    enabled = false,

    energy_required = 10,
    ingredients = {
      {"steel-plate", 25},
      {"stone-brick", 10},
    },
    result = "steel-furnace",
  },
  {
    type = "recipe",
    name = "assembling-machine-1",
    enabled = false,

    ingredients = {
      {"electronic-circuit", 25},
      {"iron-gear-wheel", 25},
      {"iron-plate", 25},
    },
    result = "assembling-machine-1",
  },
  {
    type = "recipe",
    name = "assembling-machine-2",
    enabled = false,

    ingredients = {
      {"iron-plate", 100},
      {"electronic-circuit", 25},
      {"iron-gear-wheel", 25},
      {"assembling-machine-1", 1},
    },
    result = "assembling-machine-2",
  },
  {
    type = "recipe",
    name = "boiler",

    ingredients = {
      {"stone-furnace", 5},
      {"pipe", 15},
    },
    result = "boiler",
  },
  {
    type = "recipe",
    name = "steam-engine",

    energy_required = 60,
    ingredients = {
      {"iron-gear-wheel", 100},
      {"pipe", 50},
      {"iron-plate", 100},
    },
    result = "steam-engine",
  },
  {
    type = "recipe",
    name = "solar-panel",
    enabled = false,

    energy_required = 20,
    ingredients = {
      {"steel-plate", 5},
      {"electronic-circuit", 15},
      {"copper-plate", 30},
    },
    result = "solar-panel",
  },
  {
    type = "recipe",
    name = "accumulator",
    enabled = false,

    energy_required = 20,
    ingredients = {
      {"iron-plate", 10},
      {"battery", 10},
    },
    result = "accumulator",
  },
})
