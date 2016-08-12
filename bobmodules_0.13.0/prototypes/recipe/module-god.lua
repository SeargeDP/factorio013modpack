data:extend(
{
  {
    type = "recipe",
    name = "god-module-1",
    enabled = false,
    ingredients =
    {
      {"speed-processor", 2},
      {"productivity-processor", 2},
      {"effectivity-processor", 6},
      {"pollution-clean-processor", 4},
      {"module-case", 1},
      {"module-circuit-board", 1},
      {"module-contact", 5},
    },
    energy_required = 30,
    result = "god-module-1"
  },

  {
    type = "recipe",
    name = "god-module-2",
    enabled = false,
    ingredients =
    {
      {"god-module-1", 1},
      {"speed-processor-2", 4},
      {"productivity-processor-2", 4},
      {"effectivity-processor-2", 12},
      {"pollution-clean-processor-2", 8},
      {"module-contact", 5},
      {"advanced-circuit", 7},
      {"processing-unit", 7},
    },
    energy_required = 60,
    result = "god-module-2"
  },

  {
    type = "recipe",
    name = "god-module-3",
    enabled = false,
    ingredients =
    {
      {"god-module-2", 1},
      {"speed-processor-3", 6},
      {"productivity-processor-3", 6},
      {"effectivity-processor-3", 18},
      {"pollution-clean-processor-3", 12},
      {"module-contact", 5},
      {"processing-unit", 7},
    },
    energy_required = 90,
    result = "god-module-3"
  },

  {
    type = "recipe",
    name = "god-module-4",
    enabled = false,
    ingredients =
    {
      {"god-module-3", 1},
      {"speed-processor-3", 10},
      {"productivity-processor-3", 10},
      {"effectivity-processor-3", 30},
      {"pollution-clean-processor-3", 20},
      {"module-contact", 5},
      {"advanced-circuit", 8},
      {"processing-unit", 8},
    },
    energy_required = 120,
    result = "god-module-4"
  },

  {
    type = "recipe",
    name = "god-module-5",
    enabled = false,
    ingredients =
    {
      {"god-module-4", 1},
      {"speed-processor-3", 15},
      {"productivity-processor-3", 15},
      {"effectivity-processor-3", 45},
      {"pollution-clean-processor-3", 30},
      {"module-contact", 5},
      {"advanced-circuit", 10},
      {"processing-unit", 10},
    },
    energy_required = 150,
    result = "god-module-5"
  },
}
)



