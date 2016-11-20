require("config")

function overrideSmartTrainsSignals()
  trainAtStation = data.raw["virtual-signal"]["signal-train-at-station"]
  trainAtStation.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/train-at-station.png"}
  }
  trainAtStation.subgroup = "trains"
  trainAtStation.order = "f[trains]-a[train-at-station]"

  locomotives = data.raw["virtual-signal"]["signal-locomotives"]
  locomotives.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/locomotives.png"}
  }
  locomotives.subgroup = "trains"
  locomotives.order = "f[trains]-b[locomotives]"

  cargoWagons = data.raw["virtual-signal"]["signal-cargowagons"]
  cargoWagons.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/cargo-wagons.png"}
  }
  cargoWagons.subgroup = "trains"
  cargoWagons.order = "f[trains]-c[cargowagons]"

  passenger = data.raw["virtual-signal"]["signal-passenger"]
  passenger.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/passenger.png"}
  }
  passenger.subgroup = "trains"
  passenger.order = "f[trains]-d[passenger]"

  lowFuel = data.raw["virtual-signal"]["signal-lowest-fuel"]
  lowFuel.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/lowest-fuel.png"}
  }
  lowFuel.subgroup = "trains"
  lowFuel.order = "f[trains]-e[lowestfuel]"

  line = data.raw["virtual-signal"]["signal-line"]
  line.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/line.png"}
  }
  line.subgroup = "trains"
  line.order = "f[trains]-f[line]"

  station = data.raw["virtual-signal"]["signal-station-number"]
  station.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/station-number.png"}
  }
  station.subgroup = "trains"
  station.order = "f[trains]-g[stationnumber]"

  destination = data.raw["virtual-signal"]["signal-destination"]
  destination.icons =
  {
    {icon = TRAIN_BACKGROUND},
    {icon = "__Signals__/graphics/icons/signal/trains/destination.png"}
  }
  destination.subgroup = "trains"
  destination.order = "f[trains]-h[destination]"
end