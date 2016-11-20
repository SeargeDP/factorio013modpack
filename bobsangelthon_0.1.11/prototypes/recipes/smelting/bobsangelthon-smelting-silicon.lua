--SILICON
	--INTERMEDIATE
bam.edit_recipe({
    name = "silica-ore-processing",
    
    energy_required = 4,
    ingredients ={{"quartz", 4}},
    results=
    {
      {type="item", name="processed-silica", amount=1},
    },
    })bam.edit_recipe({
    name = "silica-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-silica", 2}},
    results=
    {
      {type="item", name="pellet-silica", amount=12},
    },
    })
	--INGOT (carbon electrodes in arc furnace)
bam.edit_recipe({
    name = "silicon-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="quartz", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-silicon-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-silica", amount=1},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-silicon-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-silica", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-silicon", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-silicon-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-silicon", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-silicon", amount=3},
    },
    })
