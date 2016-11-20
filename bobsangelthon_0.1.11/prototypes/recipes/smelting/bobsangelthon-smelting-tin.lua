--TIN
	--INTERMEDIATE
bam.edit_recipe({
    name = "tin-ore-processing",
    
    energy_required = 4,
    ingredients ={{"tin-ore", 4}},
    results=
    {
      {type="item", name="processed-tin", amount=1},
    },
    })bam.edit_recipe({
    name = "tin-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-tin", 2}},
    results=
    {
      {type="item", name="pellet-tin", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "tin-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="tin-ore", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-tin-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-tin", amount=1},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-tin-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-tin", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="ingot-tin", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-tin-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-tin", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-tin", amount=3},
    },
    })    --CASTING
bam.edit_recipe({
    name = "angels-wire-coil-tin-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-tin", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-tin", amount=3},
    },
    })
