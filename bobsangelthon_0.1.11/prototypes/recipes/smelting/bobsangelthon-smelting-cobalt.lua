--COBALT
	--INTERMEDIATE
bam.edit_recipe({
    name = "cobalt-ore-processing",
    
    energy_required = 4,
    ingredients ={{"cobalt-ore", 4}},
    results=
    {
      {type="item", name="processed-cobalt", amount=1},
    },
    })bam.edit_recipe({
    name = "cobalt-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-cobalt", 2}},
    results=
    {
      {type="item", name="pellet-cobalt", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "cobalt-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="cobalt-ore", amount=6},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-cobalt-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-cobalt", amount=1},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-cobalt-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-cobalt", amount=6},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-cobalt", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-cobalt-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-cobalt", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-cobalt", amount=3},
    },
    })
