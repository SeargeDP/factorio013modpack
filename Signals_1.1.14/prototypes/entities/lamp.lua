require("config")

lamp_colors = data.raw["lamp"]["small-lamp"].signal_to_color_mapping

function generateReactorsLampColors()
  scram    = {signal = "signal-reactor-scram", color = EMERGENCY_SHUTDOWN_COLOR}
  stopping = {signal = "signal-reactor-stopping", color = REACTOR_STOPPING_COLOR}
  reset    = {signal = "signal-reset", color = RESET_SIGNAL_COLOR}

  table.insert(lamp_colors, scram)
  table.insert(lamp_colors, stopping)
  table.insert(lamp_colors, reset)
end

function generatePowerLampColors()
  halt  = {signal = "signal-halt", color = EMERGENCY_SHUTDOWN_COLOR}
  reset = {signal = "signal-reset", color = RESET_SIGNAL_COLOR}

  table.insert(lamp_colors, halt)
  table.insert(lamp_colors, reset)
end

function generateExtraColorLampColors()
  --These colors can be changed here, they are not in the config file as to not change the
  --   functionality that the "More Signal Color" mod already provides, this section merely
  --   preserves compatability with my mod.
  orange          = {signal = "signal-orange", color = ORANGE}
  purple          = {signal = "signal-purple", color = PURPLE}
  radioactive     = {signal = "signal-radioactive", color = RADIOACTIVE}
  christmas_green = {signal = "signal-christmas-green", color = CHRISTMAS_GREEN}
  christmas_red   = {signal = "signal-christmas-red", color = CHRISTMAS_RED}
  basic_yellow    = {signal = "signal-basic-yellow", color = BASIC_YELLOW}
  fast_red        = {signal = "signal-fast-red", color = FAST_RED}
  express_blue    = {signal = "signal-express-blue", color = EXPRESS_BLUE}
  brown           = {signal = "signal-brown", color = BROWN}

  table.insert(lamp_colors, orange)
  table.insert(lamp_colors, purple)
  table.insert(lamp_colors, radioactive)
  table.insert(lamp_colors, christmas_green)
  table.insert(lamp_colors, christmas_red)
  table.insert(lamp_colors, basic_yellow)
  table.insert(lamp_colors, fast_red)
  table.insert(lamp_colors, express_blue)
  table.insert(lamp_colors, brown)
end