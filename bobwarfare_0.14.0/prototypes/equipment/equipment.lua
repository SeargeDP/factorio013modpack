data:extend(
{
  {
    type = "night-vision-equipment",
    name = "night-vision-equipment-2",
    sprite = 
    {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 96,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "180kJ",
      input_flow_limit = "360kW",
      usage_priority = "primary-input"
    },
    energy_input = "15kW",
    tint = {r = 0.1, g = 0.1, b = 0, a = 0.2},
    categories = {"armor"}
  },
  {
    type = "night-vision-equipment",
    name = "night-vision-equipment-3",
    sprite = 
    {
      filename = "__base__/graphics/equipment/night-vision-equipment.png",
      width = 96,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 3,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "240kJ",
      input_flow_limit = "480kW",
      usage_priority = "primary-input"
    },
    energy_input = "20kW",
    tint = {r = 0.1, g = 0.1, b = 0.1, a = 0.2},
    categories = {"armor"}
  },
}
)


-- energy_per_shield MK1 is 20J per shield unit, MK2 is 30J.
-- max_shield_value MK1 is 50, MK2 is 150
-- buffer_capacity MK1 is "120J", MK2 is 180J
-- input_flow_limit MK1 is "240W", MK2 is 360W

data.raw["energy-shield-equipment"]["energy-shield-equipment"].max_shield_value = 75

data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].energy_per_shield = "20kJ"
data.raw["energy-shield-equipment"]["energy-shield-mk2-equipment"].energy_source.input_flow_limit = "240kW"

data:extend(
{
  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk3-equipment",
    max_shield_value = 300,
    energy_per_shield = "20kJ",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "240kJ",
      input_flow_limit = "480kW",
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/energy-shield-mk3-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    categories = {"armor"}
  },

  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk4-equipment",
    max_shield_value = 600,
    energy_per_shield = "20kJ",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "300kJ",
      input_flow_limit = "600kW",
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/energy-shield-mk4-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    categories = {"armor"}
  },

  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk5-equipment",
    max_shield_value = 1200,
    energy_per_shield = "20kJ",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "360kJ",
      input_flow_limit = "720kW",
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/energy-shield-mk5-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    categories = {"armor"}
  },

  {
    type = "energy-shield-equipment",
    name = "energy-shield-mk6-equipment",
    max_shield_value = 2400,
    energy_per_shield = "20kJ",
    energy_source =
    {
      type = "electric",
      buffer_capacity = "420kJ",
      input_flow_limit = "840kW",
      usage_priority = "primary-input"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/energy-shield-mk6-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    categories = {"armor"}
  },
}
)

data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.buffer_capacity = "50MJ"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.input_flow_limit = "500MW"
data.raw["battery-equipment"]["battery-mk2-equipment"].energy_source.output_flow_limit = "500MW"

data:extend(
{
  {
    type = "battery-equipment",
    name = "battery-mk3-equipment",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/battery-mk3-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "120MJ",
      input_flow_limit = "1200MW",
      output_flow_limit = "1200MW",
      usage_priority = "terciary"
    },
    categories = {"armor"}
  },
  {
    type = "battery-equipment",
    name = "battery-mk4-equipment",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/battery-mk4-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "300MJ",
      input_flow_limit = "3000MW",
      output_flow_limit = "3000MW",
      usage_priority = "terciary"
    },
    categories = {"armor"}
  },
  {
    type = "battery-equipment",
    name = "battery-mk5-equipment",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/battery-mk5-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "750MJ",
      input_flow_limit = "7500MW",
      output_flow_limit = "7500MW",
      usage_priority = "terciary"
    },
    categories = {"armor"}
  },
  {
    type = "battery-equipment",
    name = "battery-mk6-equipment",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/battery-mk6-equipment.png",
      width = 32,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "1800MJ",
      input_flow_limit = "18000MW",
      output_flow_limit = "18000MW",
      usage_priority = "terciary"
    },
    categories = {"armor"}
  },
}
)


