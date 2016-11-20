uranium = util.table.deepcopy(data.raw["resource"]["stone"])
uranium.name = "uranium-ore"
uranium.icon = "__Reactors__/graphics/icons/uranium-ore.png"
uranium.minable.result = "uranium-ore"
uranium.autoplace =
{
  control = "uranium-ore",
  sharpness = 1,
  richness_multiplier = 1500,
  richness_multiplier_distance_bonus = 20,
  richness_base = 500,
  coverage = 0.015,
  peaks = {
    {
      noise_layer = "uranium-ore",
      noise_octaves_difference = -1.5,
      noise_persistence = 0.3,
    },
  },
  starting_area_size = 600 * 0.015,
  starting_area_amount = 1500
}
uranium.stages.sheet.filename = "__Reactors__/graphics/entity/uranium-ore/uranium-ore.png"
uranium.map_color = {r=0.212, g=0.702, b=0.537}

data:extend({
  {
    type = "noise-layer",
    name = "uranium-ore"
  },
  {
    type = "autoplace-control",
    name = "uranium-ore",
    richness = true,
    order = "b-f"
  },
  uranium
})