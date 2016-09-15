data:extend({
    {
        type = "locomotive",
        name = "shuttleTrain",
        icon = "__ShuttleTrain__/graphics/icon_shuttleTrain.png",
        flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"},
        minable = {mining_time = 1, result = "shuttleTrain"},
        mined_sound = {filename = "__core__/sound/deconstruct-medium.ogg"},
        max_health = 1000,
        corpse = "medium-remnants",
        dying_explosion = "medium-explosion",
        collision_box = {{-0.6, -2.6}, {0.6, 2.6}},
        selection_box = {{-0.85, -2.6}, {0.9, 2.5}},
        drawing_box = {{-1, -4}, {1, 3}},
        weight = 2000,
        max_speed = 1.2,
        max_power = "600kW",
        reversing_power_modifier = 0.6,
        braking_force = 10,
        friction_force = 0.50,
		vertical_selection_shift = -0.5,
        -- this is a percentage of current speed that will be subtracted
        air_resistance = 0.0075,
        connection_distance = 3,
        joint_distance = 4,
        energy_per_hit_point = 5,
        resistances =
        {
            {
                type = "fire",
                decrease = 15,
                percent = 50
            },
            {
                type = "physical",
                decrease = 15,
                percent = 30
            },
            {
                type = "impact",
                decrease = 50,
                percent = 60
            },
            {
                type = "explosion",
                decrease = 15,
                percent = 30
            },
            {
                type = "acid",
                decrease = 10,
                percent = 20
            }
        },
        energy_source =
        {
            type = "burner",
            effectivity = 1,
            fuel_inventory_size = 3,
            smoke =
            {
                {
                    name = "train-smoke",
                    deviation = {0.3, 0.3},
                    frequency = 100,
                    position = {0, 0},
                    starting_frame = 0,
                    starting_frame_deviation = 60,
                    height = 2,
                    height_deviation = 0.5,
                    starting_vertical_speed = 0.2,
                    starting_vertical_speed_deviation = 0.1,
                }
            }
        },
        front_light =
        {
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture =
                {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200
                },
                shift = {-0.6, -16},
                size = 2,
                intensity = 0.6
            },
            {
                type = "oriented",
                minimum_darkness = 0.3,
                picture =
                {
                    filename = "__core__/graphics/light-cone.png",
                    priority = "medium",
                    scale = 2,
                    width = 200,
                    height = 200
                },
                shift = {0.6, -16},
                size = 2,
                intensity = 0.6
            }
        },
        back_light = rolling_stock_back_light(),
        stand_by_light = rolling_stock_stand_by_light(),
        color = {r = 0.07, g = 0.92, b = 0, a = 0.5},
        pictures =
        {
            layers =
            {
                {
                    priority = "very-low",
                    width = 238,
                    height = 230,
                    direction_count = 256,
                    filenames =
                    {
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-01.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-02.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-03.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-04.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-05.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-06.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-07.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-08.png"
                    },
                    line_length = 4,
                    lines_per_file = 8,
                    shift = {0.0, -0.5}
                },
                {
                    priority = "very-low",
                    flags = { "mask" },
                    width = 236,
                    height = 228,
                    direction_count = 256,
                    filenames =
                    {
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-01.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-02.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-03.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-04.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-05.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-06.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-07.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-mask-08.png"
                    },
                    line_length = 4,
                    lines_per_file = 8,
                    shift = {0.0, -0.5},
                    apply_runtime_tint = true
                },
                {
                    priority = "very-low",
                    flags = { "compressed" },
                    width = 253,
                    height = 212,
                    direction_count = 256,
                    draw_as_shadow = true,
                    filenames =
                    {
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-01.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-02.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-03.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-04.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-05.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-06.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-07.png",
                        "__base__/graphics/entity/diesel-locomotive/diesel-locomotive-shadow-08.png"
                    },
                    line_length = 4,
                    lines_per_file = 8,
                    shift = {1, 0.3}
                }
            }
        },
        wheels = standard_train_wheels,
        rail_category = "regular",
        stop_trigger =
        {
            -- left side
            {
                type = "create-smoke",
                repeat_count = 125,
                entity_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the left
                speed = {-0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{-0.75, -2.7}, {-0.3, 2.7}}
            },
            -- right side
            {
                type = "create-smoke",
                repeat_count = 125,
                entity_name = "smoke-train-stop",
                initial_height = 0,
                -- smoke goes to the right
                speed = {0.03, 0},
                speed_multiplier = 0.75,
                speed_multiplier_deviation = 1.1,
                offset_deviation = {{0.3, -2.7}, {0.75, 2.7}}
            },
            {
                type = "play-sound",
                sound =
                {
                    {
                        filename = "__base__/sound/train-breaks.ogg",
                        volume = 0.6
                    },
                }
            },
        },
        drive_over_tie_trigger = drive_over_tie(),
        tie_distance = 50,
        vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
        working_sound =
        {
            sound =
            {
                filename = "__base__/sound/train-engine.ogg",
                volume = 0.4
            },
            match_speed_to_activity = true,
        },
        open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
        close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
        sound_minimum_speed = 0.5;
    },

})