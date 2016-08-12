if not bobmods then bobmods = {} end
if not bobmods.enemies then bobmods.enemies = {} end


bobmods.enemies.EnableSmallArtifacts = true
bobmods.enemies.EnableNewArtifacts = true

if bobmods and bobmods.config and bobmods.config.enemies then
  if bobmods.config.enemies.EnableSmallArtifacts ~= nil then
    bobmods.enemies.EnableSmallArtifacts = bobmods.config.enemies.EnableSmallArtifacts
  end
  if bobmods.config.enemies.EnableNewArtifacts ~= nil then
    bobmods.enemies.EnableNewArtifacts = bobmods.config.enemies.EnableNewArtifacts
  end
end


if bobmods.enemies.EnableSmallArtifacts == true then
  require("prototypes.small-alien-artifact")
end

if bobmods.enemies.EnableNewArtifacts == true then
  require("prototypes.new-alien-artifact")
  if bobmods.enemies.EnableSmallArtifacts == true then
    require("prototypes.new-small-alien-artifact")
  end
end


require("prototypes.damage-type")
require("prototypes.entities")
require("prototypes.projectiles")
require("prototypes.values")
require("prototypes.biters")
require("prototypes.spitters")
require("prototypes.spawners")
require("prototypes.worms")

