data:extend(
{
--CHEMICAL BASIC
{
    type = "fluid",
    name = "gas-compressed-air",
    icon = "__angelspetrochem__/graphics/icons/gas-compressed-air.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "gas-hydrogen",
    icon = "__angelspetrochem__/graphics/icons/gas-hydrogen.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 1, b = 1},
    flow_color = {r = 1, g = 1, b = 1},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "gas-oxygen",
    icon = "__angelspetrochem__/graphics/icons/gas-oxygen.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 0, b = 0},
    flow_color = {r = 1, g = 0, b = 0},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "gas-carbon-monoxide",
    icon = "__angelspetrochem__/graphics/icons/gas-carbon-monoxide.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 0.3, b = 0.3},
    flow_color = {r = 1, g = 0.3, b = 0.3},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "gas-carbon-dioxide",
    icon = "__angelspetrochem__/graphics/icons/gas-carbon-dioxide.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 1, g = 0.5, b = 0.5},
    flow_color = {r = 1, g = 0.5, b = 0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
{
    type = "fluid",
    name = "liquid-hydrofluoric-acid",
    icon = "__angelspetrochem__/graphics/icons/liquid-hydrofluoric-acid.png",
	default_temperature = 25,
    heat_capacity = "1KJ",
    base_color = {r = 0, g = 1, b = 0.5},
    flow_color = {r = 0, g = 1, b = 0.5},
    max_temperature = 100,
	pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59,
},
--VOID
{
    type = "item",
    name = "chemical-void",
    icon = "__angelspetrochem__/graphics/icons/solid-sodium-hydroxide.png",
    flags = {"goes-to-main-inventory"},
	subgroup = "petrochem-raw",
    order = "a[chemical-void]",
    stack_size = 200
},
}
)