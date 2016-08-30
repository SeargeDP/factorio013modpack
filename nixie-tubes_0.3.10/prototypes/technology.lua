data:extend({
  {
  	type = "technology",
  	name = "cathodes",
    icon = "__nixie-tubes__/graphics/nixie-base-icon.png",
  	unit = {
  		count=20,
      time=10,
      ingredients = {
          {"science-pack-1", 1,},
          {"science-pack-2", 1,},
        },
    },
    prerequisites = {"advanced-electronics"},
    effects = {
      {
        type = "unlock-recipe",
        recipe = "nixie-tube",
      },
      {
        type = "unlock-recipe",
        recipe = "nixie-tube-alpha",
      },
      {
        type = "unlock-recipe",
        recipe = "nixie-tube-small",
      },
    },
    order = "a-d-e",
  },
})