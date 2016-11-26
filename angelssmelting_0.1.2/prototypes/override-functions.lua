local ov_functions = {}
-- OVERRIDE DATA TABLES
local substitution_table = {
   recipe_icons = {},
   recipe_items = {},
   technologies = {}
}

local disable_table = {
   recipes = {},
   technologies = {}
}

local modify_table = {
   recipes = {},
   technologies = {}
}

local override_table = { -- one off changes, only elements to be changed (and placeholders to indicate ordering in e.g. ingredients list) need to be entered
   recipes = {},
   technologies = {}
}

-- HELPER FUNCTIONS

local function guarantee_subtable (t, s)
   if not t[s] then t[s] = {} end
end

-- OVERRIDE ASSIGNMENT FUNCTIONS

ov_functions.add_unlock = function (technology, recipe)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "unlocks")
   modify_table.technologies[technology].unlocks[recipe] = true
end

ov_functions.remove_unlock = function (technology, recipe)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "unlocks")
   modify_table.technologies[technology].unlocks[recipe] = false
end

ov_functions.add_prereq = function (technology, prereq)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "prereqs")
   modify_table.technologies[technology].prereqs[prereq] = true
end

ov_functions.remove_prereq = function (technology, prereq)
   guarantee_subtable(modify_table.technologies, technology)
   guarantee_subtable(modify_table.technologies[technology], "prereqs")
   modify_table.technologies[technology].prereqs[prereq] = false
end

ov_functions.global_replace_technology = function (old, new)
   substitution_table.technologies[old] = new
end

ov_functions.disable_technology = function (technology)
   disable_table.technologies[technology] = true
end

ov_functions.set_special_technology_override = function (technology, t)
   override_table.technologies[technology] = t
end

ov_functions.set_input = function (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "inputs")
   modify_table.recipes[recipe].inputs[item] = { type = i_type, amount = amount }
end

ov_functions.set_output = function (recipe, item, i_type, amount)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "outputs")
   modify_table.recipes[recipe].outputs[item] = { type = i_type, amount = amount }
end

ov_functions.remove_input = function (recipe, item)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "inputs")
   modify_table.recipes[recipe].inputs[item] = { amount = 0 }
end

ov_functions.remove_output = function (recipe, item)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "outputs")
   modify_table.recipes[recipe].outputs[item] = { amount = 0 }
end

ov_functions.replace_item = function (recipe, old, new)
   guarantee_subtable(modify_table.recipes, recipe)
   guarantee_subtable(modify_table.recipes[recipe], "substitutions")
   modify_table.recipes[recipe].substitutions[old] = new
end

ov_functions.global_replace_item = function (old, new)
   substitution_table.recipe_items[old] = new
end

ov_functions.global_replace_icon = function (old, new)
   substitution_table.recipe_icons[old] = new
end

ov_functions.disable_recipe = function (recipe)
   disable_table.recipes[recipe] = true
end

ov_functions.set_special_recipe_override = function (recipe, t)
   override_table.recipes[recipe] = t
end

-- OVERRIDE EXECUTION

local function adjust_recipe (recipe, k) -- check a recipe for basic adjustments based on tables and make any necessary changes
   local function adjust_member (member, substitution_type)
      local new = substitution_table[substitution_type][recipe[member]]
      if new then
         recipe[member] = new
      end
   end
   local function adjust_subtable (subtable, substitution_type)
      for ix, item in pairs(recipe[subtable]) do
         if not item.name then -- shift to uniform format for ease of handling
            item.name = item[1]
            item.type = "item"
            item.amount = item[2]
            item[1] = nil
            item[2] = nil
         end
         local new = substitution_table[substitution_type][item.name or item[1]]
         if new then
            if item.name then
               item.name = new
            else
               item[1] = new
            end
         end
      end
   end
   if recipe.category ~= "angels-converter" then -- leave converter recipes alone so we can still use them if necessary
      adjust_subtable("ingredients", "recipe_items")
      if recipe.result then
         adjust_member("result", "recipe_items")
      end
      if recipe.results then
         adjust_subtable("results", "recipe_items")
      end
      if recipe.main_product then
         adjust_member("main_product", "recipe_items")
      end
      if recipe.icon then
         adjust_member("icon", "recipe_icons")
      end
   end
end

local function override_subtable (subtable, o_subtable) -- handle special case changes (sort of a partial deep copy/overwrite)
   for ok, ov in pairs(o_subtable) do
      if type(ov) == "table" then
         if not subtable[ok] then
            subtable[ok] = {}
         end
         override_subtable(subtable[ok], ov)
      else
         if ov == "set_to_nil" then
            subtable[ok] = nil
         elseif ov ~= "do_not_modify" then
            subtable[ok] = ov
         end
      end
   end
end

