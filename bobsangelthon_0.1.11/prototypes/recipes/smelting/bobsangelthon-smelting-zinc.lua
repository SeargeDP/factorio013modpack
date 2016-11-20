--ZINC
	--INTERMEDIATE
bam.edit_recipe({
    name = "zinc-ore-processing",
    
    energy_required = 4,
    ingredients ={{"zinc-ore", 4}},
    results=
    {
      {type="item", name="processed-zinc", amount=1},
    },
    })
    
bam.edit_recipe({
    name = "zinc-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-zinc", 2}},
    results=
    {
      {type="item", name="pellet-zinc", amount=12},
    },
    })
	--INGOT
bam.edit_recipe({
    name = "zinc-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="zinc-ore", amount=6},
      {type="fluid", name="gas-carbon-monoxide", amount=6},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=6},
    },
    })
    
bam.edit_recipe({
    name = "processed-zinc-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-zinc", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=5},
    },
    })
    
bam.edit_recipe({
    name = "pellet-zinc-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-zinc", amount=6},
      {type="fluid", name="gas-carbon-monoxide", amount=6},
	},
    results=
    {
      {type="item", name="ingot-zinc", amount=6},
    },
    })
	--SMELTING
bam.edit_recipe({
    name = "molten-zinc-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-zinc", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-zinc", amount=3},
    },
    })
