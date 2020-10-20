" ===
" === vim-lightline
" ===
set t_Co=256

" set ambiwidth=double
set showtabline=2
autocmd BufWritePost,TextChanged,TextChangedI * call lightline#update()


let g:lightline#bufferline#enable_devicons = 1
let g:lightline#bufferline#show_number  = 2
let g:lightline#bufferline#shorten_path = 1
let g:lightline#bufferline#unnamed      = '[No Name]'
let g:lightline#bufferline#composed_number_map = {
			\ 1:  '⑴ ', 2:  '⑵ ', 3:  '⑶ ', 4:  '⑷ ', 5:  '⑸ ',
			\ 6:  '⑹ ', 7:  '⑺ ', 8:  '⑻ ', 9:  '⑼ ', 10: '⑽ ',
			\ 11: '⑾ ', 12: '⑿ ', 13: '⒀ ', 14: '⒁ ', 15: '⒂ ',
			\ 16: '⒃ ', 17: '⒄ ', 18: '⒅ ', 19: '⒆ ', 20: '⒇ '}

let g:lightline = {
			\ 'colorscheme': 'onehalfdark',
			\ 'active': {
			\   'left': [ [ 'mode', 'paste' ], ['coc_errors', 'coc_warnings', 'coc_ok', 'status' ], ['blame'],
			\             [ 'readonly', 'filename', 'modified', 'method' ], ['statuslinetabs'] ]
			\ },
			\ 'component_function': {
			\   'method': 'NearestMethodOrFunction',
			\'blame':'LightlineGitBlame',
			\ },
			\ 'tab_component_function': {
			\		'tabnum': 'LightlineWebDevIcons',
			\ },
			\ 'component' : {
			\   'readonly': '%{&readonly?"":""}',
			\ },
			\ 'separator': { 'left': "\ue0c0", 'right': "\ue0c2" },
			\ 'subseparator': { 'left': "\ue0c1", 'right': "\ue0c3" },
			\ }

let g:lightline.tab = {
			\ 'active': [ 'tabnum', 'filename', 'modified' ],
			\ 'inactive': [ 'tabnum', 'filename', 'modified' ] }


let g:lightline.tabline = {
			\ 'left': [['buffers']],
			\ 'right': [['close']],
			\ }

let g:lightline.component_expand = {
			\  'buffers': 'lightline#bufferline#buffers',
			\  'statuslinetabs': 'LightlineStatuslineTabs',
			\   'linter_warnings': 'lightline#coc#warnings',
			\   'linter_errors': 'lightline#coc#errors',
			\   'linter_ok': 'lightline#coc#ok',
			\   'status': 'lightline#coc#status',
			\ }

let g:lightline.component_type = {
			\     'buffers': 'tabsel',
			\   'linter_warnings': 'warning',
			\   'linter_errors': 'error',
			\   'linter_ok': 'left',
			\ }

function! LightlineGitBlame() abort
	let blame = get(b:, 'coc_git_blame', '')
	" return blame
	return winwidth(0) > 120 ? blame : ''
endfunction

function! LightlineWebDevIcons(n)
	let l:bufnr = tabpagebuflist(a:n)[tabpagewinnr(a:n) - 1]
	return WebDevIconsGetFileTypeSymbol(bufname(l:bufnr))
endfunction
" register compoments:
call lightline#coc#register()

" let g:lightline.active = { 'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding', 'filetype', 'charvaluehex'], [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }


" keymap
" buffer keymap

function! LightlineStatuslineTabs() abort
	return join(map(range(1, tabpagenr('$')),
				\ '(v:val == tabpagenr() ? "[*] " : "") . lightline#tab#filename(v:val)'), " \u2b81 ")
endfunction
