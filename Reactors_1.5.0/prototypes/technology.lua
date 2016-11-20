data:extend({
  {
    type = "technology",
    name = "nuclear-fission",
    icon = "__Reactors__/graphics/technology/fission-reaction.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "nuclear-reactor"
      },
      {
        type = "unlock-recipe",
        recipe = "cooling-tower"
      },
      {
        type = "unlock-recipe",
        recipe = "uranium-slurry"
      },
      -- {
        -- type = "unlock-recipe",
        -- recipe = "uranium-enrichment"
      -- },
      {
        type = "unlock-recipe",
        recipe = "uranium-separation"
      },
      {
        type = "unlock-recipe",
        recipe = "fission-reaction"
      },
      {
        type = "unlock-recipe",
        recipe = "du-plate"
      },
      {
        type = "unlock-recipe",
        recipe = "du-magazine"
      }
    },
    prerequisites = {"advanced-electronics", "sulfur-processing"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-d"
  },
  {
    type = "technology",
    name = "nuclear-reprocessing",
    icon = "__Reactors__/graphics/technology/reprocessing.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fuel-reprocessing"
      },
      {
        type = "unlock-recipe",
        recipe = "plutonium-core"
      }
    },
    prerequisites = {"nuclear-fission"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 20
    },
    order = "a-h-d-a"
  },
  {
    type = "technology",
    name = "mox-fuel",
    icon = "__Reactors__/graphics/technology/mox.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "mox-fuel"
      }
    },
    prerequisites = {"nuclear-reprocessing"},
    unit =
    {
      count = 20,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "a-h-d-b"
  },
  {
    type = "technology",
    name = "breeder-reaction",
    icon = "__Reactors__/graphics/technology/breeder-reaction.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "breeder-reaction"
      }
    },
    prerequisites = {"nuclear-fission", "alien-technology"},
    unit =
    {
      count = 150,
      ingredients =
      {
        {"alien-science-pack", 1},
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 20
    },
    order = "a-h-d-c"
  },
  {
    type = "technology",
    name = "rtg-equipment",
    icon = "__Reactors__/graphics/technology/rtg-equipment.png",
    icon_size = 128,
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "rtg-equipment"
      }
    },
    prerequisites = {"nuclear-reprocessing", "armor-making-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1}
      },
      time = 15
    },
    order = "a-h-d-d"
  }
})

table.insert(
  data.raw["technology"]["alien-technology"].effects,
  {type = "unlock-recipe",recipe = "plutonium-artifact"})