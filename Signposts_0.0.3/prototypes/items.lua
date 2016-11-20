data:extend(
	{
		{
			type = "item",
			name = "sign-post",
			icon = "__Signposts__/graphics/sign-post-itm.png",
			flags = {"goes-to-quickbar"},
			subgroup = "storage",
			place_result = "sign-post",
			stack_size = 50
		},
		{
            type = "simple-entity",
            name = "sign-post",
            flags = {"placeable-neutral"},
            icon = "__Signposts__/graphics/sign-post.png",
            subgroup = "storage",
            collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
            building_collision_box = {{-0.2, -0.2}, {0.2, 0.2}},
            selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
            minable =
            {
              mining_time = 0.5,
              result = "sign-post",
              count = 1
            },
            loot =
            {
              {item = "sign-post", probability = 1, count_min = 1, count_max = 1}
            },
            mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
            render_layer = "object",
            max_health = 200,
            resistances =
            {
              {
                type = "fire",
                percent = 100
              }
            },
            pictures =
            {
              {
                filename = "__Signposts__/graphics/sign-post.png",
                width = 32,
                height = 64,
                shift = {0, -0.8}
              }
            }
        },
	}
)