--ALUMINIUM	
	--INTERMEDIATE
bam.edit_recipe({
    name = "bauxite-ore-processing",
    
    energy_required = 4,
    ingredients ={{"bauxite-ore", 4}},
    results=
    {
      {type="item", name="processed-aluminium", amount=1},
    },
    })bam.edit_recipe({
    name = "aluminium-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-aluminium", 2}},
    results=
    {
      {type="item", name="pellet-aluminium", amount=12},
    },
    })
	--INGOT
bam.edit_recipe({
    name = "bauxite-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="bauxite-ore", amount=6},
      {type="item", name="solid-sodium-hydroxide", amount=6},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-aluminium-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-aluminium", amount=1},
      {type="item", name="solid-sodium-hydroxide", amount=5},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-aluminium-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-aluminium", amount=6},
	  {type="item", name="solid-sodium-hydroxide", amount=6},
	},
    results=
    {
      {type="item", name="solid-aluminium-oxide", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-aluminium-oxide-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-aluminium-oxide", amount=1},
	},
    results=
    {
      {type="item", name="ingot-aluminium", amount=1},
    },
    })
	--SMELTING
bam.edit_recipe({
    name = "molten-aluminium-smelting",
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-aluminium", amount=2},
      {type="item", name="ingot-manganese", amount=1},
	},
    results=
    {
      {type="fluid", name="liquid-molten-aluminium", amount=3},
    },
    })
	--CASTING
bam.edit_recipe({
    name = "roll-aluminium-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-aluminium", amount=2},
	},
    results=
    {
      {type="item", name="angels-roll-aluminium", amount=2},
    },
    })
