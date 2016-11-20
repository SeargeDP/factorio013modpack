--CHROME
	--INTERMEDIATE
bam.edit_recipe({
    name = "chrome-ore-processing",
    
    energy_required = 4,
    ingredients ={{"chrome-ore", 4}},
    results=
    {
      {type="item", name="processed-chrome", amount=1},
    },
    })bam.edit_recipe({
    name = "chrome-processed-processing",
    
    energy_required = 4,
    ingredients ={{"processed-chrome", 2}},
    results=
    {
      {type="item", name="pellet-chrome", amount=12},
    },
    })    --INGOT
bam.edit_recipe({
    name = "chrome-ore-smelting",
    
    energy_required = 4,
    ingredients ={
      {type="item", name="chrome-ore", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=6},
    },
    })bam.edit_recipe({
    name = "processed-chrome-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="processed-chrome", amount=1},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=5},
    },
    })bam.edit_recipe({
    name = "pellet-chrome-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="pellet-chrome", amount=6},
      {type="item", name="coal", amount=2},
	},
    results=
    {
      {type="item", name="solid-chrome-oxide", amount=6},
    },
    })bam.edit_recipe({
    name = "solid-chrome-oxide-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="solid-chrome-oxide", amount=1},
      {type="fluid", name="liquid-sulfuric-acid", amount=1},
	},
    results=
    {
      {type="item", name="ingot-chrome", amount=1},
    },
    })    --SMELTING
bam.edit_recipe({
    name = "molten-chrome-smelting",
    
    energy_required = 8,
    ingredients ={
      {type="item", name="ingot-chrome", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-chrome", amount=3},
    },
    })
