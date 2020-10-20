" ===
" === coc.nvim
" ===
let g:coc_global_extensions = [
			\ 'coc-actions',
			\ 'coc-css',
			\ 'coc-diagnostic',
			\ 'coc-explorer',
			\ 'coc-flutter-tools',
			\ 'coc-gitignore',
			\ 'coc-html',
			\ 'coc-json',
			\ 'coc-lists',
			\ 'coc-prettier',
			\ 'coc-pyright',
			\ 'coc-python',
			\ 'coc-snippets',
			\ 'coc-sourcekit',
			\ 'coc-stylelint',
			\ 'coc-syntax',
			\ 'coc-tasks',
			\ 'coc-todolist',
			\ 'coc-translator',
			\ 'coc-tslint-plugin',
			\ 'coc-tsserver',
			\ 'coc-vimlsp',
			\ 'coc-vetur',
			\ 'coc-yaml',
			\ 'coc-yank',
			\ 'coc-omnisharp',
			\ 'coc-marketplace']


inoremap <silent><expr> <TAB>
			\ pumvisible() ? "\<C-n>" :
			\ <SID>check_back_space() ? "\<TAB>" :
			\ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
function! s:check_back_space() abort
	let col = col('.') - 1
	return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <c-o> coc#refresh()
function! g:Show_documentation()
	call CocActionAsync('highlight')
	if (index(['vim','help'], &filetype) >= 0)
		execute 'h '.expand('<cword>')
	else
		call CocAction('doHover')
	endif
endfunction
" nnoremap <LEADER>h :call <SID>Show_documentation()<CR>

" nnoremap <silent><nowait> <LocalLEADER>d :CocList diagnostics<cr>
" nmap <silent> <localleader>- <Plug>(coc-diagnostic-prev)
" nmap <silent> <localleader>= <Plug>(coc-diagnostic-next)
" nnoremap <c-c> :CocCommand<CR>
" Text Objects
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)
" xmap ic <Plug>(coc-classobj-i)
" omap ic <Plug>(coc-classobj-i)
" xmap ac <Plug>(coc-classobj-a)
" omap ac <Plug>(coc-classobj-a)
" Useful commands
" nnoremap <silent> <Localleader>y :<C-u>CocList -A --normal yank<cr>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <LEADER>rn <Plug>(coc-rename)
nmap <C-e> :CocCommand explorer<CR>
" Remap keys for applying codeAction to the current buffer.
nmap <LEADER>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <LEADER>qf  <Plug>(coc-fix-current)
" coc-translator
" nmap <SPACE>ts <Plug>(coc-translator-p)
" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
	execute 'CocCommand actions.open ' . a:type
endfunction
xmap <silent> <LEADER>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <LEADER>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@
" coctodolist
" nnoremap <leader>tn :CocCommand todolist.create<CR>
" nnoremap <leader>tl :CocList todolist<CR>
" nnoremap <leader>tu :CocCommand todolist.download<CR>:CocCommand todolist.upload<CR>
" coc-tasks
" noremap <silent> <leader>ts :CocList tasks<CR>
" coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
vmap <C-j> <Plug>(coc-snippets-select)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)
let g:snips_author = 'Charles'
" Use <leader>x for convert visual selected code to snippet
xmap <LEADER>x  <Plug>(coc-convert-snippet)
autocmd BufRead,BufNewFile tsconfig.json set filetype=jsonc


" coc-bookmarks
" nmap mm <Plug>(coc-bookmark-toggle)
" nmap ma <Plug>(coc-bookmark-annotate)
" nmap mj <Plug>(coc-bookmark-next)
" nmap mk <Plug>(coc-bookmark-prev)

" coc-explorer

