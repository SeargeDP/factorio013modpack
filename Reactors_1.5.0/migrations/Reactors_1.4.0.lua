for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes
  
  if technologies["nuclear-fission"].researched then
    recipes["uranium-slurry"].enabled = true
    recipes["uranium-separation"].enabled = true
    recipes["du-plate"].enabled = true
    recipes["du-magazine"].enabled = true
  end
  if technologies["nuclear-reprocessing"].researched then
    recipes["plutonium-core"].enabled = true
  end
  if technologies["alien-technology"].researched then
    recipes["plutonium-artifact"].enabled = true
  end
end
