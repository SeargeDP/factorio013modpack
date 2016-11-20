function boblaseranimation(scale, tint)
  return
  {
    filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
    scale = scale,
    tint = tint,
    frame_count = 1,
    width = 12,
    height = 33,
    priority = "high",
    blend_mode = "additive"
  }
end

function boblaseraction(effectname, damage)
  return
  {
    type = "direct",
    action_delivery =
    {
      type = "instant",
      target_effects =
      {
        {
          type = "create-entity",
          entity_name = effectname
        },
        {
          type = "damage",
          damage = {amount = damage, type = "laser"}
        }
      }
    }
  }
end

function boblaserbubbleanimation(scale, tint)
  return
  {
    {
      filename = "__bobvehicleequipment__/graphics/laser-bubble.png",
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
    type = "projectile",
    name = "bob-blue-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-blue", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.2, g=0.6, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-green-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-green", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.3, g=1, b=0.3, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-purple-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-purple", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=0.8, g=0.2, b=1, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-yellow-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-yellow", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=0.8, b=0.2, a=1}),
    speed = 0.15
  },

  {
    type = "projectile",
    name = "bob-white-laser",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = boblaseraction("bob-laser-bubble-white", 5),
    light = {intensity = 0.5, size = 10},
    animation = boblaseranimation(1, {r=1, g=1, b=1, a=1}),
    speed = 0.15
  },
}
)





data:extend(
{
  {
    type = "explosion",
    name = "bob-laser-bubble-blue",
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
    name = "bob-laser-bubble-green",
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
    name = "bob-laser-bubble-purple",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=8, g=0.2, b=1, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-yellow",
    flags = {"not-on-map"},
    animation_speed = 1,
    animations = boblaserbubbleanimation(1, {r=1, g=0.8, b=0.2, a=1}),
    light = {intensity = 1, size = 10},
    smoke = "smoke-fast",
    smoke_count = 2,
    smoke_slow_down_factor = 1
  },

  {
    type = "explosion",
    name = "bob-laser-bubble-white",
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


data:extend(
{
  {
    type = "projectile",
    name = "bob-plasma-projectile",
    flags = {"not-on-map"},
--    collision_box = {{-0.25, -0.25}, {0.25, 0.25}},
    acceleration = 0.001,
    action =
    {
      {
        type = "direct",
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "create-entity",
              entity_name = "plasma-explosion"
            },
            {
              type = "create-entity",
              entity_name = "small-scorchmark",
              check_buildability = true
            }
          }
        }
      },
      {
        type = "area",
        perimeter = 11,
        action_delivery =
        {
          type = "instant",
          target_effects =
          {
            {
              type = "damage",
              damage = {amount = 25, type = "electric"}
            },
            {
              type = "damage",
              damage = {amount = 15, type = "laser"}
            },
            {
              type = "damage",
              damage = {amount = 10, type = "explosion"}
            },
            {
              type = "create-entity",
              entity_name = "explosion"
            }
          }
        }
      }
    },
    animation =
    {
      filename = "__bobvehicleequipment__/graphics/particles2.png",
      tint = {r = 0.4, g = 0.7, b = 1, a = 1},
      frame_count = 32,
      line_length = 8,
      x = 512,
      y = 0,
      width = 64,
      height = 64,
      priority = "high"
    },
  },
}
)



