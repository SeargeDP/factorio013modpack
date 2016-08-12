game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["tanks-3"].researched then
    force.recipes["distractor-artillery-shell"].enabled = true
  end
end

