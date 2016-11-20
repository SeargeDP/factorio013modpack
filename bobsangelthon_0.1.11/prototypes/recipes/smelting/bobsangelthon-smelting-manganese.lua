--MANGANESE
	--INTERMEDIATE
bam.edit_recipe({
    name = "manganese-ore-processing",
    
    energy_required = 4,
    ingredients ={{"manganese-ore", 4}},
    results=
    {
      {type="item", name="processed-manganese", amount=1},
    },
    })bam.edit_recipe({
    name = "manganese-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-manganese", 2}},
    results=
    {
      {type="item", name="pellet-manganese", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "manganese-ore-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="manganese-ore", amount=6},
      {type="fluid", name="liquid-sulfuric-acid", amount=3},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-manganese-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-manganese", amount=1},
      {type="fluid", name="liquid-sulfuric-acid", amount=2.5},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-manganese-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-manganese", amount=6},
      {type="fluid", name="liquid-sulfuric-acid", amount=3},
	},
    results=
    {
      {type="item", name="solid-manganese-sulfate", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-manganese-sulfate-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-manganese-sulfate", amount=6},
	},
    results=
    {
      {type="item", name="ingot-manganese", amount=6},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-manganese-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-manganese", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-manganese", amount=3},
    },
    })
