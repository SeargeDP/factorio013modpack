-- Receipe update
for i, force in pairs(game.forces) do 
 force.reset_recipes()
end

--Tech reset
--for i, force in pairs(game.forces) do 
-- force.reset_technologies()
--end

-- Researc recipe reset
--for i, force in pairs(game.forces) do 
 --if force.technologies["electric-energy-distribution-1"].researched then 
--   force.recipes["electric-switch"].enabled = true
 --end
--end

-- Rename stuff
--{
 --"entity":
 --[
  --["dark-thin-tree", "tree-01"],
--  ["green-thin-tree", "tree-02"],
--  ["dark-green-thin-tree", "tree-03"],
--  ["dark-green-tree", "tree-04"],
--  ["green-tree", "tree-04"],
--  ["red-tree", "tree-05"],
--  ["red-thin-tree", "tree-06"],
  --["root-tree", "tree-07"],
  --["ghost", "entity-ghost"]
 --]
--}