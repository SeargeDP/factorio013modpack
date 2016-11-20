function bob_active_weapon_equipment(data)
--name, sprite, width, height, buffer_capacity, input_flow_limit, target_type, energy_consumption, projectile, sound, damage_modifier, cooldown, range, categories, starting_speed
return
  {
    type = "active-defense-equipment",
    name = data.name,
    sprite = 
    {
      filename = data.sprite,
      width = (data.width or 1) * 32,
      height = (data.height or 1) * 32,
      priority = "medium"
    },
    shape =
    {
      width = data.width or 1,
      height = data.height or 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      buffer_capacity = data.buffer_capacity,
      input_flow_limit = data.input_flow_limit
    },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = data.cooldown or 20,
      damage_modifier = data.damage_modifier or 1,
      projectile_center = {0, 0},
      projectile_creation_distance = 0.6,
      range = data.range or 15,
      sound = data.sound,
      ammo_type =
      {
        type = "projectile",
        category = "electric",
        target_type = data.target_type,
        energy_consumption = data.energy_consumption,
        projectile = data.projectile,
        speed = 1,
        action = 
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = data.projectile,
                starting_speed = data.starting_speed or 0.28
              }
            }
          }
        }
      }
    },
    automatic = true,
    categories = data.categories
  }
end

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-1.png",
    placed_as_equipment_result = "vehicle-laser-defense-1",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-1",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-1",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 5},
      {"electronic-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-1"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-1.png",
    width = 2,
    height = 2,
    buffer_capacity = "110kJ",
    input_flow_limit = "500kW",
    energy_consumption = "100kJ",
    projectile = "laser",
    sound = make_laser_sounds(),
    damage_modifier = 1,
    cooldown = 20,
    range = 15,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-1",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-a",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-1",
      "laser-turrets"
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-1"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-2.png",
    placed_as_equipment_result = "vehicle-laser-defense-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-2",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-1", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-2"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-2.png",
    width = 2,
    height = 2,
    buffer_capacity = "260kJ",
    input_flow_limit = "833kW",
    energy_consumption = "125kJ",
    projectile = "bob-blue-laser",
    sound = make_laser_sounds(),
    damage_modifier = 1.5,
    cooldown = 15,
    range = 16,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-2",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-b",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-1",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-2"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-3.png",
    placed_as_equipment_result = "vehicle-laser-defense-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-3",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-2", 1},
      {"steel-plate", 5},
      {"advanced-circuit", 5},
      {"battery", 3}
    },
    result = "vehicle-laser-defense-3"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-3.png",
    width = 2,
    height = 2,
    buffer_capacity = "460kJ",
    input_flow_limit = "1250kW",
    energy_consumption = "150kJ",
    projectile = "bob-green-laser",
    sound = make_laser_sounds(),
    damage_modifier = 2.1,
    cooldown = 12,
    range = 17,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-3",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-2",
    },
    unit =
    {
      count = 250,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-3"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-4.png",
    placed_as_equipment_result = "vehicle-laser-defense-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-4",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-3", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-4"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-4.png",
    width = 2,
    height = 2,
    buffer_capacity = "710kJ",
    input_flow_limit = "1750kW",
    energy_consumption = "175kJ",
    projectile = "bob-purple-laser",
    sound = make_laser_sounds(),
    damage_modifier = 2.8,
    cooldown = 10,
    range = 18,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-4",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-d",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-3",
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-4"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-5.png",
    placed_as_equipment_result = "vehicle-laser-defense-5",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-5",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-4", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-5"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-5.png",
    width = 2,
    height = 2,
    buffer_capacity = "1010kJ",
    input_flow_limit = "2333kW",
    energy_consumption = "200kJ",
    projectile = "bob-yellow-laser",
    sound = make_laser_sounds(),
    damage_modifier = 3.6,
    cooldown = 8.5,
    range = 19,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-5",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-e",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-4",
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-5"
      }
    },
  },
}
)

data:extend(
{
  {
    type = "item",
    name = "vehicle-laser-defense-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-laser-defense-6.png",
    placed_as_equipment_result = "vehicle-laser-defense-6",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[laser-defense]-6",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-laser-defense-6",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-laser-defense-5", 1},
      {"steel-plate", 5},
      {"processing-unit", 5},
      {"battery", 3},
    },
    result = "vehicle-laser-defense-6"
  },

  bob_active_weapon_equipment{
    name = "vehicle-laser-defense-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-laser-defense-6.png",
    width = 2,
    height = 2,
    buffer_capacity = "1360kJ",
    input_flow_limit = "3000kW",
    energy_consumption = "225kJ",
    projectile = "bob-white-laser",
    sound = make_laser_sounds(),
    damage_modifier = 4.5,
    cooldown = 7.5,
    range = 20,
    categories = {"vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-laser-defense-equipment-6",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-laser-defense.png",
    icon_size = 64,
    order = "v-g-m-f",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-laser-defense-equipment-5",
    },
    unit =
    {
      count = 350,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-laser-defense-6"
      }
    },
  },
}
)









