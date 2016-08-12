local avatar = util.table.deepcopy(data.raw["player"]["player"])

avatar.name = "avatar"
avatar.flags = {"pushable", "placeable-off-grid", "player-creation"}
avatar.minable = {hardness = 0.2, mining_time = 2, result = "avatar"}
avatar.alert_when_damaged = true
avatar.healing_per_tick = 0
avatar.crafting_categories = {"crafting"}
avatar.mining_categories = {"basic-solid"}
avatar.heartbeat = { { filename = "__Avatars__/sounds/fizzle.wav" } }
avatar.animations =
    {
      {
        idle =
        {
          layers =
          {
            avataranimations.level1.idle,
            avataranimations.level1.idlemask,
          }
        },
        idle_with_gun =
        {
          layers =
          {
            avataranimations.level1.idlewithgun,
            avataranimations.level1.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            avataranimations.level1.miningwithhands,
            avataranimations.level1.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            avataranimations.level1.miningwithtool,
            avataranimations.level1.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            avataranimations.level1.runningwithgun,
            avataranimations.level1.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            avataranimations.level1.running,
            avataranimations.level1.runningmask,
          }
        }
      },
	  {
        -- heavy-armor is not in the demo
        armors = data.is_demo and {"light-armor"} or {"light-armor", "heavy-armor"},
        idle =
        {
          layers =
          {
            avataranimations.level1.idle,
            avataranimations.level1.idlemask,
            avataranimations.level2addon.idle,
            avataranimations.level2addon.idlemask
          }
        },
        idle_with_gun =
        {
          layers =
          {
            avataranimations.level1.idlewithgun,
            avataranimations.level1.idlewithgunmask,
            avataranimations.level2addon.idlewithgun,
            avataranimations.level2addon.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            avataranimations.level1.miningwithhands,
            avataranimations.level1.miningwithhandsmask,
            avataranimations.level2addon.miningwithhands,
            avataranimations.level2addon.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            avataranimations.level1.miningwithtool,
            avataranimations.level1.miningwithtoolmask,
            avataranimations.level2addon.miningwithtool,
            avataranimations.level2addon.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            avataranimations.level1.runningwithgun,
            avataranimations.level1.runningwithgunmask,
            avataranimations.level2addon.runningwithgun,
            avataranimations.level2addon.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            avataranimations.level1.running,
            avataranimations.level1.runningmask,
            avataranimations.level2addon.running,
            avataranimations.level2addon.runningmask,
          }
        }
      },
      {
        -- modular armors are not in the demo
        armors = data.is_demo and {} or {"modular-armor", "power-armor", "power-armor-mk2"},
        idle =
        {
          layers =
          {
            avataranimations.level1.idle,
            avataranimations.level1.idlemask,
            avataranimations.level3addon.idle,
            avataranimations.level3addon.idlemask
          }
        },
        idle_with_gun =
        {
          layers =
          {
            avataranimations.level1.idlewithgun,
            avataranimations.level1.idlewithgunmask,
            avataranimations.level3addon.idlewithgun,
            avataranimations.level3addon.idlewithgunmask,
          }
        },
        mining_with_hands =
        {
          layers =
          {
            avataranimations.level1.miningwithhands,
            avataranimations.level1.miningwithhandsmask,
            avataranimations.level3addon.miningwithhands,
            avataranimations.level3addon.miningwithhandsmask,
          }
        },
        mining_with_tool =
        {
          layers =
          {
            avataranimations.level1.miningwithtool,
            avataranimations.level1.miningwithtoolmask,
            avataranimations.level3addon.miningwithtool,
            avataranimations.level3addon.miningwithtoolmask,
          }
        },
        running_with_gun =
        {
          layers =
          {
            avataranimations.level1.runningwithgun,
            avataranimations.level1.runningwithgunmask,
            avataranimations.level3addon.runningwithgun,
            avataranimations.level3addon.runningwithgunmask,
          }
        },
        running =
        {
          layers =
          {
            avataranimations.level1.running,
            avataranimations.level1.runningmask,
            avataranimations.level3addon.running,
            avataranimations.level3addon.runningmask,
          }
        }
      }
	}

data:extend ({ avatar })