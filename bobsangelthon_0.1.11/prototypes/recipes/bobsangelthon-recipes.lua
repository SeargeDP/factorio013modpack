

-- Smelting

--  Iron

local recipe = "iron-ore-processing"
local rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"iron-ore", 6}}
rec.results = {{"processed-iron", 1}}

recipe = "iron-processed-processing"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"processed-iron", 2}}
rec.results = {{"pellet-iron", 18}}

recipe = "iron-ore-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 16
rec.ingredients = {{"iron-ore", 8}, {"solid-coke", 3}}
rec.results = {{"ingot-iron", 8}}

recipe = "processed-iron-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 12
rec.ingredients = {{"processed-iron", 1}, {"solid-coke", 3}}
rec.results = {{"ingot-iron", 8}}

recipe = "pellet-iron-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"pellet-iron", 6}, {"solid-coke", 3}}
rec.results = {{"ingot-iron", 8}}

recipe = "ingot-iron-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-iron", 12}, {"gas-oxygen", 12}}
rec.results = {{"ingot-steel", 3}}

recipe = "molten-iron-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 8

-- Copper

recipe = "copper-ore-processing"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"copper-ore", 4}}
rec.results = {{"processed-copper", 1}}

recipe = "copper-processed-processing"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"processed-copper", 2}}
rec.results = {{"pellet-copper", 18}}

recipe = "copper-ore-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 16
rec.ingredients = {{"copper-ore", 6}}
rec.results = {{"ingot-copper", 8}}

recipe = "processed-copper-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 12
rec.ingredients = {{"processed-copper", 1}}
rec.results = {{"ingot-copper", 8}}

recipe = "pellet-copper-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"pellet-copper", 6}}
rec.results = {{"ingot-copper", 8}}

recipe = "molten-copper-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 8

recipe = "angels-wire-coil-copper-casting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 8

-- Steel

recipe = "molten-steel-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-steel", 3}}
rec.results = {{"liquid-molten-steel", 3}}

recipe = "molten-silicon-steel-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-steel", 5}, {"ingot-silicon", 2}}
rec.results = {{"liquid-molten-silicon-steel", 6}}

recipe = "angels-roll-silicon-steel-casting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"liquid-molten-silicon-steel", 3}}
rec.results = {{"angels-roll-steel", 3}}

recipe = "molten-manganese-steel-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-steel", 5}, {"ingot-manganese", 2}
rec.results = {{"liquid-molten-manganese-steel", 6}}

recipe = "angels-roll-manganese-steel-casting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"liquid-molten-manganese-steel", 3}}
rec.results = {{"angels-roll-manganese", 3}}

recipe = "molten-cobalt-nickel-steel-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-steel", 4}, {"ingot-cobalt", 2}, {"ingot-nickel", 1}}
rec.results = {{"liquid-molten-cobalt-nickel-steel", 6}}

recipe = "angels-roll-cobalt-nickel-steel-casting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"liquid-molten-cobalt-nickel-steel", 3}}
rec.results = {{"angels-roll-cobalt", 3}}

recipe = "molten-chrome-tungsten-steel-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"ingot-steel", 4}, {"ingot-chrome", 2}, {"ingot-tungsten", 1}}
rec.results = {{"liquid-molten-chrome-tungsten-steel", 6}}

recipe = "angels-roll-chrome-tungsten-steel-casting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 10
rec.ingredients = {{"liquid-molten-chrome-tungsten-steel", 3}}
rec.results = {{"angels-roll-chrome", 3}}

-- Aluminium



--Bobs Mods
recipe = "quartz-processing"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"quartz", 6}}
rec.results = {{"quartz-processed", 3}}

recipe = "quartz-processed-smelting"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{"quartz-processed", 4}}
rec.results = {{"quartz-ingot", 5}}

recipe = "quartz-glass-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 15
rec.ingredients = {{"quartz-processed", 2}}
rec.results = {{"glass", 15}}

recipe = "quartz-glass-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{"quartz-ingot", 1}}
rec.results = {{"glass", 8}}

recipe = "alumina-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 14.3
rec.ingredients = {{"bauxite-processed", 2}, {"carbon", 3}}
rec.results = {{"aluminium-plate", 6}}

recipe = "alumina-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 7.15
rec.ingredients = {{"bauxite-ingot", 1}, {"carbon", 2}}
rec.results = {{"aluminium-plate", 4}}

recipe = "cobalt-oxide-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 21
rec.ingredients = {{type="item", name="cobalt-processed", amount=2}, {type="item", name="stone", amount=3}}
rec.result_count = 6

