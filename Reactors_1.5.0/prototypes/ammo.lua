data:extend({
  {
    type = "ammo",
    name = "du-magazine",
    icon = "__Reactors__/graphics/icons/du-magazine.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "explosion-hit"
            },
            {
              type = "damage",
              damage = { amount = 5 , type = "impact"}
            },
            {
              type = "damage",
              damage = { amount = 3 , type = "fire"}
            }
          }
        }
      }
    },
    magazine_size = 10,
    subgroup = "ammo",
    order = "a[basic-clips]-c[du-magazine]",
    stack_size = 100
  }
})