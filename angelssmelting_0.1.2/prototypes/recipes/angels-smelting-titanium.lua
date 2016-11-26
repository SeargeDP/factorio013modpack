data:extend(
{
--CHROME
	--INTERMEDIATE
    {
    type = "recipe",
    name = "titanium-ore-processing",
    category = "ore-processing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"rutile-ore", 4}},
    results=
    {
      {type="item", name="processed-titanium", amount=1},
    },
    main_product= "processed-titanium",
    icon = "__angelssmelting__/graphics/icons/processed-titanium.png",
    order = "a [processed-titanium]",
    },
    {
    type = "recipe",
    name = "titanium-processed-processing",
    category = "pellet-pressing",
	subgroup = "angels-titanium",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"processed-titanium", 2}},
    results=
    {
      {type="item", name="pellet-titanium", amount=12},
    },
    main_product= "pellet-titanium",
    icon = "__angelssmelting__/graphics/icons/pellet-titanium.png",
    order = "b [pellet-titanium]",
    },
	--INGOT
    {
    type = "recipe",
    name = "titanium-ore-smelting",
    category = "liquifying",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="rutile-ore", amount=4},
      {type="item", name="solid-carbon", amount=1},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=5},
    },
    main_product= "liquid-titanium-tetrachloride",
    icon = "__angelssmelting__/graphics/icons/liquid-titanium-tetrachloride.png",
    order = "c [titanium-ore-smelting]",
    },
    {
    type = "recipe",
    name = "processed-titanium-smelting",
    category = "liquifying",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="processed-titanium", amount=1},
      {type="item", name="solid-carbon", amount=1},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=5},
    },
    main_product= "liquid-titanium-tetrachloride",
    icon = "__angelssmelting__/graphics/icons/liquid-titanium-tetrachloride.png",
    order = "d [processed-titanium-smelting]",
    },
    {
    type = "recipe",
    name = "pellet-titanium-smelting",
    category = "liquifying",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="item", name="pellet-titanium", amount=4},
      {type="item", name="solid-carbon", amount=1},
      {type="fluid", name="gas-chlorine", amount=5},
	},
    results=
    {
      {type="fluid", name="liquid-titanium-tetrachloride", amount=5},
    },
    main_product= "liquid-titanium-tetrachloride",
    icon = "__angelssmelting__/graphics/icons/liquid-titanium-tetrachloride.png",
    order = "e [pellet-titanium-smelting]",
    },
    {
    type = "recipe",
    name = "liquid-titanium-tetrachloride-smelting",
    category = "liquifying",
	subgroup = "angels-titanium",
    energy_required = 6,
	enabled = "false",
    ingredients ={
      {type="fluid", name="liquid-titanium-tetrachloride", amount=5},
      {type="item", name="ingot-manganese", amount=1},
	},
    results=
    {
      {type="item", name="sponge-titanium", amount=5},
    },
    main_product= "sponge-titanium",
    icon = "__angelssmelting__/graphics/icons/sponge-titanium.png",
    order = "f [solid-titanium-oxide-smelting]",
    },
    {
    type = "recipe",
    name = "sponge-titanium-smelting",
    category = "blast-smelting",
	subgroup = "angels-titanium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="sponge-titanium", amount=5},
	},
    results=
    {
      {type="item", name="ingot-titanium", amount=5},
    },
    main_product= "ingot-titanium",
    icon = "__angelssmelting__/graphics/icons/ingot-titanium.png",
    order = "g [solid-titanium-oxide-smelting]",
    },
	--SMELTING
    {
    type = "recipe",
    name = "molten-titanium-smelting",
    category = "induction-smelting",
	subgroup = "angels-titanium",
    energy_required = 4,
	enabled = "false",
    ingredients ={
      {type="item", name="ingot-titanium", amount=3},
	},
    results=
    {
      {type="fluid", name="liquid-molten-titanium", amount=3},
    },
    main_product= "liquid-molten-titanium",
    icon = "__angelssmelting__/graphics/icons/molten-titanium.png",
    order = "h [molten-titanium-smelting]",
    },
}
)