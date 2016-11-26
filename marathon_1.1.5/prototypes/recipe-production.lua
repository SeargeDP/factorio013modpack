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
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"iron-plate", 50},
    },
    result = "electric-mining-drill",
  },
  {
    type = "recipe",
    name = "steel-furnace",
    enabled = false,

    energy_required = 10,
    ingredients = {
      {"steel-plate", 20},
      {"stone-brick", 10},
    },
    result = "steel-furnace",
  },
  {
    type = "recipe",
    name = "assembling-machine-1",
    enabled = false,

    ingredients = {
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"iron-plate", 20},
    },
    result = "assembling-machine-1",
  },
  {
    type = "recipe",
    name = "assembling-machine-2",
    enabled = false,

    ingredients = {
      {"iron-plate", 20},
      {"electronic-circuit", 10},
      {"iron-gear-wheel", 10},
      {"assembling-machine-1", 1},
    },
    result = "assembling-machine-2",
  },
  {
    type = "recipe",
    name = "boiler",

    ingredients = {
      {"stone-furnace", 4},
      {"pipe", 5},
    },
    result = "boiler",
  },
  {
    type = "recipe",
    name = "steam-engine",

    energy_required = 60,
    ingredients = {
      {"iron-gear-wheel", 20},
      {"pipe", 25},
      {"iron-plate", 50},
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
      {"copper-plate", 25},
    },
    result = "solar-panel",
  },
  {
    type = "recipe",
    name = "accumulator",
    enabled = false,

    energy_required = 20,
    ingredients = {
      {"iron-plate", 5},
      {"battery", 10},
    },
    result = "accumulator",
  },
})
