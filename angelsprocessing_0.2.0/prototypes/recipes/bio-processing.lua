data:extend(
{
--WOOD RECIPES
  {
    type = "recipe",
    name = "algae-farming",
    category = "bio-processing",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="fluid", name="water", amount=5},
	{type="item", name="stone", amount=5},
	},
    results=
    {
      {type="item", name="algae", amount=30},
    },
    main_product= "algae",
    icon = "__angelsprocessing__/graphics/icons/algae.png",
    order = "a [algae-farming]",
  },
  {
    type = "recipe",
    name = "cellulose-fiber-algae",
    category = "chemistry",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 3,
    ingredients ={
	{type="item", name="algae", amount=10},
	},
    results=
    {
      {type="item", name="cellulose-fiber", amount=5},
    },
    main_product= "cellulose-fiber",
    icon = "__angelsprocessing__/graphics/icons/cellulose-fiber-algae.png",
    order = "b [cellulose-fiber-algae]",
  },
  {
    type = "recipe",
    name = "liquid-chlor-methane",
    category = "chemistry",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="fluid", name="chlorine", amount=1},
	{type="fluid", name="petroleum-gas", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-chlor-methane", amount=2},
    },
    main_product= "liquid-chlor-methane",
    icon = "__angelsprocessing__/graphics/icons/chlor-methane.png",
    order = "d [liquid-chlor-methane]",
  },
  {
    type = "recipe",
    name = "paste-from-sodium-hydroxide",
    category = "chemistry",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="cellulose-fiber", amount=5},
	{type="item", name="sodium-hydroxide", amount=3},
	},
    results=
    {
      {type="item", name="paste", amount=1},
    },
    main_product= "paste",
    icon = "__angelsprocessing__/graphics/icons/paste.png",
    order = "e [paste-from-sodium-hydroxide]",
  },
  {
    type = "recipe",
    name = "paste-from-liquid-chlor-methane",
    category = "chemistry",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="cellulose-fiber", amount=5},
	{type="fluid", name="liquid-chlor-methane", amount=1},
	},
    results=
    {
      {type="item", name="paste", amount=2},
    },
    main_product= "paste",
    icon = "__angelsprocessing__/graphics/icons/paste.png",
    order = "f [paste-from-liquid-chlor-methane]",
  },
  {
    type = "recipe",
    name = "cellulose-fiber-raw-wood",
    category = "chemistry",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="raw-wood", amount=1},
	},
    results=
    {
      {type="item", name="cellulose-fiber", amount=5},
    },
    main_product= "cellulose-fiber",
    icon = "__angelsprocessing__/graphics/icons/cellulose-fiber-raw-wood.png",
    order = "c [cellulose-fiber-raw-wood]",
  },
  {
    type = "recipe",
    name = "wood-from-cellulose",
    category = "crafting",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=9},
		{type="item", name="paste", amount=3},
	},
    results=
    {
      {type="item", name="synthetic-wood", amount=3},
    },
    main_product= "synthetic-wood",
    icon = "__angelsprocessing__/graphics/icons/wood-cellulose.png",
    order = "g [wood-from-cellulose]",
  },
  {
    type = "recipe",
    name = "wood-from-cellulose-resin",
    category = "crafting",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
		{type="item", name="cellulose-fiber", amount=15},
		{type="item", name="resin", amount=3},
	},
    results=
    {
      {type="item", name="synthetic-wood", amount=5},
    },
    main_product= "synthetic-wood",
    icon = "__angelsprocessing__/graphics/icons/wood-cellulose.png",
    order = "h [wood-from-cellulose-resin]",
  },
