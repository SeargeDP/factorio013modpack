function boblaserbubbleanimation(scale, tint)
  return
  {
    {
      filename = "__bobwarfare__/graphics/entities/laser-bubble.png",
      scale = scale,
      tint = tint,
      priority = "extra-high",
      width = 8,
      height = 8,
      frame_count = 5
    }
  }
end


data:extend(
{
  {
    type = "smoke-with-trigger",
    name = "small-poison-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.5,
      line_length = 7,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.2, g = 0.9, b = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 4,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 4, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },

  {
    type = "smoke-with-trigger",
    name = "small-fire-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__bobwarfare__/graphics/entities/fire.png",
      priority = "low",
      width = 30,
      height = 50,
      frame_count = 30,
      animation_speed = 1,
      line_length = 30,
      scale = 3,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 10,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 4,
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 4, type = "fire"}
              }
            }
          }
        }
      }
    },
    action_frequency = 30
  },

  {
    type = "smoke-with-trigger",
    name = "poison-artillery-cloud",
    flags = {"not-on-map"},
    show_when_smoke_off = true,
    animation =
    {
      filename = "__base__/graphics/entity/cloud/cloud-45-frames.png",
      priority = "low",
      width = 256,
      height = 256,
      frame_count = 45,
      animation_speed = 0.5,
      line_length = 7,
      scale = 3,
    },
    slow_down_factor = 0,
    affected_by_wind = false,
    cyclic = true,
    duration = 60 * 30,
    fade_away_duration = 2 * 60,
    spread_duration = 10,
    color = { r = 0.2, g = 0.9, b = 0.2 },
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          type = "nested-result",
          action =
          {
            type = "area",
            perimeter = 11,
            entity_flags = {"breaths-air"},
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = { amount = 10, type = "poison"}
              }
            }
          }
        }
      }
    },
    action_frequency = 10
  },

--[[
  {
    type = "flame-thrower-explosion",
    name = "flame-thrower-acid-mist",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations =
    {
      {
        filename = "__base__/graphics/entity/flame-thrower-explosion/flame-thrower-explosion.png",
        priority = "extra-high",
        width = 64,
        height = 64,
        frame_count = 64,
        line_length = 8
      }
    },
    light = {intensity = 0.2, size = 20},
    slow_down_factor = 0.98,
    damage = {amount = 2, type = "acid"}
  },
]]--

  {
    type = "explosion",
    name = "bob-laser-bubble-glass",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=0.8, g=0.8, b=0.8, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-ruby",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=1, g=0.2, b=0.2, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-sapphire",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=0.2, g=0.6, b=1, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-emerald",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=0.3, g=1, b=0.3, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-amethyst",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=1, g=0.2, b=1, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-topaz",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=1, g=0.6, b=0.2, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-diamond",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=1, g=1, b=1, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },
}
)

