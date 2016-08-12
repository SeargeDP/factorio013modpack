local function complete_purple_inserter_recipe(name)
  if data.raw.recipe[name] then
    if data.raw.item["titanium-bearing"] then
      bobmods.lib.recipe.add_ingredient(name, {"titanium-bearing", 2})
    else
      bobmods.lib.recipe.add_ingredient(name, {"iron-gear-wheel", 2})
    end

    if data.raw.item["titanium-gear-wheel"] then
      bobmods.lib.recipe.replace_ingredient(name, "iron-gear-wheel", "titanium-gear-wheel")
    end
  end
end


complete_purple_inserter_recipe("express-inserter")
complete_purple_inserter_recipe("express-filter-inserter")
if data.raw.item["titanium-bearing"] then bobmods.lib.tech.add_prerequisite("express-inserters", "titanium-processing") end

complete_purple_inserter_recipe("express-stack-inserter")
complete_purple_inserter_recipe("express-stack-filter-inserter")
if data.raw.item["titanium-bearing"] then bobmods.lib.tech.add_prerequisite("stack-inserter-2", "titanium-processing") end