recipe = "cobalt-oxide-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 14
rec.ingredients = {{type="item", name="cobalt-ingot", amount=1}, {type="item", name="stone", amount=2}}
rec.result_count = 4

recipe = "bob-gold-plate-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="gold-processed", amount=4}, {type="fluid", name="chlorine", amount=2.5}}
rec.results = {{type="item", name="gold-plate", amount=5}}

recipe = "bob-gold-plate-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{type="item", name="gold-ingot", amount=1}, {type="fluid", name="chlorine", amount=4}}
rec.results = {{type="item", name="gold-plate", amount=8}}

recipe = "lead-oxide-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="lead-processed", amount=4}, {type="fluid", name="oxygen", amount=15}}
rec.results = {{type="item", name="lead-oxide", amount=10}, {type="fluid", name="sulfur-dioxide", amount=10}}

recipe = "lead-oxide-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{type="item", name="lead-ingot", amount=1}, {type="fluid", name="oxygen", amount=12}}
rec.results = {{type="item", name="lead-oxide", amount=8}, {type="fluid", name="sulfur-dioxide", amount=8}}

recipe = "bob-nickel-plate-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="nickel-processed", amount=5}, {type="fluid", name="water", amount=5}, {type="fluid", name="oxygen", amount=7.5}}
rec.results = {{type="fluid", name="sulfuric-acid", amount=5}, {type="item", name="nickel-plate", amount=5}}

recipe = "bob-nickel-plate-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{type="item", name="nickel-ingot", amount=1}, {type="fluid", name="water", amount=8}, {type="fluid", name="oxygen", amount=12}}
rec.results = {{type="fluid", name="sulfuric-acid", amount=8}, {type="item", name="nickel-plate", amount=8}}

recipe = "bob-silicon-plate-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="calcium-chloride", amount=5}, {type="item", name="carbon", amount=8}, {type="item", name="quartz-processed", amount=4}}
rec.results = {{type="item", name="silicon", amount=5}}

recipe = "bob-silicon-plate-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{type="item", name="calcium-chloride", amount=8}, {type="item", name="carbon", amount=12}, {type="item", name="quartz-ingot", amount=1}}
rec.results = {{type="item", name="silicon", amount=8}}

recipe = "bob-titanium-plate-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 21
rec.ingredients = {{type="item", name="calcium-chloride", amount=6}, {type="item", name="carbon", amount=3}, {type="item", name="rutile-processed", amount=2}}
rec.result = "titanium-plate"
rec.result_count = 6

recipe = "bob-titanium-plate-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 14
rec.ingredients = {{type="item", name="calcium-chloride", amount=4}, {type="item", name="carbon", amount=2}, {"rutile-ingot", amount=1}}
rec.result = "titanium-plate"
rec.result_count = 4

recipe = "silver-nitrate-from-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="silver-processed", amount=4}, {type="fluid", name="nitrogen-dioxide", amount=5}}
rec.results = {{type="item", name="silver-nitrate", amount=5}}

recipe = "silver-nitrate-from-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 6
rec.ingredients = {{type="item", name="silver-ingot", amount=1}, {type="fluid", name="nitrogen-dioxide", amount=8}}
rec.results = {{type="item", name="silver-nitrate", amount=8}}

recipe = "tungstic-acid-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 12
rec.ingredients = {{type="item", name="tungsten-processed", amount=4}, {type="fluid", name="hydrogen-chloride", amount=24}}
rec.results = {{type="fluid", name="tungstic-acid", amount=12}, {type="item", name="calcium-chloride", amount=6}}

recipe = "tungstic-acid-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 4
rec.ingredients = {{type="item", name="tungsten-ingot", amount=1}, {type="fluid", name="hydrogen-chloride", amount=8}}
rec.results = {{type="fluid", name="tungstic-acid", amount=4}, {type="item", name="calcium-chloride", amount=2}}

recipe = "bob-zinc-plate-processed"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 7.15
rec.ingredients = {{type="item", name="zinc-processed", amount=1}, {type="fluid", name="sulfuric-acid", amount=3}}
rec.results = {{type="item", name="zinc-plate", amount=3}}

recipe = "bob-zinc-plate-ingot"
rec = data.raw.recipe[""..recipe..""]
rec.energy_required = 7.15
rec.ingredients = {{type="item", name="zinc-ingot", amount=1}, {type="fluid", name="sulfuric-acid", amount=4}}
rec.results = {{type="item", name="zinc-plate", amount=4}}
--]]
