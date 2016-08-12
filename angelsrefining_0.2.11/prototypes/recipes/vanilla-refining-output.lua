data:extend(
{
--Tier 0
	{
    type = "recipe",
    name = "angelsore1-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
    ingredients ={{"angels-ore1-crushed", 3}},
    results=
    {
      {type="item", name="iron-plate", amount=2},
    },
    main_product= "iron-plate",
    icon = "__angelsrefining__/graphics/icons/iron-plate-crushed.png",
    order = "a-a [angelsore1-crushed-smelting]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-smelting",
    category = "smelting",
	subgroup = "raw-material",
    energy_required = 7,
	enabled = "true",
    ingredients ={{"angels-ore3-crushed", 3}},
    results=
    {
      {type="item", name="copper-plate", amount=2},
    },
    main_product= "copper-plate",
    icon = "__angelsrefining__/graphics/icons/copper-plate-crushed.png",
    order = "a-a [angelsore3-crushed-smelting]",
	},
--STONE & SLAG
	{
    type = "recipe",
    name = "filter-frame",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="steel-plate", amount=1},
    {type="item", name="iron-plate", amount=1},
	},
    results=
    {
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/filter-frame.png",
    order = "a-a [filter-frame]",
	},
	{
    type = "recipe",
    name = "filter-coal",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="coal", amount=1},
    {type="item", name="filter-frame", amount=5},
	},
    results=
    {
      {type="item", name="filter-coal", amount=5},
    },
    icon = "__angelsrefining__/graphics/icons/filter-coal.png",
    order = "a-a [filter-coal]",
	},
	{
    type = "recipe",
    name = "filter-ceramic",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="stone-brick", amount=1},
    {type="item", name="filter-frame", amount=1},
	},
    results=
    {
      {type="item", name="filter-ceramic", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
    order = "a-a [filter-ceramic]",
	},
	{
    type = "recipe",
    name = "filter-ceramic-refurbish",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 1,
	enabled = "false",
    ingredients ={
    {type="item", name="filter-ceramic-used", amount=1},
	},
    results=
    {
      {type="item", name="filter-ceramic", amount=1, probability=0.8},
    },
    icon = "__angelsrefining__/graphics/icons/filter-ceramic.png",
    order = "a-a [filter-ceramic-refurbish]",
	},
	{
    type = "recipe",
    name = "slag-processing-dissolution",
    category = "chemistry",
	subgroup = "water-treatment",
    energy_required = 3,
	enabled = "false",
    ingredients ={{"slag", 5}},
    results=
    {
      {type="fluid", name="slag-slurry", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-slurry.png",
    order = "a-a [slag-processing-dissolution]",
	},
	{
    type = "recipe",
    name = "stone-crushed-dissolution",
    category = "chemistry",
	subgroup = "water-treatment",
    energy_required = 3,
	enabled = "false",
    ingredients ={{"stone-crushed", 25}},
    results=
    {
      {type="fluid", name="slag-slurry", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/stone-slurry.png",
    order = "a-a [stone-crushed-dissolution]",
	},
	{
    type = "recipe",
    name = "slag-processing-filtering-1",
    category = "filtering",
	subgroup = "water-treatment",
    energy_required = 3,
	enabled = "false",
    ingredients ={
    {type="fluid", name="slag-slurry", amount=1},
    {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=1},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-1.png",
    order = "a-a [slag-processing-filtering-1]",
	},
	{
    type = "recipe",
    name = "slag-processing-filtering-2",
    category = "filtering",
	subgroup = "water-treatment",
    energy_required = 6,
	enabled = "false",
    ingredients ={
    {type="fluid", name="slag-slurry", amount=1},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=1},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-2.png",
    order = "a-a [slag-processing-filtering-2]",
	},
	{
    type = "recipe",
    name = "thermal-water-filtering-1",
    category = "filtering",
	subgroup = "water-treatment",
    energy_required = 3,
	enabled = "false",
    ingredients ={
    {type="fluid", name="thermal-water", amount=1},
    {type="item", name="filter-coal", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=1},
      {type="item", name="filter-frame", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-1.png",
    order = "a-a [thermal-water-filtering-1]",
	},
	{
    type = "recipe",
    name = "thermal-water-filtering-2",
    category = "filtering",
	subgroup = "water-treatment",
    energy_required = 3,
	enabled = "false",
    ingredients ={
    {type="fluid", name="thermal-water", amount=1},
    {type="item", name="filter-ceramic", amount=1},
	},
    results=
    {
      {type="fluid", name="mineral-sludge", amount=1},
      {type="item", name="filter-ceramic-used", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/slag-filtering-2.png",
    order = "a-a [thermal-water-filtering-2]",
	},
	{
    type = "recipe",
    name = "slag-processing-vanilla-1",
    category = "crystallizing",
	subgroup = "slag-processing",
    energy_required = 8,
	enabled = "false",
    ingredients ={
	{type="fluid", name="mineral-sludge", amount=1},
	},
    results=
    {
      {type="item", name="iron-ore", amount=1, probability=0.4},
      {type="item", name="copper-ore", amount=1, probability=0.4},
    },
    icon = "__angelsrefining__/graphics/icons/slag-processing-bob1.png",
    order = "a-a [slag-processing-vanilla-1]",
	},
	-- {
    -- type = "recipe",
    -- name = "slag-processing-vanilla-2",
    -- category = "crystallizing",
	-- subgroup = "slag-processing",
    -- energy_required = 8,
	-- enabled = "false",
    -- ingredients ={
	-- {type="fluid", name="mineral-sludge", amount=1},
	-- },
    -- results=
    -- {
      -- {type="item", name="copper-ore", amount=1, probability=0.8},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/slag-processing-bob2.png",
    -- order = "a-a [slag-processing-vanilla-2]",
	-- },
	{
    type = "recipe",
    name = "slag-processing-stone",
    category = "ore-sorting-t1",
	subgroup = "slag-processing",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"slag", 1}},
    results=
    {
      {type="item", name="stone-crushed", amount=2},
    },
	main_product = "stone-crushed",
    icon = "__angelsrefining__/graphics/icons/stone-crushed.png",
    order = "a-a [slag-processing-stone]",
	},
	{
    type = "recipe",
    name = "stone-crushed",
    category = "crafting",
	subgroup = "processing-crafting",
    energy_required = 0.5,
	enabled = "true",
    ingredients ={{"stone-crushed", 2}},
    results=
    {
      {type="item", name="stone", amount=1},
    },
	main_product = "stone",
    icon = "__base__/graphics/icons/stone.png",
    order = "c-a-i[stone-crushed]",
	},
	{
    type = "recipe",
    name = "empty-thermal-water-barrel",
    icon = "__angelsrefining__/graphics/icons/empty-thermal-water-barrel.png",
    category = "crafting-with-fluid",
    subgroup = "slag-processing",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="item", name="thermal-water-barrel", amount=1}
    },
    results=
    {
      {type="fluid", name="thermal-water", amount=25},
      {type="item", name="empty-barrel", amount=1}
    },
    main_product= "thermal-water",
    order = "c[empty-thermal-water-barrel]",
    },
    {
    type = "recipe",
    name = "fill-thermal-water-barrel",
    icon = "__angelsrefining__/graphics/icons/fill-thermal-water-barrel.png",
    category = "crafting-with-fluid",
    subgroup = "slag-processing",
    energy_required = 1,
    enabled = "false",
    ingredients =
    {
      {type="fluid", name="thermal-water", amount=25},
      {type="item", name="empty-barrel", amount=1},
    },
    results=
    {
      {type="item", name="thermal-water-barrel", amount=1}
    },
    main_product= "thermal-water-barrel",
    order = "b[fill-thermal-water-barrel]",
    },
--CATALYSTS
  	{
    type = "recipe",
    name = "catalysator-brown",
    category = "crafting-with-fluid",
	subgroup = "processing-crafting",
    energy_required = 0.5,
	enabled = "true",
    ingredients ={
    {type="fluid", name="mineral-sludge", amount=1},
    },
    results=
    {
      {type="item", name="catalysator-brown", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/catalysator-brown.png",
    order = "a-a [catalysator-brown]",
	},
--Tier 1
	{
    type = "recipe",
    name = "angelsore1-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore1-crushed", 4}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=2},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="iron-ore-pure", amount=1},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crushed-sorting.png",
    order = "a[angelsore1-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore2-crushed", 4}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=1},
      {type="item", name="copper-ore-crystal", amount=3},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crushed-sorting.png",
    order = "b[angelsore2-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore3-crushed", 4}},
    results=
    {
	  {type="item", name="copper-ore-crushed", amount=1},
	  {type="item", name="iron-ore-chunk", amount=1},
      {type="item", name="copper-ore-crystal", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crushed-sorting.png",
    order = "c[angelsore3-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore4-crushed", 4}},
    results=
    {
	  {type="item", name="copper-ore-crushed", amount=1},
	  {type="item", name="iron-ore-chunk", amount=0},
      {type="item", name="iron-ore-crystal", amount=1},
      {type="item", name="iron-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crushed-sorting.png",
    order = "d[angelsore4-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore5-crushed", 4}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=1},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="copper-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crushed-sorting.png",
    order = "e[angelsore5-crushed-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 1,
	enabled = "false",
    ingredients ={{"angels-ore6-crushed", 4}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=2},
      {type="item", name="iron-ore-crystal", amount=1},
      {type="item", name="copper-ore-pure", amount=1},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crushed-sorting.png",
    order = "f[angelsore6-crushed-processing]",
	},
--TIER 1 MIX
	-- {
    -- type = "recipe",
    -- name = "angelsore-crushed-mix1-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t1",
    -- energy_required = 1,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore1-crushed", amount=2},
	-- {type="item", name="angels-ore2-crushed", amount=2},
	-- },
    -- results=
    -- {
	  -- {type="item", name="iron-ore-crushed", amount=4},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/iron-ore-crushed-sorting.png",
    -- order = "g[angelsore-crushed-mix1-processing]",
	-- },
	-- {
    -- type = "recipe",
    -- name = "angelsore-crushed-mix2-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t1",
    -- energy_required = 1,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore3-crushed", amount=2},
	-- {type="item", name="angels-ore4-crushed", amount=2},
	-- },
    -- results=
    -- {
	  -- {type="item", name="copper-ore-crushed", amount=4},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/copper-ore-crushed-sorting.png",
    -- order = "h[angelsore-crushed-mix2-processing]",
	-- },
--TIER 2
	{
    type = "recipe",
    name = "angelsore1-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore1-chunk", 6}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=2},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="copper-ore-crystal", amount=1},
      {type="item", name="iron-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-chunk-sorting.png",
    order = "a[angelsore1-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore2-chunk", 6}},
    results=
    {
	  {type="item", name="iron-ore-chunk", amount=3},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="iron-ore-pure", amount=1},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-chunk-sorting.png",
    order = "b[angelsore2-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore3-chunk", 6}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=2},
	  {type="item", name="iron-ore-chunk", amount=1},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=1},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-chunk-sorting.png",
    order = "c[angelsore3-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore4-chunk", 6}},
    results=
    {
	  {type="item", name="iron-ore-chunk", amount=1},
      {type="item", name="iron-ore-crystal", amount=2},
      {type="item", name="iron-ore-pure", amount=3},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-chunk-sorting.png",
    order = "d[angelsore4-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore5-chunk", 6}},
    results=
    {
      {type="item", name="copper-ore-chunk", amount=2},
      {type="item", name="iron-ore-crystal", amount=1},
      {type="item", name="copper-ore-pure", amount=3},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-chunk-sorting.png",
    order = "e[angelsore5-chunk-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 1.5,
	enabled = "false",
    ingredients ={{"angels-ore6-chunk", 6}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=1},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="iron-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-chunk-sorting.png",
    order = "f[angelsore6-chunk-processing]",
	},
