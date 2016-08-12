if bobmods.ores then

data:extend(
{
--SMALL TO BIG
  {
    type = "recipe",
    name = "alien-artifact-red-from-small",
    result = "alien-artifact-red",
    ingredients =
    {
      {"small-alien-artifact-red", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-orange-from-small",
    result = "alien-artifact-orange",
    ingredients =
    {
      {"small-alien-artifact-orange", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-yellow-from-small",
    result = "alien-artifact-yellow",
    ingredients =
    {
      {"small-alien-artifact-yellow", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-green-from-small",
    result = "alien-artifact-green",
    ingredients =
    {
      {"small-alien-artifact-green", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-blue-from-small",
    result = "alien-artifact-blue",
    ingredients =
    {
      {"small-alien-artifact-blue", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-purple-from-small",
    result = "alien-artifact-purple",
    ingredients =
    {
      {"small-alien-artifact-purple", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
    {
    type = "recipe",
    name = "alien-artifact-from-small",
    result = "alien-artifact",
    ingredients =
    {
      {"small-alien-artifact", 25}
    },
    energy_required = 1,
    enabled = "true",
    category = "crafting"
  },
--SMALL TO CATALYST
  	{
    type = "recipe",
    name = "catalysator-base",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="petroleum-gas", amount=1},
	{type="item", name="small-alien-artifact", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-base", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-base.png",
    order = "a [catalysator-base]",
	},
	{
    type = "recipe",
    name = "catalysator-yellow",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-yellow", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-yellow", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-yellow.png",
    order = "g [catalysator-yellow]",
	},
	  	{
    type = "recipe",
    name = "catalysator-blue",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-blue", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-blue", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-blue.png",
    order = "b [catalysator-blue]",
	},
	{
    type = "recipe",
    name = "catalysator-green",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-green", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-green", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-green.png",
    order = "c [catalysator-green]",
	},
	{
    type = "recipe",
    name = "catalysator-orange",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-orange", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-orange", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-orange.png",
    order = "d [catalysator-orange]",
	},
	{
    type = "recipe",
    name = "catalysator-purple",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-purple", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-purple", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-purple.png",
    order = "e [catalysator-purple]",
	},
	{
    type = "recipe",
    name = "catalysator-red",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="chlorine", amount=1},
	{type="item", name="small-alien-artifact-red", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-red", amount=4},
    },
    icon = "__angelsprocessing__/graphics/icons/catalysator-red.png",
    order = "f [catalysator-red]",
	},
}
)
-- else

-- data:extend(
-- {
    -- {
    -- type = "recipe",
    -- name = "alien-artifact-from-small",
    -- result = "alien-artifact",
    -- ingredients =
    -- {
      -- {"small-alien-artifact", 25}
    -- },
    -- energy_required = 1,
    -- enabled = "true",
    -- category = "crafting"
    -- },
   	-- {
    -- type = "recipe",
    -- name = "catalysator-base",
    -- category = "crafting-with-fluid",
	-- subgroup = "catalysts",
    -- energy_required = 2,
	-- enabled = "false",
    -- ingredients ={
    -- {type="fluid", name="petroleum-gas", amount=1},
	-- {type="item", name="small-alien-artifact", amount=1},
    -- },
    -- results=
    -- {
      -- {type="item", name="catalysator-base", amount=4},
    -- },
    -- icon = "__angelsprocessing__/graphics/icons/catalysator-base.png",
    -- order = "a-a [catalysator-base]",
	-- },
-- }
-- )
end

if angelsmods.refining and bobmods.ores then
data:extend(
{
  	{
    type = "recipe",
    name = "catalysator-brown",
    category = "crafting-with-fluid",
	subgroup = "catalysts",
    energy_required = 2,
	enabled = "false",
    ingredients ={
    {type="fluid", name="mineral-sludge", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-brown", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
    order = "h [catalysator-brown]",
	},
}
)
	data.raw["recipe"]["catalysator-base"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-yellow"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-blue"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-green"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-orange"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-purple"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	data.raw["recipe"]["catalysator-red"].ingredients[1]={type="fluid", name="mineral-sludge", amount=1}
	
	table.insert(data.raw["recipe"]["angelsore-crushed-mix1-processing"].ingredients,{type = "item", name = "catalysator-brown", amount=1})
	table.insert(data.raw["recipe"]["angelsore-crushed-mix2-processing"].ingredients,{type = "item", name = "catalysator-brown", amount=1})
	table.insert(data.raw["recipe"]["angelsore-crushed-mix3-processing"].ingredients,{type = "item", name = "catalysator-brown", amount=1})
	table.insert(data.raw["recipe"]["angelsore-crushed-mix4-processing"].ingredients,{type = "item", name = "catalysator-brown", amount=1})
		
	table.insert(data.raw["recipe"]["angelsore1-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	table.insert(data.raw["recipe"]["angelsore2-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	table.insert(data.raw["recipe"]["angelsore3-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	table.insert(data.raw["recipe"]["angelsore4-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	table.insert(data.raw["recipe"]["angelsore5-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	table.insert(data.raw["recipe"]["angelsore6-pure"].ingredients,{type = "item", name = "catalysator-base", amount=1})
	
	data.raw["recipe"]["angelsore-chunk-mix1-processing"].ingredients[3]={type = "item", name = "catalysator-blue", amount=1}
	data.raw["recipe"]["angelsore-chunk-mix2-processing"].ingredients[3]={type = "item", name = "catalysator-green", amount=1}
	data.raw["recipe"]["angelsore-chunk-mix3-processing"].ingredients[3]={type = "item", name = "catalysator-orange", amount=1}
	data.raw["recipe"]["angelsore-chunk-mix4-processing"].ingredients[3]={type = "item", name = "catalysator-purple", amount=1}
	
	data.raw["recipe"]["angelsore-crystal-mix1-processing"].ingredients[4]={type = "item", name = "catalysator-red", amount=1}
	data.raw["recipe"]["angelsore-crystal-mix2-processing"].ingredients[4]={type = "item", name = "catalysator-yellow", amount=1}
	data.raw["recipe"]["angelsore-crystal-mix3-processing"].ingredients[4]={type = "item", name = "catalysator-blue", amount=1}
	data.raw["recipe"]["angelsore-crystal-mix4-processing"].ingredients[4]={type = "item", name = "catalysator-green", amount=1}
	
	data.raw["recipe"]["angelsore-pure-mix1-processing"].ingredients[4]={type = "item", name = "catalysator-orange", amount=1}
	table.insert(data.raw["recipe"]["angelsore-pure-mix1-processing"].ingredients,{type = "item", name = "catalysator-purple", amount=1})
end
	