BLUE_BACKGROUND = "__base__/graphics/icons/signal/shape_square.png"
RED_BACKGROUND = "__Reactors__/graphics/icons/signal/red-background.png"
GREEN_BACKGROUND = "__Reactors__/graphics/icons/signal/green-background.png"

data:extend({
  {
    type = "item-subgroup",
    name = "reactor-signals",
    group = "signals",
    order = "f"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-core-temp",
    icons =
    {
      {icon = GREEN_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/core.png"}
    },
    subgroup = "reactor-signals",
    order = "a-a"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-fluid-temp",
    icons =
    {
      {icon = GREEN_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/fluid.png"}
    },
    subgroup = "reactor-signals",
    order = "a-b"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-power-output",
    icons =
    {
      {icon = GREEN_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/power.png"}
    },
    subgroup = "reactor-signals",
    order = "a-c"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-target",
    icons =
    {
      {icon = BLUE_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/throttle.png"}
    },
    subgroup = "reactor-signals",
    order = "a-e"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-stop",
    icons =
    {
      {icon = BLUE_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/halt.png"}
    },
    subgroup = "reactor-signals",
    order = "a-f"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-stopping",
    icons =
    {
      {icon = RED_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/halt.png"}
    },
    subgroup = "reactor-signals",
    order = "a-g"
  },
  {
    type = "virtual-signal",
    name = "signal-reactor-scram",
    icons =
    {
      {icon = RED_BACKGROUND},
      {icon = "__Reactors__/graphics/icons/signal/overheat.png"}
    },
    subgroup = "reactor-signals",
    order = "a-h"
  }
})