vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.hidden = true
vim.o.relativenumber = true
vim.o.number = true
vim.o.termguicolors = true
vim.o.spell = true
vim.o.title = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.list = true
vim.o.scrolloff=15
vim.o.sidescrolloff=15
vim.o.splitright=true
vim.o.confirm = true
vim.o.exrc = true
vim.o.backup = true
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.softtabstop = -1
vim.o.textwidth = 80
vim.o.splitbelow = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.o.laststatus = 2

vim.api.nvim_command('set noruler')
vim.api.nvim_command('set noshowmode')
vim.api.nvim_command('set nofixendofline')
vim.api.nvim_command('set nostartofline')
vim.api.nvim_command('set shiftround')
vim.api.nvim_command('set backspace=indent,eol,start')
vim.api.nvim_command('set backupdir=~/.local/share/nvim/backup//')
vim.api.nvim_command('set clipboard=unnamedplus')
vim.api.nvim_command('set nojoinspaces')
vim.api.nvim_command('set wildmode=longest:full,full')
vim.api.nvim_command('set nowrap')
vim.api.nvim_command('set mouse=a')
vim.api.nvim_command('set undofile')
vim.api.nvim_command('set noswapfile')

vim.g.mapleader = " "

require('plugins')
require('keymaps')
require('theme')
