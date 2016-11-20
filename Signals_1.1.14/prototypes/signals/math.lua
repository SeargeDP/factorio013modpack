require("config")
MATH_PATH = "__Signals__/graphics/icons/signal/mathematics/"

function generateMathSignals()
  data:extend({
    {
      type = "virtual-signal",
      name = "signal-equal-to",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = MATH_PATH .. "equals.png"},
      },
      subgroup = "math",
      order = "h[math]-a[equals]"
    },
    {
      type = "virtual-signal",
      name = "signal-not-equal-to",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/not-equal-to.png"},
      },
      subgroup = "math",
      order = "h[math]-b[not-equals]"
    },
    {
      type = "virtual-signal",
      name = "signal-less-than",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/less-than.png"},
      },
      subgroup = "math",
      order = "h[math]-c[less-than]"
    },
    {
      type = "virtual-signal",
      name = "signal-less-than-equal-to",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/less-than-equal-to.png"},
      },
      subgroup = "math",
      order = "h[math]-d[less-than-equal-to]"
    },
    {
      type = "virtual-signal",
      name = "signal-greater-than-equal-to",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/greater-than-equal-to.png"},
      },
      subgroup = "math",
      order = "h[math]-e[greater-than-equal-to]"
    },
    {
      type = "virtual-signal",
      name = "signal-greater-than",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/greater-than.png"},
      },
      subgroup = "math",
      order = "h[math]-f[greater-than]"
    },
    {
      type = "virtual-signal",
      name = "signal-null",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/null.png"},
      },
      subgroup = "math",
      order = "h[math]-g[null]"
    },
    {
      type = "virtual-signal",
      name = "signal-infinity",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/infinity.png"},
      },
      subgroup = "math",
      order = "h[math]-h[infinity]"
    },
    {
      type = "virtual-signal",
      name = "signal-percent",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/percent.png"},
      },
      subgroup = "math",
      order = "h[math]-i[percent]"
    },
    {
      type = "virtual-signal",
      name = "signal-one-quarter",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/one-quarter.png"},
      },
      subgroup = "math",
      order = "h[math]-j[one-quarter]"
    },
    {
      type = "virtual-signal",
      name = "signal-two-quarter",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/two-quarter.png"},
      },
      subgroup = "math",
      order = "h[math]-k[two-quarter]"
    },
    {
      type = "virtual-signal",
      name = "signal-three-quarter",
      icons =
      {
        {icon = MATH_BACKGROUND},
        {icon = "__Signals__/graphics/icons/signal/mathematics/three-quarter.png"},
      },
      subgroup = "math",
      order = "h[math]-l[three-quarter]"
    },
  })
end