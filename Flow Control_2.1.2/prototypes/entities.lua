empty_sprite =
{
  filename = "__core__/graphics/empty.png",
  priority = "extra-high",
  width = 1,
  height = 1
}

-- Check Valve ***************************************************************************
check_valve = util.table.deepcopy(data.raw["storage-tank"]["storage-tank"])
check_valve.name = "check-valve"
check_valve.icon = "__Flow Control__/graphics/icon/check-valve.png"
check_valve.flags = {"placeable-neutral", "player-creation"}
check_valve.minable = {mining_time = 1, result = "check-valve"}
check_valve.max_health = 80
check_valve.corpse = "small-remnants"
check_valve.resistances = data.raw["pump"]["small-pump"].resistances
check_valve.fast_replaceable_group = "pipe"
check_valve.collision_box = data.raw["pipe"]["pipe"].collision_box
check_valve.selection_box = data.raw["pipe"]["pipe"].selection_box
check_valve.fluid_box =
{
  base_area = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    { position = {0, 1}, type="output" },
    { position = {0, -1} }
  },
}
check_valve.pictures =
{
  picture =
  {
    sheet =
    {
      filename = "__Flow Control__/graphics/entity/check-valve/check-valve.png",
      priority = "extra-high",
      frames = 4,
      width = 58,
      height = 55,
      shift = {0.28125, -0.078125}
    }
  },
  fluid_background = empty_sprite,
  window_background = empty_sprite,
  flow_sprite = empty_sprite
}
check_valve.vehicle_impact_sound =
  data.raw["pump"]["small-pump"].vehicle_impact_sound
check_valve.working_sound = nil
check_valve.circuit_wire_connection_points =
  data.raw["pump"]["small-pump"].circuit_wire_connection_points
check_valve.circuit_connector_sprites =
  data.raw["pump"]["small-pump"].circuit_connector_sprites
check_valve.circuit_wire_max_distance =
  data.raw["pump"]["small-pump"].circuit_wire_max_distance

-- Overflow Valve ************************************************************************
overflow_valve = util.table.deepcopy(check_valve)
overflow_valve.name = "overflow-valve"
overflow_valve.icon = "__Flow Control__/graphics/icon/overflow-valve.png"
overflow_valve.minable.result = "overflow-valve"
overflow_valve.fluid_box.base_level = 0.8
overflow_valve.pictures.picture.sheet.filename =
  "__Flow Control__/graphics/entity/overflow-valve/overflow-valve.png"

-- Express Pump **************************************************************************
express_pump = util.table.deepcopy(data.raw["pump"]["small-pump"])
express_pump.name = "express-pump"
express_pump.icon = "__Flow Control__/graphics/icon/express-pump.png"
express_pump.minable.result = "express-pump"
express_pump.energy_usage = "120kW"
express_pump.pumping_speed = 2.5
express_pump.animations.north.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-up.png"
express_pump.animations.north.animation_speed = 1
express_pump.animations.east.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-right.png"
express_pump.animations.east.animation_speed = 1
express_pump.animations.south.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-down.png"
express_pump.animations.south.animation_speed = 1
express_pump.animations.west.filename =
  "__Flow Control__/graphics/entity/express-pump/express-pump-left.png"
express_pump.animations.west.animation_speed = 1

-- Pipe Elbow ****************************************************************************
pipe_elbow = util.table.deepcopy(check_valve)
pipe_elbow.name = "pipe-elbow"
pipe_elbow.icon = "__Flow Control__/graphics/icon/pipe-elbow.png"
pipe_elbow.minable = data.raw["pipe"]["pipe"].minable
pipe_elbow.max_health = data.raw["pipe"]["pipe"].max_health
pipe_elbow.resistances = data.raw["pipe"]["pipe"].resistances
pipe_elbow.fluid_box =
{
  base_area = 1,
  pipe_covers = pipecoverspictures(),
  pipe_connections =
  {
    { position = {1, 0} },
    { position = {0, 1} }
  },
}
pipe_elbow.pictures =
{
  picture =
  {
    sheet =
    {
      filename = "__Flow Control__/graphics/entity/pipes/pipe-elbow.png",
      priority = "extra-high",
      frames = 4,
      width = 44,
      height = 44
    }
  },
  fluid_background = empty_sprite,
  window_background = empty_sprite,
  flow_sprite = empty_sprite
}
pipe_elbow.circuit_wire_max_distance = 0

-- Pipe Junction *************************************************************************
pipe_junction = util.table.deepcopy(pipe_elbow)
pipe_junction.name = "pipe-junction"
pipe_junction.icon = "__Flow Control__/graphics/icon/pipe-junction.png"
pipe_junction.fluid_box.pipe_connections =
{
  { position = {1, 0} },
  { position = {0, 1} },
  { position = {-1, 0} }
}
pipe_junction.pictures.picture.sheet.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-junction.png"

-- Pipe Straight *************************************************************************
pipe_straight = util.table.deepcopy(pipe_elbow)
pipe_straight.name = "pipe-straight"
pipe_straight.icon = "__Flow Control__/graphics/icon/pipe-straight.png"
pipe_straight.fluid_box.pipe_connections =
{
  { position = {0, -1} },
  { position = {0, 1} }
}
pipe_straight.pictures.picture.sheet.filename =
  "__Flow Control__/graphics/entity/pipes/pipe-straight.png"
pipe_straight.pictures.picture.sheet.frames = 2

-- Small Pump ****************************************************************************
data.raw["pump"]["small-pump"].icon = "__Flow Control__/graphics/icon/small-pump.png"

-- Insert Entities ***********************************************************************
data:extend(
{
  check_valve,
  overflow_valve,
  express_pump,
  pipe_elbow,
  pipe_junction,
  pipe_straight
})