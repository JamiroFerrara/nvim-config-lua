lua require("telescope-config")
nnoremap <C-p> :lua require('telescope.builtin').find_files( { cwd = pwd})
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})
nnoremap <leader>pw :lua require('telescope.builtin').grep_string { search = vim.fn.expand("<cword>") }
nnoremap <leader>D "ryiw:Telescope grep_string search=<C-r>r
