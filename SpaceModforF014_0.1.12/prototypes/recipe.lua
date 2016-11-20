data:extend({
  {
    type = "recipe",
    name = "assembly-robot",
    enabled = false,
	energy_required = 10,
    ingredients =
    {
      {"construction-robot", 5},
      {"speed-module-3", 1},
      {"effectivity-module-3", 1 },
	  {"low-density-structure", 5}
    },
    result = "assembly-robot"
  },
  {
    type = "recipe",
    name = "drydock-assembly",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"assembly-robot", 50},
      {"roboport", 10},
      {"processing-unit", 200},
	  {"solar-panel", 200},
	  {"low-density-structure", 100}
    },
    result = "drydock-assembly"
  },
  {
    type = "recipe",
    name = "drydock-structural",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
	  {"low-density-structure", 200}
    },
    result = "drydock-structural"
  },  
  {
    type = "recipe",
    name = "fusion-reactor",
    enabled = false,
	energy_required = 100,
    ingredients =
    {
	  {"fusion-reactor-equipment", 100}
    },
    result = "fusion-reactor"
  },
  {
    type = "recipe",
    name = "hull-component",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
	  {"low-density-structure", 250},
	  {"steel-plate", 100}
    },
    result = "hull-component"
  },  
  {
    type = "recipe",
    name = "protection-field",
    enabled = false,
	energy_required = 100,
    ingredients =
    {
	  {"energy-shield-mk2-equipment", 100}
    },
    result = "protection-field"
  }, 
  {
    type = "recipe",
    name = "space-thruster",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"speed-module-3", 50},
      {"pipe", 100},
      {"processing-unit", 100},
	  {"electric-engine-unit", 100},
	  {"low-density-structure", 100}
    },
    result = "space-thruster"
  },  
  {
    type = "recipe",
    name = "fuel-cell",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"steel-plate", 100},
      {"rocket-fuel", 500},
      {"processing-unit", 100},
	  {"low-density-structure", 100}
    },
    result = "fuel-cell"
  },   
  {
    type = "recipe",
    name = "habitation",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"steel-plate", 100},
      {"plastic-bar", 500},
      {"processing-unit", 100},
	  {"low-density-structure", 100}
    },
    result = "habitation"
  }, 
  {
    type = "recipe",
    name = "life-support",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"productivity-module-3", 50},
      {"pipe", 200},
      {"processing-unit", 100},
	  {"low-density-structure", 100}
    },
    result = "life-support"
  }, 
  {
    type = "recipe",
    name = "command",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"speed-module-3", 50},
	  {"effectivity-module-3", 50},
	  {"productivity-module-3", 50},
      {"plastic-bar", 200},
      {"processing-unit", 100},
	  {"low-density-structure", 100}
    },
    result = "command"
  },   
  {
    type = "recipe",
    name = "astrometrics",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"speed-module-3", 50},
      {"processing-unit", 300},
	  {"low-density-structure", 100}
    },
    result = "astrometrics"
  }, 
  {
    type = "recipe",
    name = "ftl-drive",
    enabled = false,
	energy_required = 50,
    ingredients =
    {
      {"productivity-module-3", 500},
      {"speed-module-3", 500},
      {"effectivity-module-3", 500},
	  {"low-density-structure", 100},
	  {"processing-unit", 500}
    },
    result = "ftl-drive"
  },    
})