require("config")

function generatePowerSignals()
  data:extend({
    --TEMPERATURE SIGNAL
    {
      type = "virtual-signal",
      name = "signal-temperature",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/core.png"},
      },
      subgroup = "power",
      order = "g[power]-a[temperature]"
    },
    --POWER OUTPUT SIGNAL
    {
      type = "virtual-signal",
      name = "signal-power-output",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/power.png"},
      },
      subgroup = "power",
      order = "g[power]-b[power-output]"
    },
    --RESET SIGNAL
    {
      type = "virtual-signal",
      name = "signal-reset",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/reset.png"},
      },
      subgroup = "power",
      order = "g[power]-c[reset]"
    },
    --HALT SIGNAL
    {
      type = "virtual-signal",
      name = "signal-halt",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/halt.png"},
      },
      subgroup = "power",
      order = "g[power]-d[halt]"
    },
    --CHARGE SIGNAL
    {
      type = "virtual-signal",
      name = "signal-charge",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/charge.png"},
      },
      subgroup = "power",
      order = "g[power]-e[charge]",
    },
    --CLOCK SIGNAL
    {
      type = "virtual-signal",
      name = "signal-clock",
      icons =
      {
        {icon = POWER_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/power/clock.png"},
      },
      subgroup = "power",
      order = "g[power]-f[clock]",
    },
  })
end

function overrideReactorsSignals()
  --CORE TEMP SIGNAL
  core = data.raw["virtual-signal"]["signal-reactor-core-temp"]
  core.icons =
    {
      {icon = "__Reactors__/graphics/icons/signal/green-background.png"},
      {icon = "__Reactors__/graphics/icons/signal/core.png"}
    }
  core.subgroup = "power"
  core.order = "g[power]-a[core-temp]"

  --FLUID TEMP SIGNAL
  fluid = data.raw["virtual-signal"]["signal-reactor-fluid-temp"]
  fluid.icons =
    {
      {icon = "__Reactors__/graphics/icons/signal/green-background.png"},
      {icon = "__Reactors__/graphics/icons/signal/fluid.png"}
    }
  fluid.subgroup = "power"
  fluid.order = "g[power]-b[fluid-temp]"

  --POWER OUTPUT SIGNAL
  power = data.raw["virtual-signal"]["signal-reactor-power-output"]
  power.icons =
    {
      {icon = "__Reactors__/graphics/icons/signal/green-background.png"},
      {icon = "__Reactors__/graphics/icons/signal/power.png"}
    }
  power.subgroup = "power"
  power.order = "g[power]-c[power-output]"

  --HALT SIGNAL
  halt = data.raw["virtual-signal"]["signal-reactor-scram"]
  halt.icons =
    {
      {icon = "__Reactors__/graphics/icons/signal/red-background.png"},
      {icon = "__Reactors__/graphics/icons/signal/overheat.png"}
    }
  halt.subgroup = "power"
  halt.order = "g[power]-f[halt]"

  --STOP SIGNAL
  stop = data.raw["virtual-signal"]["signal-reactor-stop"]
  stop.icons =
    {
      {icon = "__base__/graphics/icons/signal/shape_square.png"},
      {icon = "__Reactors__/graphics/icons/signal/halt.png"}
    }
    stop.subgroup = "power"
    stop.order = "g[power]-i[stop]"

  --STOPPING SIGNAL
  stopping = data.raw["virtual-signal"]["signal-reactor-stopping"]
  stopping.icons =
    {
      {icon = "__Reactors__/graphics/icons/signal/red-background.png"},
      {icon = "__Reactors__/graphics/icons/signal/halt.png"}
    }
    stopping.subgroup = "power"
    stopping.order = "g[power]-g[stopping]"

  --TARGET SIGNAL
  target = data.raw["virtual-signal"]["signal-reactor-target"]
  target.icons =
    {
      {icon = "__base__/graphics/icons/signal/shape_square.png"},
      {icon = "__Reactors__/graphics/icons/signal/throttle.png"}
    }
    target.subgroup = "power"
    target.order = "g[power]-j[target]"

  --ADDING CUSTOM SIGNALS (CHARGE / RESET / CLOCK)
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-reset",
      icons =
      {
        {icon = "__base__/graphics/icons/signal/shape_square.png"},
        {icon = "__Signals__/graphics/icons/signal/power/reset.png"}
      },
      subgroup = "power",
      order = "g[power]-h[reset]"
    },
    {
      type = "virtual-signal",
      name = "signal-charge",
      icons =
      {
        {icon = "__Reactors__/graphics/icons/signal/green-background.png"},
        {icon = "__Signals__/graphics/icons/signal/power/charge.png"},
      },
      subgroup = "power",
      order = "g[power]-d[charge]",
    },
    {
      type = "virtual-signal",
      name = "signal-clock",
      icons =
      {
        {icon = "__Reactors__/graphics/icons/signal/green-background.png"},
        {icon = "__Signals__/graphics/icons/signal/power/clock.png"},
      },
      subgroup = "power",
      order = "g[power]-e[clock]",
    },
  })
end