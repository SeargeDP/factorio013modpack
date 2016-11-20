require("config")

function generateDirectionSignals()
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-left",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/left.png"}
      },
      subgroup = "direction",
      order = "j[direction]-a[left]"
    },
    {
      type = "virtual-signal",
      name = "signal-right",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/right.png"}
      },
      subgroup = "direction",
      order = "j[direction]-b[right]"
    },
    {
      type = "virtual-signal",
      name = "signal-up",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/up.png"}
      },
      subgroup = "direction",
      order = "j[direction]-c[up]"
    },
    {
      type = "virtual-signal",
      name = "signal-down",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/down.png"}
      },
      subgroup = "direction",
      order = "j[direction]-d[down]"
    },
    {
      type = "virtual-signal",
      name = "signal-left-right",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/left-right.png"}
      },
      subgroup = "direction",
      order = "j[direction]-e[left-right]"
    },
    {
      type = "virtual-signal",
      name = "signal-up-down",
      icons =
      {
        {icon = DIRECTION_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/directions/up-down.png"}
      },
      subgroup = "direction",
      order = "j[direction]-f[up-down]"
    },
  })
end