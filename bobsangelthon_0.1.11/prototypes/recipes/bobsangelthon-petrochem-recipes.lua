bam.edit_recipe({
    name = "solid-fuel-synthesis",
    
    energy_required = 4,
	ingredients ={
		{type="item", name="solid-coke", amount=4},
		{type="fluid", name="gas-synthesis", amount=25},
	},
    results=
    {
		{type="item", name="solid-fuel", amount=2},
    },
    })
