--Special

data:extend(
{
  {
    type = "capsule",
    name = "tank-recall-token",
    icon = "__tanks_for_bob__/graphics/icons/tank-recall-token.png",
    flags = {"goes-to-quickbar"},
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        projectile_creation_distance = 0.0,
        range = 0,
        ammo_type =
        {

          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects = 
              {
                {
                  type = "create-entity",
                  entity_name = "pre-teleport-effect",
                  trigger_created_entity = true
                }
              }
            }
          }
        }
      }
    },
    subgroup = "tank-ammo-infantry",
    order = "z[tank-ammo]",
    stack_size = 10
  }
})