--Controls the background graphics for the signal icons--
DIRECTION_BACKGROUND = "__Signals__/graphics/icons/colors/3.png"
TRAIN_BACKGROUND     = "__Signals__/graphics/icons/colors/4.png"
MATH_BACKGROUND      = "__Signals__/graphics/icons/colors/5.png"
POWER_BACKGROUND     = "__Signals__/graphics/icons/colors/8.png"


OVERWRITE_VANILLA_COLORS  = true -- Set to false to use the default sprites for the vanilla color signals
MATH_ENABLED              = true -- Set to false to disable the math signals
DIRECTIONALS_ENABLED      = true -- Set to false to disable directional signals
POWER_ENABLED             = true -- Set to false to disable power signals (this will NOT disable reactor signals)
LIGHTS_ENABLED            = true -- Set to false to disable color values being sent to lamps by certain signals (Stopping, Reset, and Scram)


--[[ If "Reactors" support is disabled, the Reactors signals will no longer have a color assigned to them. You will have to use the
generic (yellow background) power signals. Disabling "More Signal Color" support will NOT affect the colors that mod provides, it will
ONLY affect the way the signals that mod adds are organized. Disabling "Smarter Trains" support will only affect the look and organization
of those signals added by that mod. No colors are assigned to Smarter Trains signals. Having "Reactors" installed, but disabled in this file,
while POWER_ENABLED = true is not recommended, you will have two sets of (almost) the same signals, but with different backgrounds. ]]--
SMARTER_TRAINS_ENABLED    = true -- Enables / Disables support of "Smarter Trains" mod
REACTORS_ENABLED          = true -- Enables / Disables support of "Reactors" mod
MORE_SIGNAL_COLOR_ENABLED = true -- Enables / Disables support of "More Signal Color" mod


--[[
Signal Lamp Color Config
--------------------------
Controls which color the
signals will send if
connected to a lamp.
Set LIGHTS_ENABLED = false
to disable this functionality.
This is only for the generic
power signals my mod adds, and
for the signals from "Reactors".
r, g, b are values from
0 to 255, inclusive. ]]--
EMERGENCY_SHUTDOWN_COLOR = { r = 255, g = 51 , b = 51  } -- Flat Red    
REACTOR_STOPPING_COLOR   = { r = 255, g = 255, b = 128 } -- Flat Yellow
RESET_SIGNAL_COLOR       = { r = 255, g = 133, b = 81  } -- Flat Orange

--[[
"More Signal Color" color config
It is not recommended to change
these values, they are merely here
to preserve compatability with the
"More Signal Color" mod. These are
the default colors provided by that
mod, but converted to be in a range
of 0 to 255, instead of 0 to 1.
]]--
ORANGE          = { r = 255 , g = 128 , b = 0   }
PURPLE          = { r = 128 , g = 0   , b = 255 }
RADIOACTIVE     = { r = 179 , g = 255 , b = 0   }
CHRISTMAS_GREEN = { r = 0   , g = 102 , b = 0   }
CHRISTMAS_RED   = { r = 179 , g = 33  , b = 33  }
BASIC_YELLOW    = { r = 255 , g = 194 , b = 13  }
FAST_RED        = { r = 255 , g = 69  , b = 13  }
EXPRESS_BLUE    = { r = 36  , g = 176 , b = 189 }
BROWN           = { r = 130 , g = 56  , b = 23  }