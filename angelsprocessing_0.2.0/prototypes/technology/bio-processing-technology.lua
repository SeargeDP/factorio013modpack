  
data:extend(
{
{
    type = "technology",
    name = "bio-processing-1",
    icon = "__angelsprocessing__/graphics/technology/bio-processing.png",
	icon_size = 64,
	order = "c-a",
	prerequisites =
    {
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "bio-processing-plant"
      },
	  {
        type = "unlock-recipe",
        recipe = "algae-farming"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-algae"
      },
	  {
        type = "unlock-recipe",
        recipe = "cellulose-fiber-raw-wood"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-from-cellulose-resin"
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
    icon = "__angelsprocessing__/graphics/technology/bio-processing.png",
	icon_size = 64,
	order = "c-a",
	prerequisites =
    {
        "ore-processing-1",
		"oil-processing",
    },
    effects =
	{
	  {
        type = "unlock-recipe",
        recipe = "bio-processing-plant-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "wood-from-cellulose"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-sodium-hydroxide"
      },
	  {
        type = "unlock-recipe",
        recipe = "paste-from-liquid-chlor-methane"
      },
	  {
        type = "unlock-recipe",
        recipe = "liquid-chlor-methane"
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
  {
    type = "technology",
    name = "concrete-2",
    icon = "__angelsprocessing__/graphics/technology/concrete.png",
	icon_size = 64,
	order = "c-a",
	prerequisites =
    {
	  "ore-processing-1",
	  "concrete",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "angels-powdered-stone"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-powdered-iron"
      },
	  {
        type = "unlock-recipe",
        recipe = "concrete-pulver"
      },
	  {
        type = "unlock-recipe",
        recipe = "concrete-brick"
      },
	  {
        type = "unlock-recipe",
        recipe = "concrete-from-pulver"
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
    {
    type = "technology",
    name = "alien-bio-processing",
    icon = "__angelsprocessing__/graphics/technology/bio-processing-alien.png",
	icon_size = 64,
	order = "c-a",
	prerequisites =
    {
	  "ore-processing-1",
	  "alien-technology",
	  "bio-processing-1",
	  "concrete-2",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "petri-dish"
      },
	  {
        type = "unlock-recipe",
        recipe = "substrate-dish"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-base"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-purple"
      },
 	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-orange"
      },
  	  {
        type = "unlock-recipe",
        recipe = "alien-pre-artifact-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-yellow"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-orange"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-purple"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "small-alien-artifact"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-bacteria"
      },
	  {
        type = "unlock-recipe",
        recipe = "alien-goo"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-powdered-silver"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-powdered-copper"
      },
    },
    unit =
    {
      count = 50,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  {"science-pack-3", 1},
	  },
      time = 30
    },
  },
}
)

table.insert(data.raw["technology"]["cobalt-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-cobalt"})
table.insert(data.raw["technology"]["ore-processing-1"].effects,{type = "unlock-recipe", recipe = "angels-powdered-copper"})
table.insert(data.raw["technology"]["gold-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-gold"})
table.insert(data.raw["technology"]["titanium-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-rutile"})
table.insert(data.raw["technology"]["ore-processing-1"].effects,{type = "unlock-recipe", recipe = "angels-powdered-silver"})
table.insert(data.raw["technology"]["tungsten-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-tungsten"})
table.insert(data.raw["technology"]["zinc-processing"].effects,{type = "unlock-recipe", recipe = "angels-powdered-zinc"})

if data.raw["fluid"]["water-mineralized"] then
table.insert(data.raw["technology"]["bio-processing-1"].effects,{type = "unlock-recipe", recipe = "water-mineralized"})	
end