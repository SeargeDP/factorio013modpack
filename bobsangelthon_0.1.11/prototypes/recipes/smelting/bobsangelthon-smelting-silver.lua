--SILVER
	--INTERMEDIATE
bam.edit_recipe({
    name = "silver-ore-processing",
    
    energy_required = 4,
    ingredients ={{"silver-ore", 4}},
    results=
    {
      {type="item", name="processed-silver", amount=1},
    },
    })bam.edit_recipe({
    name = "silver-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-silver", 2}},
    results=
    {
      {type="item", name="pellet-silver", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "silver-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="silver-ore", amount=6},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-silver-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-silver", amount=1},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-silver-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-silver", amount=6},
	},
    results=
    {
      {type="item", name="ingot-silver", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-silver-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-silver", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silver", amount=3},
    },
    })    --CASTING
bam.edit_recipe({
    name = "angels-wire-coil-silver-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-silver", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-silver", amount=3},
    },
    })
