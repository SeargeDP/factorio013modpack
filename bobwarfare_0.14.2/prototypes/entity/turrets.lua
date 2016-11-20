data.raw["ammo-turret"]["gun-turret"].fast_replaceable_group = "turret"
data.raw["electric-turret"]["laser-turret"].fast_replaceable_group = "turret"

local black = {r=0, g=0, b=0, a=1}
--local red = {r=1, g=0, b=0, a=1}
--local green = {r=0, g=1, b=0, a=1}
--local yellow = {r=1, g=1, b=0, a=1}
--local blue = {r=0, g=0, b=1, a=1}
local magenta = {r=1, g=0, b=1, a=1}
local cyan = {r=0, g=1, b=1, a=1}
local white = {r=1, g=1, b=1, a=1}

local orange = {r=1, g=0.5, b=0, a=1}
--local purple = {r=0.7, g=0, b=1, a=1}

local blue = {r=0.5, g=0.8, b=1, a=1}
local purple = {r=0.8, g=0.5, b=1, a=1}
local yellow = {r=1, g=1, b=0.5, a=1}
local red = {r=1, g=0.5, b=0.5, a=1}
local green = {r=0.5, g=1, b=0.5, a=1}



function bob_gun_turret_extension(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension.png",
      priority = "medium",
      width = 65,
      height = 63,
      direction_count = 4,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = {0.078125, -0.859375},
      axially_symmetrical = false
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-mask.png",
      tint = inputs.tint and inputs.tint or white,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      width = 24,
      height = 31,
      direction_count = 4,
      axially_symmetrical = false,
      shift = {0.0625, -0.890625},
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-extension-shadow.png",
      width = 89,
      height = 49,
      direction_count = 4,
      frame_count = inputs.frame_count and inputs.frame_count or 5,
      line_length = inputs.line_length and inputs.line_length or 0,
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
      shift = {1.26563, 0.015625},
      axially_symmetrical = false,
      draw_as_shadow = true
    }
  }
}
end

function bob_gun_turret_attack(inputs)
return
{
  layers =
  {
    {
      width = 66,
      height = 64,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -0.875},
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-mask.png",
      line_length = inputs.frame_count and inputs.frame_count or 2,
      width = 29,
      height = 27,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.078125, -1.01563},
      tint = inputs.tint and inputs.tint or white,
    },
    {
      width = 91,
      height = 50,
      frame_count = inputs.frame_count and inputs.frame_count or 2,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {1.29688, 0},
      draw_as_shadow = true,
      stripes =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-1.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        },
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-gun-shadow-2.png",
          width_in_frames = inputs.frame_count and inputs.frame_count or 2,
          height_in_frames = 32,
        }
      }
    }
  }
}
end

function bob_gun_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
      priority = "high",
      width = 90,
      height = 75,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.046875},
    },
    {
      filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
      line_length = 1,
      width = 52,
      height = 47,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = {0.0625, -0.234375},
      tint = inputs.tint and inputs.tint or white,
    }
  }
}
end



function bob_laser_turret_extension(inputs)
return
{
  layers =
  {
    laser_turret_extension(inputs),
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-start-mask.png",
      tint = inputs.tint and inputs.tint or white,
      frame_count = inputs.frame_count and inputs.frame_count or 15,
      line_length = inputs.line_length and inputs.line_length or 0,
      width = 51,
      height = 47,
      direction_count = 4,
      axially_symmetrical = false,
      shift = {0.078125, -1.26563},
      run_mode = inputs.run_mode and inputs.run_mode or "forward",
    },
    laser_turret_extension_shadow(inputs)
  }
}
end

function bob_laser_turret_attack(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun.png",
      line_length = 8,
      width = 68,
      height = 68,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      shift = {0.0625, -1}
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-mask.png",
      line_length = 8,
      width = 54,
      height = 44,
      frame_count = 1,
      axially_symmetrical = false,
      tint = inputs.tint and inputs.tint or white, 
      direction_count = 64,
      shift = {0.0625, -1.3125},
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-gun-shadow.png",
      line_length = 8,
      width = 88,
      height = 52,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 64,
      draw_as_shadow = true,
      shift = {1.59375, 0}
    }
  }
}
end

function bob_laser_turret_base(inputs)
return
{
  layers =
  {
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base.png",
      priority = "high",
      width = 98,
      height = 82,
      frame_count = 1,
      axially_symmetrical = false,
      direction_count = 1,
      shift = { 0.109375, 0.03125 }
    },
    {
      filename = "__base__/graphics/entity/laser-turret/laser-turret-base-mask.png",
      line_length = 1,
      width = 54,
      height = 46,
      frame_count = 1,
      axially_symmetrical = false,
      tint = inputs.tint and inputs.tint or white, 
      direction_count = 1,
      shift = {0.046875, -0.109375},
    }
  }
}
end



