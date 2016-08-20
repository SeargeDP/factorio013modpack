data:extend(
{
  {
	type = "technology",
    name = "Floors",
    icon = "__More_Floors__/graphics/icons/more-floors-tech.png",
    icon_size = 128,
	prerequisites = {"concrete"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "smooth-concrete"
      },
	  {
	    type = "unlock-recipe",
        recipe = "reinforced-concrete"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "rusty-metal"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "arrow-grate"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "diamond-plate"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "rusty-grate"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "circuit-floor"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "metal-scraps"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "alien-metal"
	  },
	  {
	    type = "unlock-recipe",
        recipe = "hexagonb"
	  }
	  
	  
	  
	},
	
      
	  order = "c-c-d"	
    } 
}
)	

	  
	  