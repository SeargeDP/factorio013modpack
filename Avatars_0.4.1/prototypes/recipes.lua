data:extend ({

 {
    type = "recipe",
    name = "avatar",
    enabled = false,
    ingredients =
    {
      {"avatar-head", 1},
	  {"avatar-arm", 2},
	  {"avatar-leg", 2},
	  {"avatar-torso", 1},
	  {"avatar-skin", 2}
    },
    result = "avatar",
	category = "advanced-crafting",
	energy_required = 20
 },
 {
    type = "recipe",
    name = "avatar-control-center",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 100},
	  {"stone-brick", 50},
	  {"radar", 10},
	  {"fusion-reactor-equipment", 1},
	  {"power-armor", 1}
    },
    result = "avatar-control-center",
	category = "advanced-crafting",
	energy_required = 30
 },
 {
    type = "recipe",
    name = "avatar-assembling-machine",
    enabled = false,
    ingredients =
    {
	  {"assembling-machine-3", 1},
	  {"processing-unit", 1},
	  {"filter-inserter", 1}
    },
    result = "avatar-assembling-machine",
	category = "crafting",
	energy_required = 5
 },
 {
    type = "recipe",
    name = "avatar-remote-deployment-unit",
    enabled = false,
    ingredients =
    {
      {"steel-plate", 20},
	  {"iron-gear-wheel", 20},
	  {"filter-inserter", 5},
	  {"processing-unit", 5},
	  {"radar", 1}
	  
    },
    result = "avatar-remote-deployment-unit",
	category = "crafting",
	energy_required = 5
 },
 {
    type = "recipe",
    name = "actuator",
    enabled = false,
    ingredients =
    {
      {"processing-unit", 3},
	  {"electric-engine-unit", 5},
	  {"steel-plate", 5}
    },
    result = "actuator",
	category = "crafting",
	energy_required = 10
 },
 {
    type = "recipe",
    name = "avatar-arm",
    enabled = false,
    ingredients =
    {
      {"actuator", 3},
	  {"low-density-structure", 10}
    },
    result = "avatar-arm",
	category = "advanced-crafting",
	energy_required = 20
 },
 {
    type = "recipe",
    name = "avatar-leg",
    enabled = false,
    ingredients =
    {
      {"actuator", 3},
	  {"low-density-structure", 12}
    },
    result = "avatar-leg",
	category = "advanced-crafting",
	energy_required = 20
 },
 {
    type = "recipe",
    name = "avatar-head",
    enabled = false,
    ingredients =
    {
      {"actuator", 1},
	  {"low-density-structure", 2},
	  {"processing-unit", 50},
	  {"radar", 1}
    },
    result = "avatar-head",
	category = "advanced-crafting",
	energy_required = 45
 },
 {
    type = "recipe",
    name = "avatar-torso",
    enabled = false,
    ingredients =
    {
      {"avatar-internals", 1},
	  {"low-density-structure", 20}
    },
    result = "avatar-torso",
	category = "advanced-crafting",
	energy_required = 30
 },
 {
    type = "recipe",
    name = "avatar-internals",
    enabled = false,
    ingredients =
    {
      {"fusion-reactor-equipment", 2},
	  {"effectivity-module-3", 5},
	  {"speed-module-3", 5},
	  {"actuator", 2},
	  {"low-density-structure", 5}
    },
    result = "avatar-internals",
	category = "advanced-crafting",
	energy_required = 30
 },
 {
    type = "recipe",
    name = "avatar-skin",
    enabled = false,
    ingredients =
    {
      {"alien-artifact", 20},
	  {"coal", 10},
	  {type="fluid", name="water", amount=10}
    },
    result = "avatar-skin",
	category = "advanced-crafting",
	energy_required = 30
 }
})