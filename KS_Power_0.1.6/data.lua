require("prototypes.oil-boiler")
require("prototypes.turbine")
require("prototypes.burner-generator")
require("prototypes.diesel-generator")

for k, v in pairs(data.raw.module) do
  if v.name:find("productivity%-module") and v.limitation then
    for _, recipe in ipairs({"diesel-fuel", "burn-heavy-oil", "burn-crude-oil", "burn-light-oil"}) do
      table.insert(v.limitation, recipe)
    end
  end
end