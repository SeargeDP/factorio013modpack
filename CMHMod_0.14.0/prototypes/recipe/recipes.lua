data:extend(
{
  { type = "recipe",
    name = "advanced-electrum",
    enabled = "false",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 18,
    ingredients = 
    {
      {type = "item", name = "silver-ore", amount = 5},
      {type = "item", name = "stone", amount = 1},
      {type = "item", name = "iron-ore", amount = 4},
    },
    results = 
    {
      {type = "item", name = "silver-plate", amount = 1},
      {type = "item", name = "gold-ore", amount = 5},
    },
    main_product= "gold-ore",
    icon = "__CMHMod__/graphics/icons/silver-gold.png",
    order = "c-b"
  },

  { type = "recipe",
    name = "crude-gold",
    enabled = "true",
    category = "smelting",
    subgroup = "bob-material-smelting",
    energy_required = 5,
    ingredients = 
    {
      {type = "item", name = "silver-ore", amount = 2},
    },
    results = 
    {
      {type = "item", name = "gold-ore", amount = 1},
    },
    main_product= "gold-ore",
    icon = "__CMHMod__/graphics/icons/crude-gold.png",
  },

  { type = "recipe",
    name = "zinc-iron",
    enabled = "false",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 25,
    ingredients = 
    {
      {type = "item", name = "iron-ore", amount = 7},
      {type = "item", name = "coal", amount = 2},
      {type = "item", name = "salt", amount = 1},
    },
    results = 
    {
      {type = "item", name = "iron-plate", amount = 8},
      {type = "item", name = "zinc-ore", amount = 2},
    },
    main_product= "iron-plate",
    icon = "__CMHMod__/graphics/icons/iron-zinc.png",
  },

  { type = "recipe",
    name = "zinc-tin",
    enabled = "false",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 18,
    ingredients = 
    {
      {type = "item", name = "tin-ore", amount = 5},
      {type = "item", name = "carbon", amount = 1},
    },
    results = 
    {
      {type = "item", name = "tin-plate", amount = 6},
      {type = "item", name = "zinc-ore", amount = 2},
    },
    main_product= "tin-plate",
    icon = "__CMHMod__/graphics/icons/zinc-tin.png",
  },

  { type = "recipe",
    name = "stone-quartz",
    enabled = "true",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 2.5,
    ingredients = 
    {
      {type = "item", name = "stone", amount = 1},

    },
    results = 
    {
      {type = "item", name = "quartz", amount = 1},
    },
    icon = "__CMHMod__/graphics/icons/stone-quartz.png",
  },


  { type = "recipe",
    name = "aluminium-titanium-a",
    enabled = "false",
    category = "chemical-furnace",
    subgroup = "bob-material-chemical",
    energy_required = 28,
    ingredients = 
    {
      {type = "item", name = "rutile-ore", amount = 4},
      {type = "item", name = "alumina", amount = 4},
      {type = "item", name = "carbon", amount = 4}, 
      {type = "item", name = "calcium-chloride", amount = 4},

    },
    results = 
    {
      {type = "item", name = "titanium-plate", amount = 6},
      {type = "item", name = "aluminium-plate", amount = 6},
      {type = "item", name = "quartz", amount = 2},
    },
    icon = "__CMHMod__/graphics/icons/aluminium-titanium.png",
  },
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
     icon = "__CMHMod__/graphics/icons/rocket-engine.png",
  },

    {
    type = "recipe",
    name = "CMH-NaOH",
    category = "chemistry",
    energy_required = 0.5,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="water", amount=5},
      {type="item", name="sodium-hydroxide", amount=5},
    },
    results=
    {
      {type="fluid", name="CMH-NaOH", amount=5}
    },
    main_product= "CMH-NaOH",
    subgroup = "bob-fluid",
    icon = "__CMHMod__/graphics/icons/NaOH.png",
    order = "b[fluid-chemistry]-f[sulfuric-acid]"
  },

  {  type = "recipe",
     name = "CMH-refining",
     category = "oil-processing",
     enabled = false,
     energy_required = 5,
     ingredients =
     {
       {type="fluid", name="crude-oil", amount=10},
       {type="fluid", name="CMH-NaOH", amount=5},
     },
     results=
     {
       {type="fluid", name="heavy-oil", amount=5},
       {type="fluid", name="light-oil", amount=2},
       {type="fluid", name="petroleum-gas", amount=3}
     },
     icon = "__base__/graphics/icons/fluid/basic-oil-processing.png",
     subgroup = "fluid-recipes",
     order = "a[oil-processing]-c[bob-oil-processing]"
  },
  {
    type = "recipe",
    name = "CMH-coal-cracking",
    category = "chemistry",
    enabled = "false",
    energy_required = 2.5,
    ingredients =
    {
      {type="item", name="coal", amount=2},
      {type="fluid", name="water", amount=1.5},
      {type="fluid", name="CMH-NaOH", amount=2}
    },
    results=
    {
      {type="fluid", name="heavy-oil", amount=1.2}
    },
    subgroup = "bob-fluid",
    icon = "__bobplates__/graphics/icons/coal-cracking.png",
    order = "b[fluid-chemistry]-a[coal-cracking]"
  },

}
)

data:extend({
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