function bob_turret_base(inputs)
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_base{tint = inputs.tint}
  else
    anim = bob_laser_turret_base{tint = inputs.tint}
  end
  return anim
end

function bob_turret_attack(inputs)
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_attack(inputs)
  else
    anim = bob_laser_turret_attack(inputs)
  end
  return anim
end

function bob_turret_extension(inputs)
  local anim
  if inputs.type == "gun" then
    anim = bob_gun_turret_extension(inputs)
  else
    anim = bob_laser_turret_extension(inputs)
  end
  return anim
end


function bob_gun_turret(inputs)
return
  {
    type = "ammo-turret",
    name = inputs.name,
    icon = "__base__/graphics/icons/gun-turret.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = inputs.name},
    max_health = inputs.health,
    corpse = "medium-remnants",
    collision_box = {{-0.7, -0.7 }, {0.7, 0.7}},
    selection_box = {{-1, -1 }, {1, 1}},
    rotation_speed = 0.015,
    preparing_speed = 0.08,
    folding_speed = 0.08,
    dying_explosion = "medium-explosion",
    inventory_size = inputs.inventory_size and inputs.inventory_size or 1,
    automated_ammo_count = inputs.automated_ammo_count and inputs.automated_ammo_count or 10,
    fast_replaceable_group = "turret",
    attacking_speed = 0.5,
    folded_animation = bob_turret_extension{frame_count=1, line_length = 1, type = inputs.gun_type, tint = inputs.tint},
    preparing_animation = bob_turret_extension{type = inputs.gun_type, tint = inputs.tint},
    folding_animation = bob_turret_extension{run_mode = "backward", type = inputs.gun_type, tint = inputs.tint},
    prepared_animation = bob_turret_attack{frame_count=1, type = inputs.gun_type, tint = inputs.tint},
    attacking_animation = bob_turret_attack{type = inputs.gun_type, tint = inputs.tint},
    base_picture = inputs.base,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = inputs.ammo_category and inputs.ammo_category or "bullet",
      cooldown = inputs.cooldown and inputs.cooldown or 6,
      projectile_creation_distance = 1.39375,
      projectile_center = {0.0625, -0.0875}, -- same as gun_turret_attack shift
      damage_modifier = inputs.damage_modifier and inputs.damage_modifier or 2,
      range = inputs.range and inputs.range or 17,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0},
        creation_distance = -1.925,
        starting_frame_speed = 0.2,
        starting_frame_speed_deviation = 0.1
      },
      sound = make_heavy_gunshot_sounds(),
    },
    call_for_help_radius = 40
  }
end





function bob_laser_turret(inputs)
return
  {
    type = "electric-turret",
    name = inputs.name,
    icon = "__base__/graphics/icons/laser-turret.png",
    flags = { "placeable-player", "placeable-enemy", "player-creation"},
    minable = { mining_time = 0.5, result = inputs.name },
    max_health = inputs.health,
    corpse = "medium-remnants",
    collision_box = {{ -0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{ -1, -1}, {1, 1}},
    dying_explosion = "medium-explosion",
    rotation_speed = 0.01,
    preparing_speed = 0.05,
    folding_speed = 0.05,
    fast_replaceable_group = "turret",
    energy_source =
    {
      type = "electric",
      buffer_capacity = inputs.buffer_capacity and inputs.buffer_capacity or "801kJ",
      input_flow_limit = inputs.input_flow_limit and inputs.input_flow_limit or "4800kW",
      drain = inputs.drain and inputs.drain or "24kW",
      usage_priority = "primary-input"
    },
    folded_animation = bob_laser_turret_extension{frame_count=1, line_length = 1, tint = inputs.tint},
    preparing_animation = bob_laser_turret_extension{tint = inputs.tint},
    folding_animation = bob_laser_turret_extension{run_mode = "backward", tint = inputs.tint},
    prepared_animation = bob_laser_turret_attack{tint = inputs.tint},
    base_picture = inputs.base,
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "electric",
      cooldown = inputs.cooldown and inputs.cooldown or 20,
      damage_modifier = inputs.damage_modifier and inputs.damage_modifier or 4,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = inputs.range and inputs.range or 25,
      ammo_type =
      {
        type = "projectile",
        category = "laser-turret",
        energy_consumption = inputs.energy_consumption and inputs.energy_consumption or "800kJ",
        action =
        {
          {
            type = "direct",
            action_delivery =
            {
              {
                type = "projectile",
                projectile = inputs.projectile and inputs.projectile or "laser",
                starting_speed = 0.28
              }
            }
          }
        }
      },
      sound = make_laser_sounds(),
--[[
      type = "beam",
      ammo_category = "electric",
      cooldown = inputs.cooldown and inputs.cooldown or 20,
      damage_modifier = inputs.damage_modifier and inputs.damage_modifier or 4,
      projectile_center = {0, -0.2},
      projectile_creation_distance = 1.4,
      range = inputs.range and inputs.range or 25,
      ammo_type =
      {
        type = "beam",
        category = "laser-turret",
        energy_consumption = inputs.energy_consumption and inputs.energy_consumption or "800kJ",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "beam",
            beam = "electric-beam",
            --projectile = inputs.projectile and inputs.projectile or "laser",
            max_length = 25,
            duration = 20,
          }
        }
      },
]]--
    },
    call_for_help_radius = 40
  }
