" ===
" === AutoFormat
" ===
nnoremap <C-k><C-f> :Autoformat<CR>
" let g:autoformat_verbosemode=1
" let g:formatdef_custom_js = '"js-beautify -t"'
" let g:formatters_javascript = ['custom_js']
" au BufWrite *.js :Autoformat
let g:formatdef_my_custom_javascript = '"prettier --write "'
let g:formatters_javascript = ['prettier']