data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-1",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-1.png",
    placed_as_equipment_result = "vehicle-big-turret-1",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-1",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-1",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"steel-plate", 20},
      {"electronic-circuit", 20},
      {"battery", 12},
      {"alien-artifact", 30},
    },
    result = "vehicle-big-turret-1"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-1",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-1.png",
    width = 4,
    height = 4,
    buffer_capacity = "1100kJ",
    input_flow_limit = "500kW",
    energy_consumption = "1000kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 1,
    cooldown = 200,
    range = 30,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-1",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-a",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-solar-panel-equipment-1",
      "laser-turrets"
    },
    unit =
    {
      count = 100,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1}
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-1"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-2",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-2.png",
    placed_as_equipment_result = "vehicle-big-turret-2",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-2",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-2",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-1", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
      {"battery", 12},
      {"alien-artifact", 30},
    },
    result = "vehicle-big-turret-2"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-2",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-2.png",
    width = 4,
    height = 4,
    buffer_capacity = "2600kJ",
    input_flow_limit = "833kW",
    energy_consumption = "125kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 1.5,
    cooldown = 150,
    range = 32,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-2",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-b",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-big-turret-equipment-1",
    },
    unit =
    {
      count = 150,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-2"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-3",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-3.png",
    placed_as_equipment_result = "vehicle-big-turret-3",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-3",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-3",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-2", 1},
      {"steel-plate", 20},
      {"advanced-circuit", 20},
      {"battery", 12},
      {"alien-artifact", 30},
    },
    result = "vehicle-big-turret-3"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-3",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-3.png",
    width = 4,
    height = 4,
    buffer_capacity = "4600kJ",
    input_flow_limit = "1250kW",
    energy_consumption = "1500kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 2.1,
    cooldown = 120,
    range = 34,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-3",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-c",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-big-turret-equipment-2",
    },
    unit =
    {
      count = 250,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-3"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-4",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-4.png",
    placed_as_equipment_result = "vehicle-big-turret-4",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-4",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-4",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-3", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-4"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-4",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-4.png",
    width = 4,
    height = 4,
    buffer_capacity = "7100kJ",
    input_flow_limit = "1750kW",
    energy_consumption = "1750kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 2.8,
    cooldown = 100,
    range = 36,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-4",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-d",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-big-turret-equipment-3",
    },
    unit =
    {
      count = 300,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-4"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-5",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-5.png",
    placed_as_equipment_result = "vehicle-big-turret-5",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-5",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-5",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-4", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-5"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-5",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-5.png",
    width = 4,
    height = 4,
    buffer_capacity = "10100kJ",
    input_flow_limit = "2333kW",
    energy_consumption = "2000kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 3.6,
    cooldown = 85,
    range = 38,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-5",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-e",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-big-turret-equipment-4",
    },
    unit =
    {
      count = 350,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-5"
      }
    },
  },
}
)


data:extend(
{
  {
    type = "item",
    name = "vehicle-big-turret-6",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-big-turret-6.png",
    placed_as_equipment_result = "vehicle-big-turret-6",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-d[big-turret]-6",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-big-turret-6",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"vehicle-big-turret-5", 1},
      {"steel-plate", 20},
      {"processing-unit", 20},
      {"battery", 12},
    },
    result = "vehicle-big-turret-6"
  },

  bob_active_weapon_equipment{
    name = "vehicle-big-turret-6",
    sprite = "__bobvehicleequipment__/graphics/equipment/vehicle-big-turret-6.png",
    width = 4,
    height = 4,
    buffer_capacity = "13600kJ",
    input_flow_limit = "3000kW",
    energy_consumption = "2250kJ",
    target_type = "position",
    projectile = "bob-plasma-projectile",
    sound = {{ filename = "__base__/sound/fight/electric-beam.ogg", volume = 0.7 }},
    damage_modifier = 4.5,
    cooldown = 75,
    range = 40,
    starting_speed = 0.3,
    categories = {"armoured-vehicle"}
  },

  {
    type = "technology",
    name = "vehicle-big-turret-equipment-6",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-big-turret.png",
    icon_size = 128,
    order = "v-g-m-f",
    upgrade = "true",
    prerequisites =
    {
      "vehicle-big-turret-equipment-5",
    },
    unit =
    {
      count = 400,
      time = 30,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
        {"alien-science-pack", 1},
      },
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-big-turret-6"
      }
    },
  },
}
)




