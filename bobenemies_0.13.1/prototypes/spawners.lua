data:extend(
{
  {
    type = "unit-spawner",
    name = "bob-biter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 1500,
    order="b-b-i",
    subgroup="enemies",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "impact",
        percent = 20,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 15,
      },
      {
        type = "bob-pierce",
        percent = 20,
      },
      {
        type = "acid",
        percent = 20,
      },
      {
        type = "poison",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 30000,
    corpse = "bob-biter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_min = 5,
        count_max = 15,
        item = "alien-artifact",
        probability = 1
      },
    },
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, bob_biter_spawner_tint),
      spawner_idle_animation(1, bob_biter_spawner_tint),
      spawner_idle_animation(2, bob_biter_spawner_tint),
      spawner_idle_animation(3, bob_biter_spawner_tint)
    },
    result_units =
    {
      {"small-biter", {{0.0, 0.3}, {0.5, 0.3}, {0.7, 0.0}}},
      {"medium-biter", {{0.3, 0.0}, {0.6, 0.3}, {0.8, 0.0}}},
--      {"big-biter", {{0.6, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
-- Big enemies apear at 0.6, slowly become elemental between 0.7 and 0.8, and disapear by 0.9
      {"big-biter", {{0.6, 0.0}, {0.7, 0.4}, {0.8, 0.0}}},
      {"bob-big-piercing-biter", {{0.7, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
      {"bob-huge-acid-biter", {{0.7, 0.0}, {0.8, 0.2}}},
      {"bob-huge-explosive-biter", {{0.7, 0.0}, {0.8, 0.1}}},
      {"bob-giant-poison-biter", {{0.8, 0.0}, {0.9, 0.2}}},
      {"bob-giant-fire-biter", {{0.8, 0.0}, {0.9, 0.1}}},
      {"bob-titan-biter", {{0.9, 0.0}, {1.0, 0.3}}},
      {"bob-behemoth-biter", {{0.99, 0.0}, {1.0, 0.3}}},
      {"bob-leviathan-biter", {{0.99, 0.0}, {1.0, 0.05}}},
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = {300, 120},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_spawner_autoplace(1),
    call_for_help_radius = 50
  },

  {
    type = "corpse",
    name = "bob-biter-spawner-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-d[big-biter-spawner]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, bob_biter_spawner_tint),
      spawner_die_animation(1, bob_biter_spawner_tint),
      spawner_die_animation(2, bob_biter_spawner_tint),
      spawner_die_animation(3, bob_biter_spawner_tint)
    }
  },


  {
    type = "unit-spawner",
    name = "bob-spitter-spawner",
    icon = "__base__/graphics/icons/biter-spawner.png",
    flags = {"placeable-player", "placeable-enemy", "not-repairable"},
    max_health = 1500,
    order="b-b-j",
    subgroup="enemies",
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 1.0
        }
      },
      apparent_volume = 2
    },
    dying_sound =
    {
      {
        filename = "__base__/sound/creatures/spawner-death-1.ogg",
        volume = 1.0
      },
      {
        filename = "__base__/sound/creatures/spawner-death-2.ogg",
        volume = 1.0
      }
    },
    resistances =
    {
      {
        type = "physical",
        decrease = 2,
        percent = 20,
      },
      {
        type = "impact",
        percent = 20,
      },
      {
        type = "laser",
        percent = 50,
      },
      {
        type = "explosion",
        decrease = 5,
        percent = 32,
      },
      {
        type = "fire",
        percent = 20,
      },
      {
        type = "electric",
        percent = 20,
      },
    },
    healing_per_tick = 0.02,
    collision_box = {{-3.2, -2.2}, {2.2, 2.2}},
    selection_box = {{-3.5, -2.5}, {2.5, 2.5}},
    pollution_absorbtion_absolute = 20,
    pollution_absorbtion_proportional = 0.01,
    pollution_to_enhance_spawning = 30000,
    corpse = "bob-spitter-spawner-corpse",
    dying_explosion = "blood-explosion-huge",
    loot =
    {
      {
        count_min = 5,
        count_max = 15,
        item = "alien-artifact",
        probability = 1
      },
    },
    max_count_of_owned_units = 10,
    max_friends_around_to_spawn = 5,
    animations =
    {
      spawner_idle_animation(0, bob_spitter_spawner_tint),
      spawner_idle_animation(1, bob_spitter_spawner_tint),
      spawner_idle_animation(2, bob_spitter_spawner_tint),
      spawner_idle_animation(3, bob_spitter_spawner_tint)
    },
    result_units =
    {
      {"small-biter", {{0.0, 0.3}, {0.25, 0.3}, {0.35, 0.0}}},
      {"small-spitter", {{0.25, 0.3}, {0.5, 0.3}, {0.7, 0.0}}},
      {"medium-spitter", {{0.5, 0.0}, {0.6, 0.3}, {0.8, 0.0}}},
--      {"big-spitter", {{0.6, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
-- Big enemies apear at 0.6, slowly become elemental between 0.7 and 0.8, and disapear by 0.9
      {"big-spitter", {{0.6, 0.0}, {0.7, 0.4}, {0.8, 0.0}}},
      {"bob-big-electric-spitter", {{0.7, 0.0}, {0.8, 0.4}, {0.9, 0.0}}},
      {"bob-huge-explosive-spitter", {{0.7, 0.0}, {0.8, 0.2}}},
      {"bob-huge-acid-spitter", {{0.7, 0.0}, {0.8, 0.1}}},
      {"bob-giant-fire-spitter", {{0.8, 0.0}, {0.9, 0.2}}},
      {"bob-giant-poison-spitter", {{0.8, 0.0}, {0.9, 0.1}}},
      {"bob-titan-spitter", {{0.9, 0.0}, {1.0, 0.3}}},
      {"bob-behemoth-spitter", {{0.99, 0.0}, {1.0, 0.3}}},
      {"bob-leviathan-spitter", {{0.99, 0.0}, {1.0, 0.05}}},
    },
    -- With zero evolution the spawn rate is 5 seconds, with max evolution it is 2 seconds
    spawning_cooldown = {300, 120},
    spawning_radius = 10,
    spawning_spacing = 3,
    max_spawn_shift = 0,
    max_richness_for_spawn_shift = 100,
    autoplace = enemy_spawner_autoplace(1),
    call_for_help_radius = 50
  },

  {
    type = "corpse",
    name = "bob-spitter-spawner-corpse",
    flags = {"placeable-neutral", "placeable-off-grid", "not-on-map"},
    icon = "__base__/graphics/icons/biter-spawner-corpse.png",
    collision_box = {{-2, -2}, {2, 2}},
    selection_box = {{-2, -2}, {2, 2}},
    selectable_in_game = false,
    dying_speed = 0.04,
    subgroup="corpses",
    order = "c[corpse]-c[big-spitter-spawner]",
    final_render_layer = "corpse",
    animation =
    {
      spawner_die_animation(0, bob_spitter_spawner_tint),
      spawner_die_animation(1, bob_spitter_spawner_tint),
      spawner_die_animation(2, bob_spitter_spawner_tint),
      spawner_die_animation(3, bob_spitter_spawner_tint)
    }
  },
}
)

