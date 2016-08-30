bobmods.ores.silver =
{
  name = "silver-ore",
  tint = {r = 0.875, g = 0.975, b = 1},
  map_color = {r=0.578, g=0.684, b=0.695},
  hardness = 0.6,
  mining_time = 1.5,
  enabled = false,
  icon = "__bobores__/graphics/icons/silver-ore.png",
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
    richness = 1.2,
    size = 1
  }
}

