bobmods.ores.gems =
{
  name = "gem-ore",
  map_color = {r = 0, g = 1, b = 0},
  hardness = 2.4,
  mining_time = 2,
  enabled = false,
  icon = "__bobores__/graphics/icons/gem-ore.png",
  stage_mult = 2,
  particle = "gem-ore-particle",
  sprite =
  {
    filename = "__bobores__/graphics/entity/gem-ore/gem-ore.png"
  },
  autoplace = 
  {
    create = true,
    starting_area = false,
    richness = 0.1,
    size = 1
  }
}


data:extend(
{
  {
    type = "particle",
    name = "gem-ore-particle",
    flags = {"not-on-map"},
    life_time = 180,
    pictures =
    {
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1
      }
    },
    shadows =
    {
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-1.png",
        priority = "extra-high",
        width = 4,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-2.png",
        priority = "extra-high",
        width = 3,
        height = 3,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-3.png",
        priority = "extra-high",
        width = 4,
        height = 4,
        frame_count = 1
      },
      {
        filename = "__bobores__/graphics/entity/gem-ore/gem-ore-particle-shadow-4.png",
        priority = "extra-high",
        width = 6,
        height = 6,
        frame_count = 1
      }
    }
  }
}
)
