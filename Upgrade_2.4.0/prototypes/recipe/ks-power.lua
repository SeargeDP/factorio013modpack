-- Recipes added if KS_Power is added.
if data.raw["recipe"]["burner-generator"] then
	data:extend({
	  {
		type = "recipe",
		name = "generator-burner-steam",
		energy_required = 2,
		enabled = true,
		ingredients = 
		{
		  {"burner-generator", 1},
		  {"iron-plate", 1}
		},
		result = "steam-engine"
	  }
	})
end