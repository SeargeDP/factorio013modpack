for index, force in pairs(game.forces) do
  force.recipes["burner-inserter"].enabled = true
  if force.technologies["logistics"].researched then
    force.recipes["fast-inserter"].enabled = true
  end
  if force.technologies["electronics"].researched then
    force.recipes["filter-inserter"].enabled = true
  end
  if force.technologies["express-inserters"].researched then
    force.recipes["express-inserter"].enabled = true
  end
end

for index, player in pairs(game.players) do
  if player.connected then
    player.print("I hope you used the Inserter Migration mod before updating to 0.13.7!")
  end
end

