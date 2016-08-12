data:extend(
{
  {
    type = "font",
    name = "font-button-table",
    from = "default",
    size = 12
  },
  {
    type = "font",
    name = "font-button-change-page",
    from = "default",
    size = 12
  },
  {
    type = "font",
    name = "font-table",
    from = "default",
    align = "center",
	text_align = "center",
	size = 16
  }
})

--Header frame styles
local headerFrameHeight = 35

local nameHeader = {type = "frame_style", height = headerFrameHeight}
local locationHeader = {type = "frame_style", height = headerFrameHeight}
local renameHeader = {type = "frame_style", height = headerFrameHeight}
local controlHeader = {type = "frame_style", height = headerFrameHeight}

nameHeader.width = 300
locationHeader.width = 130
renameHeader.width = 125
controlHeader.width = 120

data.raw["gui-style"].default["avatar_table_header_frame"] = headerBasics
data.raw["gui-style"].default["avatar_table_name_header_frame"] = nameHeader
data.raw["gui-style"].default["avatar_table_location_header_frame"] = locationHeader
data.raw["gui-style"].default["avatar_table_rename_header_frame"] = renameHeader
data.raw["gui-style"].default["avatar_table_control_header_frame"] = controlHeader

--General table label style
data.raw["gui-style"].default["avatar_table_general"] =
{
	type = "label_style",
	font = "font-table"
}

--Scroll pane for the table
data.raw["gui-style"].default["avatar_table_scroll_pane"] =
{
	type = "scroll_pane_style",
	maximal_height = 400
}

--Header for the Avatar Name column **This may be thrown off in other localizations**
data.raw["gui-style"].default["avatar_table_header_avatar_name"] =
{
	type = "label_style",
	font = "font-table",
	left_padding = 100
}


--Sort Radio Button styles
--Sort radio button style
data.raw["gui-style"].default["avatar_table_name_sort_radiobutton"] =
{
	type = "radiobutton_style",
	font = "font-table",
	width = 285
}

--Beginning space to align the descending radio buttons
data.raw["gui-style"].default["avatar_table_sort_leading_null_label"] =
{
	type = "label_style",
	font = "font-table",
	width = 28
}

--Trailing space to fill out the frame
data.raw["gui-style"].default["avatar_table_sort_trailing_null_label"] =
{
	type = "label_style",
	font = "font-table",
	width = 300
}

--Frame style for each entry in the table
data.raw["gui-style"].default["avatar_table_row_frame"] =
{
	type = "frame_style",
	font = "font-table",
	height = 37
}

--Label for the individual names
--Name Length is approximately 30 before it runs under other elements
data.raw["gui-style"].default["avatar_table_label_avatar_name"] =
{
	type = "label_style",
	font = "font-table",
	width = 285
}

--Label for the locations
data.raw["gui-style"].default["avatar_table_label_avatar_location"] =
{
	type = "label_style",
	font = "font-table",
	width = 135,
	left_padding = 25
}

--Rename button
data.raw["gui-style"].default["avatar_table_button"] =
{
    type = "button_style",
    parent = "button_style",
	font = "font-button-table",
    width = 100,
    height = 23,
    top_padding = 0,
    right_padding = 0,
    bottom_padding = 0,
    left_padding = 0
}

--Gap between the rename and control buttons
data.raw["gui-style"].default["avatar_table_label_gap"] =
{
	type = "label_style",
	font = "font-table",
	width = 15
}

--Total avatars footer
data.raw["gui-style"].default["avatar_table_total_avatars"] =
{
	type = "label_style",
	font = "font-table",
	left_padding = 5
}

--ARDU current name
data.raw["gui-style"].default["avatar_ARDU_current_name"] =
{
	type = "label_style",
	minimal_width = 200
}