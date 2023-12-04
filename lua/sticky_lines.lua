local api = vim.api

local M = {}
local last = {}

function M.set()
	last = api.nvim_win_get_cursor(0)

	print(string.format("Setting sticky at (%d, %d)", last[1], last[2]))
end

function M.jump()
	if not last[1] then
		print("Sticky Lines Error: No sticky set")
		return
	end
	local row, col = last[1], last[2]

	print(string.format("Jumping to sticky at (%d, %d)", row, col))

	api.nvim_win_set_cursor(0, { row, col })
end

return M
