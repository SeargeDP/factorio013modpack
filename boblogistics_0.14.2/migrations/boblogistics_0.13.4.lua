game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.technologies["express-inserters"].researched then
    force.recipes["express-inserter"].enabled = true
    force.recipes["express-filter-inserter"].enabled = true
  end
end


