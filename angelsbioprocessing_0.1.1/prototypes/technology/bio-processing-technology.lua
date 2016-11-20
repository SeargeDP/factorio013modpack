  
data:extend(
{
{
    type = "technology",
    name = "bio-processing-1",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "algae-farm"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-sodium-hydroxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-gas-chlor-methane"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-raw-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-from-cellulose"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-from-cellulose-resin"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-pellets"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-bricks"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-carbon-dioxide-from-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-methanol-from-wood"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  },
      time = 30
    },
  },
  {
    type = "technology",
    name = "bio-processing-2",
    icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	icon_size = 128,
	order = "c-a",
	prerequisites =
    {
	"bio-processing-1",
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "algae-farm-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "blue-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "gas-ammonia-from-blue-fiber"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1}
	  },
      time = 30
    },
  },
  -- {
    -- type = "technology",
    -- name = "bio-processing-3",
    -- icon = "__angelsbioprocessing__/graphics/technology/algae-farm-tech.png",
	-- icon_size = 128,
	-- order = "c-a",
	-- prerequisites =
    -- {
	-- "bio-processing-2",
    -- },
    -- effects =
	-- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "algae-farm-3"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "algae-red"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "red-fiber-algae"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "solid-calcium-carbonate"
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
  -- },
    -- {
    -- type = "technology",
    -- name = "alien-bio-processing",
    -- icon = "__angelsprocessing__/graphics/technology/bio-processing-alien.png",
	-- icon_size = 64,
	-- order = "c-a",
	-- prerequisites =
    -- {
	  -- "alien-technology",
	  -- "bio-processing-1",
	  -- "concrete-2",
    -- },
    -- effects =
    -- {
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "petri-dish"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "substrate-dish"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-base"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-yellow"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-blue"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-green"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-purple"
      -- },
 	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-orange"
      -- },
  	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-pre-artifact-red"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-red"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-yellow"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-orange"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-blue"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-purple"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact-green"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "small-alien-artifact"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-bacteria"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "alien-goo"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-powdered-silver"
      -- },
	  -- {
        -- type = "unlock-recipe",
        -- recipe = "angels-powdered-copper"
      -- },
    -- },
    -- unit =
    -- {
      -- count = 50,
      -- ingredients = {
	  -- {"science-pack-1", 1},
	  -- {"science-pack-2", 1},
	  -- {"science-pack-3", 1},
	  -- },
      -- time = 30
    -- },
  -- },
}
)

-- table.insert(data.raw["technology"]["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-cobalt"})
-- table.insert(data.raw["technology"]["ore-processing-1"].effects,{type = "unlock-recipe", recipe = "angels-powdered-copper"})
-- table.insert(data.raw["technology"]["gold-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-gold"})
-- table.insert(data.raw["technology"]["titanium-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-rutile"})
-- table.insert(data.raw["technology"]["ore-processing-1"].effects,{type = "unlock-recipe", recipe = "angels-powdered-silver"})
-- table.insert(data.raw["technology"]["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-tungsten"})
-- table.insert(data.raw["technology"]["zinc-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-zinc"})

-- if data.raw["fluid"]["water-mineralized"] then
-- table.insert(data.raw["technology"]["bio-processing-1"].effects,{type = "unlock-recipe", recipe = "water-mineralized"})	
-- end