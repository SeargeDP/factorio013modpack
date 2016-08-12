bobmods.ores.gold =
{
  name = "gold-ore",
  tint = {r = 1, g = 0.75, b = 0},
  map_color = {r=0.9, g=0.63, b=0},
  hardness = 0.6,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/gold-ore.png",
  stage_mult = 10,
  item =
  {
    create = true,
    subgroup = "bob-ores",
  },
  sprite =
  {
    sheet = 2
  },
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 1,
    size = 1.2
  }
}

