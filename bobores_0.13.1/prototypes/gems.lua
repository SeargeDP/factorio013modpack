data:extend(
{
  {
    type = "recipe",
    name = "sort-gem-ore",
    energy_required = 1,
    ingredients =
    {
	  {"gem-ore", 1},
    },
    results =
    {
      {type="item", name="ruby-ore", amount=1, probability = bobmods.gems.RubyRatio},
      {type="item", name="sapphire-ore", amount=1, probability = bobmods.gems.SapphireRatio},
      {type="item", name="emerald-ore", amount=1, probability = bobmods.gems.EmeraldRatio},
      {type="item", name="amethyst-ore", amount=1, probability = bobmods.gems.AmethystRatio},
      {type="item", name="topaz-ore", amount=1, probability = bobmods.gems.TopazRatio},
      {type="item", name="diamond-ore", amount=1, probability = bobmods.gems.DiamondRatio},
    },
    subgroup = "bob-ores",
    icon = "__bobores__/graphics/icons/gem-ore.png",
    order = "a-0",
  },


  {
    type = "item",
    name = "gem-ore",
    icon = "__bobores__/graphics/icons/gem-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "a-0[gem-ore]",
    stack_size = 200
  },

  {
    type = "item",
    name = "ruby-ore",
    icon = "__bobores__/graphics/icons/ruby-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "a-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "sapphire-ore",
    icon = "__bobores__/graphics/icons/sapphire-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "b-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "emerald-ore",
    icon = "__bobores__/graphics/icons/emerald-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "c-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "amethyst-ore",
    icon = "__bobores__/graphics/icons/amethyst-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "d-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "topaz-ore",
    icon = "__bobores__/graphics/icons/topaz-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "e-1",
    stack_size = 100
  },
  {
    type = "item",
    name = "diamond-ore",
    icon = "__bobores__/graphics/icons/diamond-ore.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "bob-ores",
    order = "f-1",
    stack_size = 100
  },
}
)
