game.reload_script()

for i, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.recipes["hexagonb"] then
    if force.technologies["Floors"] then
      if force.technologies["Floors"].researched then
        force.recipes["hexagonb"].enabled = true
      end
    end
  end
end