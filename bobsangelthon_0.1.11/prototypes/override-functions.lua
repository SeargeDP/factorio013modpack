bam = {}

function bam.update_building(building, ingredients)
  bam.edit_recipe_ingredients(building, ingredients)
end

function bam.edit_recipe(recipe)
  log(recipe.name)
  local dat = data.raw.recipe[recipe.name]
  if dat then
    dat.energy_required = recipe.energy_required
    dat.ingredients = recipe.ingredients
    dat.results = recipe.results
  end
end

function bam.edit_recipe_ingredients(item, ingredients)
  log(item)
  local dat = data.raw.recipe
  if data.raw.recipe[item] then
    data.raw.recipe[item].ingredients = ingredients
  end
end
