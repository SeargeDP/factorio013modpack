require("prototypes.recipe.beacon-updates")
require("prototypes.recipe.electronics-updates")
require("prototypes.recipe.module-updates")


if bobmods.modules.EnableRawSpeedModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.recipe.module-raw-speed-updates")
end

if bobmods.modules.EnableGreenModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.recipe.module-green-updates")
end

if bobmods.modules.EnableRawProductivityModules == true or bobmods.modules.EnableMergedModules == true then
  require("prototypes.recipe.module-raw-productivity-updates")
end


if bobmods.modules.EnableGodModules == true then
  require("prototypes.recipe.module-god-updates")
end


if data.raw["recipe-category"]["electronics-machine"] then
  data.raw.recipe["module-circuit-board"].category = "electronics-machine"
  data.raw.recipe["module-processor-board"].category = "electronics-machine"
  data.raw.recipe["module-processor-board-2"].category = "electronics-machine"
  data.raw.recipe["module-processor-board-3"].category = "electronics-machine"
end

if data.raw["recipe-category"]["electronics"] then
  data.raw.recipe["speed-processor"].category = "electronics"
  data.raw.recipe["effectivity-processor"].category = "electronics"
  data.raw.recipe["productivity-processor"].category = "electronics"
  data.raw.recipe["pollution-clean-processor"].category = "electronics"
  data.raw.recipe["pollution-create-processor"].category = "electronics"
  data.raw.recipe["speed-processor-2"].category = "electronics"
  data.raw.recipe["effectivity-processor-2"].category = "electronics"
  data.raw.recipe["productivity-processor-2"].category = "electronics"
  data.raw.recipe["pollution-clean-processor-2"].category = "electronics"
  data.raw.recipe["pollution-create-processor-2"].category = "electronics"
  data.raw.recipe["speed-processor-3"].category = "electronics"
  data.raw.recipe["effectivity-processor-3"].category = "electronics"
  data.raw.recipe["productivity-processor-3"].category = "electronics"
  data.raw.recipe["pollution-clean-processor-3"].category = "electronics"
  data.raw.recipe["pollution-create-processor-3"].category = "electronics"
end

bobmods.lib.module.add_productivity_limitation("module-case")
bobmods.lib.module.add_productivity_limitation("module-contact")
bobmods.lib.module.add_productivity_limitation("module-circuit-board")
bobmods.lib.module.add_productivity_limitation("module-processor-board")
bobmods.lib.module.add_productivity_limitation("module-processor-board-2")
bobmods.lib.module.add_productivity_limitation("module-processor-board-3")
bobmods.lib.module.add_productivity_limitation("speed-processor")
bobmods.lib.module.add_productivity_limitation("effectivity-processor")
bobmods.lib.module.add_productivity_limitation("productivity-processor")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor")
bobmods.lib.module.add_productivity_limitation("speed-processor-2")
bobmods.lib.module.add_productivity_limitation("effectivity-processor-2")
bobmods.lib.module.add_productivity_limitation("productivity-processor-2")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor-2")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor-2")
bobmods.lib.module.add_productivity_limitation("speed-processor-3")
bobmods.lib.module.add_productivity_limitation("effectivity-processor-3")
bobmods.lib.module.add_productivity_limitation("productivity-processor-3")
bobmods.lib.module.add_productivity_limitation("pollution-clean-processor-3")
bobmods.lib.module.add_productivity_limitation("pollution-create-processor-3")


