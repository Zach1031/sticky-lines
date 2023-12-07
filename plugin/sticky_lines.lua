local api = vim.api

local M = {}
local last = {}

function M.new()
	vim.keymap.set("n", "<leader>k", ":lua require('sticky_lines').set()<CR>", { silent = true })
	vim.keymap.set("n", "<leader>j", ":lua require('sticky_lines').jump()<CR>", { silent = true })
end

M.new()
return M
