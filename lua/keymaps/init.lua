local map = vim.api.nvim_set_keymap
map('n', '<leader>ve', ':edit ~/.config/nvim/init.lua', {noremap = false, silent = false})
map('n', '<leader>vk', ':edit ~/.config/nvim/lua/keymaps/init.lua', {noremap = false, silent = false})

map('v', '<', '<gv', {noremap = true, silent = false})
map('v', '>', '>gv', {noremap = true, silent = false})

map('v', 'y', 'myy`y', {noremap = true, silent = false})
map('v', 'Y', 'myY`y', {noremap = true, silent = false})

map('n', 'U', ':redo<cr>', {noremap = true, silent = false})
map('n', 'Y', 'y$', {noremap = true, silent = false})
map('n', 'n', 'nzzzv', {noremap = true, silent = false})
map('n', 'N', 'Nzzzv', {noremap = true, silent = false})

map('n', 'J', '<S-}>', {noremap = true, silent = false})
map('n', 'K', '<S-{>', {noremap = true, silent = false})
map('n', 'L', 'J', {noremap = true, silent = false})

map('n', 'f', '/', {noremap = true, silent = false})
map('n', 'F', '?', {noremap = true, silent = false})
map('n', '<leader>f', ':HopWord<cr>', {noremap = true, silent = false})
map('n', '<leader>d', '"ryiw/<C-r>r<cr>', {noremap = true, silent = false})

map('n', '<leader>o', 'za', {noremap = true, silent = false})
map('n', '<leader>b', '$j?{<cr>V%', {noremap = true, silent = false})
map('n', '<leader>P', ':Prettier<cr>', {noremap = true, silent = false})

map('i', 'jj', '<esc>:w<cr>', {noremap = false, silent = false})
map('i', 'jJ', '<esc>:q!<cr>', {noremap = false, silent = false})

map('i', 'jk', '<esc><S-a>', {noremap = false, silent = false})
map('i', 'jè', '<esc><S-a>{<enter><esc>ko<tab>', {noremap = false, silent = false})
map('i', 'ji', '<esc>lli<space>', {noremap = false, silent = false})
map('i', 'jo', '<esc>o', {noremap = false, silent = false})
map('i', 'jO', '<esc>ko', {noremap = false, silent = false})
map('i', 'jy', '<esc>yy<esc>p', {noremap = false, silent = false})
map('i', 'jd', '<esc>dd', {noremap = false, silent = false})
map('i', 'jl', '<esc>la', {noremap = false, silent = false})
map('i', 'jf', '<esc>A<space>from<space>', {noremap = false, silent = false})
map('i', 'j0', '<esc>A<space>=<space>', {noremap = false, silent = false})

map('i', ';;', '<esc>A;<esc>', {noremap = false, silent = false})

map('', '<M-a>', ':NERDTreeFind<cr>', {noremap = false, silent = false})
map('', '<M-z>', ':NERDTree<cr>', {noremap = false, silent = false})

map('n', '<C-h>', '<C-w>h', {noremap = true, silent = false})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = false})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = false})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = false})
map('n', '<A-s>', ':vsp<cr>:sleep 50m<cr><C-o>', {noremap = true, silent = false})
map('n', '<A-S>', ':sp<cr>:sleep 50m<cr><C-o>', {noremap = true, silent = false})

map('n', '<leader>m', ':lua require("harpoon.mark").add_file()<cr>', {noremap = true, silent = false})
map('n', '<leader>M', ':lua require("harpoon.ui").toggle_quick_menu()<cr>', {noremap = true, silent = false})
map('n', '<leader>1', ':lua require("harpoon.ui").nav_file(1)<cr>', {noremap = true, silent = false})
map('n', '<leader>2', ':lua require("harpoon.ui").nav_file(2)<cr>', {noremap = true, silent = false})
map('n', '<leader>3', ':lua require("harpoon.ui").nav_file(3)<cr>', {noremap = true, silent = false})
map('n', '<leader>4', ':lua require("harpoon.ui").nav_file(4)<cr>', {noremap = true, silent = false})
map('n', '<leader>5', ':lua require("harpoon.ui").nav_file(5)<cr>', {noremap = true, silent = false})
map('n', '<leader>6', ':lua require("harpoon.ui").nav_file(6)<cr>', {noremap = true, silent = false})
map('n', '<leader>7', ':lua require("harpoon.ui").nav_file(7)<cr>', {noremap = true, silent = false})
map('n', '<leader>8', ':lua require("harpoon.ui").nav_file(8)<cr>', {noremap = true, silent = false})

map('n', '<leader>p', ':Prettier', {noremap = true, silent = false})

map('n', '<C-s>', ':w<cr>', {noremap = true, silent = false})
map('i', '<C-s>', '<esc>:w<cr>', {noremap = true, silent = false})
map('', '<A-q>', ':q!<cr>', {noremap = true, silent = false})
map('n', '<leader>q', ':q!<cr>', {noremap = true, silent = false})

map('n', '<leader>a', '/(<cr>/)<cr>?(<cr>a', {noremap = true, silent = false})
map('i', '§', '`', {noremap = true, silent = false})
map('n', '0', '^', {noremap = true, silent = false})
map('n', "'", '$', {noremap = true, silent = false})
map('n', 't', 'f', {noremap = true, silent = false})
map('n', 'T', 't', {noremap = true, silent = false})
map('n', '<leader>0', 'f=w', {noremap = true, silent = false})
map('n', '<leader>=', 'F=F=w', {noremap = true, silent = false})
map('n', 'caè', 'ca{', {noremap = true, silent = false})
map('n', 'ciè', 'ci{', {noremap = true, silent = false})
map('n', 'vaè', 'va{', {noremap = true, silent = false})
map('n', 'viè', 'vi{', {noremap = true, silent = false})

map('n', 'va8', 'va(', {noremap = true, silent = false})
map('n', 'vi8', 'vi(', {noremap = true, silent = false})
map('n', 'ca8', 'ca(', {noremap = true, silent = false})
map('n', 'ci8', 'ci(', {noremap = true, silent = false})
map('n', 'tè', 'f{', {noremap = true, silent = false})
map('n', 'Tè', '{', {noremap = true, silent = false})
map('n', 'vw', 've', {noremap = true, silent = false})

map('n', 'ci2', 'ci"', {noremap = true, silent = false})
map('n', 'ca2', 'ca"', {noremap = true, silent = false})
map('n', 'vi2', 'vi"', {noremap = true, silent = false})
map('n', 'va2', 'va"', {noremap = true, silent = false})
map('n', 'yi2', 'yi"', {noremap = true, silent = false})
map('n', 'ya2', 'ya"', {noremap = true, silent = false})

map('n', 'vtè', 'vt{', {noremap = true, silent = false})
map('n', 'vt8', 'vt(', {noremap = true, silent = false})

map('n', '<leader>r', ':s/\(w.*\)/', {noremap = true, silent = false})