--TIER 2 MIX
	-- {
    -- type = "recipe",
    -- name = "angelsore-chunk-mix1-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t2",
    -- energy_required = 1,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore1-chunk", amount=2},
	-- {type="item", name="angels-ore6-chunk", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="iron-ore-chunk", amount=4},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/iron-ore-chunk-sorting.png",
    -- order = "g[angelsore-chunk-mix1-processing]",
	-- },
	-- {
    -- type = "recipe",
    -- name = "angelsore-chunk-mix2-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t2",
    -- energy_required = 1,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore1-chunk", amount=2},
	-- {type="item", name="angels-ore5-chunk", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="copper-ore-chunk", amount=4},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/copper-ore-chunk-sorting.png",
    -- order = "h[angelsore-chunk-mix2-processing]",
	-- },
--TIER 3
	{
    type = "recipe",
    name = "angelsore1-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore1-crystal", 8}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=2},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="iron-ore-pure", amount=3},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-crystal-sorting.png",
    order = "a[angelsore1-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore2-crystal", 8}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=1},
	  {type="item", name="iron-ore-chunk", amount=2},
      {type="item", name="copper-ore-crystal", amount=3},
      {type="item", name="iron-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-crystal-sorting.png",
    order = "b[angelsore2-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore3-crystal", 8}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=2},
	  {type="item", name="iron-ore-chunk", amount=2},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=2},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-crystal-sorting.png",
    order = "c[angelsore3-crystal-processing]",
	},
		{
    type = "recipe",
    name = "angelsore4-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore4-crystal", 8}},
    results=
    {
	  {type="item", name="iron-ore-crystal", amount=4},
      {type="item", name="iron-ore-pure", amount=4},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-crystal-sorting.png",
    order = "d[angelsore4-crystal-processing]",
	},
		{
    type = "recipe",
    name = "angelsore5-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore5-crystal", 8}},
    results=
    {
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="iron-ore-crystal", amount=3},
      {type="item", name="copper-ore-pure", amount=4},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-crystal-sorting.png",
    order = "e[angelsore5-crystal-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore6-crystal", 8}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=1},
      {type="item", name="copper-ore-chunk", amount=2},
      {type="item", name="iron-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=3},
	  {type="item", name="slag", amount=1},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-crystal-sorting.png",
    order = "f[angelsore6-crystal-processing]",
	},
