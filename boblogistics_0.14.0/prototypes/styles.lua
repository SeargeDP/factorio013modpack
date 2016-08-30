data.raw["gui-style"]["default"]["bob-table"] =
{
  type = "table_style",
  cell_spacing = 0,
  horizontal_spacing = 0,
  vertical_spacing = 0
}

data.raw["gui-style"]["default"]["bob-logistics-inserter-button"] =
{
  type = "checkbox_style",
  font = "default",
  font_color = {r=1, g=1, b=1},
--[[
  top_padding = 0,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 0,
  width = 32,
  height = 32,
]]--
  default_background =
  {
    filename = "__boblogistics__/graphics/gui/inserter-button.png",
    priority = "extra-high-no-scale",
    scale = 2,
    x = 0,
    width = 32,
    height = 32
  },
  hovered_background =
  {
    filename = "__boblogistics__/graphics/gui/inserter-button.png",
    priority = "extra-high-no-scale",
    scale = 2,
    x = 32,
    width = 32,
    height = 32
  },
  clicked_background =
  {
    filename = "__boblogistics__/graphics/gui/inserter-button.png",
    priority = "extra-high-no-scale",
    scale = 2,
    x = 64,
    width = 32,
    height = 32
  },
  checked =
  {
    filename = "__boblogistics__/graphics/gui/inserter-button.png",
    priority = "extra-high-no-scale",
    x = 96,
    width = 32,
    height = 32
  }
}

data.raw["gui-style"]["default"]["bob-logistics-checkbox"] =
{
  type = "checkbox_style",
  font = "default",
  font_color = {r=1, g=1, b=1},
--[[
  top_padding = 0,
  right_padding = 0,
  bottom_padding = 0,
  left_padding = 0,
  width = 16,
  height = 16,
  default_background =
]]--
  {
    filename = "__boblogistics__/graphics/gui/checkbox.png",
    priority = "extra-high-no-scale",
    x = 0,
    width = 16,
    height = 16
  },
  hovered_background =
  {
    filename = "__boblogistics__/graphics/gui/checkbox.png",
    priority = "extra-high-no-scale",
    x = 16,
    width = 16,
    height = 16
  },
  clicked_background =
  {
    filename = "__boblogistics__/graphics/gui/checkbox.png",
    priority = "extra-high-no-scale",
    x = 32,
    width = 16,
    height = 16
  },
  checked =
  {
    filename = "__boblogistics__/graphics/gui/checkbox.png",
    priority = "extra-high-no-scale",
    x = 48,
    width = 16,
    height = 16
  }
}


