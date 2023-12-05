local api = vim.api

local M = {}
local last = {}

function M.new()
	vim.keymap.set("n", "<leader>k", "<Cmd>lua require('sticky_lines').set()<CR>", { silent = true })
end
function M.set()
	local curr_line = api.nvim_win_get_cursor(0)

	last = { [0] = curr_line[0], [1] = curr_line[1] }

	print(string.format("Setting sticky at (%d, %d)", curr_line[1], curr_line[2]))
end

function M.jump()
	print(last)
	local row, col = last[0], last[1]

	print(string.format("Jumping to stick at (%d, %d)", row, col))

	api.nvim_win_set_cursor(0, { row, col })
end

M.new()
return M
