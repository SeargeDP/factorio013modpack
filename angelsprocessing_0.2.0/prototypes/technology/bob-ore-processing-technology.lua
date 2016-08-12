data:extend(
{
    {
    type = "technology",
    name = "ore-processing-1",
    icon = "__angelsprocessing__/graphics/technology/ore-processing-plant.png",
	icon_size = 64,
	prerequisites =
    {
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-plant"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-plate-processed"
      },
  	  {
        type = "unlock-recipe",
        recipe = "tin-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-plate-processed"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1}
	  },
      time = 30
    },
    order = "a-a-a1"
    },
--TIER 2
 	{
    type = "technology",
    name = "ore-processing-2",
    icon = "__angelsprocessing__/graphics/technology/ore-processing-plant.png",
	icon_size = 64,
	prerequisites =
    {
	"ore-processing-1",
	"aluminium-processing",
	"cobalt-processing",
	"gold-processing",
	"lead-processing",
	"nickel-processing",
	"silicon-processing",
	"zinc-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-plant-2"
      },
  	  {
        type = "unlock-recipe",
        recipe = "bauxite-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "alumina-processed"
      },
  	  {
        type = "unlock-recipe",
        recipe = "cobalt-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "cobalt-oxide-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "gold-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-gold-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-oxide-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "nickel-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-nickel-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "quartz-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "quartz-glass-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-silicon-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-zinc-plate-processed"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 30
    },
    order = "a-a-a2"
    },
--TIER 3
 	{
    type = "technology",
    name = "ore-processing-3",
    icon = "__angelsprocessing__/graphics/technology/ore-processing-plant.png",
	icon_size = 64,
	prerequisites =
    {
	"ore-processing-2",
	"ingot-smelting",
	"titanium-processing",
	"tungsten-processing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-plant-3"
      },
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "bauxite-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "alumina-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "cobalt-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "cobalt-oxide-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-gold-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "gold-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-oxide-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "lead-plate-ingot"
      },
 	  {
        type = "unlock-recipe",
        recipe = "bob-nickel-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "nickel-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-silicon-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "quartz-glass-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "quartz-processed-smelting"
      },
 	  {
        type = "unlock-recipe",
        recipe = "rutile-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-titanium-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungsten-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungstic-acid-processed"
      },
  	  {
        type = "unlock-recipe",
        recipe = "bob-zinc-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "zinc-processed-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1}
	  },
      time = 30
    },
    order = "a-a-a3"
    },
--TIER 4
  	{
    type = "technology",
    name = "ore-processing-4",
    icon = "__angelsprocessing__/graphics/technology/ore-processing-plant.png",
	icon_size = 64,
	prerequisites =
    {
	"ore-processing-3",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-plant-4"
      },
	  {
        type = "unlock-recipe",
        recipe = "bob-titanium-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "rutile-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungstic-acid-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "tungsten-processed-smelting"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  {"alien-science-pack", 1}
	  },
      time = 30
    },
    order = "a-a-a4"
    },
--INGOTS
  	{
    type = "technology",
    name = "ingot-smelting",
    icon = "__angelsprocessing__/graphics/technology/ore-processing-plant.png",
	icon_size = 64,
	prerequisites =
    {
	"ore-processing-1"
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "silver-plate-ingot"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-processed-smelting"
      },
	  {
        type = "unlock-recipe",
        recipe = "tin-plate-ingot"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1}
	  },
      time = 30
    },
    order = "d-a"
    },
--SMELTING
	-- {
    -- type = "technology",
    -- name = "aluminium-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/aluminium-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "aluminium-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bauxite-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alumina-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 30
    -- },
    -- order = "d-a"
    -- },
  	-- {
    -- type = "technology",
    -- name = "aluminium-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/aluminium-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "aluminium-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bauxite-processed-smelting"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alumina-ingot"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "cobalt-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/cobalt-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "cobalt-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "cobalt-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "cobalt-oxide-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "cobalt-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/cobalt-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "cobalt-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "cobalt-processed-smelting"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "cobalt-oxide-ingot"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "gold-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/gold-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "gold-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "gold-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-gold-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
    -- {
    -- type = "technology",
    -- name = "gold-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/gold-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "gold-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-gold-plate-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "gold-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "lead-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/lead-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "lead-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-oxide-processed"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "lead-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/lead-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "lead-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-oxide-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-processed-smelting"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "lead-plate-ingot"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "nickel-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/nickel-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "nickel-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "nickel-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-nickel-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "nickel-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/nickel-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "nickel-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-nickel-plate-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "nickel-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "silicon-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/silicon-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "silicon-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "quartz-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "quartz-glass-processed"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-silicon-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "silicon-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/silicon-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "silicon-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-silicon-plate-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "quartz-glass-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "quartz-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "titanium-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/titanium-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "titanium-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "rutile-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-titanium-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "titanium-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/titanium-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "titanium-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-titanium-plate-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "rutile-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "tungsten-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/tungsten-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "tungsten-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "tungsten-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "tungstic-acid-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "tungsten-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/tungsten-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "tungsten-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "tungstic-acid-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "tungsten-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "zinc-processing-2",
    -- icon = "__angelsprocessing__/graphics/technology/zinc-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "zinc-processing", "ore-processing-1",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "zinc-ore-processing"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-zinc-plate-processed"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
	-- {
    -- type = "technology",
    -- name = "zinc-processing-3",
    -- icon = "__angelsprocessing__/graphics/technology/zinc-processing.png",
	-- icon_size = 64,
	-- prerequisites =
    -- {
	-- "zinc-processing-2", "ingot-smelting",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "bob-zinc-plate-ingot"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "zinc-processed-smelting"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1}
	  -- },
      -- time = 15
    -- },
    -- order = "d-a"
    -- },
}
)