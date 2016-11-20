data:extend(
{
    {
    type = "technology",
    name = "water-treatment",
    icon = "__angelsrefining__/graphics/technology/water-treatment.png",
	icon_size = 128,
	prerequisites =
    {
	"ore-crushing",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "hydro-plant"
      },
  	  {
        type = "unlock-recipe",
        recipe = "clarifier"
      },
  	  {
        type = "unlock-recipe",
        recipe = "water-purification"
      },
	  {
        type = "unlock-recipe",
        recipe = "yellow-waste-water-purification"
      },
  	  {
        type = "unlock-recipe",
        recipe = "angels-water-void-purified"
      },
   	  {
        type = "unlock-recipe",
        recipe = "angels-water-void-mineralized"
      },
	  {
        type = "unlock-recipe",
        recipe = "angels-water-void-yellow-waste"
      },
    },
    unit =
    {
      count = 30,
      ingredients = {
	  {"science-pack-1", 1},
	  {"science-pack-2", 1},
	  },
      time = 15
    },
    order = "c-a"
    },
}
)

if angelsmods.refining and bobmods.plates then
	data:extend(
	{
		{
		type = "technology",
		name = "water-treatment-2",
		icon = "__angelsrefining__/graphics/technology/water-treatment.png",
		icon_size = 128,
		prerequisites =
		{
		"water-treatment",
		},
		effects =
		{
		  {
			type = "unlock-recipe",
			recipe = "hydro-plant-2"
		  },
		},
		unit =
		{
		  count = 30,
		  ingredients = {
		  {"science-pack-1", 1},
		  {"science-pack-2", 1},
		  {"science-pack-3", 1},
		  },
		  time = 15
		},
		order = "c-a"
		},
	}
	)
end