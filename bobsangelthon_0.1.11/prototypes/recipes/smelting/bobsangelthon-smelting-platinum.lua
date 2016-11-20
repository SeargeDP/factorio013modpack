--PLATINUM
	--INTERMEDIATE
bam.edit_recipe({
    name = "platinum-ore-processing",
    
    energy_required = 4,
    ingredients ={{"platinum-ore", 4}},
    results=
    {
      {type="item", name="processed-platinum", amount=1},
    },
    })bam.edit_recipe({
    name = "platinum-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-platinum", 2}},
    results=
    {
      {type="item", name="pellet-platinum", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "platinum-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="platinum-ore", amount=6},
      {type="fluid", name="gas-ammonium-chloride", amount=3},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-platinum-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-platinum", amount=1},
      {type="fluid", name="gas-ammonium-chloride", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-platinum-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-platinum", amount=6},
	  {type="fluid", name="gas-ammonium-chloride", amount=3},
	},
    results=
    {
      {type="item", name="solid-ammonium-chloroplatinate", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-platinum-chloroplatinate-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-ammonium-chloroplatinate", amount=6},
	},
    results=
    {
      {type="item", name="ingot-platinum", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-platinum-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-platinum", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-platinum", amount=3},
    },
    })    --CASTING
bam.edit_recipe({
    name = "angels-wire-coil-platinum-casting",
    
    energy_required = 8,
    ingredients ={
      {type="fluid", name="liquid-molten-platinum", amount=3},
	},
    results=
    {
      {type="item", name="angels-wire-coil-platinum", amount=3},
    },
    })
