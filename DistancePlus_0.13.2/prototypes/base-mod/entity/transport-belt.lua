require ("demo-transport-belt-pictures")
require ("transport-belt-pictures")

data:extend(
{
  {
    type = "underground-belt",
    name = "medium-underground-belt",
    icon = "__base__/graphics/icons/underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "medium-underground-belt"},
    max_health = 70,
    corpse = "small-remnants",
    max_distance = 15,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.03125,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
  {
    type = "underground-belt",
    name = "long-underground-belt",
    icon = "__base__/graphics/icons/underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-underground-belt"},
    max_health = 70,
    corpse = "small-remnants",
    max_distance = 30,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances =
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.03125,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/underground-belt/underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
  {
    type = "underground-belt",
    name = "medium-fast-underground-belt",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "medium-fast-underground-belt"},
    max_health = 60,
    corpse = "small-remnants",
	max_distance = 15,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = fast_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = fast_belt_vertical,
    ending_top = fast_belt_ending_top,
    ending_bottom = fast_belt_ending_bottom,
    ending_side = fast_belt_ending_side,
    starting_top = fast_belt_starting_top,
    starting_bottom = fast_belt_starting_bottom,
    starting_side = fast_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.0625,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
  {
    type = "underground-belt",
    name = "long-fast-underground-belt",
    icon = "__base__/graphics/icons/fast-underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-fast-underground-belt"},
    max_health = 60,
    corpse = "small-remnants",
	max_distance = 30,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = fast_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = fast_belt_vertical,
    ending_top = fast_belt_ending_top,
    ending_bottom = fast_belt_ending_bottom,
    ending_side = fast_belt_ending_side,
    starting_top = fast_belt_starting_top,
    starting_bottom = fast_belt_starting_bottom,
    starting_side = fast_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.0625,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/fast-underground-belt/fast-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
  {
    type = "underground-belt",
    name = "medium-express-underground-belt",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "medium-express-underground-belt"},
    max_health = 60,
    corpse = "small-remnants",
	max_distance = 15,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = express_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = express_belt_vertical,
    ending_top = express_belt_ending_top,
    ending_bottom = express_belt_ending_bottom,
    ending_side = express_belt_ending_side,
    starting_top = express_belt_starting_top,
    starting_bottom = express_belt_starting_bottom,
    starting_side = express_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.09375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  },
  {
    type = "underground-belt",
    name = "long-express-underground-belt",
    icon = "__base__/graphics/icons/express-underground-belt.png",
    flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "long-express-underground-belt"},
    max_health = 60,
    corpse = "small-remnants",
	max_distance = 30,
    underground_sprite =
    {
      filename = "__core__/graphics/arrows/underground-lines.png",
      priority = "high",
      width = 64,
      height = 64,
      x = 64,
	  scale = 0.5
    },
    resistances = 
    {
      {
        type = "fire",
        percent = 60
      }
    },
    collision_box = {{-0.4, -0.15}, {0.4, 0.1}},
    selection_box = {{-0.5, -0.25}, {0.5, 0.75}},
    distance_to_enter = 0.35,
    animation_speed_coefficient = 32,
    belt_horizontal = express_belt_horizontal, -- specified in transport-belt-pictures.lua
    belt_vertical = express_belt_vertical,
    ending_top = express_belt_ending_top,
    ending_bottom = express_belt_ending_bottom,
    ending_side = express_belt_ending_side,
    starting_top = express_belt_starting_top,
    starting_bottom = express_belt_starting_bottom,
    starting_side = express_belt_starting_side,
    fast_replaceable_group = "underground-belt",
    speed = 0.09375,
    structure =
    {
      direction_in =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43,
          y = 43
        }
      },
      direction_out =
      {
        sheet =
        {
          filename = "__base__/graphics/entity/express-underground-belt/express-underground-belt-structure.png",
          priority = "extra-high",
          shift = {0.26, 0},
          width = 57,
          height = 43
        }
      }
    },
    ending_patch = ending_patch_prototype
  }
  
  }
  )