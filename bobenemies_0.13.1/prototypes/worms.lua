data.raw.turret["big-worm-turret"].folded_animation = worm_folded_animation(big_worm_scale, bob_acid_worm_tint)
data.raw.turret["big-worm-turret"].preparing_animation = worm_preparing_animation(big_worm_scale, bob_acid_worm_tint, "forward")
data.raw.turret["big-worm-turret"].prepared_animation = worm_prepared_animation(big_worm_scale, bob_acid_worm_tint)
data.raw.turret["big-worm-turret"].starting_attack_animation = worm_attack_animation(big_worm_scale, bob_acid_worm_tint, "forward")
data.raw.turret["big-worm-turret"].ending_attack_animation = worm_attack_animation(big_worm_scale, bob_acid_worm_tint, "backward")
data.raw.turret["big-worm-turret"].folding_animation =  worm_preparing_animation(big_worm_scale, bob_acid_worm_tint, "backward")
data.raw.turret["big-worm-turret"].attack_parameters.ammo_type.action.action_delivery.projectile = "area-acid-projectile-purple"
table.insert(data.raw.turret["big-worm-turret"].resistances,{type = "acid", decrease = 5, percent = 40})

data.raw.corpse["big-worm-corpse"].animation = worm_die_animation(big_worm_scale, bob_acid_worm_tint)


data:extend(
{
  {
    type = "turret",
    name = "bob-big-explosive-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 50,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-explosive-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    inventory_size = 2,
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_explosive_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_explosive_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_explosive_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_explosive_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_explosive_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_explosive_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "explosive-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(3),
    call_for_help_radius = 40
  },

  {
    type = "turret",
    name = "bob-big-fire-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "fire",
        decrease = 5,
        percent = 40,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-fire-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_fire_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_fire_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_fire_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_fire_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_fire_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_fire_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "fire-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(3),
    call_for_help_radius = 40
  },

  {
    type = "turret",
    name = "bob-big-poison-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "poison",
        decrease = 5,
        percent = 40,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-poison-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_poison_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_poison_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_poison_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_poison_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_poison_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_poison_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "poison-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(3),
    call_for_help_radius = 40
  },


  {
    type = "turret",
    name = "bob-big-piercing-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "bob-pierce",
        decrease = 5,
        percent = 40,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-piercing-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_pierce_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_pierce_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_pierce_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_pierce_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_pierce_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_pierce_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "piercing-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(3),
    call_for_help_radius = 40
  },

  {
    type = "turret",
    name = "bob-big-electric-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 500,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 8,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 25,
      },
      {
        type = "electric",
        decrease = 5,
        percent = 40,
      }
    },
    healing_per_tick = 0.02,
    collision_box = {{-1.4, -1.2}, {1.4, 1.2}},
    selection_box = {{-1.4, -1.2}, {1.4, 1.2}},
    shooting_cursor_size = 4,
    rotation_speed = 1,
    corpse = "bob-big-electric-worm-corpse",
    dying_explosion = "blood-explosion-big",
    inventory_size = 2,
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(big_worm_scale, bob_electric_worm_tint),
    prepare_range = 25,
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(big_worm_scale, bob_electric_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(big_worm_scale, bob_electric_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(big_worm_scale, bob_electric_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(0.95),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(big_worm_scale, bob_electric_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(big_worm_scale, bob_electric_worm_tint, "backward"),
    prepare_range = 30,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 25,
      projectile_creation_distance = 2.1,
      damage_modifier = 6,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "electric-spit-projectile",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.5,
    autoplace = enemy_worm_autoplace(3),
    call_for_help_radius = 40
  },


  {
    type = "corpse",
    name = "bob-big-explosive-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-d[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_explosive_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-fire-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-e[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_fire_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-poison-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-f[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_poison_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-piercing-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-g[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_pierce_worm_tint)
  },

  {
    type = "corpse",
    name = "bob-big-electric-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-h[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(big_worm_scale, bob_electric_worm_tint)
  },
}
)



data:extend(
{
  {
    type = "turret",
    name = "bob-giant-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 1000,
    order="b-b-i",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 35,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-2.1, -1.8}, {2.1, 1.8}},
    selection_box = {{-2.1, -1.8}, {2.1, 1.8}},
    shooting_cursor_size = 6,
    rotation_speed = 1,
    corpse = "bob-big-electric-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(bob_giant_scale, bob_giant_worm_tint),
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(bob_giant_scale, bob_giant_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(bob_giant_scale, bob_giant_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(bob_giant_scale, bob_giant_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(1.0),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(bob_giant_scale, bob_giant_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(bob_giant_scale, bob_giant_worm_tint, "backward"),
    prepare_range = 35,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 28,
      projectile_creation_distance = 3.15,
      damage_modifier = 10,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "acid-projectile-purple",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.75,
    autoplace = enemy_worm_autoplace(4),
    call_for_help_radius = 40
  },

  {
    type = "corpse",
    name = "bob-giant-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-i[giant]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(bob_giant_scale, bob_giant_worm_tint)
  },
}
)


data:extend(
{
  {
    type = "turret",
    name = "bob-behemoth-worm-turret",
    icon = "__base__/graphics/icons/big-worm.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable", "breaths-air"},
    max_health = 2000,
    order="b-b-j",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        decrease = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 50,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-2.8, -2.4}, {2.8, 2.4}},
    selection_box = {{-2.8, -2.4}, {2.8, 2.4}},
    shooting_cursor_size = 8,
    rotation_speed = 1,
    corpse = "bob-behemoth-worm-corpse",
    dying_explosion = "blood-explosion-big",
    dying_sound = make_worm_dying_sounds(1.0),
    folded_speed = 0.01,
    folded_animation = worm_folded_animation(bob_behemoth_scale, bob_behemoth_worm_tint),
    preparing_speed = 0.025,
    preparing_animation = worm_preparing_animation(bob_behemoth_scale, bob_behemoth_worm_tint, "forward"),
    prepared_speed = 0.015,
    prepared_animation = worm_prepared_animation(bob_behemoth_scale, bob_behemoth_worm_tint),
    starting_attack_speed = 0.03,
    starting_attack_animation = worm_attack_animation(bob_behemoth_scale, bob_behemoth_worm_tint, "forward"),
    starting_attack_sound = make_worm_roars(1.0),
    ending_attack_speed = 0.03,
    ending_attack_animation = worm_attack_animation(bob_behemoth_scale, bob_behemoth_worm_tint, "backward"),
    folding_speed = 0.015,
    folding_animation =  worm_preparing_animation(bob_behemoth_scale, bob_behemoth_worm_tint, "backward"),
    prepare_range = 40,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 30,
      projectile_creation_distance = 4.2,
      damage_modifier = 15,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "acid-projectile-purple",
            starting_speed = 0.5
          }
        }
      }
    },
    build_base_evolution_requirement = 0.99,
    autoplace = enemy_worm_autoplace(5),
    call_for_help_radius = 40
  },

  {
    type = "corpse",
    name = "bob-behemoth-worm-corpse",
    icon = "__base__/graphics/icons/big-worm-corpse.png",
    selection_box = {{-1.6, -1.6}, {1.6, 1.6}},
    selectable_in_game = false,
    subgroup="corpses",
    order = "c[corpse]-c[worm]-j[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-repairable", "not-on-map"},
    dying_speed = 0.01,
    final_render_layer = "corpse",
    animation = worm_die_animation(bob_behemoth_scale, bob_behemoth_worm_tint)
  },
}
)



