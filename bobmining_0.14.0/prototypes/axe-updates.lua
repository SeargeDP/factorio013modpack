if data.raw.item["brass-alloy"] or data.raw.item["zinc-plate"] then
data:extend(
{
  {
    type = "recipe",
    name = "brass-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"copper-plate", 5},
    },
    result = "brass-axe"
  },
}
)

  if data.raw.item["brass-alloy"] then
    bobmods.lib.recipe.replace_ingredient("brass-axe", "copper-plate", "brass-alloy")
  else
    if data.raw.item["zinc-plate"] then
      bobmods.lib.recipe.add_new_ingredient("brass-axe", {"zinc-plate", 1})
    end
  end

  if data.raw.technology["zinc-processing"] then
    bobmods.lib.tech.add_recipe_unlock("zinc-processing", "brass-axe")
  else
    data.raw.recipe["brass-axe"].enabled = "true"
  end
end


if data.raw.item["cobalt-plate"] or data.raw.item["cobalt-steel-alloy"] then
data:extend(
{
  {
    type = "recipe",
    name = "cobalt-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"steel-plate", 5},
    },
    result = "cobalt-axe"
  },
}
)

  if data.raw.item["cobalt-steel-alloy"] then
    bobmods.lib.recipe.replace_ingredient("cobalt-axe", "steel-plate", "cobalt-steel-alloy")
  else
    if data.raw.item["cobalt-plate"] then
      bobmods.lib.recipe.add_new_ingredient("cobalt-axe", {"cobalt-plate", 1})
    end
  end

  if data.raw.technology["cobalt-processing"] then
    bobmods.lib.tech.add_recipe_unlock("cobalt-processing", "cobalt-axe")
  else
    data.raw.recipe["cobalt-axe"].enabled = "true"
  end
end


if data.raw.item["titanium-plate"] then
data:extend(
{
  {
    type = "recipe",
    name = "titanium-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"titanium-plate", 5}
    },
    result = "titanium-axe"
  },
}
)

  if data.raw.technology["titanium-processing"] then
    bobmods.lib.tech.add_recipe_unlock("titanium-processing", "titanium-axe")
  else
    data.raw.recipe["titanium-axe"].enabled = "true"
  end
end


if data.raw.item["tungsten-plate"] or data.raw.item["tungsten-carbide"] or data.raw.item["copper-tungsten-alloy"] then
data:extend(
{
  {
    type = "recipe",
    name = "tungsten-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"tungsten-plate", 5},
    },
    result = "tungsten-axe"
  },
}
)

  if data.raw.item["tungsten-carbide"] then
    bobmods.lib.recipe.replace_ingredient("tungsten-axe", "tungsten-plate", "tungsten-carbide")
  else
    if data.raw.item["copper-tungsten-alloy"] then
      bobmods.lib.recipe.replace_ingredient("tungsten-axe", "tungsten-plate", "copper-tungsten-alloy")
    end
  end

  if data.raw.technology["tungsten-alloy-processing"] then
    bobmods.lib.tech.add_recipe_unlock("tungsten-alloy-processing", "tungsten-axe")
  else
    if data.raw.technology["tungsten-processing"] then
      bobmods.lib.tech.add_recipe_unlock("tungsten-processing", "tungsten-axe")
    else
      data.raw.recipe["tungsten-axe"].enabled = "true"
    end
  end
end


if data.raw.item["diamond-5"] then
data:extend(
{
  {
    type = "recipe",
    name = "diamond-axe",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {"iron-stick", 2},
      {"steel-plate", 5},
      {"diamond-5", 5},
    },
    result = "diamond-axe"
  },
}
)

  if data.raw.technology["gem-processing-2"] then
    bobmods.lib.tech.add_recipe_unlock("gem-processing-2", "diamond-axe")
  else
    data.raw.recipe["diamond-axe"].enabled = "true"
  end
end



