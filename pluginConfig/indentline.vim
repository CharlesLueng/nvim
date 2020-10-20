map <Localleader>il :IndentLinesToggle<CR>

" let g:indentLine_enabled=1
" let g:indentLine_setColors=0

" let g:indentLine_bgcolor_term=202
" let g:indentLine_bgcolor_gui='#FF5F00'

" let g:indentLine_char='c'
" let g:indentLine_char_list=['|', '¦', '┆', '┊']

" let g:indentLine_enabled = 1
" let g:indentLine_concealcursor = 0
" let g:indentLine_char = '┆'
" let g:indentLine_faster = 1
" IndentLine plugin
let g:indentLine_enabled = 1
" let g:indentLine_faster = 1
" let g:indentLine_char = '⎸'

" " Set displays depending on filetype 
" function! SetDefaultDisplays()
"     set background=dark
"     if has('gui_running')
"         colo materialtheme
"     else
"         colo materialbox
"         set term=xterm-256color
"     endif
"     let g:airline_theme = 'base16_mocha'
"     let b:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`'}
"     set guifont=Monaco\ for\ Powerline
"     AirlineRefresh
" endfunction
"
" function! SetTexDisplays()
"     set background=light
"     colorscheme solarized
"     set guifont=Cousine\ for\ Powerline:h14
"     "set conceallevel=0
"     let g:airline_theme='solarized'
"     let b:AutoPairs={'(':')', '[':']', '{':'}',"'":"'",'"':'"', '`':'`', '$':'$'}
"     AirlineRefresh
" endfunction
"
" function! SetDisplays()
"     if (&ft=='tex')
"         call SetTexDisplays()
"     else
"         call SetDefaultDisplays()
"     endif
" endfunction
"
" au! BufEnter,FileType * call SetDisplays()
