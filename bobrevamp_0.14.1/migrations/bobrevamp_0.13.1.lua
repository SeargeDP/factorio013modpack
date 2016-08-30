game.reload_script()


for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["sulfur-processing"].researched then
    force.recipes["oil-processing-with-sulfur"].enabled = true
    if force.recipes["oil-processing-with-sulfur-dioxide"] then force.recipes["oil-processing-with-sulfur-dioxide"].enabled = true end
    if force.recipes["oil-processing-with-sulfur-dioxide-2"] then force.recipes["oil-processing-with-sulfur-dioxide-2"].enabled = true end
    if force.recipes["oil-processing-with-sulfur-dioxide-3"] then force.recipes["oil-processing-with-sulfur-dioxide-3"].enabled = true end
  end
end


