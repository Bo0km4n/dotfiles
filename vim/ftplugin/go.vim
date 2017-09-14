autocmd FileType go setlocal noexpandtab tabstop=4 shiftwidth=4

"vim-goの設定
let g:go_fmt_autosave = 1
let g:go_fmt_fail_silently = 1
let g:go_fmt_command = "goimports"
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <leader>b <Plug>(go-build)
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_highlight_interfaces = 1

cnoremap goi GoImport<space>
cnoremap gor GoRename<space>
cnoremap god GoDrop<space>
