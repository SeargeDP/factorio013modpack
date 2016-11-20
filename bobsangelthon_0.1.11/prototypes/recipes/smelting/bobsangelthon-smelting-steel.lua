--STEEL
	--SMELTING
bam.edit_recipe({
    name = "molten-steel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-steel", amount=3},
    },
    })bam.edit_recipe({
    name = "molten-silicon-steel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-steel", amount=4},
      {type="item", name="ingot-silicon", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silicon-steel", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-roll-silicon-steel-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-silicon-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-steel", amount=3},
    },
    })bam.edit_recipe({
    name = "molten-manganese-steel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-steel", amount=4},
      {type="item", name="ingot-manganese", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-manganese-steel", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-roll-manganese-steel-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-manganese-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-manganese", amount=3},
    },
    })bam.edit_recipe({
    name = "molten-cobalt-nickel-steel-smelting",
   
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
      {type="item", name="ingot-cobalt", amount=2},
      {type="item", name="ingot-nickel", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt-nickel-steel", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-roll-cobalt-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-cobalt-nickel-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-cobalt", amount=3},
    },
    })bam.edit_recipe({
    name = "molten-chrome-tungsten-steel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-steel", amount=3},
      {type="item", name="ingot-chrome", amount=2},
      {type="item", name="ingot-tungsten", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-chrome-tungsten-steel", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-roll-chrome-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-chrome-tungsten-steel", amount=3},
	},
    results=
    {
      {type="item", name="angels-roll-chrome", amount=3},
    },
    })
