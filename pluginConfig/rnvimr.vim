" ===
" === rnvimr
" ===
" let g:rnvimr_ex_enable = 1
" let g:rnvimr_pick_enable = 1
" let g:rnvimr_draw_border = 0
" let g:rnvimr_bw_enable = 1
" Make Ranger replace Netrw and be the file explorer
let g:rnvimr_enable_ex = 1

" Make Ranger to be hidden after picking a file
let g:rnvimr_enable_picker = 1

" Disable a border for floating window
let g:rnvimr_draw_border = 0

" Hide the files included in gitignore
let g:rnvimr_hide_gitignore = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

" Make Neovim wipe the buffers corresponding to the files deleted by Ranger
let g:rnvimr_enable_bw = 1

" Add a shadow window, value is equal to 100 will disable shadow
let g:rnvimr_shadow_winblend = 70

" Draw border with both
let g:rnvimr_ranger_cmd = 'ranger --cmd="set draw_borders both"'
highlight link RnvimrNormal CursorLine
" nnoremap <silent> R :RnvimrToggle<CR><C-\><C-n>:RnvimrResize 0<CR>
nnoremap <silent> R :RnvimrToggle<CR>
let g:rnvimr_action = {
			\ '<C-t>': 'NvimEdit tabedit',
			\ '<C-x>': 'NvimEdit split',
			\ '<C-v>': 'NvimEdit vsplit',
			\ 'gw': 'JumpNvimCwd',
			\ 'yw': 'EmitRangerCwd'
			\ }

" Add views for Ranger to adapt the size of floating window
let g:rnvimr_ranger_views = [
			\ {'minwidth': 90, 'ratio': []},
			\ {'minwidth': 50, 'maxwidth': 89, 'ratio': [1,1]},
			\ {'maxwidth': 49, 'ratio': [1]}
			\ ]

let g:rnvimr_layout = {
			\ 'relative': 'editor',
			\ 'width': float2nr(round(0.7 * &columns)),
			\ 'height': float2nr(round(0.7 * &lines)),
			\ 'col': float2nr(round(0.15 * &columns)),
			\ 'row': float2nr(round(0.15 * &lines)),
			\ 'style': 'minimal'
			\ }

" let g:rnvimr_layout = { 'relative': 'editor',
"				\ 'width': &columns,
"				\ 'height': &lines,
"				\ 'col': 0,
"				\ 'row': 0,
"				\ 'style': 'minimal' }
let g:rnvimr_presets = [{'width': 0.7, 'height': 0.7}]
