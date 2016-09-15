for index, force in pairs(game.forces) do
  if force.technologies["inserter-stack-size-bonus-4"].researched then
    force.inserter_stack_size_bonus = 4
  elseif force.technologies["inserter-stack-size-bonus-3"].researched then
    force.inserter_stack_size_bonus = 3
  elseif force.technologies["inserter-stack-size-bonus-2"].researched then
    force.inserter_stack_size_bonus = 2
  elseif force.technologies["inserter-stack-size-bonus-1"].researched then
    force.inserter_stack_size_bonus = 1
  else
    force.inserter_stack_size_bonus = 0
  end

  if force.technologies["bob-robo-modular-1"].researched then
    force.recipes["bob-logistic-zone-interface"].enabled = true
  end
end