ov_functions.execute = function ()
   for k, recipe in pairs(data.raw.recipe) do -- run through all recipes to perform substitutions/overrides
      if disable_table.recipes[k] then
         recipe.enabled = false
      else
         adjust_recipe(recipe, k)
         local modifications = modify_table.recipes[k]
         if modifications then
            local to_remove = {}
            for ik, input in pairs(recipe.ingredients) do
               if modifications.inputs and modifications.inputs[input.name] then
                  if modifications.inputs[input.name].amount == 0 then
                     to_remove[ik] = true
                  else
                     input.amount = modifications.inputs[input.name].amount
                  end
                  modifications.inputs[input.name] = nil
               end
               if modifications.substitutions and modifications.substitutions[input.name] and not to_remove[ik] then
                  input.name = modifications.substitutions[input.name]
               end
            end
            for ik = #recipe.ingredients, 1, -1 do
               if to_remove[ik] then
                  table.remove(recipe.ingredients, ik)
               end
            end
            if modifications.inputs then
               for item, info in pairs(modifications.inputs) do
                  if info.amount > 0 then
                     table.insert(recipe.ingredients, { name = item, type = info.type, amount = info.amount })
                  end
               end
            end
            if recipe.results then
               to_remove = {}
               for ok, output in pairs(recipe.results) do
                  if modifications.outputs and modifications.outputs[output.name] then
                     if modifications.outputs[output.name].amount == 0 then
                        to_remove[ok] = true
                     else
                        recipe.results[ok].amount = modifications.outputs[output.name].amount
                     end
                     modifications.outputs[output.name] = nil
                  end
                  if modifications.substitutions and modifications.substitutions[output.name] and not to_remove[ok] then
                     output.name = modifications.substitutions[output.name]
                  end
               end
               for ok = #recipe.results, 1, -1 do
                  if to_remove[ok] then
                     table.remove(recipe.results, ok)
                  end
               end
               if modifications.outputs then
                  for item, info in pairs(modifications.outputs) do
                     if info.amount > 0 then
                        table.insert(recipe.results, { name = item, type = info.type, amount = info.amount })
                     end
                  end
               end
               if modifications.substitutions then
                  recipe.main_product = modifications.substitutions[recipe.main_product]
               end
            elseif recipe.result then
               if modifications.outputs and modifications.outputs[recipe.result] then
                  recipe.result_count = modifications.outputs[recipe.result].amount
                  modifications.outputs[recipe.result] = nil
               end
               if modifications.substitutions and modifications.substitutions[recipe.result] then
                  recipe.result = modifications.substitutions[recipe.result]
               end
               if modifications.outputs and next(modifications.outputs) then -- transition from one output to multiple
                  recipe.main_product = recipe.result
                  recipe.results = { { name = recipe.result, type = "item", amount = recipe.result_count } }
                  recipe.result = nil
                  recipe.result_count = nil
                  for item, info in pairs(modifications.outputs) do
                     if info.amount > 0 then
                        table.insert(recipe.results, { name = item, type = info.type, amount = info.amount })
                     end
                  end
               end
            end
            
         end
         local overrides = override_table.recipes[k]
         if overrides then
            override_subtable(recipe, overrides)
         end
      end
   end

   for k, tech in pairs(data.raw.technology) do
      if disable_table.technologies[k] or substitution_table.technologies[k] then
         data.raw.technology[k].enabled = false
      else
         local dup_table = {}
         local modifications = nil
         if modify_table.technologies[k] then
            modifications = modify_table.technologies[k].unlocks
         end
         local to_remove = {}
         if tech.effects then
            for ek, effect in pairs(tech.effects) do
               if effect.type == "unlock-recipe" then
                  if disable_table.recipes[effect.recipe] or (modifications and modifications[effect.recipe] == false) then
                     to_remove[ek] = true
                  else
                     dup_table[effect.recipe] = true
                  end
               end
            end
            for ek = #tech.effects, 1, -1 do
               if to_remove[ek] then
                  table.remove(tech.effects, ek)
               end
            end
         end
         if modifications then
            for name, add in pairs(modifications) do
               if add and not dup_table[name] then
                  table.insert(tech.effects, { type = "unlock-recipe", recipe = name })
               end
            end
         end

         dup_table = {}
         if modify_table.technologies[k] then
            modifications = modify_table.technologies[k].prereqs
         else
            modifications = nil
         end
         if tech.prerequisites then
            to_remove = {}
            for pk, prereq in pairs(tech.prerequisites) do
               local new = substitution_table.technologies[prereq]
               if new then
                  tech.prerequisites[pk] = new
                  dup_table[new] = true
               else
                  dup_table[prereq] = true
               end
               if modifications and modifications[prereq] == false then
                  to_remove[pk] = true
               end
            end
            for pk = #tech.prerequisites, 1, -1 do
               if to_remove[pk] then
                  table.remove(tech.prerequisites, pk)
               end
            end
         end
         if modifications then
            for name, add in pairs(modifications) do
               if add and not dup_table[name] then
                  table.insert(tech.prerequisites, name)
               end
            end
         end
         local overrides = override_table.technologies[k]
         if overrides then
            override_subtable(tech, overrides)
         end
      end
   end
end

return ov_functions