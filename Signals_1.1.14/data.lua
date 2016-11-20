require("prototypes.signals.math")
require("prototypes.signals.power")
require("prototypes.signals.groups")
require("prototypes.signals.trains")
require("prototypes.signals.colors")
require("prototypes.signals.directions")
require("prototypes.entities.lamp")
require("config")

function main()
  if OVERWRITE_VANILLA_COLORS then
    generateColorSignals()
  end

  if MATH_ENABLED then
    generateMathSignals()
  end

  if DIRECTIONALS_ENABLED then
    generateDirectionSignals()
  end

--[[
Here I check for the existence of the optional mods that this supports, and I override
their signals. This is also where Lamp Color generation is called, if enabled.
I am sure there is a "cleaner" way of doing this than checking for the existence of
signals from those mods. Most likely using game.active_mods and control.lua would be
the solution, I'll get to it eventually.
]]--

  if (data.raw["virtual-signal"]["signal-reactor-scram"] ~= nil) and REACTORS_ENABLED then
    overrideReactorsSignals()       -- Reactors exists, use Reactors Power Signals
    if LIGHTS_ENABLED then
      generateReactorsLampColors()
    end
  elseif (data.raw["virtual-signal"]["signal-reactor-scram"] ~= nil) and POWER_ENABLED then
    generatePowerSignals()          -- Reactors does not exist, use generic power signals
    if LIGHTS_ENABLED then
      generatePowerLampColors()
    end
  end

  if (data.raw["virtual-signal"]["signal-train-at-station"] ~= nil) and SMARTER_TRAINS_ENABLED then
    overrideSmartTrainsSignals()
  end

  if (data.raw["virtual-signal"]["signal-radioactive"] ~= nil) and MORE_SIGNAL_COLOR_ENABLED then
    overrideExtraColorSignals()
    if LIGHTS_ENABLED then
      generateExtraColorLampColors()
    end
  end
end

main()