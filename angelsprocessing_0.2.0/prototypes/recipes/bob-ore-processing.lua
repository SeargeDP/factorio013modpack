data:extend(
{
--BAUXITE
    {
    type = "recipe",
    name = "bauxite-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"bauxite-ore", 4}},
    results=
    {
      {type="item", name="bauxite-processed", amount=1},
    },
    main_product= "bauxite-processed",
    icon = "__angelsprocessing__/graphics/icons/bauxite-processed.png",
    order = "a [bauxite-processed]",
    },
    {
    type = "recipe",
    name = "bauxite-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"bauxite-processed", 2}},
    results=
    {
      {type="item", name="bauxite-ingot", amount=12},
    },
    main_product= "bauxite-ingot",
    icon = "__angelsprocessing__/graphics/icons/bauxite-ingot.png",
    order = "a [bauxite-ingot]",
    },
    {
    type = "recipe",
    name = "alumina-processed",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-processed",
    energy_required = 2,
	enabled = "false",
    ingredients =
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="item", name="bauxite-processed", amount=1},
    },
    results=
	{
      {type="item", name="alumina", amount=5},
    },
	icon = "__angelsprocessing__/graphics/icons/corundum-processed.png",
    order = "f[alumina]"
    },
	{
    type = "recipe",
    name = "alumina-ingot",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-ingot",
    energy_required = 1,
	enabled = "false",
    ingredients =
    {
      {type="item", name="sodium-hydroxide", amount=1},
      {type="item", name="bauxite-ingot", amount=1},
    },
    results=
	{
      {type="item", name="alumina", amount=1},
    },
	icon = "__angelsprocessing__/graphics/icons/corundum-ingot.png",
    order = "f[alumina]"
    },
--COBALT
    {
    type = "recipe",
    name = "cobalt-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"cobalt-ore", 4}},
    results=
    {
      {type="item", name="cobalt-processed", amount=1},
    },
    main_product= "cobalt-processed",
    icon = "__angelsprocessing__/graphics/icons/cobalt-processed.png",
    order = "b [cobalt-processed]",
    },
    {
    type = "recipe",
    name = "cobalt-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"cobalt-processed", 2}},
    results=
    {
      {type="item", name="cobalt-ingot", amount=12},
    },
    main_product= "cobalt-ingot",
    icon = "__angelsprocessing__/graphics/icons/cobalt-ingot.png",
    order = "b [cobalt-ingot]",
    },
    {
    type = "recipe",
    name = "cobalt-oxide-processed",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-processed",
    energy_required = 7,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cobalt-processed", amount=2},
      {type="item", name="stone", amount=5}
    },
    result="cobalt-oxide",
    result_count = 10,
	icon = "__angelsprocessing__/graphics/icons/cobalt-oxide-processed.png",
    order = "c-b[cobalt-oxide-from-processed]"
    },
	{
    type = "recipe",
    name = "cobalt-oxide-ingot",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-ingot",
    energy_required = 3.5,
    enabled = "false",
    ingredients =
    {
      {type="item", name="cobalt-ingot", amount=2},
      {type="item", name="stone", amount=1}
    },
    result="cobalt-oxide",
    result_count = 2,
	icon = "__angelsprocessing__/graphics/icons/cobalt-oxide-ingot.png",
    order = "c-b[cobalt-oxide-from-ingot]"
    },
--GOLD
    {
    type = "recipe",
    name = "gold-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"gold-ore", 4}},
    results=
    {
      {type="item", name="gold-processed", amount=1},
    },
    main_product= "gold-processed",
    icon = "__angelsprocessing__/graphics/icons/gold-processed.png",
    order = "d [gold-processed]",
    },
    {
    type = "recipe",
    name = "gold-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"gold-processed", 2}},
    results=
    {
      {type="item", name="gold-ingot", amount=12},
    },
    main_product= "gold-ingot",
    icon = "__angelsprocessing__/graphics/icons/gold-ingot.png",
    order = "d [gold-ingot]",
    },
    {
    type = "recipe",
    name = "bob-gold-plate-processed",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-processed",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="gold-processed", amount=1},
      {type="fluid", name="chlorine", amount=2.5}
    },
    results=
	{
      {type="item", name="gold-plate", amount=5},
    },
	main_product= "gold-plate",
	icon = "__angelsprocessing__/graphics/icons/gold-plate-processed.png",
    order = "c-e [gold-plate-from-processed]",
    },
    {
    type = "recipe",
    name = "bob-gold-plate-ingot",
    category = "chemical-furnace",
    subgroup = "bob-plate-from-ingot",
    energy_required = 2,
	enabled = "false",
    ingredients =
    {
      {type="item", name="gold-ingot", amount=1},
      {type="fluid", name="chlorine", amount=0.5}
    },
    results=
	{
      {type="item", name="gold-plate", amount=1},
    },
	main_product= "gold-plate",
	icon = "__angelsprocessing__/graphics/icons/gold-plate-ingot.png",
    order = "c-e [gold-plate-from-ingot]",
    },
