game.reload_script()

for i, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()
end

log("Searge's Mod Pack Fixes from v1.0.1 were applied successfully")
