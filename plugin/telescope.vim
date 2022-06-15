lua require("telescope-config")
nnoremap <C-p> :lua require('telescope.builtin').find_files( { cwd = pwd})<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<cr>
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }<cr>
nnoremap <leader>D "ryiw:Telescope grep_string search=<C-r>r<cr>