--LEAD
    {
    type = "recipe",
    name = "lead-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"lead-ore", 4}},
    results=
    {
      {type="item", name="lead-processed", amount=1},
    },
    main_product= "lead-processed",
    icon = "__angelsprocessing__/graphics/icons/lead-processed.png",
    order = "f [lead-processed]",
    },
    {
    type = "recipe",
    name = "lead-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"lead-processed", 2}},
    results=
    {
      {type="item", name="lead-ingot", amount=12},
    },
    main_product= "lead-ingot",
    icon = "__angelsprocessing__/graphics/icons/lead-ingot.png",
    order = "f [lead-ingot]",
    },
    {
    type = "recipe",
    name = "lead-plate-processed",
    category = "smelting",
	subgroup = "bob-plate-from-processed",
    energy_required = 3.5,
	enabled = "false",
    ingredients ={{"lead-processed", 1}},
    results=
    {
      {type="item", name="lead-plate", amount=5},
    },
    main_product= "lead-plate",
    icon = "__angelsprocessing__/graphics/icons/lead-plate-processed.png",
    order = "c-e [lead-plate-processed]",
    },
    {
    type = "recipe",
    name = "lead-plate-ingot",
    category = "smelting",
	subgroup = "bob-plate-from-ingot",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"lead-ingot", 1}},
    results=
    {
      {type="item", name="lead-plate", amount=1},
    },
    main_product= "lead-plate",
    icon = "__angelsprocessing__/graphics/icons/lead-plate-ingot.png",
    order = "c-e [lead-plate-ingot]",
    },
    {
    type = "recipe",
    name = "lead-oxide-processed",
    category = "chemistry",
    subgroup = "bob-plate-from-processed",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="lead-processed", amount=1},
      {type="fluid", name="oxygen", amount=7.5},
    },
    results=
    {
      {type="item", name="lead-oxide", amount=5},
      {type="fluid", name="sulfur-dioxide", amount=5},
    },
    main_product= "lead-oxide",
    icon = "__angelsprocessing__/graphics/icons/lead-oxide-processed.png",
    order = "f[lead-oxide-processed]"
    },
	{
    type = "recipe",
    name = "lead-oxide-ingot",
    category = "chemistry",
    subgroup = "bob-plate-from-ingot",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="lead-ingot", amount=1},
      {type="fluid", name="oxygen", amount=1.5},
    },
    results=
    {
      {type="item", name="lead-oxide", amount=1},
      {type="fluid", name="sulfur-dioxide", amount=1},
    },
    main_product= "lead-oxide",
    icon = "__angelsprocessing__/graphics/icons/lead-oxide-ingot.png",
    order = "f[lead-oxide-ingot]"
    },
--NICKEL
    {
    type = "recipe",
    name = "nickel-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"nickel-ore", 4}},
    results=
    {
      {type="item", name="nickel-processed", amount=1},
    },
    main_product= "nickel-processed",
    icon = "__angelsprocessing__/graphics/icons/nickel-processed.png",
    order = "g [nickel-processed]",
    },
    {
    type = "recipe",
    name = "nickel-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"nickel-processed", 2}},
    results=
    {
      {type="item", name="nickel-ingot", amount=12},
    },
    main_product= "nickel-ingot",
    icon = "__angelsprocessing__/graphics/icons/nickel-ingot.png",
    order = "g [nickel-ingot]",
    },
    {
    type = "recipe",
    name = "bob-nickel-plate-processed",
    category = "electrolysis",
    subgroup = "bob-plate-from-processed",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="nickel-processed", amount=1},
      {type="fluid", name="water", amount=5},
      {type="fluid", name="oxygen", amount=7.5}
    },
    results=
    {
      {type="fluid", name="sulfuric-acid", amount=5},
      {type="item", name="nickel-plate", amount=5}
    },
    main_product= "nickel-plate",
    icon = "__angelsprocessing__/graphics/icons/nickel-plate-processed.png",
    order = "c-a-f[nickel-plate-processed]",
    },
	{
    type = "recipe",
    name = "bob-nickel-plate-ingot",
    category = "electrolysis",
    subgroup = "bob-plate-from-ingot",
    energy_required = 2,
	enabled = "false",
    ingredients =
    {
      {type="item", name="nickel-ingot", amount=1},
      {type="fluid", name="water", amount=1},
      {type="fluid", name="oxygen", amount=1.5}
    },
    results=
    {
      {type="fluid", name="sulfuric-acid", amount=1},
      {type="item", name="nickel-plate", amount=1}
    },
    main_product= "nickel-plate",
    icon = "__angelsprocessing__/graphics/icons/nickel-plate-ingot.png",
    order = "c-a-f[nickel-plate-ingot]",
    },
