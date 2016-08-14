data:extend(
{
  {
    type = "pipe-to-ground",
    name = "medium-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/medium-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.5, mining_time = 1, result = "medium-pipe-to-ground"},
    max_health = 70,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 30 --10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
	  scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  },
    {
    type = "pipe-to-ground",
    name = "long-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/long-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 2, mining_time = 1, result = "long-pipe-to-ground"},
    max_health = 100,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 50 --10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
	  scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  },
    {
    type = "pipe-to-ground",
    name = "ultra-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/ultra-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 2, mining_time = 2, result = "ultra-pipe-to-ground"},
    max_health = 250,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 120 --10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
	  scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  },
    {
    type = "pipe-to-ground",
    name = "continental-pipe-to-ground",
    icon = "__DistancePlus__/graphics/icons/continental-pipe-to-ground.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 3, mining_time = 2, result = "continental-pipe-to-ground"},
    max_health = 300,
    corpse = "small-remnants",
    resistances =
    {
      {
        type = "fire",
        percent = 80
      }
    },
    collision_box = {{-0.29, -0.29}, {0.29, 0.2}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    fluid_box =
    {
      base_area = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { position = {0, -1} },
        {
          position = {0, 1},
          max_underground_distance = 255 --10
        }
      },
    },
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
	  scale = 0.5
    },
    pictures =
    {
      up =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-up.png",
        priority = "high",
        width = 44,
        height = 32 --, shift = {0.10, -0.04}
      },
      down =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-down.png",
        priority = "high",
        width = 40,
        height = 32 --, shift = {0.05, 0}
      },
      left =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-left.png",
        priority = "high",
        width = 32,
        height = 42 --, shift = {-0.12, 0.1}
      },
      right =
      {
        filename = "__base__/graphics/entity/pipe-to-ground/pipe-to-ground-right.png",
        priority = "high",
        width = 32,
        height = 40 --, shift = {0.1, 0.1}
      },
    }
  }
 
}
)