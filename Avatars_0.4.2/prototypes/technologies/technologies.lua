data:extend ({

{
    type = "technology",
    name = "avatars",
    icon = "__Avatars__/graphics/item-group/avatars.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "avatar"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-control-center"
      },
	  {
		type = "unlock-recipe",
		recipe = "avatar-remote-deployment-unit"
	  },
	  {
        type = "unlock-recipe",
        recipe = "avatar-assembling-machine"
      },
	  {
        type = "unlock-recipe",
        recipe = "actuator"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-arm"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-leg"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-head"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-internals"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-torso"
      },
	  {
        type = "unlock-recipe",
        recipe = "avatar-skin"
      }
    },
    prerequisites = {"power-armor-2", "fusion-reactor-equipment"},
    unit =
    {
      count = 200,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1},
		{"alien-science-pack", 3}
      },
      time = 30
    },
    order = "g-c-c",
 }
 })