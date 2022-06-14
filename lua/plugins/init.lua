local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug('nvim-telescope/telescope-fzy-native.nvim', {['do'] = 'make'})

Plug 'projekt0n/github-nvim-theme'
Plug 'ryanoasis/vim-devicons'
Plug 'ThePrimeagen/harpoon'

Plug 'preservim/nerdtree'
Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})

Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/async.vim'

Plug 'Raimondi/delimitMate'
Plug 'sbdchd/neoformat' 


Plug 'vimwiki/vimwiki'

Plug 'yuezk/vim-js'

Plug 'maxmellon/vim-jsx-pretty'
Plug('prettier/vim-prettier', {['do'] = 'yarn install --frozen-lockfile --production'})
Plug('rodrigore/coc-tailwind-intellisense', {['do'] = 'npm install'})
Plug 'othree/yajs.vim'
Plug 'alvan/vim-closetag'

Plug('neoclide/coc.nvim',  {['branch'] = 'master', ['do'] = 'yarn install'})
Plug 'ap/vim-css-color'

Plug 'tpope/vim-surround'

Plug 'akinsho/toggleterm.nvim'

Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'pantharshit00/vim-prisma'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'terrortylor/nvim-comment'

vim.call('plug#end')
