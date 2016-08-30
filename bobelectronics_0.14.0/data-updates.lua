require("prototypes.recipe-updates")
require("prototypes.technology-updates")
require("prototypes.productivity-limitations")

data.raw.recipe["copper-cable"].category = "electronics"
data.raw.recipe["green-wire"].category = "electronics"
data.raw.recipe["red-wire"].category = "electronics"

if data.raw["recipe-category"]["chemical-furnace"] then
  data.raw.recipe["carbon"].category = "chemical-furnace"
end

if data.raw["recipe-category"]["mixing-furnace"] then
  if data.raw.recipe["solder-alloy"] then
    data.raw.recipe["solder-alloy"].category = "mixing-furnace"
  end
  if data.raw.recipe["solder-alloy-lead"] then
    data.raw.recipe["solder-alloy-lead"].category = "mixing-furnace"
  end
end

-- add Assembling Machine catagory.
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "crafting-machine")

-- add new electronics crafting categories
bobmods.lib.machine.type_if_add_category("player", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics")
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "electronics-machine")
