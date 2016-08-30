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
        recipe = "floatation-waste-water-purification"
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
        recipe = "angels-water-void-floatation-waste"
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

if angelsmods.refining and bobmods.ores then
	table.insert(data.raw["technology"]["water-treatment"].effects,{type="unlock-recipe", recipe="angels-water-void-saline"})
	table.insert(data.raw["technology"]["water-treatment"].effects,{type="unlock-recipe", recipe="salt-water-electrolysis-2"})
	table.insert(data.raw["technology"]["water-treatment"].effects,{type="unlock-recipe", recipe="water-thermal-lithia"})
	table.insert(data.raw["technology"]["water-treatment"].effects,{type="unlock-recipe", recipe="water-mineralized"})
	
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
if data.raw.item["y-res1"] then
	table.insert(data.raw["technology"]["water-treatment"].effects,{type = "unlock-recipe", recipe = "floatation-waste-water-purification-yi"})
end