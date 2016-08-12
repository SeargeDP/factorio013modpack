data:extend(
{
--ORE PROCESSING PLANT
	{
    type = "recipe",
    name = "ore-processing-plant",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"iron-plate", 10},
	{"stone-brick", 30},
	{"electronic-circuit", 5},
	},
    result= "ore-processing-plant",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
    },
	{
    type = "recipe",
    name = "ore-processing-plant-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"ore-processing-plant", 1},
	{"steel-plate", 10},
	{"stone-brick", 30},
	{"advanced-circuit", 5},
	},
    result= "ore-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
    },	
 --BLAST FURNACE
    {
    type = "recipe",
    name = "blast-furnace",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"iron-plate", 10},
	{"stone-brick", 20},
	{"electronic-circuit", 5},
	{"pipe", 5},
	},
    result="blast-furnace",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    },
	{
    type = "recipe",
    name = "blast-furnace-2",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"blast-furnace", 1},
	{"steel-plate", 10},
	{"stone-brick", 20},
	{"advanced-circuit", 5},
	{"pipe", 5},
	},
    result="blast-furnace-2",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    },
  }
  )