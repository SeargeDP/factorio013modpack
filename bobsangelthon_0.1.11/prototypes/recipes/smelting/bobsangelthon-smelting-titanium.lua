--TITANIUM
	--INTERMEDIATE
bam.edit_recipe({
    name = "titanium-ore-processing",
    
    energy_required = 4,
    ingredients ={{"rutile-ore", 4}},
    results=
    {
      {type="item", name="processed-titanium", amount=1},
    },
    })bam.edit_recipe({
    name = "titanium-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-titanium", 2}},
    results=
    {
      {type="item", name="pellet-titanium", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "titanium-ore-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="rutile-ore", amount=6},
      {type="item", name="solid-carbon", amount=2},
      {type="fluid", name="gas-chlorine", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=8},
    },
    })bam.edit_recipe({
    name = "processed-titanium-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="processed-titanium", amount=1},
      {type="item", name="solid-carbon", amount=2},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=7},
    },
    })bam.edit_recipe({
    name = "pellet-titanium-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="item", name="pellet-titanium", amount=6},
      {type="item", name="solid-carbon", amount=2},
      {type="fluid", name="gas-chlorine", amount=6},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=8},
    },
    })bam.edit_recipe({
    name = "liquid-titanium-tetrachloride-smelting",
    
    energy_required = 12,
    ingredients ={
      {type="fluid", name="liquid-titanium-tetrachloride", amount=4},
      {type="item", name="ingot-manganese", amount=2},
	},
    results=
    {
      {type="item", name="sponge-titanium", amount=6},
    },
    })bam.edit_recipe({
    name = "sponge-titanium-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="sponge-titanium", amount=6},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-titanium-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-titanium", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=3},
    },
    })
