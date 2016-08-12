data:extend(
{
  {
    type = "mining-tool",
    name = "brass-axe",
    icon = "__bobmining__/graphics/icons/brass-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 10 , type = "physical"}
        }
      }
    },
    durability = 6500,
    subgroup = "tool",
    order = "a[mining]-c[brass-axe]",
    speed = 6,
    stack_size = 20
  },

  {
    type = "mining-tool",
    name = "cobalt-axe",
    icon = "__bobmining__/graphics/icons/cobalt-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 8500,
    subgroup = "tool",
    order = "a[mining]-d[cobalt-axe]",
    speed = 8.5,
    stack_size = 20
  },

  {
    type = "mining-tool",
    name = "titanium-axe",
    icon = "__bobmining__/graphics/icons/titanium-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 14 , type = "physical"}
        }
      }
    },
    durability = 11000,
    subgroup = "tool",
    order = "a[mining]-e[titanium-axe]",
    speed = 11.5,
    stack_size = 20
  },

  {
    type = "mining-tool",
    name = "tungsten-axe",
    icon = "__bobmining__/graphics/icons/tungsten-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 16 , type = "physical"}
        }
      }
    },
    durability = 14000,
    subgroup = "tool",
    order = "a[mining]-f[tungsten-axe]",
    speed = 15,
    stack_size = 20
  },

  {
    type = "mining-tool",
    name = "diamond-axe",
    icon = "__bobmining__/graphics/icons/diamond-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 18 , type = "physical"}
        }
      }
    },
    durability = 17500,
    subgroup = "tool",
    order = "a[mining]-g[diamond-axe]",
    speed = 20,
    stack_size = 20
  },
}
)