end


data:extend(
{
--  bob_gun_turret{name = "gun-turret", health = 400, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 2, cooldown = 6, range = 17, tint = white, , base_tint = white},
  bob_gun_turret{name = "bob-gun-turret-2", health = 500, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 2.5, cooldown = 6, range = 18, tint = blue, gun_type = "gun", base = bob_turret_base{type = "gun", tint = blue}},
  bob_gun_turret{name = "bob-gun-turret-3", health = 600, inventory_size = 2, automated_ammo_count = 20, ammo_category = "bullet", damage_modifier = 3, cooldown = 6, range = 19, tint = purple, gun_type = "gun", base = bob_turret_base{type = "gun", tint = blue}},
  bob_gun_turret{name = "bob-gun-turret-4", health = 700, inventory_size = 2, automated_ammo_count = 20, ammo_category = "bullet", damage_modifier = 3.5, cooldown = 6, range = 20, tint = green, gun_type = "gun", base = bob_turret_base{type = "gun", tint = blue}},
  bob_gun_turret{name = "bob-gun-turret-5", health = 800, inventory_size = 3, automated_ammo_count = 30, ammo_category = "bullet", damage_modifier = 4, cooldown = 6, range = 20, tint = red, gun_type = "gun", base = bob_turret_base{type = "gun", tint = blue}},

  bob_gun_turret{name = "bob-sniper-turret-1", health = 400, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 25, cooldown = 150, range = 30, tint = blue, gun_type = "laser", base = bob_turret_base{type = "gun", tint = red}},
  bob_gun_turret{name = "bob-sniper-turret-2", health = 600, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 30, cooldown = 120, range = 32.5, tint = purple, gun_type = "laser", base = bob_turret_base{type = "gun", tint = red}},
  bob_gun_turret{name = "bob-sniper-turret-3", health = 800, inventory_size = 1, automated_ammo_count = 10, ammo_category = "bullet", damage_modifier = 35, cooldown = 105, range = 35, tint = red, gun_type = "laser", base = bob_turret_base{type = "gun", tint = red}},

--  bob_laser_turret{name = "laser-turret", health = 1000, buffer_capacity = "801kJ", input_flow_limit = "4800kW", drain = "24kW", energy_consumption = "800kJ", projectile = "laser", damage_modifier = 4, cooldown = 20, range = 25, tint = white, base_tint = white},
  bob_laser_turret{name = "bob-laser-turret-2", health = 1200, buffer_capacity = "2001kJ", input_flow_limit = "8000kW", drain = "30kW", energy_consumption = "1000kJ", projectile = "bob-blue-laser", damage_modifier = 6, cooldown = 20, range = 26.25, tint = blue, base = bob_turret_base{type = "laser", tint = yellow}},
  bob_laser_turret{name = "bob-laser-turret-3", health = 1400, buffer_capacity = "3601kJ", input_flow_limit = "12000kW", drain = "36kW", energy_consumption = "1200kJ", projectile = "bob-green-laser", damage_modifier = 8.4, cooldown = 20, range = 27.5, tint = green, base = bob_turret_base{type = "laser", tint = yellow}},
  bob_laser_turret{name = "bob-laser-turret-4", health = 1600, buffer_capacity = "5601kJ", input_flow_limit = "16800kW", drain = "42kW", energy_consumption = "1400kJ", projectile = "bob-yellow-laser", damage_modifier = 11.2, cooldown = 20, range = 28.75, tint = yellow, base = bob_turret_base{type = "laser", tint = yellow}},
  bob_laser_turret{name = "bob-laser-turret-5", health = 2000, buffer_capacity = "8001kJ", input_flow_limit = "19200kW", drain = "48kW", energy_consumption = "1600kJ", projectile = "bob-white-laser", damage_modifier = 14.4, cooldown = 20, range = 30, tint = red, base = bob_turret_base{type = "laser", tint = yellow}},
}
)



