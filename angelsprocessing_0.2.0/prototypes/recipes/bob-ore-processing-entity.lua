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
	{"basic-circuit-board", 5},
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
	{"electronic-circuit", 5},
	},
    result= "ore-processing-plant-2",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
    },
	{
    type = "recipe",
    name = "ore-processing-plant-3",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"ore-processing-plant-2", 1},
	{"aluminium-plate", 10},
	{"concrete-brick", 30},
	{"advanced-circuit", 5},
	},
    result= "ore-processing-plant-3",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
    },	
	{
    type = "recipe",
    name = "ore-processing-plant-4",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"ore-processing-plant-3", 1},
	{"titanium-plate", 10},
	{"concrete-brick", 30},
	{"processing-unit", 5},
	},
    result= "ore-processing-plant-4",
    icon = "__angelsprocessing__/graphics/icons/ore-processing-plant.png",
    },
 --BLAST FURNACE
    {
    type = "recipe",
    name = "blast-furnace",
    energy_required = 10,
	enabled = "false",
    ingredients ={
	{"steel-plate", 10},
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
	{"aluminium-plate", 10},
	{"concrete-brick", 20},
	{"advanced-circuit", 5},
	{"brass-pipe", 5},
	},
    result="blast-furnace-2",
    icon = "__angelsprocessing__/graphics/icons/blast-furnace.png",
    },
  }
  )