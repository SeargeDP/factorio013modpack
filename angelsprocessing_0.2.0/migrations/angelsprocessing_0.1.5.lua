game.reload_script()

for index, force in pairs(game.forces) do
  force.reset_recipes()
  force.reset_technologies()

if force.technologies["bio-processing-1"].researched then
    force.recipes["cellulose-fiber-raw-wood"].enabled = true
	force.recipes["wood-from-cellulose-resin"].enabled = true
	force.recipes["water-mineralized"].enabled = true
end

if force.technologies["ore-processing-2"].researched then
    force.recipes["bauxite-ore-processing"].enabled = true
	force.recipes["alumina-processed"].enabled = true
	force.recipes["cobalt-ore-processing"].enabled = true
	force.recipes["cobalt-oxide-processed"].enabled = true
	force.recipes["gold-ore-processing"].enabled = true
	force.recipes["bob-gold-plate-processed"].enabled = true
	force.recipes["lead-oxide-processed"].enabled = true
	force.recipes["lead-ore-processing"].enabled = true
	force.recipes["lead-plate-processed"].enabled = true
	force.recipes["nickel-ore-processing"].enabled = true
	force.recipes["bob-nickel-plate-processed"].enabled = true
	force.recipes["quartz-processing"].enabled = true
	force.recipes["quartz-glass-processed"].enabled = true
	force.recipes["bob-silicon-plate-processed"].enabled = true
	force.recipes["zinc-ore-processing"].enabled = true
	force.recipes["bob-zinc-plate-processed"].enabled = true
end

if force.technologies["ore-processing-3"].researched then
    force.recipes["bauxite-processed-smelting"].enabled = true
	force.recipes["alumina-ingot"].enabled = true
	force.recipes["cobalt-processed-smelting"].enabled = true
	force.recipes["cobalt-oxide-ingot"].enabled = true
	force.recipes["bob-gold-plate-ingot"].enabled = true
	force.recipes["gold-processed-smelting"].enabled = true
	force.recipes["lead-oxide-ingot"].enabled = true
	force.recipes["lead-processed-smelting"].enabled = true
	force.recipes["lead-plate-ingot"].enabled = true
	force.recipes["bob-nickel-plate-ingot"].enabled = true
	force.recipes["nickel-processed-smelting"].enabled = true
	force.recipes["bob-silicon-plate-ingot"].enabled = true
	force.recipes["quartz-glass-ingot"].enabled = true
	force.recipes["quartz-processed-smelting"].enabled = true
	force.recipes["rutile-ore-processing"].enabled = true
	force.recipes["bob-titanium-plate-processed"].enabled = true
	force.recipes["tungsten-ore-processing"].enabled = true
	force.recipes["tungstic-acid-processed"].enabled = true
	force.recipes["bob-zinc-plate-ingot"].enabled = true
	force.recipes["zinc-processed-smelting"].enabled = true
end

if force.technologies["ore-processing-4"].researched then
    force.recipes["bob-titanium-plate-ingot"].enabled = true
	force.recipes["rutile-processed-smelting"].enabled = true
	force.recipes["tungstic-acid-ingot"].enabled = true
	force.recipes["tungsten-processed-smelting"].enabled = true
end
end