data:extend(
{
  {  type = "recipe",
     name = "rocket-engine",
     enabled = "false",
     category = "crafting",
     energy_required = 3,
     ingredients = 
     {
       {type = "item", name = "cobalt-steel-alloy", amount = 1},
       {type = "item", name = "invar-alloy", amount = 1},
       {type = "item", name = "tungsten-plate", amount = 1}, 
     },
     results = 
     {
       {type = "item", name = "rocket-engine", amount = 1},
     },
     icon = "__CMHModBobEndGame__/graphics/icons/rocket-engine.png",
  },

  {

    type = "recipe",
  
  name = "low-density-structure",

    energy_required = 30,

    enabled = false,

    category = "crafting",

    ingredients =

    {

      {"nitinol-alloy", 10},

      {"aluminium-plate", 5},

      {"plastic-bar", 5}

    },

    result= "low-density-structure"

  },


  {

    type = "recipe",

    name = "satellite",

    energy_required = 3,

    enabled = false,

    category = "crafting",

    ingredients =

    {

      {"low-density-structure", 100},

      {"solar-panel", 100},

      {"accumulator", 100},

      {"radar", 5},

      {"advanced-processing-unit", 100},

      {"rocket-fuel", 50}

    },

    result= "satellite"

  },


  {

    type = "recipe",

    name = "rocket-part",

    energy_required = 3,

    enabled = false,

    hidden = true,

    category = "rocket-building",

    ingredients =

    {

      {"low-density-structure", 10},

      {"rocket-fuel", 10},

      {"rocket-control-unit", 10},

      {"rocket-engine", 10}

    },

    result= "rocket-part"

  },	

  {

    type = "recipe",

    name = "rocket-control-unit",

    energy_required = 30,

    enabled = false,

    category = "crafting",

    ingredients =

    {

      {"advanced-processing-unit", 1},

      {"speed-module-3", 1}

    },

    result= "rocket-control-unit"

  },

  {

    type = "recipe",

    name = "rocket-fuel",

    energy_required = 30,

    enabled = false,

    category = "chemistry",

    ingredients =

    {

      {"solid-fuel", 10},

      {type="fluid", name="sulfuric-acid", amount=10},
      {type="fluid", name="nitric-acid", amount=10}

    },

    result= "rocket-fuel"

  },

})

data.raw["recipe"]["rocket-silo"].ingredients = 
    {

      {"steel-plate", 1000},

      {"concrete", 1000},

      {"pipe", 100},

      {"advanced-processing-unit", 200},

      {"electric-engine-unit", 200}

    }