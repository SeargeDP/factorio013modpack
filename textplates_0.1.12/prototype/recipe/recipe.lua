for i1, material in ipairs(materials) do
	for i2, size in ipairs(sizes) do
		local recipe = { 
			type = "recipe",
			name = size.."-"..material.."-blank",
			icon = "__textplates__/graphics/icon/"..size.."/"..material.."_blank"..".png",
			category = "crafting",
			enabled = true,
			energy_required = 0.5,
			ingredients = {{type="item", name=material.."-plate", amount=1}},
			results= {{type="item", name=size.."-"..material.."-blank", amount=1}},
		}
		if(size == "large") then
			recipe.ingredients[1].amount = 4
			recipe.energy_required = 1
		end
		data:extend({recipe})
	end
end