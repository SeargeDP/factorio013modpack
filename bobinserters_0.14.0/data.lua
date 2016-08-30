data:extend({
  {
    type = "custom-input",
    name = "bob-inserter-drop-range",
    key_sequence = "SHIFT + N",
    consuming = "script-only"
  },
  {
    type = "custom-input",
    name = "bob-inserter-pickup-range",
    key_sequence = "SHIFT + L",
    consuming = "script-only"
  },
  {
    type = "custom-input",
    name = "bob-inserter-pickup-rotate",
    key_sequence = "SHIFT + R",
    consuming = "script-only"
  },

  {
    type = "custom-input",
    name = "bob-inserter-open-gui",
    key_sequence = "SHIFT + E",
    consuming = "script-only"
  }
})

require("prototypes.styles")
require("prototypes.technology-inserter")