--TIER 3 MIX
	-- {
    -- type = "recipe",
    -- name = "angelsore-crystal-mix1-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t3",
    -- energy_required = 1.5,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore1-crystal", amount=2},
	-- {type="item", name="angels-ore3-crystal", amount=2},
	-- {type="item", name="angels-ore5-crystal", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="iron-ore-crystal", amount=6},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/iron-ore-crystal-sorting.png",
    -- order = "g[angelsore-crystal-mix1-processing]",
	-- },
	-- {
    -- type = "recipe",
    -- name = "angelsore-crystal-mix2-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t3",
    -- energy_required = 1.5,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore3-crystal", amount=2},
	-- {type="item", name="angels-ore4-crystal", amount=2},
	-- {type="item", name="angels-ore5-crystal", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="copper-ore-crystal", amount=6},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/copper-ore-crystal-sorting.png",
    -- order = "h[angelsore-crystal-mix2-processing]",
	-- },
--TIER 4
	{
    type = "recipe",
    name = "angelsore1-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore1-pure", 9}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=1},
      {type="item", name="copper-ore-chunk", amount=2},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="iron-ore-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore1-pure-sorting.png",
    order = "a[angelsore1-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore2-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore2-pure", 9}},
    results=
    {
      {type="item", name="iron-ore-crushed", amount=1},
	  {type="item", name="iron-ore-chunk", amount=2},
      {type="item", name="copper-ore-crystal", amount=4},
      {type="item", name="iron-ore-pure", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore2-pure-sorting.png",
    order = "b[angelsore2-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore3-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore3-pure", 9}},
    results=
    {
      {type="item", name="copper-ore-crushed", amount=2},
	  {type="item", name="iron-ore-chunk", amount=2},
      {type="item", name="copper-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=3},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore3-pure-sorting.png",
    order = "c[angelsore3-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore4-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore4-pure", 9}},
    results=
    {
	  {type="item", name="iron-ore-crystal", amount=4},
      {type="item", name="iron-ore-pure", amount=5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore4-pure-sorting.png",
    order = "d[angelsore4-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore5-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore5-pure", 9}},
    results={
      {type="item", name="iron-ore-crushed", amount=1},
      {type="item", name="copper-ore-chunk", amount=1},
      {type="item", name="iron-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=5},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore5-pure-sorting.png",
    order = "e[angelsore5-pure-processing]",
	},
	{
    type = "recipe",
    name = "angelsore6-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"angels-ore6-pure", 9}},
    results=
    {
      {type="item", name="copper-ore-chunk", amount=3},
      {type="item", name="iron-ore-crystal", amount=2},
      {type="item", name="copper-ore-pure", amount=4},
    },
    icon = "__angelsrefining__/graphics/icons/angels-ore6-pure-sorting.png",
    order = "f[angelsore6-pure-processing]",
	},
--TIER 4 MIX
	-- {
    -- type = "recipe",
    -- name = "angelsore-pure-mix1-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t4",
    -- energy_required = 1.5,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore2-pure", amount=2},
	-- {type="item", name="angels-ore3-pure", amount=2},
	-- {type="item", name="angels-ore6-pure", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="iron-ore-pure", amount=6},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/iron-ore-pure-sorting.png",
    -- order = "g[angelsore-pure-mix1-processing]",
	-- },
	-- {
    -- type = "recipe",
    -- name = "angelsore-pure-mix2-processing",
    -- category = "ore-sorting",
	-- subgroup = "ore-sorting-t4",
    -- energy_required = 1.5,
	-- enabled = "false",
    -- ingredients ={
	-- {type="item", name="angels-ore1-pure", amount=2},
	-- {type="item", name="angels-ore4-pure", amount=2},
	-- {type="item", name="angels-ore5-pure", amount=2},
	-- {type="item", name="catalysator-brown", amount=1},
	-- },
    -- results=
    -- {
	  -- {type="item", name="copper-ore-pure", amount=6},
    -- },
    -- icon = "__angelsrefining__/graphics/icons/copper-ore-pure-sorting.png",
    -- order = "h[angelsore-pure-mix2-processing]",
	-- },
--UPGRADING
--TIER 1
	{
    type = "recipe",
    name = "iron-ore-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="iron-ore-crushed", amount=2},
		{type="fluid", name="water", amount=2},
	},
    results=
    {
		{type="item", name="iron-ore-chunk", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-chunk.png",
    order = "g[iron-ore-chunk]",
	},
	{
    type = "recipe",
    name = "copper-ore-chunk",
    category = "ore-sorting-t2",
	subgroup = "ore-processing-b",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="copper-ore-crushed", amount=2},
		{type="fluid", name="water", amount=2},
	},
    results=
    {
		{type="item", name="copper-ore-chunk", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-chunk.png",
    order = "h[copper-ore-chunk]",
	},
--TIER 2
	{
    type = "recipe",
    name = "iron-ore-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="iron-ore-chunk", amount=2},
		{type="fluid", name="sulfuric-acid", amount=0.5}
	},
    results=
    {
		{type="item", name="iron-ore-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-crystal.png",
    order = "g[iron-ore-crystal]",
	},
	{
    type = "recipe",
    name = "copper-ore-crystal",
    category = "ore-sorting-t3",
	subgroup = "ore-processing-c",
    energy_required = 2,
	enabled = "false",
    ingredients ={
		{type="item", name="copper-ore-chunk", amount=2},
		{type="fluid", name="sulfuric-acid", amount=0.5}
	},
    results=
    {
		{type="item", name="copper-ore-crystal", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-crystal.png",
    order = "h[copper-ore-crystal]",
	},
	--TIER 3
	{
    type = "recipe",
    name = "iron-ore-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore-crystal", 2}},
    results=
    {
		{type="item", name="iron-ore-pure", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-pure.png",
    order = "g[iron-ore-pure]",
	},
	{
    type = "recipe",
    name = "copper-ore-pure",
    category = "ore-sorting-t4",
	subgroup = "ore-processing-d",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore-crystal", 2}},
    results=
    {
		{type="item", name="copper-ore-pure", amount=2},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-pure.png",
    order = "h[copper-ore-pure]",
	},
--ENDOUTPUT
	--TIER 1
	{
    type = "recipe",
    name = "iron-ore-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore-crushed", 10}},
    results=
    {
      {type="item", name="iron-ore", amount=7},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-crushed-sorting.png",
    order = "i[iron-ore-crushed-processing]",
	},
	{
    type = "recipe",
    name = "copper-ore-crushed-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t1",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore-crushed", 10}},
    results=
    {
      {type="item", name="copper-ore", amount=7},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-crushed-sorting.png",
    order = "j[copper-ore-crushed-processing]",
	},
	--TIER 2
	{
    type = "recipe",
    name = "iron-ore-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore-chunk", 10}},
    results=
    {
      {type="item", name="iron-ore", amount=8},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-chunk-sorting.png",
    order = "i[iron-ore-chunk-processing]",
	},
	{
    type = "recipe",
    name = "copper-ore-chunk-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t2",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore-chunk", 10}},
    results=
    {
      {type="item", name="copper-ore", amount=8},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-chunk-sorting.png",
    order = "j[copper-ore-chunk-processing]",
	},
	--TIER 3
	{
    type = "recipe",
    name = "iron-ore-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"iron-ore-crystal", 10}},
    results=
    {
      {type="item", name="iron-ore", amount=9},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-crystal-sorting.png",
    order = "i[iron-ore-crystal-processing]",
	},
	{
    type = "recipe",
    name = "copper-ore-crystal-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t3",
    energy_required = 2,
	enabled = "false",
    ingredients ={{"copper-ore-crystal", 10}},
    results=
    {
      {type="item", name="copper-ore", amount=9},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-crystal-sorting.png",
    order = "j[copper-ore-crystal-processing]",
	},
	--TIER 4
	{
    type = "recipe",
    name = "iron-ore-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="iron-ore-pure", amount=10},
	},
    results=
    {
      {type="item", name="iron-ore", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/iron-ore-pure-sorting.png",
    order = "i[iron-ore-pure-processing]",
	},
	{
    type = "recipe",
    name = "copper-ore-pure-processing",
    category = "ore-sorting",
	subgroup = "ore-sorting-t4",
    energy_required = 2,
	enabled = "false",
    ingredients ={
	{type="item", name="copper-ore-pure", amount=10},
	},
    results=
    {
      {type="item", name="copper-ore", amount=10},
    },
    icon = "__angelsrefining__/graphics/icons/copper-ore-pure-sorting.png",
    order = "j[copper-ore-pure-processing]",
	},
}
)