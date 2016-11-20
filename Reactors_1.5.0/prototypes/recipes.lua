data:extend({
  {
    type = "recipe-category",
    name = "fission"
  },
  {
    type = "recipe-category",
    name = "steaming"
  },
  {
    type = "recipe-category",
    name = "water-cooling"
  },
  -- Building recipes
  {
    type = "recipe",
    name = "nuclear-reactor",
    -- category = "advanced-crafting",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"concrete", 50},
      {"steel-plate", 20},
      {"pipe", 25},
      -- {"express-pump", 4},
      {"advanced-circuit", 10}
    },
    result = "nuclear-reactor"
  },
  {
    type = "recipe",
    name = "cooling-tower",
    -- category = "advanced-crafting",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {"concrete", 20},
      {"steel-plate", 10},
      {"pipe", 10},
      {"small-pump", 5}
    },
    result = "cooling-tower"
  },
  {
    type = "recipe",
    name = "steam-turbine",
    -- category = "advanced-crafting",
    enabled = true,
    energy_required = 20,
    ingredients =
    {
      {"steam-engine", 25}
    },
    result = "steam-turbine"
  },
  
  -- Cooling tower water cooling recipe
  {
    type = "recipe",
    name = "water-cooling",
    category = "water-cooling",
    enabled = true,
    hidden = true,
    energy_required = 0.2,
    ingredients =
    {
      {type="fluid", name="water", amount=30}
    },
    results =
    {
      {type="fluid", name="water", amount=25}
    },
    icon = "__base__/graphics/icons/fluid/water.png",
    subgroup = "fluid-recipes",
    order = "z"
  },
  -- Cooling tower steam dummy recipe
  {
    type = "recipe",
    name = "cooling-tower-steam",
    category = "steaming",
    enabled = true,
    hidden = true,
    energy_required = 600,
    ingredients =
    {
      {type="fluid", name="water", amount=0.1}
    },
    results =
    {
      {type="fluid", name="water", amount=0}
    },
    icon = "__base__/graphics/icons/fluid/water.png",
    subgroup = "fluid-recipes",
    order = "z"
  },
  -- Fuel processing
  {
    type = "recipe",
    name = "uranium-slurry",
    icon = "__Reactors__/graphics/icons/uranium-slurry.png",
    subgroup = "fission-products",
    order = "a[uranium]",
    category = "chemistry",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=1},
      {"uranium-ore", 8}
    },
    results =
    {
      {type="fluid", name="uranium-slurry", amount=8}
    }
  },
  -- Fuel enrichment
  {
    type = "recipe",
    name = "uranium-separation",
    icon = "__Reactors__/graphics/icons/uranium-separation.png",
    subgroup = "fission-products",
    order = "b[uranium-separation]",
    category = "chemistry",
    enabled = false,
    energy_required = 30,
    ingredients =
    {
      {type="fluid", name="uranium-slurry", amount=8}
    },
    results =
    {
      {"enriched-fuel", 1},
      {"depleted-uranium", 7}
    }
  },
  {
    type = "recipe",
    name = "mox-fuel",
    icon = "__Reactors__/graphics/icons/mox.png",
    subgroup = "fission-products",
    order = "d[mox]",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"depleted-uranium", 3},
      {"plutonium", 1}
    },
    results =
    {
      {"enriched-fuel", 4}
    }
  },
  
  -- Waste processing
  {
    type = "recipe",
    name = "fuel-reprocessing",
    icon = "__Reactors__/graphics/icons/fuel-reprocessing.png",
    subgroup = "fission-products",
    order = "c[fuel-reprocessing]",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
      {type="fluid", name="sulfuric-acid", amount=0.5},
      {"spent-fuel", 8}
    },
    results =
    {
      {"plutonium", 1},
      {type="fluid", name="uranium-slurry", amount=4}
    }
  },
  
  -- Reactor fuel cycles
  {
    type = "recipe",
    name = "fission-reaction",
    icon = "__Reactors__/graphics/icons/fission-reaction.png",
    order = "a",
    subgroup = "fission",
    category = "fission",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"enriched-fuel", 1}
    },
    results =
    {
      {"spent-fuel", 1}
    }
  },
  {
    type = "recipe",
    name = "breeder-reaction",
    icon = "__Reactors__/graphics/icons/breeder-reaction.png",
    order = "b",
    subgroup = "fission",
    category = "fission",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {"enriched-fuel", 1},
      {"depleted-uranium", 7}
    },
    results =
    {
      {"plutonium", 1},
      {"spent-fuel", 7}
    }
  },
  -- Ammo
  {
    type = "recipe",
    name = "du-magazine",
    enabled = false,
    energy_required = 5,
    ingredients =
    {
      {"depleted-uranium", 1},
      {"copper-plate", 1},
      {"steel-plate", 1}
    },
    result = "du-magazine"
  },
  -- Equipment
  {
    type = "recipe",
    name = "plutonium-core",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"plutonium", 1},
      {"steel-plate", 5}
    },
    result = "plutonium-core"
  },
  {
    type = "recipe",
    name = "rtg-equipment",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"plutonium-core", 5},
      {"advanced-circuit", 2},
      {"copper-plate", 10}
    },
    result = "rtg-equipment"
  },
  {
    type = "recipe",
    name = "plutonium-artifact",
    icons =
    {
      {
        icon = data.raw["item"]["alien-artifact"].icon
      },
      {
        icon = "__Reactors__/graphics/icons/plutonium-core.png"
      }
    },
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"plutonium-core", 1},
      {"processing-unit", 2}
    },
    result = "alien-artifact"
  },
  -- Other products
  {
    type = "recipe",
    name = "du-plate",
    icons =
    {
      {
        icon = "__Reactors__/graphics/icons/depleted-uranium.png"
      },
      {
        icon = data.raw["item"]["steel-plate"].icon
      }
    },
    order = "d[steel-plate]-b",
    category = "advanced-crafting",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"depleted-uranium", 1},
      {"iron-plate", 5}
    },
    results =
    {
      {"steel-plate", 2}
    }
  }
})

if data.raw["pump"]["express-pump"] then
  table.insert(data.raw["recipe"]["nuclear-reactor"].ingredients, {"express-pump", 4})
else
  table.insert(data.raw["recipe"]["nuclear-reactor"].ingredients, {"small-pump", 10})
end