--POWDERS
  {
    type = "recipe",
    name = "angels-powdered-stone",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="stone", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-stone", amount=3},
    },
    main_product= "angels-powdered-stone",
    icon = "__angelsprocessing__/graphics/icons/powdered-stone.png",
    order = "g [powdered-stone]",
  },
  {
    type = "recipe",
    name = "angels-powdered-silver",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="silver-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-silver", amount=10},
    },
    main_product= "angels-powdered-silver",
    icon = "__angelsprocessing__/graphics/icons/powdered-silver.png",
    order = "f [powdered-silver]",
  },
  {
    type = "recipe",
    name = "angels-powdered-cobalt",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="cobalt-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-cobalt", amount=10},
    },
    main_product= "angels-powdered-cobalt",
    icon = "__angelsprocessing__/graphics/icons/powdered-cobalt.png",
    order = "a [powdered-cobalt]",
  },
  {
    type = "recipe",
    name = "angels-powdered-copper",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="copper-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-copper", amount=10},
    },
    main_product= "angels-powdered-copper",
    icon = "__angelsprocessing__/graphics/icons/powdered-copper.png",
    order = "b [powdered-copper]",
  },
  {
    type = "recipe",
    name = "angels-powdered-gold",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="gold-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-gold", amount=10},
    },
    main_product= "angels-powdered-gold",
    icon = "__angelsprocessing__/graphics/icons/powdered-gold.png",
    order = "c [powdered-gold]",
  },
  {
    type = "recipe",
    name = "angels-powdered-iron",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="iron-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-iron", amount=10},
    },
    main_product= "angels-powdered-iron",
    icon = "__angelsprocessing__/graphics/icons/powdered-iron.png",
    order = "d [powdered-iron]",
  },
  {
    type = "recipe",
    name = "angels-powdered-rutile",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="rutile-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-rutile", amount=10},
    },
    main_product= "angels-powdered-rutile",
    icon = "__angelsprocessing__/graphics/icons/powdered-rutile.png",
    order = "e [powdered-rutile]",
  },
  {
    type = "recipe",
    name = "angels-powdered-tungsten",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="tungsten-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-tungsten", amount=10},
    },
    main_product= "angels-powdered-tungsten",
    icon = "__angelsprocessing__/graphics/icons/powdered-tungsten.png",
    order = "h [powdered-tungsten]",
  },
  {
    type = "recipe",
    name = "angels-powdered-zinc",
    category = "ore-processing",
	subgroup = "processing-powders",
	enabled = "false",
    energy_required = 4,
    ingredients ={
	{type="item", name="zinc-processed", amount=1},
	},
    results=
    {
      {type="item", name="angels-powdered-zinc", amount=10},
    },
    main_product= "angels-powdered-zinc",
    icon = "__angelsprocessing__/graphics/icons/powdered-zinc.png",
    order = "i [powdered-zinc]",
  },
--ALIEN ARTIFACTS
	--PRE
    {
    type = "recipe",
    name = "alien-bacteria",
    category = "bio-processing",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 3,
    ingredients ={
	{type="fluid", name="alien-goo", amount=1},
	},
    results=
    {
      {type="item", name="alien-bacteria", amount=1},
    },
    main_product= "alien-bacteria",
    icon = "__angelsprocessing__/graphics/icons/alien-bacteria.png",
    order = "b [alien-bacteria]",
  },
  {
    type = "recipe",
    name = "alien-goo",
    category = "chemistry",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 3,
    ingredients ={
		{type="item", name="small-alien-artifact", amount=1},
	},
    results=
    {
		{type="fluid", name="alien-goo", amount=1},
    },
    main_product= "alien-goo",
    icon = "__angelsprocessing__/graphics/icons/alien-goo.png",
    order = "a [alien-goo]",
  },  
  {
    type = "recipe",
    name = "petri-dish",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="glass", amount=1},
	},
    results=
    {
      {type="item", name="petri-dish", amount=2},
    },
    main_product= "petri-dish",
    icon = "__angelsprocessing__/graphics/icons/petri-dish.png",
    order = "c [petri-dish]",
  },
  {
    type = "recipe",
    name = "substrate-dish",
	category = "crafting",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="petri-dish", amount=3},
	{type="item", name="angels-powdered-silver", amount=1},
	{type="item", name="paste", amount=1},
	},
    results=
    {
      {type="item", name="substrate-dish", amount=3},
    },
    main_product= "substrate-dish",
    icon = "__angelsprocessing__/graphics/icons/substrate-dish.png",
    order = "d [substrate-dish]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact",
	category = "crafting",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="item", name="substrate-dish", amount=3},
	{type="item", name="alien-bacteria", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact", amount=3},
    },
    main_product= "alien-pre-artifact",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact.png",
    order = "e [alien-pre-artifact]",
  },
  --PRE ARTIFACTS
  {
    type = "recipe",
    name = "alien-pre-artifact-base",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-iron", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-base", amount=1},
    },
    main_product= "alien-pre-artifact-base",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-base.png",
    order = "a [alien-pre-artifact-base]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-yellow",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-gold", amount=1},
    {type="item", name="diamond-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-yellow", amount=1},
    },
    main_product= "alien-pre-artifact-yellow",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
    order = "g [alien-pre-artifact-yellow]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-blue",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-cobalt", amount=1},
    {type="item", name="sapphire-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-blue", amount=1},
    },
    main_product= "alien-pre-artifact-blue",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-blue.png",
    order = "b [alien-pre-artifact-blue]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-green",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-zinc", amount=1},
    {type="item", name="emerald-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-green", amount=1},
    },
    main_product= "alien-pre-artifact-green",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-green.png",
    order = "c [alien-pre-artifact-green]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-purple",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-rutile", amount=1},
    {type="item", name="amethyst-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-purple", amount=1},
    },
    main_product= "alien-pre-artifact-purple",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-purple.png",
    order = "e [alien-pre-artifact-purple]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-orange",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-tungsten", amount=1},
    {type="item", name="topaz-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-orange", amount=1},
    },
    main_product= "alien-pre-artifact-orange",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-orange.png",
    order = "d [alien-pre-artifact-orange]",
  },
  {
    type = "recipe",
    name = "alien-pre-artifact-red",
	category = "crafting",
	subgroup = "bio-processing-pre",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact", amount=1},
	{type="item", name="angels-powdered-copper", amount=1},
    {type="item", name="ruby-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-red", amount=1},
    },
    main_product= "alien-pre-artifact-red",
    icon = "__angelsprocessing__/graphics/icons/alien-pre-artifact-red.png",
    order = "f [alien-pre-artifact-red]",
  },
  --SMALL
  {
    type = "recipe",
    name = "small-alien-artifact-red",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-red", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-red", amount=5},
    },
    main_product= "small-alien-artifact-red",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-red.png",
    order = "f [small-alien-artifact-red]",
  },
  {
    type = "recipe",
    name = "small-alien-artifact-yellow",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-yellow", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-yellow", amount=5},
    },
    main_product= "small-alien-artifact-yellow",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-yellow.png",
    order = "g [small-alien-artifact-yellow]",
  },
  {
    type = "recipe",
    name = "small-alien-artifact-orange",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-orange", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-orange", amount=5},
    },
    main_product= "small-alien-artifact-orange",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-orange.png",
    order = "d [small-alien-artifact-orange]",
  },
  {
    type = "recipe",
    name = "small-alien-artifact-blue",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-blue", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-blue", amount=5},
    },
    main_product= "small-alien-artifact-blue",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-blue.png",
    order = "b [small-alien-artifact-blue]",
  },
  {
    type = "recipe",
    name = "small-alien-artifact-purple",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-purple", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-purple", amount=5},
    },
    main_product= "small-alien-artifact-purple",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-purple.png",
    order = "e [small-alien-artifact-purple]",
  },
    {
    type = "recipe",
    name = "small-alien-artifact-green",
	category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-green", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact-green", amount=5},
    },
    main_product= "small-alien-artifact-green",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact-green.png",
    order = "c [small-alien-artifact-green]",
  },
  {
    type = "recipe",
    name = "small-alien-artifact",
    category = "crafting",
	subgroup = "bio-processing-artifact",
	enabled = "false",
    energy_required = 5,
    ingredients ={
	{type="item", name="alien-pre-artifact-base", amount=1},
	},
    results=
    {
      {type="item", name="small-alien-artifact", amount=5},
    },
    main_product= "small-alien-artifact",
    icon = "__angelsprocessing__/graphics/icons/small-alien-artifact.png",
    order = "a [small-alien-artifact]",
  },
