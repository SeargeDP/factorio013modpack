--SOLDER
bam.edit_recipe({
    name = "angels-solder-1-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-tin", amount=4},
      {type="item", name="ingot-lead", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-1", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-solder-2-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-tin", amount=2},
      {type="item", name="ingot-copper", amount=2},
      {type="item", name="ingot-silver", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-2", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-solder-3-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-tin", amount=4},
      {type="item", name="ingot-zinc", amount=2},
	},
    results=
    {
      {type="fluid", name="liquid-molten-solder-3", amount=6},
    },
    })bam.edit_recipe({
    name = "angels-solder-1-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-solder-1", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-1", amount=3},
    },
    })bam.edit_recipe({
    name = "angels-solder-2-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-solder-2", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-2", amount=3},
    },
    },
	{
    type = "recipe",
    name = "angels-solder-3-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-solder-3", amount=3},
      {type="fluid", name="water", amount=1},
	},
    results=
    {
      {type="item", name="angels-solder-3", amount=3},
    },
    })
