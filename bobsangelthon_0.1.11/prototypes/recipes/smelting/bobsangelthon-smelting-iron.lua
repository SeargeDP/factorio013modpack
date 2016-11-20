--IRON
	--INTERMEDIATE
bam.edit_recipe({
    name = "iron-ore-processing",
    
    energy_required = 4.33,
    ingredients ={{"iron-ore", 6}},
    results=
    {
      {type="item", name="processed-iron", amount=1},
    },
    })bam.edit_recipe({
    name = "iron-processed-processing",
    
    energy_required = 4.33,
    ingredients ={{"processed-iron", 1}},
    results=
    {
      {type="item", name="pellet-iron", amount=30},
    },
    })    --INGOT
bam.edit_recipe({
    name = "iron-ore-smelting",
    
    energy_required = 8.5,
    ingredients ={
      {type="item", name="iron-ore", amount=6},
      {type="item", name="solid-coke", amount=3},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=18},
    },
    })bam.edit_recipe({
    name = "processed-iron-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="processed-iron", amount=1},
      {type="item", name="solid-coke", amount=2},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=24},
    },
    })bam.edit_recipe({
    name = "pellet-iron-smelting",
    
    energy_required = 8.5,
    ingredients ={
      {type="item", name="pellet-iron", amount=8},
      {type="item", name="solid-coke", amount=3},
	},
    results=
    {
      {type="item", name="ingot-iron", amount=8},
    },
    })bam.edit_recipe({
    name = "ingot-iron-smelting",
    
    energy_required = 8.5,
    ingredients ={
      {type="item", name="ingot-iron", amount=9},
      {type="fluid", name="gas-oxygen", amount=9},
	},
    results=
    {
      {type="item", name="ingot-steel", amount=5},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-iron-smelting",
    
    energy_required = 8.5,
    ingredients ={
      {type="item", name="ingot-iron", amount=5},
	},
    results=
    {
      {type="fluid", name="liquid-molten-iron", amount=5},
    },
    })