data:extend(
{
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-2",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/solar-panel-equipment-2.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "15kW",
    categories = {"armor"}
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-3",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/solar-panel-equipment-3.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "25kW",
    categories = {"armor"}
  },
  {
    type = "solar-panel-equipment",
    name = "solar-panel-equipment-4",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/solar-panel-equipment-4.png",
      width = 32,
      height = 32,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "40kW",
    categories = {"armor"}
  },
}
)


data:extend(
{
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-2",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/fusion-reactor-equipment-2.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "1250kW",
    categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-3",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/fusion-reactor-equipment-3.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "2000kW",
    categories = {"armor"}
  },
  {
    type = "generator-equipment",
    name = "fusion-reactor-equipment-4",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/fusion-reactor-equipment-4.png",
      width = 128,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 4,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "primary-output"
    },
    power = "3000kW",
    categories = {"armor"}
  },
}
)


data:extend(
{
  {
    type = "active-defense-equipment",
    name = "combat-robot-dispenser-equipment",
    sprite = 
    {
      filename = "__bobwarfare__/graphics/equipment/combat-robot-dispenser-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 2,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = "6MJ"
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = 60 * 15,
      damage_modifier = 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = 10,
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = "5MJ",
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-entity",
                  show_in_tooltip = true,
                  entity_name = "distractor",
                },
              }
            }
          }
        }
      }
    },
    automatic = true,
    categories = {"armor"}
  },
}
)


function bob_personal_laser_defense_equipment(name, sprite, buffer_capacity, energy_consumption, projectile, damage_modifier, cooldown, range)
return
  {
    type = "active-defense-equipment",
    name = name,
    sprite = 
    {
      filename = sprite,
      width = 64,
      height = 96,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 3,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = buffer_capacity
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = cooldown,
      damage_modifier = damage_modifier,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = range,
      sound = make_laser_sounds(),
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        energy_consumption = energy_consumption,
        projectile = projectile,
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = projectile,
                starting_speed = 0.28
              }
            }
          }
        }
      }
    },
    automatic = true,
    categories = {"armor"}
  }
end

data:extend(
{
--  bob_personal_laser_defense_equipment(name, sprite, buffer_capacity, energy_consumption, projectile, damage_modifier, cooldown, range)
  bob_personal_laser_defense_equipment("personal-laser-defense-equipment-2", "__bobwarfare__/graphics/equipment/personal-laser-defense-equipment-2.png", "260kJ", "125kJ", "bob-green-laser", 1.5, 15, 16),
  bob_personal_laser_defense_equipment("personal-laser-defense-equipment-3", "__bobwarfare__/graphics/equipment/personal-laser-defense-equipment-3.png", "460kJ", "150kJ", "bob-blue-laser", 2.1, 12, 17),
  bob_personal_laser_defense_equipment("personal-laser-defense-equipment-4", "__bobwarfare__/graphics/equipment/personal-laser-defense-equipment-4.png", "710kJ", "175kJ", "bob-purple-laser", 2.8, 10, 18),
  bob_personal_laser_defense_equipment("personal-laser-defense-equipment-5", "__bobwarfare__/graphics/equipment/personal-laser-defense-equipment-5.png", "1010kJ", "200kJ", "bob-yellow-laser", 3.6, 8.5, 19),
  bob_personal_laser_defense_equipment("personal-laser-defense-equipment-6", "__bobwarfare__/graphics/equipment/personal-laser-defense-equipment-6.png", "1360kJ", "225kJ", "bob-white-laser", 4.5, 7.5, 20),
}
)


data:extend(
{
  {
    type = "movement-bonus-equipment",
    name = "exoskeleton-equipment-2",
    sprite = 
    {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "300kW",
    movement_bonus = 0.45,
    categories = {"armor"}
  },
  {
    type = "movement-bonus-equipment",
    name = "exoskeleton-equipment-3",
    sprite = 
    {
      filename = "__base__/graphics/equipment/exoskeleton-equipment.png",
      width = 64,
      height = 128,
      priority = "medium"
    },
    shape =
    {
      width = 2,
      height = 4,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_consumption = "400kW",
    movement_bonus = 0.6,
    categories = {"armor"}
  },
}
)
