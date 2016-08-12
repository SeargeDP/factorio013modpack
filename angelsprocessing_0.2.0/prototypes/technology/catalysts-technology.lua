if bobmods.ores then
data:extend(
{
	{
    type = "technology",
    name = "catalysts",
    icon = "__angelsprocessing__/graphics/technology/catalysts.png",
	icon_size = 64,
	prerequisites =
    {
	"ore-processing-1",
    },
    effects =
    {
	  {
        type = "unlock-recipe",
        recipe = "catalysator-base"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-blue"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-green"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-orange"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-purple"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-red"
      },
	  {
        type = "unlock-recipe",
        recipe = "catalysator-yellow"
      },
    },
    unit =
    {
      count = 50,
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
-- if bobmods.ores then
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-blue"})
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-green"})
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-orange"})
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-purple"})
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-red"})
	-- table.insert(data.raw["technology"]["catalysts"].effects,{type = "unlock-recipe", recipe = "catalysator-yellow"})
	if angelsmods.refining then
		table.insert(data.raw["technology"]["advanced-ore-refining-1"].effects,
	  {
        type = "unlock-recipe",
        recipe = "catalysator-brown"
      }
	)
	data.raw["technology"]["catalysts"].prerequisites={"advanced-ore-refining-1"}
	end
end