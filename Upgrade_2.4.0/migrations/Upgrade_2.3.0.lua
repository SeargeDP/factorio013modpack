for _, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  -- create tech/recipe table once
  local techs = force.technologies
  local recipes = force.recipes
  if techs["advanced-material-processing"].researched and recipes["furnace-stone-steel"] then
    recipes["furnace-stone-steel"].enabled = true
  end
  if techs["advanced-material-processing-2"].researched and recipes["furnace-steel-electric"] then
    recipes["furnace-steel-electric"].enabled = true
  end
end