--CONCRETE
  {
    type = "recipe",
    name = "concrete-pulver",
	category = "crafting",
	subgroup = "bio-processing-concrete",
	enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="angels-powdered-stone", amount=1},
		{type="item", name="angels-powdered-iron", amount=1},
	},
    results=
    {
      {type="item", name="concrete-pulver", amount=4},
    },
    main_product= "concrete-pulver",
    icon = "__angelsprocessing__/graphics/icons/concrete-pulver.png",
    order = "d-a [concrete-pulver]",
  },
  {
    type = "recipe",
    name = "concrete-brick",
	category = "crafting-with-fluid",
	subgroup = "terrain",
	enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="concrete-pulver", amount=2},
		{type="fluid", name="water", amount=5},
	},
    results=
    {
      {type="item", name="concrete-brick", amount=5},
    },
    main_product= "concrete-brick",
    icon = "__angelsprocessing__/graphics/icons/concrete-brick.png",
    order = "d-a [concrete-brick]",
  },
  {
    type = "recipe",
    name = "concrete-from-pulver",
	category = "crafting-with-fluid",
	subgroup = "terrain",
	enabled = "false",
    energy_required = 4,
    ingredients ={
		{type="item", name="concrete-pulver", amount=2},
		{type="fluid", name="water", amount=5},
	},
    results=
    {
      {type="item", name="concrete", amount=10},
    },
    main_product= "concrete",
    icon = "__angelsprocessing__/graphics/icons/concrete.png",
    order = "d-a [concrete-from-pulver]",
  },
  }
  )
		
if data.raw["fluid"]["water-mineralized"] then
data.raw.recipe["algae-farming"].ingredients = {}
data.raw["recipe"]["algae-farming"].ingredients[1]={type="fluid", name="water-mineralized", amount=10}
data:extend(
{
  {
    type = "recipe",
    name = "water-mineralized",
    category = "crafting-with-fluid",
	subgroup = "bio-processing-wood",
	enabled = "false",
    energy_required = 2,
    ingredients ={
	{type="fluid", name="water", amount=5},
	{type="item", name="stone-crushed", amount=5},
	},
    results=
    {
      {type="fluid", name="water-mineralized", amount=5},
    },
    main_product= "water-mineralized",
    icon = "__angelsrefining__/graphics/icons/water-mineralized.png",
    order = "aa [water-mineralized]",
  },
}
)
end