--QUARTZ
    {
    type = "recipe",
    name = "quartz-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"quartz", 4}},
    results=
    {
      {type="item", name="quartz-processed", amount=1},
    },
    main_product= "quartz-processed",
    icon = "__angelsprocessing__/graphics/icons/quartz-processed.png",
    order = "h [quartz-processed]",
    },
    {
    type = "recipe",
    name = "quartz-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"quartz-processed", 2}},
    results=
    {
      {type="item", name="quartz-ingot", amount=12},
    },
    main_product= "quartz-ingot",
    icon = "__angelsprocessing__/graphics/icons/quartz-ingot.png",
    order = "h [quartz-ingot]",
    },
    {
    type = "recipe",
    name = "quartz-glass-processed",
    category = "smelting",
    subgroup = "bob-plate-from-processed",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {"quartz-processed", 1},
    },
    results=
	{
      {type="item", name="glass", amount=5},
    },
	icon = "__angelsprocessing__/graphics/icons/glass-processed.png",
    order = "a-a [glass-processed]",
    }, 
	{
    type = "recipe",
    name = "quartz-glass-ingot",
    category = "smelting",
    subgroup = "bob-plate-from-ingot",
    energy_required = 2,
	enabled = "false",
    ingredients =
    {
      {"quartz-ingot", 1},
    },
    results=
	{
      {type="item", name="glass", amount=1},
    },
	icon = "__angelsprocessing__/graphics/icons/glass-ingot.png",
    order = "a-a [glass-ingot]",
    },
    {
    type = "recipe",
    name = "bob-silicon-plate-processed",
    category = "electrolysis",
    subgroup = "bob-plate-from-processed",
    energy_required = 7,
	enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=10},
      {type="item", name="carbon", amount=5},
      {type="item", name="quartz-processed", amount=2}
    },
    results=
	{
      {type="item", name="silicon", amount=10},
    },
	icon = "__angelsprocessing__/graphics/icons/silicon-plate-processed.png",
    order = "c-a-f[silicon-plate-processed]",
    },
	{
    type = "recipe",
    name = "bob-silicon-plate-ingot",
    category = "electrolysis",
    subgroup = "bob-plate-from-ingot",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="quartz-ingot", amount=2}
    },
    results=
	{
      {type="item", name="silicon", amount=2},
    },
	icon = "__angelsprocessing__/graphics/icons/silicon-plate-ingot.png",
    order = "c-a-f[silicon-plate-ingot]",
    },
