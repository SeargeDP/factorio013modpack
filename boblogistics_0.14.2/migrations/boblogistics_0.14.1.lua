for index, force in pairs(game.forces) do
  if force.technologies["bob-railway-2"].researched then
    force.recipes["bob-diesel-locomotive-2"].enabled = true
    force.recipes["bob-cargo-wagon-2"].enabled = true
  end
  if force.technologies["bob-railway-3"].researched then
    force.recipes["bob-diesel-locomotive-3"].enabled = true
    force.recipes["bob-cargo-wagon-3"].enabled = true
  end
  if force.technologies["bob-armoured-railway"].researched then
    force.recipes["bob-armoured-diesel-locomotive"].enabled = true
    force.recipes["bob-armoured-cargo-wagon"].enabled = true
  end
end

