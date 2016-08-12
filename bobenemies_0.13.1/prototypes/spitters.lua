if data.raw.unit["behemoth-spitter"]~=nil then
  data.raw.unit["behemoth-spitter"].attack_parameters = spitterattackparameters({range=15, cooldown=100, damage_modifier=5, scale=bob_behemoth_scale, tint=behemothspittertint})
  data.raw.unit["behemoth-spitter"].run_animation = spitterrunanimation(bob_behemoth_scale, behemothspittertint)
  data.raw.unit["behemoth-spitter"].collision_box = {{-1, -1}, {1, 1}}
  data.raw.unit["behemoth-spitter"].selection_box = {{-1.5, -2}, {1.5, 2}}

  data.raw.corpse["behemoth-spitter-corpse"].animation = spitterdyinganimation(bob_behemoth_scale, behemothspittertint)
  data.raw.corpse["behemoth-spitter-corpse"].collision_box = {{-1.5, -1.5}, {1.5, 1.5}}
  data.raw.corpse["behemoth-spitter-corpse"].selection_box = {{-1.5, -2}, {1.5, 2}}
end


data:extend(
{
  {
    type = "unit",
    name = "bob-big-electric-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 200,
    order="b-b-f",
    subgroup="enemies",
    resistances =
    {
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "laser",
        percent = 5,
      },

      {
        type = "fire",
        percent = 5,
      },
      {
        type = "electric",
        decrease = 2,
        percent = 15,
      },
    },
    spawning_time_modifier = 2,
    healing_per_tick = 0.01,
    collision_box = {{-0.5, -0.5}, {0.5, 0.5}},
    selection_box = {{-0.7, -1.0}, {0.7, 1.0}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 3,
      warmup = 30,
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
      },
      sound = make_spitter_roars(0.95),
      animation = spitterattackanimation(bob_big_scale, bob_electric_tint),
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.07,
    -- in pu
    pollution_to_join_attack = 1500,
    corpse = "bob-big-electric-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(0.9),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_big_scale, bob_electric_tint)
  },

  {
    type = "corpse",
    name = "bob-big-electric-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-c[big]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way", "not-on-map"},
    dying_speed = 0.04,
    time_before_removed = 15 * 60 * 60,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_big_scale, bob_electric_tint),
  },


  {
    type = "unit",
    name = "bob-huge-explosive-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 400,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 10,
        percent = 40,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 10,
      },

      {
        type = "fire",
        percent = 15,
      },
      {
        type = "electric",
        percent = 15,
      },

      {
        type = "bob-pierce",
        percent = 5,
      },
      {
        type = "poison",
        percent = 5,
      },
      {
        type = "acid",
        percent = 5,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.9, -1.1}, {0.7, 1.1}},
    sticker_box = {{-0.4, -0.6}, {0.4, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 4,
      warmup = 30,
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
      },
      sound = make_spitter_roars(1),
      animation = spitterattackanimation(bob_huge_scale, bob_explosive_tint),
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.05,
    -- in pu
    pollution_to_join_attack = 1250,
    corpse = "bob-huge-explosive-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(1.0),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_huge_scale, bob_explosive_tint)
  },

  {
    type = "corpse",
    name = "bob-huge-explosive-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[bigger]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_huge_scale, bob_explosive_tint),
  },


  {
    type = "unit",
    name = "bob-huge-acid-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 400,
    order="b-b-g",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 10,
      },
      {
        type = "explosion",
        decrease = 6,
        percent = 30,
      },
	 {
        type = "laser",
        percent = 10,
      },
      {
        type = "impact",
        decrease = 10,
      },

      {
        type = "fire",
        percent = 15,
      },
      {
        type = "electric",
        percent = 15,
      },

      {
        type = "bob-pierce",
        percent = 5,
      },
      {
        type = "poison",
        percent = 5,
      },
      {
        type = "acid",
        decrease = 6,
        percent = 15,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
    selection_box = {{-0.9, -1.1}, {0.7, 1.1}},
    sticker_box = {{-0.4, -0.6}, {0.4, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 4,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "area-acid-projectile-purple",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1),
      animation = spitterattackanimation(bob_huge_scale, bob_acid_tint),
    },
    vision_distance = 30,
    movement_speed = 0.12,
    distance_per_frame = 0.05,
    -- in pu
    pollution_to_join_attack = 1250,
    corpse = "bob-huge-acid-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = make_biter_calls(1.0),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_huge_scale, bob_acid_tint)
  },

  {
    type = "corpse",
    name = "bob-huge-acid-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    selection_box = {{-1, -1}, {1, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-d[bigger]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_huge_scale, bob_acid_tint),
  },


  {
    type = "unit",
    name = "bob-giant-fire-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 15,
      },
      {
        type = "explosion",
        decrease = 8,
        percent = 35,
      },
	 {
        type = "laser",
        percent = 15,
      },
      {
        type = "impact",
        decrease = 15,
      },

      {
        type = "fire",
        decrease = 8,
        percent = 40,
      },
      {
        type = "electric",
        percent = 20,
      },

      {
        type = "bob-pierce",
        percent = 10,
      },
      {
        type = "poison",
        percent = 10,
      },
      {
        type = "acid",
        percent = 10,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 5,
      warmup = 30,
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
      },
      sound = make_spitter_roars(1.1),
      animation = spitterattackanimation(bob_giant_scale, bob_fire_tint),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-giant-fire-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_giant_scale, bob_fire_tint)
  },


  {
    type = "corpse",
    name = "bob-giant-fire-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_giant_scale, bob_fire_tint),
  },

  {
    type = "unit",
    name = "bob-giant-poison-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 800,
    order="b-b-h",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 15,
      },
      {
        type = "explosion",
        decrease = 8,
        percent = 35,
      },
	 {
        type = "laser",
        percent = 15,
      },
      {
        type = "impact",
        decrease = 15,
      },

      {
        type = "fire",
        percent = 20,
      },
      {
        type = "electric",
        percent = 20,
      },

      {
        type = "bob-pierce",
        percent = 10,
      },
      {
        type = "poison",
        decrease = 8,
        percent = 32.5,
      },
      {
        type = "acid",
        percent = 10,
      },
    },
    healing_per_tick = 0.03,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-1.1, -1.4}, {1.1, 1.4}},
    sticker_box = {{-0.5, -0.7}, {0.5, 0.3}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 5,
      warmup = 30,
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
      },
      sound = make_spitter_roars(1.1),
      animation = spitterattackanimation(bob_giant_scale, bob_poison_tint ),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-giant-poison-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_giant_scale, bob_poison_tint )
  },

  {
    type = "corpse",
    name = "bob-giant-poison-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[biggest]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_giant_scale, bob_poison_tint ),
  },


  {
    type = "unit",
    name = "bob-titan-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 1500,
    order="b-b-i",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 25,
      },
      {
        type = "explosion",
        decrease = 16,
        percent = 70,
      },
	 {
        type = "laser",
        percent = 25,
      },
      {
        type = "impact",
        percent = 25,
      },

      {
        type = "fire",
        decrease = 10,
        percent = 50,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 50,
      },

      {
        type = "bob-pierce",
        percent = 25,
      },
      {
        type = "poison",
        percent = 25,
      },
      {
        type = "acid",
        percent = 25,
      },
    },
    spawning_time_modifier = 5,
    healing_per_tick = 0.05,
    collision_box = {{-0.85, -0.85}, {0.85, 0.85}},
    selection_box = {{-1.3, -1.7}, {1.3, 1.7}},
    sticker_box = {{-0.7, -1}, {0.7, 0.5}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 7,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "titan-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.2),
      animation = spitterattackanimation(bob_titan_scale, bob_titan_tint),
    },
    vision_distance = 30,
    movement_speed = 0.1,
    distance_per_frame = 0.05,
    pollution_to_join_attack = 1500,
    corpse = "bob-titan-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_titan_scale, bob_titan_tint)
  },

  {
    type = "corpse",
    name = "bob-titan-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[titan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_titan_scale, bob_titan_tint),
  },


  {
    type = "unit",
    name = "bob-behemoth-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 2000,
    order="b-b-j",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 35,
      },
      {
        type = "explosion",
        decrease = 16,
        percent = 85,
      },
      {
        type = "laser",
        percent = 35,
      },
      {
        type = "impact",
        percent = 35,
      },

      {
        type = "fire",
        decrease = 10,
        percent = 75,
      },
      {
        type = "electric",
        decrease = 10,
        percent = 75,
      },

      {
        type = "bob-pierce",
        percent = 35,
      },
      {
        type = "poison",
        decrease = 10,
        percent = 65,
      },
      {
        type = "acid",
        percent = 35,
      },
    },
    spawning_time_modifier = 8,
    healing_per_tick = 0.1,
    collision_box = {{-1, -1}, {1, 1}},
    selection_box = {{-1.5, -2}, {1.5, 2}},
    sticker_box = {{-0.6, -1}, {0.6, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 10,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "behemoth-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.2),
      animation = spitterattackanimation(bob_behemoth_scale, bob_behemoth_tint),
    },
    vision_distance = 30,
    movement_speed = 0.15,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 10000,
    corpse = "bob-behemoth-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_behemoth_scale, bob_behemoth_tint)
  },

  {
    type = "corpse",
    name = "bob-behemoth-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.7, -0.7}, {0.7, 0.7}},
    selection_box = {{-0.7, -1}, {0.7, 1}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-e[behemoth]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_behemoth_scale, bob_behemoth_tint),
  },


  {
    type = "unit",
    name = "bob-leviathan-spitter",
    icon = "__base__/graphics/icons/creeper.png",
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
    max_health = 5000,
    order="b-b-j",
    subgroup="enemies",
    resistances =
    {
      {
        type = "physical",
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 15,
        percent = 90,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "impact",
        percent = 50,
      },

      {
        type = "fire",
        decrease = 15,
        percent = 90,
      },
      {
        type = "electric",
        decrease = 15,
        percent = 90,
      },

      {
        type = "bob-pierce",
        decrease = 12,
        percent = 75,
      },
      {
        type = "poison",
        decrease = 12,
        percent = 75,
      },
      {
        type = "acid",
        decrease = 12,
        percent = 75,
      },
    },
    spawning_time_modifier = 12,
    healing_per_tick = 0.1,
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.7, -2.4}, {1.7, 2.4}},
    sticker_box = {{-0.7, -1.2}, {0.7, 0.2}},
    distraction_cooldown = 300,
    loot =
    {
    },
    attack_parameters = 
    {
      type = "projectile",
      ammo_category = "rocket",
      cooldown = 100,
      range = 15,
      projectile_creation_distance = 1.9,
      damage_modifier = 10,
      warmup = 30,
      ammo_type =
      {
        category = "biological",
        action =
        {
          type = "direct",
          action_delivery =
          {
            type = "projectile",
            projectile = "leviathan-spit-projectile",
            starting_speed = 0.5
          }
        }
      },
      sound = make_spitter_roars(1.2),
      animation = spitterattackanimation(bob_leviathan_scale, bob_leviathan_tint),
    },
    vision_distance = 50,
    movement_speed = 0.15,
    distance_per_frame = 0.1,
    pollution_to_join_attack = 10000,
    corpse = "bob-leviathan-spitter-corpse",
    dying_explosion = "blood-explosion-big",
    working_sound = make_biter_calls(1.2),
    dying_sound = make_spitter_dying_sounds(1.0),
    run_animation = spitterrunanimation(bob_leviathan_scale, bob_leviathan_tint)
  },

  {
    type = "corpse",
    name = "bob-leviathan-spitter-corpse",
    icon = "__base__/graphics/icons/big-biter-corpse.png",
    selectable_in_game = false,
    collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{-0.9, -1.2}, {0.9, 1.2}},
    subgroup="corpses",
    order = "c[corpse]-b[spitter]-f[leviathan]",
    flags = {"placeable-neutral", "placeable-off-grid", "building-direction-8-way"},
    dying_speed = 0.04,
    final_render_layer = "corpse",
    animation = spitterdyinganimation(bob_leviathan_scale, bob_leviathan_tint),
  },
}
)

