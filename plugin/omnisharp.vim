"-------------------------------------------------------------------------------------------------------------------
"OMNISHARP
"-------------------------------------------------------------------------------------------------------------------

"Cs Regions Collapse
"let b:match_words = '\s*#\s*region.*$:\s*#\s*endregion'

"if !exists("autocommands_loaded")
""    let autocommands_loaded = 1
"endif

"":let g:OmniSharp_highlighting = 3<cr> :OmniSharpCodeFormat<CR>
" nnoremap <C-s> :w<cr>
" imap <C-s> <Esc>:w<cr>

"nnoremap gr :OmniSharpFindUsages<CR>
"nnoremap gd :OmniSharpGotoDefinition<CR>
"nnoremap gD :vsp<cr>:OmniSharpGotoDefinition<CR>
"nnoremap pd :OmniSharpPreviewDefinition<CR>

"autocmd FileType cs nmap <silent> <buffer> M <Plug>(omnisharp_navigate_up)
"autocmd FileType cs nmap <silent> <buffer> m <Plug>(omnisharp_navigate_down)

"inoremap <expr> <Tab> pumvisible() ? '<C-n>' : \ getline('.')[col('.')-2] =~# '[[:alnum:].-_#$]' ? '<C-x><C-o>' : '<Tab>'

"Asyncomplete
"set completeopt=menuone,noinsert,noselect,preview
"let g:asyncomplete_auto_popup = 1
"let g:asyncomplete_auto_completeopt = 0
"let g:asyncomplete_force_refresh_on_context_changed = 1

"let g:OmniSharp_server_stdio = 1
"let g:OmniSharp_highlight_types = 2

" if using ultisnips, set g:OmniSharp_want_snippet to 1
"let g:OmniSharp_want_snippet = 1
"inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
"inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
"inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"

"set completeopt=menuone,noinsert,noselect,popuphidden
"set completepopup=highlight:Pmenu,border:off

augroup ColorschemePreferences
  autocmd!
" Link ALE sign highlights to similar equivalents without background colours
  autocmd ColorScheme * highlight link ALEErrorSign   WarningMsg
  autocmd ColorScheme * highlight link ALEWarningSign ModeMsg
  autocmd ColorScheme * highlight link ALEInfoSign    Identifier
augroup END

" ALE: {{{
let g:ale_sign_error = ''
let g:ale_sign_warning = '•'
let g:ale_sign_info = '·'
let g:ale_sign_style_error = '·'
let g:ale_sign_style_warning = '·'
" let g:ale_lsp_show_message_severity='disabled' NOT WORKING
let g:ale_linters = { 'cs': ['OmniSharp'] }

" }}}

" OmniSharp: {{{
"let g:OmniSharp_popup_position = 'peek'
"if has('nvim')
""  let g:OmniSharp_popup_options = {
""  \ 'winhl': 'Normal:NormalFloat'
""  \}
"else
""  let g:OmniSharp_popup_options = {
""  \ 'highlight': 'Normal',
""  \ 'padding': [2, 2, 2, 2],
""  \ 'border': [1]
""  \}
"endif
"let g:OmniSharp_popup_mappings = {
""\ 'sigNext': '<C-n>',
""\ 'sigPrev': '<C-p>',
""\ 'pageDown': ['<C-f>', '<PageDown>'],
""\ 'pageUp': ['<C-b>', '<PageUp>']
""\}

"let g:OmniSharp_highlight_groups = {
""\ 'ExcludedCode': 'NonText'
""\}
" }}}

let g:OmniSharp_highlight_groups = {
\ 'ClassName': 'Function',
\ 'Comment': 'Text',
\ 'FieldName': 'Text',
\ 'EventName': 'Text',
\ 'ParameterName': 'Text',
\ 'NamespaceName': 'Text',
\}

