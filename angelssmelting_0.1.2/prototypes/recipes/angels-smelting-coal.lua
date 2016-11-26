data:extend(
{
--COAL
	--INTERMEDIATE
    {
    type = "recipe",
    name = "chrome-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={
      {type="item", name="coal", amount=1},
	},
    results=
    {
      {type="item", name="solid-carbon", amount=1},
    },
    main_product= "solid-carbon",
    icon = "__angelssmelting__/graphics/icons/solid-carbon.png",
    order = "a [solid-carbon]",
    },
}
)