game.reload_script()


for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

  if force.recipes["sulfur-dioxide"] and force.recipes["sulfuric-acid-2"] then
    force.recipes["sulfuric-acid"].enabled = false
  end
end


