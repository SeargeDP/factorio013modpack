--[[
    charging_energy = "1000kW",
    charging_energy = "2500kW",
    charging_energy = "4000kW",
    charging_energy = "6000kW",

    construction_radius = 50,
    construction_radius = 100,
    construction_radius = 150,
    construction_radius = 200,


      input_flow_limit = "5MW",
      input_flow_limit = "10MW",
      input_flow_limit = "20MW",
      input_flow_limit = "40MW",

      buffer_capacity = "100MJ"
      buffer_capacity = "200MJ"
      buffer_capacity = "400MJ"
      buffer_capacity = "800MJ"

    energy_usage = "50kW",
    energy_usage = "100kW",
    energy_usage = "150kW",
    energy_usage = "200kW",
]]--


data:extend(
{
  {
    type = "item",
    name = "vehicle-roboport",
    icon = "__bobvehicleequipment__/graphics/icons/vehicle-roboport.png",
    placed_as_equipment_result = "vehicle-roboport",
    flags = {"goes-to-main-inventory"},
    subgroup = "vehicle-equipment",
    order = "v[vehicle-equipment]-f[roboport]",
    stack_size = 50,
    default_request_amount = 10
  },

  {
    type = "recipe",
    name = "vehicle-roboport",
    enabled = "false",
    energy_required = 10,
    ingredients =
    {
      {"processing-unit", 10},
      {"iron-gear-wheel", 40},
      {"steel-plate", 20},
      {"battery", 45},
    },
    result = "vehicle-roboport"
  },

  {
    type = "roboport-equipment",
    name = "vehicle-roboport",
    sprite =
    {
      filename = "__bobvehicleequipment__/graphics/equipment/vehicle-roboport.png",
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
      buffer_capacity = "35MJ",
      input_flow_limit = "3500KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "1000kW",
    energy_consumption = "20kW",

    robot_limit = 10,
    construction_radius = 15,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 2,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"car", "tank", "cargo-wagon"}
  },

  {
    type = "technology",
    name = "vehicle-roboport-equipment",
    icon = "__bobvehicleequipment__/graphics/technology/vehicle-roboport.png",
    icon_size = 128,
    order = "v-c-k-z",
    prerequisites =
    {
      "construction-robotics",
      "vehicle-solar-panel-equipment-1"
    },
    unit =
    {
      count = 50,
      ingredients =
      {
        {"science-pack-1", 1},
        {"science-pack-2", 1},
        {"science-pack-3", 1},
      },
      time = 30
    },
    effects =
    {
      {
        type = "unlock-recipe",
        recipe = "vehicle-roboport"
      },
    },
  },
}
)

