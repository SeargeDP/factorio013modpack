--NICKEL
	--INTERMEDIATE
bam.edit_recipe({
    name = "nickel-ore-processing",
    
    energy_required = 4,
    ingredients ={{"nickel-ore", 4}},
    results=
    {
      {type="item", name="processed-nickel", amount=1},
    },
    })bam.edit_recipe({
    name = "nickel-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-nickel", 2}},
    results=
    {
      {type="item", name="pellet-nickel", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "nickel-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="nickel-ore", amount=6},
      {type="fluid", name="gas-carbon-monoxide", amount=6},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-nickel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-nickel", amount=1},
      {type="fluid", name="gas-carbon-monoxide", amount=5},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-nickel-smelting",
   
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-nickel", amount=6},
      {type="fluid", name="gas-carbon-monoxide", amount=6},
	},
    results=
    {
      {type="item", name="ingot-nickel", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-nickel-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-nickel", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-nickel", amount=3},
    },
    })