--RUTILE
    {
    type = "recipe",
    name = "rutile-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"rutile-ore", 4}},
    results=
    {
      {type="item", name="rutile-processed", amount=1},
    },
    main_product= "rutile-processed",
    icon = "__angelsprocessing__/graphics/icons/rutile-processed.png",
    order = "i [rutile-processed]",
    },
    {
    type = "recipe",
    name = "rutile-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"rutile-processed", 2}},
    results=
    {
      {type="item", name="rutile-ingot", amount=12},
    },
    main_product= "rutile-ingot",
    icon = "__angelsprocessing__/graphics/icons/rutile-ingot.png",
    order = "i [rutile-ingot]",
    },
    {
    type = "recipe",
    name = "bob-titanium-plate-processed",
    category = "electrolysis",
    subgroup = "bob-plate-from-processed",
    energy_required = 7,
	enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=10},
      {type="item", name="carbon", amount=5},
      {type="item", name="rutile-processed", amount=2}
    },
    result = "titanium-plate",
    result_count = 10,
	icon = "__angelsprocessing__/graphics/icons/titanium-plate-processed.png",
    order = "a-g [titanium-plate-processed]",
    },
	{
    type = "recipe",
    name = "bob-titanium-plate-ingot",
    category = "electrolysis",
    subgroup = "bob-plate-from-ingot",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="calcium-chloride", amount=2},
      {type="item", name="carbon", amount=1},
      {type="item", name="rutile-ingot", amount=2}
    },
    result = "titanium-plate",
    result_count = 3,
	icon = "__angelsprocessing__/graphics/icons/titanium-plate-ingot.png",
    order = "a-g [titanium-plate-ingot]",
    },
   --SILVER
    {
    type = "recipe",
    name = "silver-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"silver-ore", 4}},
    results=
    {
      {type="item", name="silver-processed", amount=1},
    },
    main_product= "silver-processed",
    icon = "__angelsprocessing__/graphics/icons/silver-processed.png",
    order = "j [silver-processed]",
    },
    {
    type = "recipe",
    name = "silver-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"silver-processed", 2}},
    results=
    {
      {type="item", name="silver-ingot", amount=12},
    },
    main_product= "silver-ingot",
    icon = "__angelsprocessing__/graphics/icons/silver-ingot.png",
    order = "j [silver-ingot]",
    },
	{
    type = "recipe",
    name = "silver-plate-processed",
    category = "smelting",
	subgroup = "bob-plate-from-processed",
	enabled = "false",
    ingredients ={{"silver-processed", 1}},
    results=
    {
      {type="item", name="silver-plate", amount=5},
    },
    main_product= "silver-plate",
    icon = "__angelsprocessing__/graphics/icons/silver-plate-processed.png",
    order = "c-f [silver-plate-processed]",
    },
    {
    type = "recipe",
    name = "silver-plate-ingot",
    category = "smelting",
	subgroup = "bob-plate-from-ingot",
	enabled = "false",
    ingredients ={{"silver-ingot", 1}},
    results=
    {
      {type="item", name="silver-plate", amount=1},
    },
    main_product= "silver-plate",
    icon = "__angelsprocessing__/graphics/icons/silver-plate-ingot.png",
    order = "c-f [silver-plate-ingot]",
    },
    {
    type = "recipe",
    name = "silver-nitrate-from-processed",
    category = "chemistry",
    subgroup = "bob-plate-from-processed",
    energy_required = 5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="silver-processed", amount=1},
      {type="fluid", name="nitrogen-dioxide", amount=5},
    },
    results=
	{
      {type="item", name="silver-nitrate", amount=5},
    },
	icon = "__angelsprocessing__/graphics/icons/silver-nitrate-processed.png",
    order = "c-f [silver-nitrate-processed]",
    },
    {
    type = "recipe",
    name = "silver-nitrate-from-ingot",
    category = "chemistry",
    subgroup = "bob-plate-from-ingot",
    energy_required = 5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="silver-ingot", amount=1},
      {type="fluid", name="nitrogen-dioxide", amount=1},
    },
    results=
	{
      {type="item", name="silver-nitrate", amount=1},
    },
	icon = "__angelsprocessing__/graphics/icons/silver-nitrate-ingot.png",
    order = "c-f [silver-nitrate-ingot]",
    },
--TIN
    {
    type = "recipe",
    name = "tin-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tin-ore", 4}},
    results=
    {
      {type="item", name="tin-processed", amount=1},
    },
    main_product= "tin-processed",
    icon = "__angelsprocessing__/graphics/icons/tin-processed.png",
    order = "k [tin-processed]",
    },
    {
    type = "recipe",
    name = "tin-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"tin-processed", 2}},
    results=
    {
      {type="item", name="tin-ingot", amount=12},
    },
    main_product= "tin-ingot",
    icon = "__angelsprocessing__/graphics/icons/tin-ingot.png",
    order = "k [tin-ingot]",
    },
	{
    type = "recipe",
    name = "tin-plate-processed",
    category = "smelting",
	subgroup = "bob-plate-from-processed",
	enabled = "false",
    ingredients ={{"tin-processed", 1}},
    results=
    {
      {type="item", name="tin-plate", amount=5},
    },
    main_product= "tin-plate",
    icon = "__angelsprocessing__/graphics/icons/tin-plate-processed.png",
    order = "c-c [tin-plate-processed]",
    },
    {
    type = "recipe",
    name = "tin-plate-ingot",
    category = "smelting",
	subgroup = "bob-plate-from-ingot",
	enabled = "false",
    ingredients ={{"tin-ingot", 1}},
    results=
    {
      {type="item", name="tin-plate", amount=1},
    },
    main_product= "tin-plate",
    icon = "__angelsprocessing__/graphics/icons/tin-plate-ingot.png",
    order = "c-c [tin-plate-ingot]",
    },
