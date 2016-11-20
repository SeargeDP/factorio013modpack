--TUNGSTEN
	--INTERMEDIATE
bam.edit_recipe({
    name = "tungsten-ore-processing",
    
    energy_required = 4,
    ingredients ={{"tungsten-ore", 4}},
    results=
    {
      {type="item", name="processed-tungsten", amount=1},
    },
    })bam.edit_recipe({
    name = "tungsten-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-tungsten", 2}},
    results=
    {
      {type="item", name="pellet-tungsten", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "tungsten-ore-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="tungsten-ore", amount=6},
      {type="fluid", name="gas-ammonia", amount=6},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-tungsten-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="processed-tungsten", amount=1},
      {type="fluid", name="gas-ammonia", amount=5},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-tungsten-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="pellet-tungsten", amount=6},
      {type="fluid", name="gas-ammonia", amount=6},
	},
    results=
    {
      {type="item", name="solid-ammonium-paratungstate", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-ammonium-paratungstate-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-ammonium-paratungstate", amount=6},
	},
    results=
    {
      {type="item", name="solid-tungsten-oxide", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-tungsten-oxide-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-tungsten-oxide", amount=6},
      {type="fluid", name="gas-hydrogen", amount=6},
	},
    results=
    {
      {type="item", name="ingot-tungsten", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-tungsten-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-tungsten", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-tungsten", amount=3},
    },
    })
