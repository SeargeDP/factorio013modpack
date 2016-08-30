require("prototypes.technology.technology")
require("prototypes.item.item")
require("prototypes.entity.entity")
require("prototypes.recipe.recipe")


if
  data.raw.item["alien-artifact-blue"] and
  data.raw.item["alien-artifact-orange"] and
  data.raw.item["alien-artifact-purple"] and
  data.raw.item["alien-artifact-yellow"] and
  data.raw.item["alien-artifact-green"] and
  data.raw.item["alien-artifact-red"]
then
  require("prototypes.technology.technology-alien")
  require("prototypes.item.item-alien")
  require("prototypes.entity.entity-alien")
  require("prototypes.recipe.recipe-alien")
end