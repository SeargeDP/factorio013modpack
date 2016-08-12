data:extend(
{
--IRON
    {
    type = "recipe",
    name = "iron-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore", 4}},
    results=
    {
      {type="item", name="iron-processed", amount=1},
    },
    main_product= "iron-processed",
    icon = "__angelsprocessing__/graphics/icons/iron-processed.png",
    order = "e [iron-processed]",
    },
	{
    type = "recipe",
    name = "iron-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"iron-processed", 2}},
    results=
    {
      {type="item", name="iron-ingot", amount=12},
    },
    icon = "__angelsprocessing__/graphics/icons/iron-ingot.png",
    order = "e [iron-ingot]",
    },
	{
    type = "recipe",
    name = "iron-plate-processed",
    category = "smelting",
	subgroup = "raw-material",
	energy_required = 3,
	enabled = "false",
    ingredients ={{"iron-processed", 1}},
    results=
    {
      {type="item", name="iron-plate", amount=5},
    },
    icon = "__angelsprocessing__/graphics/icons/iron-plate-processed.png",
    order = "b-a1 [iron-plate]",
    },
	{
    type = "recipe",
    name = "iron-plate-ingot",
    category = "smelting",
	subgroup = "raw-material",
	energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ingot", 1}},
    results=
    {
      {type="item", name="iron-plate", amount=1},
    },
    icon = "__angelsprocessing__/graphics/icons/iron-plate-ingot.png",
    order = "b-a1 [iron-plate]",
    },
  
 --COPPER
     {
    type = "recipe",
    name = "copper-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore", 4}},
    results=
    {
      {type="item", name="copper-processed", amount=1},
    },
    main_product= "copper-processed",
    icon = "__angelsprocessing__/graphics/icons/copper-processed.png",
    order = "c [copper-processed]",
    },
    {
    type = "recipe",
    name = "copper-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"copper-processed", 2}},
    results=
    {
      {type="item", name="copper-ingot", amount=12},
    },
    main_product= "copper-ingot",
    icon = "__angelsprocessing__/graphics/icons/copper-ingot.png",
    order = "c [copper-ingot]",
    },
	{
    type = "recipe",
    name = "copper-plate-processed",
    category = "smelting",
	subgroup = "raw-material",
	energy_required = 3,
	enabled = "false",
    ingredients ={{"copper-processed", 1}},
    results=
    {
      {type="item", name="copper-plate", amount=5},
    },
    icon = "__angelsprocessing__/graphics/icons/copper-plate-processed.png",
    order = "b-a[copper-plate]",
    },
	{
    type = "recipe",
    name = "copper-plate-ingot",
    category = "smelting",
	subgroup = "raw-material",
	energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ingot", 1}},
    results=
    {
      {type="item", name="copper-plate", amount=1},
    },
    icon = "__angelsprocessing__/graphics/icons/copper-plate-ingot.png",
    order = "b-a[copper-plate]",
    },
}
)