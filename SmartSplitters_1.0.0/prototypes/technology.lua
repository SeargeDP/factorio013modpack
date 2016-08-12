data:extend(
{
	{
    type = "technology",
    name = "smartsplitter",
    icon = "__base__/graphics/technology/logistics.png",
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "smartsplitter"
      },
	 },
    prerequisites = {"logistics-3"},
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
		{"science-pack-3", 1}
      },
      time = 15
    },
    order = "a-f-d",
		}
	}
)