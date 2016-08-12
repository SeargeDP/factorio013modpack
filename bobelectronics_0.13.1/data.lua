require("prototypes.category")
require("prototypes.chemicals")
require("prototypes.resource")
require("prototypes.electronics")
require("prototypes.technology")

data.raw.item["raw-wood"].stack_size = 100
data.raw.item["wood"].stack_size = 200



if data.raw.recipe["basic-electronic-circuit-board"] then
  data.raw.recipe["basic-electronic-circuit-board"].enabled = false
  data.raw.recipe["basic-electronic-circuit-board"].result = "electronic-circuit"
end

if data.raw.recipe["electronic-circuit-board"] then
  data.raw.recipe["electronic-circuit-board"].result = "advanced-circuit"
end

if data.raw.recipe["electronic-processing-board"] then
  data.raw.recipe["electronic-processing-board"].result = "processing-unit"
end

if data.raw.recipe["electronic-processing-board-2"] then
  data.raw.recipe["electronic-processing-board-2"].result = "advanced-processing-unit"
end

