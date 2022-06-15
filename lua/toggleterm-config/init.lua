local status_ok, toggleterm = pcall(require, "toggleterm")
if not status_ok then
	return
end

toggleterm.setup({
	size = 10,
	open_mapping = [[<C-t>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 5,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

local Terminal  = require('toggleterm.terminal').Terminal
local start = Terminal:new({ cmd = "yarn start", hidden = true })
local gitpull = Terminal:new({ cmd = "git pull", hidden = true })
local gitcommit = Terminal:new({ cmd = "git add *; git commit -m 'Update'; git push", hidden = true })
local builddebug = Terminal:new({ cmd = "pwsh -Command 'debug; exit'", hidden = true })
local buildrelease = Terminal:new({ cmd = "pwsh -Command 'build; exit'", hidden = true })

function _start_toggle()
  start:toggle()
end

function _gitpull_toggle()
  gitpull:toggle()
end

function _gitcommit_toggle()
  gitcommit:toggle()
end

function _builddebug_toggle()
  builddebug:toggle()
end

function _buildrelease_toggle()
  buildrelease:toggle()
end

vim.api.nvim_set_keymap("n", "S", "<cmd>lua _start_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "P", "<cmd>lua _gitpull_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "C", "<cmd>lua _gitcommit_toggle()<CR>", {noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "B", "<cmd>lua _buildrelease_toggle()<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "D", "<cmd>lua _builddebug_toggle()<CR>", {noremap = true, silent = true})
