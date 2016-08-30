data:extend({
	{
		type = "movement-bonus-equipment",
		name = "collector-grounditems-armor-module",
		take_result = "collector-grounditems-armor-module",
		sprite = {
			filename = "__base__/graphics/icons/radar.png",
			width = 64,
			height = 64,
			priority = "medium"
		},
		shape = {
			width = 2,
			height = 2,
			type = "full"
		},
		energy_source = {
			type = "electric",
			buffer_capacity = "1MJ",
			input_flow_limit = "80KW",
			usage_priority = "secondary-input"
		},
		energy_consumption = "8kW",
		movement_bonus = 0.0,
		categories = {"armor"}
	}
})
 
