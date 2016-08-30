bobmods.ores.bauxite =
{
  name = "bauxite-ore",
  tint = {r=0.777, g=0.7, b=0.333},
  map_color = {r=0.777, g=0.7, b=0.333},
  hardness = 1.4,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/bauxite-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 1
  },
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.8,
    size = 1.5
  }
}
