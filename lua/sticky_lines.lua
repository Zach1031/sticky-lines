local api = vim.api

local lines = {}
local num_lines = -1
local last = nil

local function set(index)
	local curr_line = api.nvim_win_get_cursor(0)
	local sticky_number

	if index then
		sticky_number = index
	else
		num_lines = num_lines + 1
		sticky_number = tostring(num_lines)
	end

	print(string.format("Setting sticky %s at (%d, %d)", sticky_number, curr_line[1], curr_line[2]))

	lines[sticky_number] = { [0] = curr_line[1], [1] = curr_line[2] }
	last = sticky_number
end

local function jump(index)
	local sticky_number = index and index or last

	local row, col = lines[sticky_number][0], lines[sticky_number][1]

	print(string.format("Jumping to stick %s at (%d, %d)", sticky_number, row, col))

	api.nvim_win_set_cursor(0, { row, col })
end

return {
	set = set,
	jump = jump,
}
