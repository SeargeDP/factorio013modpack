game.reload_script()

for i, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.recipes["reinforced-concrete"] then
    if force.technologies["Floors"] then
      if force.technologies["Floors"].researched then
        force.recipes["reinforced-concrete"].enabled = true
      end
    end
  end
end