-- Recipes added if Bob's mods, specifically logistics and electronics, are active or not.
if data.raw["recipe"]["long-handed-burner-inserter"] then
	if data.raw["recipe"]["basic-circuit-board"] then
		data:extend({
		  {
			type = "recipe",
			name = "bobs-longinserter-burner-basic",
			energy_required = 1,
			enabled = true,
			ingredients = 
			{
			  {"long-handed-burner-inserter", 1},
			  {"basic-circuit-board", 1}
			},
			result = "long-handed-inserter"
		  }
		})
	else
		data:extend({
		  {
			type = "recipe",
			name = "bobs-longinserter-burner-basic",
			energy_required = 1,
			enabled = true,
			ingredients = 
			{
			  {"long-handed-burner-inserter", 1},
			  {"electronic-circuit", 1}
			},
			result = "long-handed-inserter"
		  }
		})
	end
end
if data.raw["recipe"]["basic-circuit-board"] then
	data:extend({
	  {
		type = "recipe",
		name = "drill-burner-electric",
		energy_required = 3,
		enabled = true,
		ingredients = 
		{
		  {"burner-mining-drill", 1},
		  {"basic-circuit-board", 3},
		  {"iron-plate", 11}
		},
		result = "electric-mining-drill"
	  },
	  {
		type = "recipe",
		name = "inserter-burner-basic",
		energy_required = 1,
		enabled = true,
		ingredients = 
		{
		  {"burner-inserter", 1},
		  {"basic-circuit-board", 1}
		},
		result = "inserter"
	  }
	})
else
	data:extend({
	  {
		type = "recipe",
		name = "drill-burner-electric",
		energy_required = 3,
		enabled = true,
		ingredients = 
		{
		  {"burner-mining-drill", 1},
		  {"electronic-circuit", 3},
		  {"iron-gear-wheel", 2},
		  {"iron-plate", 7}
		},
		result = "electric-mining-drill"
	  },
	  {
		type = "recipe",
		name = "inserter-burner-basic",
		energy_required = 1,
		enabled = true,
		ingredients = 
		{
		  {"burner-inserter", 1},
		  {"electronic-circuit", 1}
		},
		result = "inserter"
	  }
	})
end