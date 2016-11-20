data:extend(
{
--ALIEN ARTIFACTS
	--PRE
  {
    type = "recipe",
    name = "alien-air-filtering",
    category = "petrochem-air-filtering",
	subgroup = "bio-processing-intermediate",
	enabled = "false",
    energy_required = 20,
    ingredients ={
	{type="fluid", name="water-purified", amount=5},
	},
    results=
    {
      {type="fluid", name="alien-goo", amount=5},
    },
    main_product= "alien-goo",
    icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
    order = "b [alien-air-filtering]",
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
    icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
    order = "a [alien-goo]",
  },  
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
    icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
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
	{type="item", name="paste-silver", amount=1},
	{type="item", name="paste-cellulose", amount=1},
	},
    results=
    {
      {type="item", name="substrate-dish", amount=3},
    },
    main_product= "substrate-dish",
    icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
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
	{type="item", name="paste-iron", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-base", amount=1},
    },
    main_product= "alien-pre-artifact-base",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-base.png",
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
	{type="item", name="paste-gold", amount=1},
    {type="item", name="diamond-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-yellow", amount=1},
    },
    main_product= "alien-pre-artifact-yellow",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-yellow.png",
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
	{type="item", name="paste-cobalt", amount=1},
    {type="item", name="sapphire-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-blue", amount=1},
    },
    main_product= "alien-pre-artifact-blue",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-blue.png",
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
	{type="item", name="paste-zinc", amount=1},
    {type="item", name="emerald-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-green", amount=1},
    },
    main_product= "alien-pre-artifact-green",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-green.png",
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
	{type="item", name="paste-titanium", amount=1},
    {type="item", name="amethyst-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-purple", amount=1},
    },
    main_product= "alien-pre-artifact-purple",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-purple.png",
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
	{type="item", name="paste-tungsten", amount=1},
    {type="item", name="topaz-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-orange", amount=1},
    },
    main_product= "alien-pre-artifact-orange",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-orange.png",
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
	{type="item", name="paste-copper", amount=1},
    {type="item", name="ruby-4", amount=1},
	},
    results=
    {
      {type="item", name="alien-pre-artifact-red", amount=1},
    },
    main_product= "alien-pre-artifact-red",
    icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact-red.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-red.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-yellow.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-orange.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-blue.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-purple.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact-green.png",
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
    icon = "__angelsbioprocessing__/graphics/icons/small-alien-artifact.png",
    order = "a [small-alien-artifact]",
  },
  }
  )