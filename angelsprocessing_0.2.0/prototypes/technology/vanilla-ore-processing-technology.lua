data:extend(
{
--TIER 1
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
        recipe = "iron-ore-processing"
      },
	  {
        type = "unlock-recipe",
        recipe = "copper-plate-processed"
      },
	  {
        type = "unlock-recipe",
        recipe = "iron-plate-processed"
      },
    },
    unit =
    {
      count = 75,
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
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "blast-furnace-2"
      },
	  {
        type = "unlock-recipe",
        recipe = "ore-processing-plant-2"
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
}
)