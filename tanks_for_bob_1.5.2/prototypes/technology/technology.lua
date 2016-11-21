data:extend(
{ 

  --tank-recall
  {
    type = "technology",
    name = "tank-recall",
    icon = "__tanks_for_bob__/graphics/icons/tank-recall-token.png",
    prerequisites = {"modular-tank-research"},
    unit =
    {
      count = 20,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "a-b-c",

    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-recall-token",
      },
    },
  },
  --modular-tank-research
  {
    type = "technology",
    name = "modular-tank-research",
    icon = "__tanks_for_bob__/graphics/icons/modular-tank-research.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "tank-assembling-machine"
      },
      {
        type = "unlock-recipe",
        recipe = "tank-ammo-assembling-machine"
      },    
      {
        type = "unlock-recipe",
        recipe = "flame-thrower-ammo-tanker"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-thrower-ammo-tanker-2"
      },
      {
        type = "unlock-recipe",
        recipe = "tank-ammo-casing"
      },
      {
        type = "unlock-recipe",
        recipe = "tank-ammo-reinforced-casing"
      },      
      {
        type = "unlock-recipe",
        recipe = "tank-ammo-universal-explosive"
      },
     {
        type = "unlock-recipe",
        recipe = "45mm-auto"
      },
     {
        type = "unlock-recipe",
        recipe = "50mm-mortar"
      },
     {
        type = "unlock-recipe",
        recipe = "cannon-shell-2"
      },
     {
        type = "unlock-recipe",
        recipe = "cannon-shell-convert"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "auto-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "nade-tank"
      },
      {
        type = "unlock-recipe",
        recipe = "car-flamer"
      }
    },
    prerequisites = {"automation-2", "tanks"},
    unit =
    {
      count = 20,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "a-b-c"
  },
  --modular-tank-research2
  {
    type = "technology",
    name = "modular-tank-research2",
    icon = "__tanks_for_bob__/graphics/icons/modular-tank-research.png",
    effects =
    {
    {
        type = "unlock-recipe",
        recipe = "tank-light-chasis-wlsk"
      },
      {
        type = "unlock-recipe",
        recipe = "flame-tank-wlsk"
      },
      {
        type = "unlock-recipe",
        recipe = "auto-tank-wlsk"
      },
      {
        type = "unlock-recipe",
        recipe = "nade-tank-wlsk"
      },
    },
    prerequisites = {"automation-3", "modular-tank-research"},
    unit =
    {
      count = 10,
      ingredients = {{"science-pack-1", 3}, {"science-pack-2", 3}, {"science-pack-3", 2}},
      time = 15
    },
    order = "a-b-c"
  },
  --modular-tank-research3
  {
    type = "technology",
    name = "modular-tank-research3",
    icon = "__tanks_for_bob__/graphics/icons/modular-tank-research.png",
    effects =
    {
    {
        type = "unlock-recipe",
        recipe = "mine-tank"
      },
    {
        type = "unlock-recipe",
        recipe = "minepack"
      },
      {
        type = "unlock-recipe",
        recipe = "rocket-tank"
      },
    {
        type = "unlock-recipe",
        recipe = "rocketpack"
      },
    },
    prerequisites = {"land-mine", "explosive-rocketry", "modular-tank-research"},
    unit =
    {
      count = 20,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "a-b-c"
  },
  --mechanized-infantry-research
  {
    type = "technology",
    name = "mechanized-infantry-research",
    icon = "__tanks_for_bob__/graphics/icons/mech-inf.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "fish-kit"
      },
    {
        type = "unlock-recipe",
        recipe = "piercing-shotgun-shell-brick"
      },
      {
        type = "unlock-recipe",
        recipe = "ap-bullet-brick"
      },
    },
    prerequisites = {"modular-tank-research"},
    unit =
    {
      count = 10,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "a-b-c"
  }, 
  --new-munitions
  {
    type = "technology",
    name = "new-munitions",
    icon = "__tanks_for_bob__/graphics/icons/chemical-tank-research.png",
    effects =
    {
     {
        type = "unlock-recipe",
        recipe = "50mm-mortar-poison"
      },
    {
        type = "unlock-recipe",
        recipe = "minepack-poison"
      },
    
    },
    prerequisites = { "modular-tank-research2", "military-3" },
    unit =
    {
      count = 10,
      ingredients = {{"science-pack-1", 3}, {"science-pack-2", 2}, {"science-pack-3", 1}},
      time = 10
    },
    order = "a-b-c"
  },
  --organic-explosives
  {
    type = "technology",
    name = "organic-explosives",
    icon = "__tanks_for_bob__/graphics/icons/universal-explosive.png",
    effects =
    {
    {
        type = "unlock-recipe",
        recipe = "tank-ammo-universal-explosive-synthetic"
      }    
    },
    prerequisites = { "modular-tank-research2" },
    unit =
    {
      count = 20,
      ingredients = {{"science-pack-1", 2}, {"science-pack-2", 3}, {"science-pack-3", 2}},
      time = 15
    },
    order = "a-b-c"
  },
  --super-tank-research
  {
    type = "technology",
    name = "super-tank-research",
    icon = "__tanks_for_bob__/graphics/icons/super-tank-research.png",
    effects =
    {
    {
        type = "unlock-recipe",
        recipe = "super-tank"
      },
    {
        type = "unlock-recipe",
        recipe = "super-tank-alternate"
      },
    },
    prerequisites = { "modular-tank-research2", "military-3" },
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 5}, {"science-pack-2", 2}, {"science-pack-3", 3}},
      time = 10
    },
    order = "a-b-c"
  },
  --super-tank-research2
  {
    type = "technology",
    name = "super-tank-research2",
    icon = "__tanks_for_bob__/graphics/icons/super-tank-research.png",
    effects =
    {
    {
        type = "unlock-recipe",
        recipe = "super-tank-wmd"
      },
    {
        type = "unlock-recipe",
        recipe = "tank-wmd-ammo"
      },
    },
    prerequisites = { "super-tank-research", "new-munitions"},
    unit =
    {
      count = 100,
      ingredients = {{"science-pack-1", 12}, {"science-pack-2", 6}, {"science-pack-3", 5}},
      time = 15
    },
    order = "a-b-c"
  },
--Iron wall
  {
    type = "technology",
    name = "iron-walls",
    icon = "__tanks_for_bob__/graphics/icons/iron-wall-research.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "iron-walls"
      },
    },
    prerequisites = { "stone-walls"},
    unit =
    {
      count = 50,
      ingredients = {{"science-pack-1", 1}, {"science-pack-2", 1}, {"science-pack-3", 1}},
      time = 15
    },
    order = "a-b-c"
  },
}
)

      
      
      
      
    