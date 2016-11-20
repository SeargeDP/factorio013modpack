function generateColorSignals()
  black = data.raw["virtual-signal"]["signal-black"]
  black.icon = "__Signals__/graphics/icons/colors/0.png"
  black.subgroup = "colors"
  black.order = "l[colors]-a[black]"

  grey = data.raw["virtual-signal"]["signal-grey"]
  grey.icon = "__Signals__/graphics/icons/colors/1.png"
  grey.subgroup = "colors"
  grey.order = "l[colors]-b[grey]"

  white = data.raw["virtual-signal"]["signal-white"]
  white.icon = "__Signals__/graphics/icons/colors/2.png"
  white.subgroup = "colors"
  white.order = "l[colors]-c[white]"

  red = data.raw["virtual-signal"]["signal-red"]
  red.icon = "__Signals__/graphics/icons/colors/3.png"
  red.subgroup = "colors"
  red.order = "l[colors]-d[red]"

  pink = data.raw["virtual-signal"]["signal-pink"]
  pink.icon = "__Signals__/graphics/icons/colors/4.png"
  pink.subgroup = "colors"
  pink.order = "l[colors]-e[pink]"

  blue = data.raw["virtual-signal"]["signal-blue"]
  blue.icon = "__Signals__/graphics/icons/colors/5.png"
  blue.subgroup = "colors"
  blue.order = "l[colors]-g[blue]"

  cyan = data.raw["virtual-signal"]["signal-cyan"]
  cyan.icon = "__Signals__/graphics/icons/colors/6.png"
  cyan.subgroup = "colors"
  cyan.order = "l[colors]-i[cyan]"

  green = data.raw["virtual-signal"]["signal-green"]
  green.icon = "__Signals__/graphics/icons/colors/7.png"
  green.subgroup = "colors"
  green.order = "l[colors]-j[green]"

  yellow = data.raw["virtual-signal"]["signal-yellow"]
  yellow.icon = "__Signals__/graphics/icons/colors/8.png"
  yellow.subgroup = "colors"
  yellow.order = "l[colors]-m[yellow]"
end

function overrideExtraColorSignals()
  purple = data.raw["virtual-signal"]["signal-purple"]
  purple.subgroup = "colors"
  purple.order = "l[colors]-f[purple]"

  expressBlue = data.raw["virtual-signal"]["signal-express-blue"]
  expressBlue.subgroup = "colors"
  expressBlue.order = "l[colors]-h[expressblue]"

  christmasGreen = data.raw["virtual-signal"]["signal-christmas-green"]
  christmasGreen.subgroup = "colors"
  christmasGreen.order = "l[colors]-k[christmasgreen]"

  radioactive = data.raw["virtual-signal"]["signal-radioactive"]
  radioactive.subgroup = "colors"
  radioactive.order = "l[colors]-l[radioactive]"

  basicYellow = data.raw["virtual-signal"]["signal-basic-yellow"]
  basicYellow.subgroup = "colors"
  basicYellow.order = "l[colors]-n[basicyellow]"

  orange = data.raw["virtual-signal"]["signal-orange"]
  orange.subgroup = "colors"
  orange.order = "l[colors]-o[orange]"

  fastRed = data.raw["virtual-signal"]["signal-fast-red"]
  fastRed.subgroup = "colors"
  fastRed.order = "l[colors]-p[fastred]"

  christmasRed = data.raw["virtual-signal"]["signal-christmas-red"]
  christmasRed.subgroup = "colors"
  christmasRed.order = "l[colors]-q[christmasred]"

  brown = data.raw["virtual-signal"]["signal-brown"]
  brown.subgroup = "colors"
  brown.order = "l[colors]-r[brown]"
end