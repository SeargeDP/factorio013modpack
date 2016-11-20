--LEAD
	--INTERMEDIATE
bam.edit_recipe({
    name = "lead-ore-processing",
    
    energy_required = 4,
    ingredients ={{"lead-ore", 4}},
    results=
    {
      {type="item", name="processed-lead", amount=1},
    },
    })bam.edit_recipe({
    name = "lead-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-lead", 2}},
    results=
    {
      {type="item", name="pellet-lead", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "lead-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="lead-ore", amount=6},
      {type="fluid", name="gas-oxygen", amount=6},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=6},
	  {type="fluid", name="gas-sulfur-dioxide", amount=3},
    },
    })bam.edit_recipe({
    name = "processed-lead-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-lead", amount=1},
      {type="fluid", name="gas-oxygen", amount=5},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=5},
	  {type="fluid", name="gas-sulfur-dioxide", amount=2.5},
    },
    })bam.edit_recipe({
    name = "pellet-lead-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-lead", amount=6},
      {type="fluid", name="gas-oxygen", amount=6},
	},
    results=
    {
      {type="item", name="solid-lead-oxide", amount=6},
      {type="fluid", name="gas-sulfur-dioxide", amount=3},
    },
    })bam.edit_recipe({
    name = "solid-lead-oxide-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-lead-oxide", amount=6},
      {type="item", name="solid-carbon", amount=2},
	},
    results=
    {
      {type="item", name="ingot-lead", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-lead-smelting",
   
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-lead", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-lead", amount=3},
    },
    })
