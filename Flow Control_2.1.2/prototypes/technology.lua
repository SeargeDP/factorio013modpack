for i,e in pairs(data.raw["technology"]["fluid-handling"].effects) do
  if e["recipe"] == "small-pump" then
    data.raw["technology"]["fluid-handling"].effects[i] = nil
  end
end

table.insert(
  data.raw["technology"]["fluid-handling"].effects,
  {type = "unlock-recipe",recipe = "check-valve"})
table.insert(
  data.raw["technology"]["fluid-handling"].effects,
  {type = "unlock-recipe",recipe = "overflow-valve"})
table.insert(
  data.raw["technology"]["fluid-handling"].effects,
  {type = "unlock-recipe",recipe = "express-pump"})