require("prototypes.overides")
require("prototypes.recipe.entity-recipe-updates")

require("prototypes.technology-updates")

require("prototypes.productivity-limitations")

-- add Assembling Machine catagory.
bobmods.lib.machine.type_if_add_category("assembling-machine", "crafting", "crafting-machine")

-- Reduce cost of Steel
if bobmods.plates.CheaperSteel == true then
  data.raw.recipe["steel-plate"].energy_required = 7
  data.raw.recipe["steel-plate"].ingredients  = {{"iron-plate", 2}}

  if data.raw.recipe["metallurgy-steel-plate"] then
    if data.raw.fluid["molten-carbonated-iron"] then
      data.raw.recipe["metallurgy-steel-plate"].energy_required = 0.4
      data.raw.recipe["metallurgy-steel-plate"].ingredients = {{type="fluid", name="molten-carbonated-iron", amount=15},{type="fluid", name="water", amount=2}}
    end
  end
end

if bobmods.plates.BatteryUpdate then
  data.raw.technology["battery"].prerequisites = {"sulfur-processing", "plastics"}
  data.raw.recipe["battery"].ingredients = {{"lead-plate", 2}, {type="fluid", name="sulfuric-acid", amount=2}, {"plastic-bar", 1}}
end