--TUNGSTEN
    {
    type = "recipe",
    name = "tungsten-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"tungsten-ore", 4}},
    results=
    {
      {type="item", name="tungsten-processed", amount=1},
    },
    main_product= "tungsten-processed",
    icon = "__angelsprocessing__/graphics/icons/tungsten-processed.png",
    order = "l [tungsten-processed]",
    },
    {
    type = "recipe",
    name = "tungsten-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"tungsten-processed", 2}},
    results=
    {
      {type="item", name="tungsten-ingot", amount=12},
    },
    main_product= "tungsten-ingot",
    icon = "__angelsprocessing__/graphics/icons/tungsten-ingot.png",
    order = "l [tungsten-ingot]",
    },
    {
    type = "recipe",
    name = "tungstic-acid-processed",
    category = "chemistry",
	subgroup = "bob-plate-from-processed",
    enabled = "false",
    energy_required = 2,
    ingredients =
    {
      {type="item", name="tungsten-processed", amount=2},
      {type="fluid", name="hydrogen-chloride", amount=20}
    },
    results=
    {
      {type="fluid", name="tungstic-acid", amount=10},
      {type="item", name="calcium-chloride", amount=5}
    },
    main_product= "tungstic-acid",
    icon = "__angelsprocessing__/graphics/icons/tungstic-acid-processed.png",
    order = "b[fluid-chemistry]-b[tungstic-acid-processed]"
    },
	{
    type = "recipe",
    name = "tungstic-acid-ingot",
    category = "chemistry",
	subgroup = "bob-plate-from-ingot",
    enabled = "false",
    energy_required = 1,
    ingredients =
    {
      {type="item", name="tungsten-ingot", amount=2},
      {type="fluid", name="hydrogen-chloride", amount=4}
    },
    results=
    {
      {type="fluid", name="tungstic-acid", amount=2},
      {type="item", name="calcium-chloride", amount=1}
    },
    main_product= "tungstic-acid",
    icon = "__angelsprocessing__/graphics/icons/tungstic-acid-ingot.png",
    order = "b[fluid-chemistry]-b[tungstic-acid-ingot]"
    },
--ZINC
    {
    type = "recipe",
    name = "zinc-ore-processing",
    category = "ore-processing",
	subgroup = "ore-processing",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"zinc-ore", 4}},
    results=
    {
      {type="item", name="zinc-processed", amount=1},
    },
    main_product= "zinc-processed",
    icon = "__angelsprocessing__/graphics/icons/zinc-processed.png",
    order = "m [zinc-processed]",
    },
    {
    type = "recipe",
    name = "zinc-processed-smelting",
    category = "blast-smelting",
	subgroup = "ingot-smelting",
    energy_required = 6,
	enabled = "false",
    ingredients ={{"zinc-processed", 2}},
    results=
    {
      {type="item", name="zinc-ingot", amount=12},
    },
    main_product= "zinc-ingot",
    icon = "__angelsprocessing__/graphics/icons/zinc-ingot.png",
    order = "m [zinc-ingot]",
    },
    {
    type = "recipe",
    name = "bob-zinc-plate-processed",
    category = "electrolysis",
    subgroup = "bob-plate-from-processed",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="zinc-processed", amount=1},
      {type="fluid", name="sulfuric-acid", amount=5}
    },
    results=
	{
      {type="item", name="zinc-plate", amount=5},
    },
    icon = "__angelsprocessing__/graphics/icons/zinc-plate-processed.png",
    order = "a-i [zinc-plate-processed]",
    },
	{
    type = "recipe",
    name = "bob-zinc-plate-ingot",
    category = "electrolysis",
    subgroup = "bob-plate-from-ingot",
    energy_required = 3.5,
	enabled = "false",
    ingredients =
    {
      {type="item", name="zinc-ingot", amount=1},
      {type="fluid", name="sulfuric-acid", amount=1}
    },
    results=
	{
      {type="item", name="zinc-plate", amount=1},
    },
    icon = "__angelsprocessing__/graphics/icons/zinc-plate-ingot.png",
    order = "a-i [zinc-plate-ingot]",
    },
}
)